.class Lcom/allinone/callerid/i/a/a0/d$a;
.super Landroid/os/AsyncTask;
.source "SearchNumberManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/i/a/a0/d;
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
.field private a:Lcom/allinone/callerid/i/a/a0/c;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:I

.field private e:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;IILcom/allinone/callerid/i/a/a0/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p5, p0, Lcom/allinone/callerid/i/a/a0/d$a;->a:Lcom/allinone/callerid/i/a/a0/c;

    .line 3
    iput-object p1, p0, Lcom/allinone/callerid/i/a/a0/d$a;->c:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/allinone/callerid/i/a/a0/d$a;->b:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/allinone/callerid/i/a/a0/d$a;->d:I

    .line 6
    iput p4, p0, Lcom/allinone/callerid/i/a/a0/d$a;->e:I

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string p1, ""

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/allinone/callerid/i/a/a0/d$a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/allinone/callerid/util/h1;->T(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/allinone/callerid/i/a/a0/d$a;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/allinone/callerid/util/h1;->W(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lcom/allinone/callerid/i/a/a0/d$a;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/allinone/callerid/util/p;->d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v3

    .line 4
    iget-object v4, p0, Lcom/allinone/callerid/i/a/a0/d$a;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/allinone/callerid/i/a/a0/d$a;->b:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/allinone/callerid/util/h1;->Q(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5
    iget-object v5, p0, Lcom/allinone/callerid/i/a/a0/d$a;->b:Ljava/lang/String;

    if-eqz v5, :cond_3

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v2, :cond_3

    .line 7
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v3, :cond_3

    .line 8
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v4, :cond_3

    .line 9
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 10
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v5, "search_param_not_null"

    invoke-virtual {p1, v5}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 11
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v5, "tel_number"

    .line 12
    iget-object v6, p0, Lcom/allinone/callerid/i/a/a0/d$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "device"

    const-string v6, "android"

    .line 13
    invoke-virtual {p1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "uid"

    .line 14
    invoke-virtual {p1, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "version"

    .line 15
    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "default_cc"

    .line 16
    invoke-virtual {p1, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cc"

    .line 17
    invoke-virtual {p1, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "stamp"

    .line 18
    invoke-virtual {p1, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cid"

    .line 19
    iget v2, p0, Lcom/allinone/callerid/i/a/a0/d$a;->d:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "is_contacts"

    .line 20
    iget v2, p0, Lcom/allinone/callerid/i/a/a0/d$a;->e:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-boolean v1, Lcom/allinone/callerid/util/c0;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "searchNumber"

    if-eqz v1, :cond_0

    .line 22
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6240\u6709\u53c2\u6570\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    const-string v3, "search_number_float"

    invoke-virtual {v1, v3}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 24
    iget v1, p0, Lcom/allinone/callerid/i/a/a0/d$a;->d:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 25
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    const-string v3, "unknown_incoming_search"

    invoke-virtual {v1, v3}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 26
    iget-object v1, p0, Lcom/allinone/callerid/i/a/a0/d$a;->b:Ljava/lang/String;

    const-string v3, "140"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/allinone/callerid/i/a/a0/d$a;->b:Ljava/lang/String;

    const-string v3, "+91140"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/allinone/callerid/i/a/a0/d$a;->b:Ljava/lang/String;

    const-string v3, "0091140"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 27
    :cond_1
    iget-object v1, p0, Lcom/allinone/callerid/i/a/a0/d$a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/allinone/callerid/util/f0;->C(Landroid/content/Context;)V

    .line 28
    :cond_2
    iget-object v1, p0, Lcom/allinone/callerid/i/a/a0/d$a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/allinone/callerid/util/f0;->a(Landroid/content/Context;)V

    const-string v1, "https://app.show-caller.com/api/v1/sea.php"

    .line 29
    invoke-static {v1, p1}, Lcom/allinone/callerid/j/a;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 30
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_3

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-object v0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/i/a/a0/d$a;->a:Lcom/allinone/callerid/i/a/a0/c;

    invoke-interface {v0, p1}, Lcom/allinone/callerid/i/a/a0/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/a0/d$a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/a0/d$a;->b(Ljava/lang/String;)V

    return-void
.end method
