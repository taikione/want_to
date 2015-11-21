# encoding: utf-8
# language: ja
@moviepage
機能: ユーザーページを開く
  シナリオ: 未ログイン時にユーザー1のユーザーページにアクセスする
    もし user のテストデータを作成する
    かつ ユーザー 1 のユーザーページを表示する
    ならば ユーザー 1 のユーザーページが表示されていること

  シナリオ: あるユーザーでログインして、別のユーザーのユーザーページにアクセスする
    もし user のテストデータを作成する
    かつ bookmark_user のテストデータを作成する
    かつ 'bookmark_user@example.com' と 'hogehoge' でログインする
    かつ ユーザー 1 のユーザーページを表示する
    ならば ユーザー 1 のユーザーページが表示されていること
    ならば 要素 'a.bookmark' が 3 個存在すること

  シナリオ: ユーザーページのふせんには動画IDが記載されていること
    もし user のテストデータを作成する
    かつ ユーザー 1 のユーザーページを表示する
    ならば ユーザー 1 のユーザーページが表示されていること
    かつ 要素 'a.bookmark' の 0 番目の要素の内容に '動画ID' が含まれていること
