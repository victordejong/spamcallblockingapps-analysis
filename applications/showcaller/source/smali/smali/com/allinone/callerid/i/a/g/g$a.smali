.class Lcom/allinone/callerid/i/a/g/g$a;
.super Landroid/os/AsyncTask;
.source "ContactsDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/i/a/g/g;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/allinone/callerid/i/a/g/k;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/bean/EZSimpleContact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/allinone/callerid/i/a/g/k;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/i/a/g/g$a;->b:Ljava/util/ArrayList;

    .line 3
    iput-object p1, p0, Lcom/allinone/callerid/i/a/g/g$a;->a:Lcom/allinone/callerid/i/a/g/k;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const-string p1, "photo_id"

    const-string v0, "data1"

    const-string v1, "contact_id"

    const-string v2, "display_name"

    const-string v3, ""

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v4

    const-string v5, "android.permission.READ_CONTACTS"

    .line 2
    invoke-static {v4, v5}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "sort_key"

    .line 3
    filled-new-array {v2, v5, v1, v0, p1}, [Ljava/lang/String;

    move-result-object v8

    .line 4
    sget-object v7, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 5
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "sort_key"

    .line 6
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 7
    iget-object v5, p0, Lcom/allinone/callerid/i/a/g/g$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    if-eqz v4, :cond_2

    .line 8
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_2

    .line 9
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v5, 0x0

    .line 10
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 11
    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 12
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 13
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 14
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 15
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 16
    invoke-interface {v4, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 17
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 18
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 19
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 20
    new-instance v10, Lcom/allinone/callerid/bean/EZSimpleContact;

    invoke-direct {v10}, Lcom/allinone/callerid/bean/EZSimpleContact;-><init>()V

    .line 21
    invoke-virtual {v10, v9}, Lcom/allinone/callerid/bean/EZSimpleContact;->setId(I)V

    .line 22
    invoke-virtual {v10, v6}, Lcom/allinone/callerid/bean/EZSimpleContact;->setNumber(Ljava/lang/String;)V

    if-eqz v8, :cond_0

    .line 23
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 24
    invoke-virtual {v10, v8}, Lcom/allinone/callerid/bean/EZSimpleContact;->setPhoto_id(Ljava/lang/String;)V

    :cond_0
    if-eqz v7, :cond_1

    .line 25
    invoke-virtual {v10, v7}, Lcom/allinone/callerid/bean/EZSimpleContact;->setName(Ljava/lang/String;)V

    .line 26
    iget-object v6, p0, Lcom/allinone/callerid/i/a/g/g$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    .line 27
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-object v3
.end method

.method protected b(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/i/a/g/g$a;->a:Lcom/allinone/callerid/i/a/g/k;

    iget-object v0, p0, Lcom/allinone/callerid/i/a/g/g$a;->b:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/allinone/callerid/i/a/g/k;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/g/g$a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/g/g$a;->b(Ljava/lang/String;)V

    return-void
.end method
