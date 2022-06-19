.class Lcom/allinone/callerid/i/a/u/b$b;
.super Landroid/os/AsyncTask;
.source "GuideManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/i/a/u/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/allinone/callerid/model/EZSearchContacts;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/allinone/callerid/i/a/u/a;

.field private b:Ljava/lang/String;

.field private c:Lcom/allinone/callerid/model/EZSearchContacts;

.field private d:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/allinone/callerid/i/a/u/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/allinone/callerid/i/a/u/b$b;->a:Lcom/allinone/callerid/i/a/u/a;

    .line 3
    iput-object p2, p0, Lcom/allinone/callerid/i/a/u/b$b;->b:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/allinone/callerid/i/a/u/b$b;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lcom/allinone/callerid/model/EZSearchContacts;
    .locals 7

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/allinone/callerid/i/a/u/b$b;->d:Landroid/content/Context;

    iget-object v0, p0, Lcom/allinone/callerid/i/a/u/b$b;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/allinone/callerid/util/h1;->Y(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 2
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/i/a/u/b$b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/f/f;->d(Ljava/lang/String;)Lcom/allinone/callerid/model/EZSearchContacts;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/i/a/u/b$b;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-direct {p1}, Lcom/allinone/callerid/model/EZSearchContacts;-><init>()V

    iput-object p1, p0, Lcom/allinone/callerid/i/a/u/b$b;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/i/a/u/b$b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/model/EZSearchContacts;->setOld_tel_number(Ljava/lang/String;)V

    .line 5
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/allinone/callerid/i/a/u/b$b;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getLongnumberdate()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x240c8400

    const-wide/16 v4, 0x0

    const/4 p1, 0x1

    cmp-long v6, v0, v2

    if-gez v6, :cond_1

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/i/a/u/b$b;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZSearchContacts;->getOnedayincomingah()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/model/EZSearchContacts;->setOnedayincomingah(I)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/i/a/u/b$b;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/model/EZSearchContacts;->setOnedayincomingah(I)V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/i/a/u/b$b;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {p1, v4, v5}, Lcom/allinone/callerid/model/EZSearchContacts;->setLongnumberdate(J)V

    .line 9
    :goto_1
    iget-object p1, p0, Lcom/allinone/callerid/i/a/u/b$b;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getLongnumberdate()J

    move-result-wide v0

    cmp-long p1, v0, v4

    if-nez p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/i/a/u/b$b;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/allinone/callerid/model/EZSearchContacts;->setLongnumberdate(J)V

    .line 11
    :cond_2
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/i/a/u/b$b;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/f/f;->c(Lcom/allinone/callerid/model/EZSearchContacts;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/allinone/callerid/i/a/u/b$b;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    return-object p1
.end method

.method protected b(Lcom/allinone/callerid/model/EZSearchContacts;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/i/a/u/b$b;->a:Lcom/allinone/callerid/i/a/u/a;

    invoke-interface {v0, p1}, Lcom/allinone/callerid/i/a/u/a;->a(Lcom/allinone/callerid/model/EZSearchContacts;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/u/b$b;->a([Ljava/lang/String;)Lcom/allinone/callerid/model/EZSearchContacts;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/u/b$b;->b(Lcom/allinone/callerid/model/EZSearchContacts;)V

    return-void
.end method
