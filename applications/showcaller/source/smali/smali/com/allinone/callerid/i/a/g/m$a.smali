.class Lcom/allinone/callerid/i/a/g/m$a;
.super Landroid/os/AsyncTask;
.source "QuerySingleCallLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/i/a/g/m;
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
.field private a:Lcom/allinone/callerid/i/a/g/o;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/allinone/callerid/i/a/g/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/allinone/callerid/i/a/g/m$a;->a:Lcom/allinone/callerid/i/a/g/o;

    .line 3
    iput-object p1, p0, Lcom/allinone/callerid/i/a/g/m$a;->b:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/allinone/callerid/i/a/g/m$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/allinone/callerid/i/a/g/m$a;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/i/a/g/m$a;->b:Landroid/content/Context;

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-static {p1, v1}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/b1;->h()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "number=?"

    const/4 p1, 0x1

    new-array v4, p1, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/allinone/callerid/i/a/g/m$a;->c:Ljava/lang/String;

    aput-object v6, v4, v5

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 5
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "type"

    .line 6
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const-string v2, "date"

    .line 7
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 8
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    if-ne v1, p1, :cond_1

    const-string p1, "1"

    .line 9
    iput-object p1, p0, Lcom/allinone/callerid/i/a/g/m$a;->d:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "0"

    .line 10
    iput-object p1, p0, Lcom/allinone/callerid/i/a/g/m$a;->d:Ljava/lang/String;

    .line 11
    :goto_0
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {p1}, Lcom/allinone/callerid/util/i;->b(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/i/a/g/m$a;->e:Ljava/lang/String;

    :cond_2
    if-eqz v0, :cond_3

    .line 12
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    const-string p1, ""

    return-object p1
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/i/a/g/m$a;->a:Lcom/allinone/callerid/i/a/g/o;

    iget-object v0, p0, Lcom/allinone/callerid/i/a/g/m$a;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/allinone/callerid/i/a/g/m$a;->d:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/allinone/callerid/i/a/g/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/g/m$a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/g/m$a;->b(Ljava/lang/String;)V

    return-void
.end method
