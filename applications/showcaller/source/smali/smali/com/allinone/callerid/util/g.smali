.class public Lcom/allinone/callerid/util/g;
.super Landroid/os/AsyncTask;
.source "CopySearchNumberAsync.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/allinone/callerid/util/g;->a:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/allinone/callerid/util/g;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected a([Ljava/lang/Object;)Ljava/lang/String;
    .locals 10

    const-string p1, "searchCopy"

    const-string v0, ""

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/allinone/callerid/util/h1;->T(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/allinone/callerid/util/h1;->W(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v3

    invoke-static {v3}, Lcom/allinone/callerid/util/p;->d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v4

    iget-object v5, p0, Lcom/allinone/callerid/util/g;->a:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/allinone/callerid/util/h1;->Q(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "android"

    .line 5
    iget-object v6, p0, Lcom/allinone/callerid/util/g;->a:Ljava/lang/String;

    if-eqz v6, :cond_1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz v4, :cond_1

    .line 9
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 10
    sget-boolean v6, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v6, :cond_0

    .line 11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u6240\u6709\u53c2\u6570\uff1anumber:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/allinone/callerid/util/g;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\ndevice:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\nuid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\nversion:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\ndefault_cc:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\nstamp:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v6, "https://app.show-caller.com/api/v1/sea.php"

    .line 12
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v8, "tel_number"

    .line 13
    iget-object v9, p0, Lcom/allinone/callerid/util/g;->a:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "device"

    .line 14
    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "uid"

    .line 15
    invoke-virtual {v7, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "version"

    .line 16
    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "default_cc"

    .line 17
    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cc"

    .line 18
    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "stamp"

    .line 19
    invoke-virtual {v7, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cid"

    .line 20
    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "is_contacts"

    .line 21
    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {v6, v7}, Lcom/allinone/callerid/j/a;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v1, :cond_2

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resultJson:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_6

    const-string v0, ""

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 3
    new-instance v1, Lcom/allinone/callerid/search/CallLogBean;

    invoke-direct {v1}, Lcom/allinone/callerid/search/CallLogBean;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/allinone/callerid/util/g;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/search/CallLogBean;->E0(Ljava/lang/String;)V

    .line 5
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "status"

    .line 6
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_6

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/util/g;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, p1, v4}, Lcom/allinone/callerid/util/x0;->b(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string p1, "type_label"

    .line 8
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/allinone/callerid/util/h1;->D(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/allinone/callerid/search/CallLogBean;->e1(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, p1}, Lcom/allinone/callerid/search/CallLogBean;->f1(Ljava/lang/String;)V

    const-string p1, "name"

    .line 11
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 13
    invoke-virtual {v1, p1}, Lcom/allinone/callerid/search/CallLogBean;->C0(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1, p1}, Lcom/allinone/callerid/search/CallLogBean;->M0(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v1, v0}, Lcom/allinone/callerid/search/CallLogBean;->C0(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1, v0}, Lcom/allinone/callerid/search/CallLogBean;->M0(Ljava/lang/String;)V

    :goto_0
    const-string p1, "report_count"

    .line 17
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-virtual {v1, p1}, Lcom/allinone/callerid/search/CallLogBean;->L0(Ljava/lang/String;)V

    const-string p1, "old_tel_number"

    .line 19
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 21
    invoke-virtual {v1, p1}, Lcom/allinone/callerid/search/CallLogBean;->G0(Ljava/lang/String;)V

    :cond_1
    const-string p1, "format_tel_number"

    .line 22
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 24
    invoke-virtual {v1, p1}, Lcom/allinone/callerid/search/CallLogBean;->x0(Ljava/lang/String;)V

    :cond_2
    const-string p1, "avatar"

    .line 25
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 27
    invoke-virtual {v1, p1}, Lcom/allinone/callerid/search/CallLogBean;->e0(Ljava/lang/String;)V

    :cond_3
    const-string p1, "operator"

    .line 28
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-virtual {v1, p1}, Lcom/allinone/callerid/search/CallLogBean;->H0(Ljava/lang/String;)V

    const-string p1, "type"

    .line 30
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-virtual {v1, p1}, Lcom/allinone/callerid/search/CallLogBean;->O0(Ljava/lang/String;)V

    const-string p1, "address"

    .line 32
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-virtual {v1, p1}, Lcom/allinone/callerid/search/CallLogBean;->d0(Ljava/lang/String;)V

    const-string p1, "belong_area"

    .line 34
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 36
    invoke-virtual {v1, p1}, Lcom/allinone/callerid/search/CallLogBean;->g0(Ljava/lang/String;)V

    goto :goto_1

    .line 37
    :cond_4
    invoke-virtual {v1, v0}, Lcom/allinone/callerid/search/CallLogBean;->g0(Ljava/lang/String;)V

    :goto_1
    const-string p1, "faild_error_log"

    .line 38
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    if-ne p1, v3, :cond_6

    .line 39
    :try_start_1
    invoke-static {}, Lcom/allinone/callerid/h/a;->o()Lcom/allinone/callerid/h/a;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/util/g;->b:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/allinone/callerid/h/a;->u(Landroid/content/Context;Lcom/allinone/callerid/search/CallLogBean;)V

    .line 40
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/allinone/callerid/util/g$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/util/g$a;-><init>(Lcom/allinone/callerid/util/g;)V

    const-wide/16 v1, 0x1770

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 41
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_2
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/util/g;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/util/g;->b(Ljava/lang/String;)V

    return-void
.end method
