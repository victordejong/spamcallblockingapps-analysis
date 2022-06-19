.class Lcom/allinone/callerid/i/a/n/a$a;
.super Landroid/os/AsyncTask;
.source "OfflineManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/i/a/n/a;
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
        "Lcom/allinone/callerid/model/EZSearchContacts;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/allinone/callerid/i/a/n/b;

.field private b:Ljava/lang/String;

.field private c:Lcom/allinone/callerid/model/EZSearchContacts;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/allinone/callerid/i/a/n/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p4, p0, Lcom/allinone/callerid/i/a/n/a$a;->a:Lcom/allinone/callerid/i/a/n/b;

    .line 3
    iput-object p2, p0, Lcom/allinone/callerid/i/a/n/a$a;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/i/a/n/a$a;->d:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lcom/allinone/callerid/i/a/n/a$a;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lcom/allinone/callerid/model/EZSearchContacts;
    .locals 4

    const-string p1, ""

    .line 1
    :try_start_0
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "wbb"

    if-eqz v0, :cond_0

    .line 2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u901a\u8bdd\u8bb0\u5f55\u6570\u636e\u5e93\u6ca1\u67e5\u5230\uff0c\u53bb\u79bb\u7ebf\u6570\u636e\u5e93\u67e5\u8be2: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/i/a/n/a$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/i/a/n/a$a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/allinone/callerid/util/p;->d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 5
    iget-object v2, p0, Lcom/allinone/callerid/i/a/n/a$a;->e:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/i/a/n/a$a;->e:Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/allinone/callerid/i/a/n/a$a;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/allinone/callerid/i/a/n/a$a;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/allinone/callerid/util/h1;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_5

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 9
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_2

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u79bb\u7ebf\u6570\u636e\u5e93search_number: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_2
    invoke-static {}, Lcom/allinone/callerid/util/h1;->k0()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 12
    iget-object p1, p0, Lcom/allinone/callerid/i/a/n/a$a;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/allinone/callerid/util/f0;->H(Landroid/content/Context;)V

    .line 13
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v2, "search_offline_db_new"

    invoke-virtual {p1, v2}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/allinone/callerid/i/a/n/a$a;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/allinone/callerid/util/f0;->I(Landroid/content/Context;)V

    .line 15
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_3

    const-string p1, "\u79bb\u7ebf\u6570\u636e\u5e93 isHaveOfflineDb"

    .line 16
    invoke-static {v1, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_3
    new-instance p1, Lcom/allinone/callerid/util/n0;

    iget-object v2, p0, Lcom/allinone/callerid/i/a/n/a$a;->d:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/allinone/callerid/util/n0;-><init>(Landroid/content/Context;)V

    .line 18
    iget-object v2, p0, Lcom/allinone/callerid/i/a/n/a$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/allinone/callerid/util/n0;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/allinone/callerid/model/EZSearchContacts;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/i/a/n/a$a;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    if-eqz p1, :cond_5

    .line 19
    iget-object p1, p0, Lcom/allinone/callerid/i/a/n/a$a;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/allinone/callerid/util/f0;->J(Landroid/content/Context;)V

    .line 20
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "search_offline_db_success_new"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/allinone/callerid/i/a/n/a$a;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/allinone/callerid/util/f0;->K(Landroid/content/Context;)V

    .line 22
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_4

    const-string p1, "SearchOfflineData\u67e5\u8be2\u6210\u529f"

    .line 23
    invoke-static {v1, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_4
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/i/a/n/a$a;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/f/f;->c(Lcom/allinone/callerid/model/EZSearchContacts;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/allinone/callerid/i/a/n/a$a;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    return-object p1
.end method

.method protected b(Lcom/allinone/callerid/model/EZSearchContacts;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/i/a/n/a$a;->a:Lcom/allinone/callerid/i/a/n/b;

    invoke-interface {v0, p1}, Lcom/allinone/callerid/i/a/n/b;->a(Lcom/allinone/callerid/model/EZSearchContacts;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/n/a$a;->a([Ljava/lang/String;)Lcom/allinone/callerid/model/EZSearchContacts;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/n/a$a;->b(Lcom/allinone/callerid/model/EZSearchContacts;)V

    return-void
.end method
