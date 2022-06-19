.class Lcom/allinone/callerid/i/a/c0/b$a;
.super Landroid/os/AsyncTask;
.source "SpamCalllogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/i/a/c0/b;
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
        "Ljava/util/List<",
        "Lcom/allinone/callerid/bean/SpamCall;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/allinone/callerid/i/a/c0/a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/i/a/c0/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/i/a/c0/b$a;->a:Lcom/allinone/callerid/i/a/c0/a;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/bean/SpamCall;",
            ">;"
        }
    .end annotation

    const-string p1, "type"

    const-string v0, "date"

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/f/i;->a()Lcom/allinone/callerid/f/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/allinone/callerid/f/i;->b()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 5
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/allinone/callerid/bean/SpamCall;

    const-string v6, "number"

    const-string v7, "duration"

    .line 6
    filled-new-array {v0, v6, p1, v7}, [Ljava/lang/String;

    move-result-object v10

    .line 7
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 8
    invoke-static {}, Lcom/allinone/callerid/util/b1;->h()Landroid/net/Uri;

    move-result-object v9

    const-string v11, "number=?"

    const/4 v6, 0x1

    new-array v12, v6, [Ljava/lang/String;

    invoke-virtual {v5}, Lcom/allinone/callerid/bean/SpamCall;->getNumber()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v12, v3

    const-string v13, "date DESC"

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 9
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_0

    .line 10
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "dd/MMM"

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v8, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 11
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 12
    invoke-interface {v7, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 13
    new-instance v9, Ljava/util/Date;

    .line 14
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 15
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 16
    invoke-interface {v7, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 17
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 18
    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/allinone/callerid/bean/SpamCall;->setDate(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v5, v10}, Lcom/allinone/callerid/bean/SpamCall;->setCalltype(I)V

    .line 20
    invoke-virtual {v5, v6}, Lcom/allinone/callerid/bean/SpamCall;->setSelected(Z)V

    .line 21
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-object v1
.end method

.method protected b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/bean/SpamCall;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/i/a/c0/b$a;->a:Lcom/allinone/callerid/i/a/c0/a;

    invoke-interface {v0, p1}, Lcom/allinone/callerid/i/a/c0/a;->a(Ljava/util/List;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/c0/b$a;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/c0/b$a;->b(Ljava/util/List;)V

    return-void
.end method
