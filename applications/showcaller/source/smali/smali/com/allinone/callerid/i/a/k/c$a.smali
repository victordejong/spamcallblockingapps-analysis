.class Lcom/allinone/callerid/i/a/k/c$a;
.super Landroid/os/AsyncTask;
.source "JudgeUserRejectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/i/a/k/c;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/allinone/callerid/i/a/k/b;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/allinone/callerid/i/a/k/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/allinone/callerid/i/a/k/c$a;->a:Lcom/allinone/callerid/i/a/k/b;

    .line 3
    iput-object p2, p0, Lcom/allinone/callerid/i/a/k/c$a;->b:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/allinone/callerid/i/a/k/c$a;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/i/a/k/c$a;->c:Landroid/content/Context;

    const-string v0, "android.permission.READ_CALL_LOG"

    invoke-static {p1, v0}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/i/a/k/c$a;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p1, "number"

    const-string v7, "type"

    const-string v8, "duration"

    .line 3
    filled-new-array {p1, v7, v8}, [Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/b1;->h()Landroid/net/Uri;

    move-result-object v2

    const/4 p1, 0x1

    new-array v5, p1, [Ljava/lang/String;

    iget-object v4, p0, Lcom/allinone/callerid/i/a/k/c$a;->b:Ljava/lang/String;

    aput-object v4, v5, v0

    const-string v4, "number=?"

    const-string v6, "date DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 6
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 8
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 9
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 10
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 11
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    if-ne v2, v4, :cond_0

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    if-ne v2, p1, :cond_1

    if-eqz v3, :cond_1

    const-string v2, "0"

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 13
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/i/a/k/c$a;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/allinone/callerid/util/p0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/i/a/k/c$a;->d:Ljava/lang/String;

    const-string v1, ""

    if-eqz p1, :cond_3

    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 16
    :cond_3
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object p1

    iget-object v2, p0, Lcom/allinone/callerid/i/a/k/c$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/allinone/callerid/f/f;->d(Ljava/lang/String;)Lcom/allinone/callerid/model/EZSearchContacts;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 17
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getFormat_tel_number()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 19
    iput-object p1, p0, Lcom/allinone/callerid/i/a/k/c$a;->d:Ljava/lang/String;

    .line 20
    :cond_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/i/a/k/c$a;->a:Lcom/allinone/callerid/i/a/k/b;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v1, p0, Lcom/allinone/callerid/i/a/k/c$a;->d:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/allinone/callerid/i/a/k/b;->a(ZLjava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/k/c$a;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/k/c$a;->b(Ljava/lang/Boolean;)V

    return-void
.end method
