.class Lcom/allinone/callerid/i/a/i/b$a;
.super Landroid/os/AsyncTask;
.source "CollectInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/i/a/i/b;
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
.field private a:Lcom/allinone/callerid/i/a/i/a;

.field private b:Landroid/content/Context;

.field private c:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/json/JSONArray;Lcom/allinone/callerid/i/a/i/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/allinone/callerid/i/a/i/b$a;->a:Lcom/allinone/callerid/i/a/i/a;

    .line 3
    iput-object p1, p0, Lcom/allinone/callerid/i/a/i/b$a;->b:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/allinone/callerid/i/a/i/b$a;->c:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    const/4 p1, 0x0

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/i/a/i/b$a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/allinone/callerid/util/h1;->H(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/allinone/callerid/i/a/i/b$a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/allinone/callerid/util/p;->d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/h1;->R()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {}, Lcom/allinone/callerid/util/h1;->N()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-static {}, Lcom/allinone/callerid/util/h1;->G()Ljava/lang/String;

    move-result-object v5

    .line 7
    iget-object v6, p0, Lcom/allinone/callerid/i/a/i/b$a;->b:Landroid/content/Context;

    invoke-static {v6}, Lcom/allinone/callerid/util/p;->d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/allinone/callerid/model/EZCountryCode;->getIso_code()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 8
    invoke-static {}, Lcom/allinone/callerid/i/a/o/c;->a()Lcom/allinone/callerid/i/a/o/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/allinone/callerid/i/a/o/c;->b()Lcom/allinone/callerid/bean/ParserIpBean;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, ""

    if-eqz v7, :cond_5

    .line 9
    :try_start_1
    invoke-virtual {v7}, Lcom/allinone/callerid/bean/ParserIpBean;->getCountry()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v7}, Lcom/allinone/callerid/bean/ParserIpBean;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 10
    invoke-virtual {v7}, Lcom/allinone/callerid/bean/ParserIpBean;->getCountry()Ljava/lang/String;

    move-result-object v6

    .line 11
    :cond_0
    invoke-virtual {v7}, Lcom/allinone/callerid/bean/ParserIpBean;->getState()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v7}, Lcom/allinone/callerid/bean/ParserIpBean;->getState()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 12
    invoke-virtual {v7}, Lcom/allinone/callerid/bean/ParserIpBean;->getState()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v7}, Lcom/allinone/callerid/bean/ParserIpBean;->getState_full()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v7}, Lcom/allinone/callerid/bean/ParserIpBean;->getState_full()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 14
    invoke-virtual {v7}, Lcom/allinone/callerid/bean/ParserIpBean;->getState_full()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_2
    move-object v9, v8

    .line 15
    :goto_0
    invoke-virtual {v7}, Lcom/allinone/callerid/bean/ParserIpBean;->getCity()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v7}, Lcom/allinone/callerid/bean/ParserIpBean;->getCity()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 16
    invoke-virtual {v7}, Lcom/allinone/callerid/bean/ParserIpBean;->getCity()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_3
    move-object v10, v8

    .line 17
    :goto_1
    invoke-virtual {v7}, Lcom/allinone/callerid/bean/ParserIpBean;->getTrue_ip()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-virtual {v7}, Lcom/allinone/callerid/bean/ParserIpBean;->getTrue_ip()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 18
    invoke-virtual {v7}, Lcom/allinone/callerid/bean/ParserIpBean;->getTrue_ip()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_4
    move-object v7, v8

    goto :goto_2

    :cond_5
    move-object v7, v8

    move-object v9, v7

    move-object v10, v9

    .line 19
    :goto_2
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 20
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 21
    invoke-static {v1}, Lcom/allinone/callerid/util/h1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 22
    invoke-static {v2}, Lcom/allinone/callerid/util/h1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 23
    invoke-static {v3}, Lcom/allinone/callerid/util/h1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 24
    invoke-static {v4}, Lcom/allinone/callerid/util/h1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 25
    invoke-static {v5}, Lcom/allinone/callerid/util/h1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 26
    invoke-static {v7}, Lcom/allinone/callerid/util/h1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 27
    invoke-static {v6}, Lcom/allinone/callerid/util/h1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 28
    invoke-static {v9}, Lcom/allinone/callerid/util/h1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 29
    invoke-static {v10}, Lcom/allinone/callerid/util/h1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "user_info"

    .line 30
    invoke-virtual {v11, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "tel_number_info"

    .line 31
    iget-object v2, p0, Lcom/allinone/callerid/i/a/i/b$a;->c:Lorg/json/JSONArray;

    invoke-virtual {v11, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "platform"

    const-string v2, "android"

    .line 32
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "uid"

    .line 33
    iget-object v2, p0, Lcom/allinone/callerid/i/a/i/b$a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/allinone/callerid/util/h1;->T(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_version"

    .line 34
    iget-object v2, p0, Lcom/allinone/callerid/i/a/i/b$a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/allinone/callerid/util/h1;->W(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "origin"

    const-string v2, "app"

    .line 35
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "stamp"

    .line 36
    iget-object v2, p0, Lcom/allinone/callerid/i/a/i/b$a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/allinone/callerid/util/h1;->T(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/allinone/callerid/util/h1;->Q(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-boolean v1, Lcom/allinone/callerid/util/c0;->a:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "\\\\"

    const-string v3, "collectinfo"

    if-eqz v1, :cond_6

    .line 38
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_6
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/allinone/callerid/util/v;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    .line 40
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-boolean v1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v1, :cond_7

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v1, "https://ct.show-caller.com/c_n/api/v1/cnwik.php"

    .line 43
    invoke-static {v1, v0}, Lcom/allinone/callerid/j/a;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 44
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_8

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_3
    return-object p1
.end method

.method protected b(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/i/a/i/b$a;->a:Lcom/allinone/callerid/i/a/i/a;

    invoke-interface {v0, p1}, Lcom/allinone/callerid/i/a/i/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/i/b$a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/i/b$a;->b(Ljava/lang/String;)V

    return-void
.end method
