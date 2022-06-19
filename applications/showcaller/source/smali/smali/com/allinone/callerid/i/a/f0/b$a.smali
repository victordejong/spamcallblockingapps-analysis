.class Lcom/allinone/callerid/i/a/f0/b$a;
.super Landroid/os/AsyncTask;
.source "WikiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/i/a/f0/b;
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
.field private a:Lcom/allinone/callerid/i/a/f0/a;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/allinone/callerid/i/a/f0/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/allinone/callerid/i/a/f0/b$a;->a:Lcom/allinone/callerid/i/a/f0/a;

    .line 3
    iput-object p1, p0, Lcom/allinone/callerid/i/a/f0/b$a;->b:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/allinone/callerid/i/a/f0/b$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string p1, "declined_count"

    const-string v0, "block_count"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "tel_number"

    .line 2
    iget-object v4, p0, Lcom/allinone/callerid/i/a/f0/b$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "platform"

    const-string v4, "android"

    .line 3
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "uid"

    .line 4
    iget-object v4, p0, Lcom/allinone/callerid/i/a/f0/b$a;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/allinone/callerid/util/h1;->T(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "app_version"

    .line 5
    iget-object v4, p0, Lcom/allinone/callerid/i/a/f0/b$a;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/allinone/callerid/util/h1;->W(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "default_cc"

    .line 6
    iget-object v4, p0, Lcom/allinone/callerid/i/a/f0/b$a;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/allinone/callerid/util/p;->d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "stamp"

    .line 7
    iget-object v4, p0, Lcom/allinone/callerid/i/a/f0/b$a;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/allinone/callerid/i/a/f0/b$a;->c:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/allinone/callerid/util/h1;->Q(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-boolean v3, Lcom/allinone/callerid/util/c0;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "wiki"

    if-eqz v3, :cond_0

    .line 9
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "params:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v3, "https://app.show-caller.com/api/v1/seawik.php"

    .line 10
    invoke-static {v3, v2}, Lcom/allinone/callerid/j/a;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 11
    sget-boolean v2, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v2, :cond_1

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v1, :cond_3

    const-string v2, ""

    .line 13
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 14
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "status"

    .line 15
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 16
    iput-boolean v4, p0, Lcom/allinone/callerid/i/a/f0/b$a;->f:Z

    .line 17
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/allinone/callerid/i/a/f0/b$a;->d:I

    .line 18
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/allinone/callerid/i/a/f0/b$a;->e:I

    .line 19
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v2

    iget-object v3, p0, Lcom/allinone/callerid/i/a/f0/b$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/f/f;->d(Ljava/lang/String;)Lcom/allinone/callerid/model/EZSearchContacts;

    move-result-object v2

    if-nez v2, :cond_2

    .line 20
    new-instance p1, Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-direct {p1}, Lcom/allinone/callerid/model/EZSearchContacts;-><init>()V

    .line 21
    iget v0, p0, Lcom/allinone/callerid/i/a/f0/b$a;->d:I

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/model/EZSearchContacts;->setBlock_count(I)V

    .line 22
    iget v0, p0, Lcom/allinone/callerid/i/a/f0/b$a;->e:I

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/model/EZSearchContacts;->setDeclined_count(I)V

    .line 23
    iget-object v0, p0, Lcom/allinone/callerid/i/a/f0/b$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/model/EZSearchContacts;->setOld_tel_number(Ljava/lang/String;)V

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/allinone/callerid/model/EZSearchContacts;->setWiki_search_time(J)V

    .line 25
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/f/f;->c(Lcom/allinone/callerid/model/EZSearchContacts;)V

    goto :goto_0

    .line 26
    :cond_2
    iget v3, p0, Lcom/allinone/callerid/i/a/f0/b$a;->d:I

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/model/EZSearchContacts;->setBlock_count(I)V

    .line 27
    iget v3, p0, Lcom/allinone/callerid/i/a/f0/b$a;->e:I

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/model/EZSearchContacts;->setDeclined_count(I)V

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/allinone/callerid/model/EZSearchContacts;->setWiki_search_time(J)V

    .line 29
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v3

    const-string v4, "wiki_search_time"

    filled-new-array {v0, p1, v4}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v2, p1}, Lcom/allinone/callerid/f/f;->e(Lcom/allinone/callerid/model/EZSearchContacts;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-object v1
.end method

.method protected b(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/i/a/f0/b$a;->a:Lcom/allinone/callerid/i/a/f0/a;

    iget-boolean v0, p0, Lcom/allinone/callerid/i/a/f0/b$a;->f:Z

    iget v1, p0, Lcom/allinone/callerid/i/a/f0/b$a;->d:I

    iget v2, p0, Lcom/allinone/callerid/i/a/f0/b$a;->e:I

    invoke-interface {p1, v0, v1, v2}, Lcom/allinone/callerid/i/a/f0/a;->a(ZII)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/f0/b$a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/f0/b$a;->b(Ljava/lang/String;)V

    return-void
.end method
