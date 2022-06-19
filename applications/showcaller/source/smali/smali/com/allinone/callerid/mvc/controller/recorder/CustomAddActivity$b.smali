.class Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity$b;
.super Landroid/os/AsyncTask;
.source "CustomAddActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Lcom/allinone/callerid/bean/recorder/CustomRecord;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/bean/recorder/CustomRecord;",
            ">;"
        }
    .end annotation

    const-string p1, "photo_id"

    const-string v0, "name"

    const-string v1, "type"

    const-string v2, "number"

    .line 1
    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 2
    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_5

    .line 3
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 5
    invoke-static {}, Lcom/allinone/callerid/util/b1;->h()Landroid/net/Uri;

    move-result-object v7

    .line 6
    filled-new-array {v2, v1, v0, p1}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "date DESC"

    .line 7
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 8
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_5

    .line 9
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 10
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 11
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 12
    invoke-interface {v3, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 13
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 14
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 15
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 16
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 17
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 18
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 19
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-lt v10, v11, :cond_0

    .line 20
    invoke-interface {v3, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 21
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_0
    move-object v10, v4

    :goto_1
    if-eqz v8, :cond_3

    .line 22
    invoke-static {v8}, Lcom/allinone/callerid/util/h1;->w0(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 23
    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_2

    .line 24
    :cond_1
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v11, Lcom/allinone/callerid/bean/recorder/CustomRecord;

    invoke-direct {v11}, Lcom/allinone/callerid/bean/recorder/CustomRecord;-><init>()V

    .line 26
    invoke-virtual {v11, v9}, Lcom/allinone/callerid/bean/recorder/CustomRecord;->setName(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v11, v8}, Lcom/allinone/callerid/bean/recorder/CustomRecord;->setPhone(Ljava/lang/String;)V

    if-eqz v10, :cond_2

    const-string v8, ""

    .line 28
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 29
    invoke-virtual {v11, v10}, Lcom/allinone/callerid/bean/recorder/CustomRecord;->setContactId(Ljava/lang/String;)V

    .line 30
    :cond_2
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 31
    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 32
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_5

    return-object v5

    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    return-object v4
.end method

.method protected b(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/bean/recorder/CustomRecord;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 5
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;->X(Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;)Lcom/allinone/callerid/b/z/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/allinone/callerid/b/z/b;->A(Ljava/util/ArrayList;Z)V

    .line 6
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;->X(Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;)Lcom/allinone/callerid/b/z/a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity$b;->a([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity$b;->b(Ljava/util/ArrayList;)V

    return-void
.end method
