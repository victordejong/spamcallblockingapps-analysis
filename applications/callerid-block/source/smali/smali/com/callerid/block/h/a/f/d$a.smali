.class Lcom/callerid/block/h/a/f/d$a;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/h/a/f/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Lcom/callerid/block/search/CallLogBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/callerid/block/h/a/f/m;


# direct methods
.method constructor <init>(Lcom/callerid/block/h/a/f/m;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/callerid/block/h/a/f/d$a;->a:Lcom/callerid/block/h/a/f/m;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;"
        }
    .end annotation

    const-string v0, "starred"

    const-string v1, "photo_id"

    const-string v2, "contact_id"

    const-string v3, "sort_key"

    const-string v4, "data1"

    const-string v5, "display_name"

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v8

    const-string v9, "android.permission.READ_CONTACTS"

    invoke-static {v8, v9}, Lcom/callerid/block/util/x0/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x7

    new-array v11, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v11, v8

    const/4 v15, 0x1

    aput-object v4, v11, v15

    const/4 v12, 0x2

    aput-object v3, v11, v12

    const/4 v12, 0x3

    aput-object v2, v11, v12

    const/4 v12, 0x4

    aput-object v1, v11, v12

    const/4 v12, 0x5

    aput-object v0, v11, v12

    const/4 v12, 0x6

    const-string v13, "data2"

    aput-object v13, v11, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "sort_key COLLATE LOCALIZED ASC"

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-nez v10, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-lez v10, :cond_4

    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v9, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v9, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    new-instance v8, Lcom/callerid/block/search/CallLogBean;

    invoke-direct {v8}, Lcom/callerid/block/search/CallLogBean;-><init>()V

    invoke-virtual {v8, v14}, Lcom/callerid/block/search/CallLogBean;->r0(I)V

    invoke-virtual {v8, v12}, Lcom/callerid/block/search/CallLogBean;->B0(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Lcom/callerid/block/search/CallLogBean;->m0(Ljava/lang/String;)V

    if-eqz v13, :cond_2

    const-string v10, ""

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v8, v13}, Lcom/callerid/block/search/CallLogBean;->q0(Ljava/lang/String;)V

    :cond_2
    if-eqz v11, :cond_3

    invoke-virtual {v8, v11}, Lcom/callerid/block/search/CallLogBean;->l0(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    goto :goto_0

    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_7

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->t()I

    move-result v0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v15

    :goto_2
    if-le v1, v8, :cond_6

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v2}, Lcom/callerid/block/search/CallLogBean;->t()I

    move-result v2

    if-ne v0, v2, :cond_5

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_7
    return-object v7

    :cond_8
    :goto_3
    return-object v6

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    return-object v6
.end method

.method protected b(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/h/a/f/d$a;->a:Lcom/callerid/block/h/a/f/m;

    invoke-interface {v0, p1}, Lcom/callerid/block/h/a/f/m;->b(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/h/a/f/d$a;->a:Lcom/callerid/block/h/a/f/m;

    invoke-interface {p1}, Lcom/callerid/block/h/a/f/m;->a()V

    :goto_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callerid/block/h/a/f/d$a;->a([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/callerid/block/h/a/f/d$a;->b(Ljava/util/ArrayList;)V

    return-void
.end method
