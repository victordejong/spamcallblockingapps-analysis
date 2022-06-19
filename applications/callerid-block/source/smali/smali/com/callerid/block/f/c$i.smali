.class Lcom/callerid/block/f/c$i;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/f/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:I

.field h:I

.field i:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/callerid/block/f/c$i;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/callerid/block/f/c$i;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/callerid/block/f/c$i;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/callerid/block/f/c$i;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/callerid/block/f/c$i;->f:Ljava/lang/String;

    iput p6, p0, Lcom/callerid/block/f/c$i;->g:I

    iput p7, p0, Lcom/callerid/block/f/c$i;->h:I

    iput-boolean p8, p0, Lcom/callerid/block/f/c$i;->i:Z

    return-void
.end method


# virtual methods
.method protected a([Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    const-string p1, ""

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/t0;->E(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/f/c$i;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6240\u6709\u53c2\u6570\uff1anumber:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callerid/block/f/c$i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "device:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/f/c$i;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "uid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/f/c$i;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "version:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/f/c$i;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "default_cc:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/f/c$i;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "stamp:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/f/c$i;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "call_status:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/callerid/block/f/c$i;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "is_contacts:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/callerid/block/f/c$i;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "searchNumber"

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v2, "search_number_float"

    invoke-virtual {v0, v2}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    iget v0, p0, Lcom/callerid/block/f/c$i;->g:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v2, "unknown_incoming_search"

    invoke-virtual {v0, v2}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "tel_number"

    iget-object v3, p0, Lcom/callerid/block/f/c$i;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/callerid/block/util/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "device"

    iget-object v3, p0, Lcom/callerid/block/f/c$i;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "uid"

    iget-object v3, p0, Lcom/callerid/block/f/c$i;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "version"

    iget-object v3, p0, Lcom/callerid/block/f/c$i;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "default_cc"

    iget-object v3, p0, Lcom/callerid/block/f/c$i;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cc"

    iget-object v3, p0, Lcom/callerid/block/f/c$i;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "stamp"

    iget-object v3, p0, Lcom/callerid/block/f/c$i;->f:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cid"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "https://app.ayamote.com/api/v1/sea.php"

    const-string v3, "utf-8"

    invoke-static {v2, v0, v3}, Lcom/callerid/block/util/t;->e(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v2

    const-string v3, "search_result_ok"

    invoke-virtual {v2, v3}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/callerid/block/util/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v2, "search_result_decode_ok"

    :goto_0
    invoke-virtual {p1, v2}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v2, "search_result_decode_failed"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v2, "search_result_failed"

    invoke-virtual {v0, v2}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    move-object p1, v0

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resultJson:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/callerid/block/f/c$i;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v1, p0

    invoke-super/range {p0 .. p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_36

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    new-instance v0, Lcom/callerid/block/search/EZSearchResult;

    invoke-direct {v0}, Lcom/callerid/block/search/EZSearchResult;-><init>()V

    iget-object v3, v1, Lcom/callerid/block/f/c$i;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/callerid/block/search/EZSearchResult;->setNumber(Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "status"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_34

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v4

    const-string v6, "search_result_status_ok"

    invoke-virtual {v4, v6}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    const-string v4, "type_label"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/callerid/block/search/EZSearchResult;->setType(Ljava/lang/String;)V

    const-string v6, "soft_comments"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "ID/IDN"

    const-string v8, "EG/EGY"

    const-string v9, "IQ/IRQ"

    const-string v10, "IN/IND"

    const-string v11, "US/USA"

    if-eqz v6, :cond_4

    :try_start_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v6

    const-string v12, "search_soft_comments_ok"

    invoke-virtual {v6, v12}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v6

    invoke-static {v6}, Lcom/callerid/block/util/j;->d(Landroid/content/Context;)Lcom/callerid/block/bean/EZCountryCode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/callerid/block/bean/EZCountryCode;->getIso_code()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v12

    const-string v13, "us_comments_ok"

    invoke-virtual {v12, v13}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v12

    const-string v13, "in_comments_ok"

    invoke-virtual {v12, v13}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v12

    const-string v13, "irq_comments_ok"

    invoke-virtual {v12, v13}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_2
    if-eqz v6, :cond_3

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v12

    const-string v13, "egy_comments_ok"

    invoke-virtual {v12, v13}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v6

    const-string v12, "idn_comments_ok"

    invoke-virtual {v6, v12}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_4
    const-string v6, "categories"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v13, 0x0

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-eqz v14, :cond_b

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v14

    const-string v15, "search_categories_ok"

    invoke-virtual {v14, v15}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v14

    invoke-static {v14}, Lcom/callerid/block/util/j;->d(Landroid/content/Context;)Lcom/callerid/block/bean/EZCountryCode;

    move-result-object v14

    invoke-virtual {v14}, Lcom/callerid/block/bean/EZCountryCode;->getIso_code()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_5

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v15

    const-string v12, "us_categories_ok"

    invoke-virtual {v15, v12}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_5
    if-eqz v14, :cond_6

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v12

    const-string v15, "in_categories_ok"

    invoke-virtual {v12, v15}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_6
    if-eqz v14, :cond_7

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v12

    const-string v15, "irq_categories_ok"

    invoke-virtual {v12, v15}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_7
    if-eqz v14, :cond_8

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v12

    const-string v15, "egy_categories_ok"

    invoke-virtual {v12, v15}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_8
    if-eqz v14, :cond_9

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v12

    const-string v14, "idn_categories_ok"

    invoke-virtual {v12, v14}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ne v12, v5, :cond_a

    invoke-virtual {v6, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_a

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    invoke-static {}, Lcom/callerid/block/f/c;->G()Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/callerid/block/f/c;->E()Landroid/widget/LinearLayout;

    move-result-object v12

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Lcom/callerid/block/f/c;->H()Landroid/widget/RelativeLayout;

    move-result-object v12

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_a
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v12

    const/4 v14, 0x2

    if-ne v12, v14, :cond_b

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    invoke-static {}, Lcom/callerid/block/f/c;->D()Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/callerid/block/f/c;->E()Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Lcom/callerid/block/f/c;->F()Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_b
    const-string v6, "e164_tel_number"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c

    iget v12, v1, Lcom/callerid/block/f/c$i;->g:I

    if-ne v12, v5, :cond_c

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v12

    const-string v14, "unknown_incoming_search_e164_ok"

    invoke-virtual {v12, v14}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_c
    const-string v12, "cc"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v14, "faild_error_log"

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    iget v15, v1, Lcom/callerid/block/f/c$i;->g:I

    if-ne v15, v5, :cond_d

    iget-boolean v15, v1, Lcom/callerid/block/f/c$i;->i:Z

    if-nez v15, :cond_d

    iget-object v15, v1, Lcom/callerid/block/f/c$i;->a:Ljava/lang/String;

    invoke-static {v15, v12, v6, v14}, Lcom/callerid/block/f/c;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_d
    const-string v6, "testyahu"

    if-nez v14, :cond_e

    :try_start_2
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v12

    const-string v14, "new_search_failed"

    :goto_0
    invoke-virtual {v12, v14}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    if-ne v14, v5, :cond_14

    iget v12, v1, Lcom/callerid/block/f/c$i;->g:I

    if-ne v12, v5, :cond_f

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v12

    const-string v14, "unknown_incoming_search_ok"

    invoke-virtual {v12, v14}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_f
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v12

    invoke-static {}, Lcom/callerid/block/util/k;->a()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/callerid/block/util/k;->f(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u96c5\u864e\u67e5\u8be2\u6210\u529f\uff1a"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/callerid/block/util/k;->a()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v12

    const-string v14, "new_search_success"

    invoke-virtual {v12, v14}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v12

    invoke-static {v12}, Lcom/callerid/block/util/j;->d(Landroid/content/Context;)Lcom/callerid/block/bean/EZCountryCode;

    move-result-object v12

    invoke-virtual {v12}, Lcom/callerid/block/bean/EZCountryCode;->getIso_code()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_10

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v14

    const-string v15, "us_search_ok"

    invoke-virtual {v14, v15}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_10
    if-eqz v12, :cond_11

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v14

    const-string v15, "in_search_ok"

    invoke-virtual {v14, v15}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_11
    if-eqz v12, :cond_12

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v14

    const-string v15, "irq_search_ok"

    invoke-virtual {v14, v15}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_12
    if-eqz v12, :cond_13

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v14

    const-string v15, "egy_search_ok"

    invoke-virtual {v14, v15}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_13
    if-eqz v12, :cond_14

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v12

    const-string v14, "idn_search_ok"

    goto/16 :goto_0

    :cond_14
    :goto_1
    const-string v12, "area_error_log"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    const-string v12, "name"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1a

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1a

    invoke-virtual {v0, v12}, Lcom/callerid/block/search/EZSearchResult;->setName(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v12

    const-string v14, "new_search_name_success"

    invoke-virtual {v12, v14}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    iget v12, v1, Lcom/callerid/block/f/c$i;->g:I

    if-ne v12, v5, :cond_15

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v12

    const-string v14, "unknown_incoming_search_name_ok"

    invoke-virtual {v12, v14}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_15
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v12

    invoke-static {}, Lcom/callerid/block/util/k;->a()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/callerid/block/util/k;->i(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u96c5\u864e\u67e5\u8be2\u51fa\u540d\u5b57\uff1a"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/callerid/block/util/k;->a()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v12

    invoke-static {v12}, Lcom/callerid/block/util/j;->d(Landroid/content/Context;)Lcom/callerid/block/bean/EZCountryCode;

    move-result-object v12

    invoke-virtual {v12}, Lcom/callerid/block/bean/EZCountryCode;->getIso_code()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_16

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v14

    const-string v15, "us_unknown_name_ok"

    invoke-virtual {v14, v15}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_16
    if-eqz v12, :cond_17

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v14

    const-string v15, "in_unknown_name_ok"

    invoke-virtual {v14, v15}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_17
    if-eqz v12, :cond_18

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_18

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v14

    const-string v15, "irq_unknown_name_ok"

    invoke-virtual {v14, v15}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_18
    if-eqz v12, :cond_19

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_19

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v14

    const-string v15, "egy_unknown_name_ok"

    invoke-virtual {v14, v15}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_19
    if-eqz v12, :cond_1b

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1b

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v12

    const-string v14, "idn_unknown_name_ok"

    :goto_2
    invoke-virtual {v12, v14}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    goto :goto_3

    :cond_1a
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v12

    const-string v14, "new_search_name_failed"

    goto :goto_2

    :cond_1b
    :goto_3
    const-string v12, "report_count"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1c

    const/4 v12, 0x0

    goto :goto_4

    :cond_1c
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    :goto_4
    if-eqz v4, :cond_22

    if-lez v12, :cond_22

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_22

    invoke-virtual {v0, v5}, Lcom/callerid/block/search/EZSearchResult;->setIsSpam(Z)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v14

    const-string v15, "search_number_float_spam"

    invoke-virtual {v14, v15}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    iget v14, v1, Lcom/callerid/block/f/c$i;->g:I

    if-ne v14, v5, :cond_1d

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v14

    const-string v15, "unknown_incoming_search_spam_ok"

    invoke-virtual {v14, v15}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_1d
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v14

    invoke-static {}, Lcom/callerid/block/util/k;->a()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/callerid/block/util/k;->j(Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u96c5\u864e\u67e5\u8be2\u51faspam\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/callerid/block/util/k;->a()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v6

    invoke-static {v6}, Lcom/callerid/block/util/j;->d(Landroid/content/Context;)Lcom/callerid/block/bean/EZCountryCode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/callerid/block/bean/EZCountryCode;->getIso_code()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1e

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1e

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v11

    const-string v14, "us_unknown_spam_ok"

    invoke-virtual {v11, v14}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_1e
    if-eqz v6, :cond_1f

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v10

    const-string v11, "in_unknown_sapm_ok"

    invoke-virtual {v10, v11}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_1f
    if-eqz v6, :cond_20

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v9

    const-string v10, "irq_unknown_sapm_ok"

    invoke-virtual {v9, v10}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_20
    if-eqz v6, :cond_21

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v8

    const-string v9, "egy_unknown_sapm_ok"

    invoke-virtual {v8, v9}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_21
    if-eqz v6, :cond_23

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v6

    const-string v7, "idn_unknown_sapm_ok"

    invoke-virtual {v6, v7}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    goto :goto_5

    :cond_22
    invoke-virtual {v0, v13}, Lcom/callerid/block/search/EZSearchResult;->setIsSpam(Z)V

    :cond_23
    :goto_5
    const-string v6, "format_tel_number"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_24

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_24

    invoke-static {}, Lcom/callerid/block/f/c;->Q()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_24
    invoke-static {}, Lcom/callerid/block/f/c;->B()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_25

    invoke-static {}, Lcom/callerid/block/f/c;->B()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_25

    goto :goto_6

    :cond_25
    invoke-virtual {v0}, Lcom/callerid/block/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_26

    invoke-virtual {v0}, Lcom/callerid/block/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_26

    invoke-virtual {v0}, Lcom/callerid/block/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/callerid/block/f/c;->C(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/callerid/block/f/c;->P()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v0}, Lcom/callerid/block/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_26
    if-eqz v6, :cond_27

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_27

    invoke-static {}, Lcom/callerid/block/f/c;->P()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_27
    :goto_6
    const-string v6, "old_tel_number"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_28

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_28

    invoke-virtual {v0, v6}, Lcom/callerid/block/search/EZSearchResult;->setOld_tel_number(Ljava/lang/String;)V

    :cond_28
    invoke-virtual {v0}, Lcom/callerid/block/search/EZSearchResult;->isSpam()Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v7, "searchNumber"

    if-nez v6, :cond_2a

    :try_start_3
    invoke-virtual {v0}, Lcom/callerid/block/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_29

    invoke-virtual {v0}, Lcom/callerid/block/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_29

    goto :goto_7

    :cond_29
    invoke-static {}, Lcom/callerid/block/f/c;->c()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v13}, Lcom/callerid/block/util/n0;->R0(Landroid/content/Context;Z)V

    goto/16 :goto_8

    :cond_2a
    :goto_7
    invoke-static {}, Lcom/callerid/block/f/c;->c()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/callerid/block/util/n0;->R0(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/callerid/block/f/c;->c()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/callerid/block/util/n0;->O(Landroid/content/Context;)J

    move-result-wide v8

    const-wide/16 v10, 0x1

    cmp-long v6, v8, v10

    if-eqz v6, :cond_2b

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v6

    invoke-static {v6}, Lcom/callerid/block/util/n0;->b0(Landroid/content/Context;)I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "spam_or_name:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/2addr v6, v5

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/callerid/block/util/n0;->o1(Landroid/content/Context;I)V

    :cond_2b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {}, Lcom/callerid/block/f/c;->c()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/callerid/block/util/n0;->B(Landroid/content/Context;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/32 v10, 0x5265c00

    cmp-long v6, v8, v10

    if-gez v6, :cond_2d

    invoke-static {}, Lcom/callerid/block/f/c;->c()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/callerid/block/util/n0;->q(Landroid/content/Context;)I

    move-result v6

    if-ne v6, v5, :cond_2c

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v6

    const-string v8, "first_identify"

    invoke-virtual {v6, v8}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/f/c;->c()Landroid/content/Context;

    move-result-object v6

    const/4 v8, 0x2

    invoke-static {v6, v8}, Lcom/callerid/block/util/n0;->A0(Landroid/content/Context;I)V

    goto :goto_8

    :cond_2c
    const/4 v8, 0x2

    if-ne v6, v8, :cond_2d

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v6

    const-string v8, "second_identify"

    invoke-virtual {v6, v8}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/f/c;->c()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v13}, Lcom/callerid/block/util/n0;->A0(Landroid/content/Context;I)V

    :cond_2d
    :goto_8
    invoke-virtual {v0}, Lcom/callerid/block/search/EZSearchResult;->isSpam()Z

    move-result v6

    if-eqz v6, :cond_2e

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/callerid/block/util/n0;->Q0(Landroid/content/Context;Z)V

    goto :goto_9

    :cond_2e
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v5

    invoke-static {v5, v13}, Lcom/callerid/block/util/n0;->Q0(Landroid/content/Context;Z)V

    :goto_9
    const-string v5, "avatar"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2f

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2f

    invoke-virtual {v0, v5}, Lcom/callerid/block/search/EZSearchResult;->setIcon(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/f/c;->c()Landroid/content/Context;

    move-result-object v6

    invoke-static {}, Lcom/callerid/block/f/c;->A()I

    move-result v8

    invoke-static {}, Lcom/callerid/block/f/c;->S()Landroid/widget/ImageView;

    move-result-object v9

    invoke-static {v6, v5, v8, v9}, Lcom/callerid/block/util/p;->b(Landroid/content/Context;Ljava/lang/Object;ILandroid/widget/ImageView;)V

    :cond_2f
    const-string v5, "operator"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "type"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const/16 v6, 0x8

    if-eqz v5, :cond_30

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_30

    invoke-static {}, Lcom/callerid/block/f/c;->R()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/callerid/block/f/c;->R()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_30
    invoke-static {}, Lcom/callerid/block/f/c;->R()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_a
    const-string v5, "belong_area"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_31

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_31

    invoke-static {}, Lcom/callerid/block/f/c;->c()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/callerid/block/util/z;->h(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Lcom/callerid/block/search/EZSearchResult;->setLocation(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u4f4d\u7f6e\uff1a"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/f/c;->J()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v0}, Lcom/callerid/block/search/EZSearchResult;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/callerid/block/f/c;->J()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b

    :cond_31
    invoke-static {}, Lcom/callerid/block/f/c;->J()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_b
    const v0, 0x7f080065

    if-eqz v4, :cond_32

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_32

    if-nez v12, :cond_32

    invoke-static {}, Lcom/callerid/block/f/c;->S()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/callerid/block/f/c;->I()V

    invoke-static {}, Lcom/callerid/block/f/c;->K()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/callerid/block/f/c;->K()Landroid/widget/TextView;

    move-result-object v5

    invoke-static {}, Lcom/callerid/block/f/c;->c()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/callerid/block/util/t0;->r(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_32
    if-eqz v4, :cond_33

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    if-lez v12, :cond_33

    invoke-static {}, Lcom/callerid/block/f/c;->S()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/callerid/block/f/c;->I()V

    invoke-static {}, Lcom/callerid/block/f/c;->K()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/callerid/block/f/c;->K()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/callerid/block/f/c;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/callerid/block/util/t0;->r(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_33
    iget-object v0, v1, Lcom/callerid/block/f/c$i;->a:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/callerid/block/util/l0;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_c

    :cond_34
    const/16 v0, -0x14

    if-ne v4, v0, :cond_35

    invoke-static {}, Lcom/callerid/block/util/n;->a()V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v2, "search_result_status_20"

    invoke-virtual {v0, v2}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_35
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v2, "search_result_status_failed"

    invoke-virtual {v0, v2}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v2, "search_number_exception"

    invoke-virtual {v0, v2}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    goto :goto_c

    :cond_36
    iget-object v0, v1, Lcom/callerid/block/f/c$i;->a:Ljava/lang/String;

    iget v2, v1, Lcom/callerid/block/f/c$i;->h:I

    invoke-static {v0, v2}, Lcom/callerid/block/f/c;->O(Ljava/lang/String;I)V

    :goto_c
    return-void
.end method
