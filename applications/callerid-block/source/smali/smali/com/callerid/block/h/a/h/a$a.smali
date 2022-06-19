.class Lcom/callerid/block/h/a/h/a$a;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/h/a/h/a;
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
        "Lcom/callerid/block/search/EZSearchResult;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/callerid/block/k/a/f;

.field private b:Ljava/lang/String;

.field private c:Lcom/callerid/block/search/EZSearchResult;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callerid/block/k/a/f;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p4, p0, Lcom/callerid/block/h/a/h/a$a;->a:Lcom/callerid/block/k/a/f;

    iput-object p3, p0, Lcom/callerid/block/h/a/h/a$a;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/callerid/block/h/a/h/a$a;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/callerid/block/h/a/h/a$a;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lcom/callerid/block/search/EZSearchResult;
    .locals 8

    const-string p1, "report_count"

    const-string v0, "tel_number"

    const-string v1, ""

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/callerid/block/h/a/h/a$a;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/callerid/block/util/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "device"

    const-string v4, "android"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "uid"

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v4

    invoke-static {v4}, Lcom/callerid/block/util/t0;->E(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "version"

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v4

    invoke-static {v4}, Lcom/callerid/block/util/t0;->G(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "default_cc"

    iget-object v4, p0, Lcom/callerid/block/h/a/h/a$a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "cc"

    iget-object v4, p0, Lcom/callerid/block/h/a/h/a$a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "stamp"

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v4

    iget-object v5, p0, Lcom/callerid/block/h/a/h/a$a;->b:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/callerid/block/util/t0;->A(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "cid"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "https://app.ayamote.com/api/v1/sea.php"

    const-string v4, "utf-8"

    invoke-static {v3, v2, v4}, Lcom/callerid/block/util/t;->e(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lcom/callerid/block/util/w;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "searchNumber"

    if-eqz v3, :cond_0

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "result:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {v2}, Lcom/callerid/block/util/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lcom/callerid/block/util/w;->a:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enlode_result:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v2, :cond_11

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    new-instance v3, Lcom/callerid/block/search/EZSearchResult;

    invoke-direct {v3}, Lcom/callerid/block/search/EZSearchResult;-><init>()V

    iput-object v3, p0, Lcom/callerid/block/h/a/h/a$a;->c:Lcom/callerid/block/search/EZSearchResult;

    iget-object v5, p0, Lcom/callerid/block/h/a/h/a$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/callerid/block/search/EZSearchResult;->setNumber(Ljava/lang/String;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "status"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_11

    sget-boolean v5, Lcom/callerid/block/util/w;->a:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "response\uff1a"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v2, "type_label"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/callerid/block/h/a/h/a$a;->c:Lcom/callerid/block/search/EZSearchResult;

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/callerid/block/util/t0;->r(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/callerid/block/search/EZSearchResult;->setType_label(Ljava/lang/String;)V

    const-string v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v5, "Mobile"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "Fixed line"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/callerid/block/h/a/h/a$a;->c:Lcom/callerid/block/search/EZSearchResult;

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/callerid/block/util/t0;->w(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/callerid/block/search/EZSearchResult;->setType(Ljava/lang/String;)V

    :cond_4
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/callerid/block/h/a/h/a$a;->c:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v5, v4}, Lcom/callerid/block/search/EZSearchResult;->setName(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lcom/callerid/block/h/a/h/a$a;->c:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v5, v1}, Lcom/callerid/block/search/EZSearchResult;->setName(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v4

    const-string v5, "whatsapp_incoming_search_ok"

    invoke-virtual {v4, v5}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/callerid/block/h/a/h/a$a;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/callerid/block/util/l0;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_7
    const-string v4, "old_tel_number"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/callerid/block/h/a/h/a$a;->c:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v5, v4}, Lcom/callerid/block/search/EZSearchResult;->setOld_tel_number(Ljava/lang/String;)V

    :cond_8
    const-string v4, "operator"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/callerid/block/h/a/h/a$a;->c:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v5, v4}, Lcom/callerid/block/search/EZSearchResult;->setOperator(Ljava/lang/String;)V

    :cond_9
    const-string v4, "format_tel_number"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/callerid/block/h/a/h/a$a;->c:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v5, v4}, Lcom/callerid/block/search/EZSearchResult;->setFormat_tel_number(Ljava/lang/String;)V

    :cond_a
    iget-object v4, p0, Lcom/callerid/block/h/a/h/a$a;->c:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/callerid/block/search/EZSearchResult;->setTel_number(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/h/a/h/a$a;->c:Lcom/callerid/block/search/EZSearchResult;

    const-string v4, "t_p"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/callerid/block/search/EZSearchResult;->setT_p(Ljava/lang/String;)V

    const-string v0, "avatar"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/callerid/block/h/a/h/a$a;->c:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v4, v0}, Lcom/callerid/block/search/EZSearchResult;->setIcon(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_c

    const/4 v0, 0x0

    goto :goto_1

    :cond_c
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_1
    if-eqz v2, :cond_e

    if-gtz v0, :cond_d

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_d
    iget-object v0, p0, Lcom/callerid/block/h/a/h/a$a;->c:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v0, v6}, Lcom/callerid/block/search/EZSearchResult;->setIsSpam(Z)V

    goto :goto_2

    :cond_e
    iget-object v0, p0, Lcom/callerid/block/h/a/h/a$a;->c:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v0, v5}, Lcom/callerid/block/search/EZSearchResult;->setIsSpam(Z)V

    :goto_2
    const-string v0, "belong_area"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/callerid/block/h/a/h/a$a;->c:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v2, v0}, Lcom/callerid/block/search/EZSearchResult;->setLocation(Ljava/lang/String;)V

    goto :goto_3

    :cond_f
    iget-object v0, p0, Lcom/callerid/block/h/a/h/a$a;->c:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v0, v1}, Lcom/callerid/block/search/EZSearchResult;->setLocation(Ljava/lang/String;)V

    :goto_3
    const-string v0, "address"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/callerid/block/h/a/h/a$a;->c:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v1, v0}, Lcom/callerid/block/search/EZSearchResult;->setLocation(Ljava/lang/String;)V

    :cond_10
    iget-object v0, p0, Lcom/callerid/block/h/a/h/a$a;->c:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callerid/block/search/EZSearchResult;->setComplaint_times(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_11
    :goto_4
    iget-object p1, p0, Lcom/callerid/block/h/a/h/a$a;->c:Lcom/callerid/block/search/EZSearchResult;

    return-object p1
.end method

.method protected b(Lcom/callerid/block/search/EZSearchResult;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/callerid/block/h/a/h/a$a;->a:Lcom/callerid/block/k/a/f;

    invoke-interface {v0, p1}, Lcom/callerid/block/k/a/f;->a(Lcom/callerid/block/search/EZSearchResult;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callerid/block/h/a/h/a$a;->a([Ljava/lang/String;)Lcom/callerid/block/search/EZSearchResult;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {p0, p1}, Lcom/callerid/block/h/a/h/a$a;->b(Lcom/callerid/block/search/EZSearchResult;)V

    return-void
.end method
