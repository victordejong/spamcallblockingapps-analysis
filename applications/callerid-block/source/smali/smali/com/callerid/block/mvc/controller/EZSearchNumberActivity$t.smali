.class Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "t"
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

.field g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t;->f:Ljava/lang/String;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t;->g:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected a([Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/t0;->E(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t;->c:Ljava/lang/String;

    if-eqz p1, :cond_3

    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    const-string v0, "searchNumber"

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6240\u6709\u53c2\u6570\uff1anumber:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "device:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "uid:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t;->c:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "version:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t;->d:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "default_cc:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t;->e:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "cc:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/callerid/block/util/j;->d(Landroid/content/Context;)Lcom/callerid/block/bean/EZCountryCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "stamp:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t;->f:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v1, "search_number_online"

    invoke-virtual {p1, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/callerid/block/util/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tel_number"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t;->b:Ljava/lang/String;

    const-string v2, "device"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t;->c:Ljava/lang/String;

    const-string v2, "uid"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t;->d:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t;->e:Ljava/lang/String;

    const-string v2, "default_cc"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/callerid/block/util/j;->d(Landroid/content/Context;)Lcom/callerid/block/bean/EZCountryCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callerid/block/bean/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cc"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t;->f:Ljava/lang/String;

    const-string v2, "stamp"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cid"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "https://app.ayamote.com/api/v1/sea.php"

    const-string v2, "utf-8"

    invoke-static {v1, p1, v2}, Lcom/callerid/block/util/t;->e(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-boolean v1, Lcom/callerid/block/util/w;->a:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {p1}, Lcom/callerid/block/util/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-boolean v1, Lcom/callerid/block/util/w;->a:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enlode_result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v1, p0

    const-string v0, "report_count"

    const-string v2, " "

    invoke-super/range {p0 .. p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    if-eqz v3, :cond_15

    iget-object v4, v3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->w:Ljava/util/List;

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, v3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->w:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iget-object v4, v3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->y:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    invoke-static {v3}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->W(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/callerid/block/util/j;->d(Landroid/content/Context;)Lcom/callerid/block/bean/EZCountryCode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callerid/block/bean/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "searchNumber"

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/callerid/block/util/j;->d(Landroid/content/Context;)Lcom/callerid/block/bean/EZCountryCode;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->y0(Lcom/callerid/block/bean/EZCountryCode;)V

    const-string v4, "def_cc\u521d\u59cb\u5316"

    invoke-static {v5, v4}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {v3}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->Y(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ProgressBar;

    move-result-object v4

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance v4, Lcom/callerid/block/search/EZSearchResult;

    invoke-direct {v4}, Lcom/callerid/block/search/EZSearchResult;-><init>()V

    iget-object v7, v1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t;->a:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/callerid/block/search/EZSearchResult;->setNumber(Ljava/lang/String;)V

    const/4 v9, 0x0

    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v11, "status"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_12

    iget-object v11, v1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t;->a:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/callerid/block/util/l0;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v11, "type_label"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v11}, Lcom/callerid/block/util/t0;->r(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/callerid/block/search/EZSearchResult;->setType_label(Ljava/lang/String;)V

    const-string v13, "type"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v13}, Lcom/callerid/block/util/t0;->w(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/callerid/block/search/EZSearchResult;->setType(Ljava/lang/String;)V

    const-string v13, "faild_error_log"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_2

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v13

    const-string v14, "new_search_failed_zhudong"

    :goto_0
    invoke-virtual {v13, v14}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-ne v13, v12, :cond_3

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v13

    const-string v14, "new_search_success_zhudong"

    goto :goto_0

    :cond_3
    :goto_1
    const-string v13, "area_error_log"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_4

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v13

    const-string v14, "search_number_location_failed"

    :goto_2
    invoke-virtual {v13, v14}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    if-ne v13, v12, :cond_5

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v13

    const-string v14, "search_number_location_success"

    goto :goto_2

    :cond_5
    :goto_3
    const-string v13, "name"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v14, ""

    if-eqz v13, :cond_6

    :try_start_1
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    invoke-virtual {v4, v13}, Lcom/callerid/block/search/EZSearchResult;->setName(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v15

    const-string v7, "new_search_name_success_zhudong"

    invoke-virtual {v15, v7}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    invoke-virtual {v4, v14}, Lcom/callerid/block/search/EZSearchResult;->setName(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v7

    const-string v15, "new_search_name_failed_zhudong"

    invoke-virtual {v7, v15}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :goto_4
    const-string v7, "old_tel_number"

    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    invoke-virtual {v4, v7}, Lcom/callerid/block/search/EZSearchResult;->setOld_tel_number(Ljava/lang/String;)V

    :cond_7
    const-string v7, "operator"

    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    invoke-virtual {v4, v7}, Lcom/callerid/block/search/EZSearchResult;->setOperator(Ljava/lang/String;)V

    :cond_8
    const-string v7, "format_tel_number"

    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    invoke-virtual {v4, v7}, Lcom/callerid/block/search/EZSearchResult;->setFormat_tel_number(Ljava/lang/String;)V

    :cond_9
    const-string v7, "tel_number"

    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/callerid/block/search/EZSearchResult;->setTel_number(Ljava/lang/String;)V

    const-string v7, "t_p"

    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/callerid/block/search/EZSearchResult;->setT_p(Ljava/lang/String;)V

    const-string v7, "avatar"

    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a

    invoke-virtual {v4, v7}, Lcom/callerid/block/search/EZSearchResult;->setIcon(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    const/4 v7, 0x0

    goto :goto_5

    :cond_b
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    :goto_5
    if-eqz v11, :cond_c

    if-lez v7, :cond_c

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    invoke-virtual {v4, v12}, Lcom/callerid/block/search/EZSearchResult;->setIsSpam(Z)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v7

    const-string v15, "search_number_spam"

    invoke-virtual {v7, v15}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    invoke-virtual {v4, v9}, Lcom/callerid/block/search/EZSearchResult;->setIsSpam(Z)V

    :goto_6
    const-string v7, "belong_area"

    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d

    invoke-virtual {v4, v7}, Lcom/callerid/block/search/EZSearchResult;->setLocation(Ljava/lang/String;)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u4f4d\u7f6e\uff1a"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_d
    invoke-virtual {v4, v14}, Lcom/callerid/block/search/EZSearchResult;->setLocation(Ljava/lang/String;)V

    :goto_7
    const-string v5, "address"

    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {v4, v5}, Lcom/callerid/block/search/EZSearchResult;->setLocation(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v5

    const-string v7, "search_number_address_success"

    invoke-virtual {v5, v7}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/callerid/block/search/EZSearchResult;->setComplaint_times(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->i0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Z

    move-result v0

    if-eqz v0, :cond_11

    if-eqz v13, :cond_f

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_8

    :cond_f
    const/4 v0, 0x0

    :goto_8
    if-eqz v11, :cond_10

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    const/4 v5, 0x1

    goto :goto_9

    :cond_10
    const/4 v5, 0x0

    :goto_9
    or-int/2addr v0, v5

    if-eqz v0, :cond_11

    invoke-static {v3}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->k0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v5, "searched_limit_show"

    invoke-virtual {v0, v5}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_11
    iget-object v0, v3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->w:Ljava/util/List;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, v3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->w:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->y:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;

    invoke-static {v3}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->i0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->a(Z)V

    iget-object v0, v3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->y:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, v3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->v:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, v3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->v:Landroid/widget/ListView;

    invoke-virtual {v0, v12}, Landroid/widget/ListView;->setClickable(Z)V

    goto :goto_a

    :cond_12
    invoke-static {v3}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->e0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    invoke-static {v3}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->e0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setClickable(Z)V

    iget-object v0, v3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->v:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, v3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->v:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setClickable(Z)V

    invoke-static {v3}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->R(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {v3, v12}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->a0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;Z)Z

    invoke-static {v3}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->R(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f100147

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f1000f0

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    :goto_a
    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, v1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t;->a:Ljava/lang/String;

    new-instance v5, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t$a;

    invoke-direct {v5, v1, v3}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t$a;-><init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t;Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)V

    invoke-static {v0, v4, v5}, Lcom/callerid/block/h/a/e/l/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/callerid/block/h/a/e/l/b;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    invoke-static {v3}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->e0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    invoke-static {v3}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->e0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setClickable(Z)V

    iget-object v0, v3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->v:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, v3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->v:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setClickable(Z)V

    invoke-static {v3}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->R(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f100147

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f1000f0

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_b
    iget-object v0, v3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    invoke-static {v3}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->R(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_c

    :cond_14
    invoke-static {v3}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->e0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    invoke-static {v3}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->e0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setClickable(Z)V

    iget-object v0, v3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->v:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, v3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->v:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setClickable(Z)V

    invoke-static {v3}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->R(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100147

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1000f0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_15
    :goto_c
    return-void
.end method
