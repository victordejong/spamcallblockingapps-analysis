.class Lcom/allinone/callerid/g/e$v;
.super Landroid/os/AsyncTask;
.source "EZSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/g/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "v"
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
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/allinone/callerid/g/e;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/allinone/callerid/model/EZSearchContacts;

.field private d:Z

.field private e:Z


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/e;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/allinone/callerid/g/e;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/allinone/callerid/g/e$v;->a:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object p2, p0, Lcom/allinone/callerid/g/e$v;->b:Ljava/util/List;

    .line 4
    iput-boolean p3, p0, Lcom/allinone/callerid/g/e$v;->d:Z

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 38

    move-object/from16 v1, p0

    const-string v2, "type_tags"

    const-string v3, "name_tags"

    const-string v4, "name"

    const-string v5, "report_count"

    const-string v6, "type_label"

    const-string v7, "faild_error_log"

    const-string v8, "cc"

    .line 1
    iget-object v0, v1, Lcom/allinone/callerid/g/e$v;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/allinone/callerid/g/e;

    .line 2
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v10

    .line 3
    invoke-static {v10}, Lcom/allinone/callerid/util/p;->d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    if-eqz v9, :cond_17

    .line 4
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-object v13, v1, Lcom/allinone/callerid/g/e$v;->b:Ljava/util/List;

    invoke-direct {v0, v13}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    sget-boolean v13, Lcom/allinone/callerid/util/c0;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d

    const-string v14, "searchList"

    if-eqz v13, :cond_0

    .line 7
    :try_start_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "tel_number_list:"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Lcom/allinone/callerid/util/c0;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v13, "android"

    .line 8
    invoke-static {v0}, Lcom/allinone/callerid/util/v;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v10}, Lcom/allinone/callerid/util/h1;->T(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 p1, v2

    .line 10
    invoke-static {v10}, Lcom/allinone/callerid/util/h1;->W(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v3

    .line 11
    iget-object v3, v1, Lcom/allinone/callerid/g/e$v;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v17
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d

    const/4 v1, 0x1

    move-object/from16 v18, v4

    add-int/lit8 v4, v17, -0x1

    :try_start_2
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v10, v3}, Lcom/allinone/callerid/util/h1;->Q(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 12
    sget-boolean v4, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v4, :cond_1

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6240\u6709\u53c2\u6570\uff1atel_number_list:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ndevice:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nuid:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nversion:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ndefault_cc:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nstamp:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_1
    invoke-static {v10}, Lcom/allinone/callerid/util/e;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 15
    invoke-static {v9}, Lcom/allinone/callerid/g/e;->U2(Lcom/allinone/callerid/g/e;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/allinone/callerid/l/a/f;->c(Ljava/util/List;Ljava/lang/String;)V

    return-object v12

    .line 16
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v4, "tel_number_list"

    .line 17
    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "device"

    .line 18
    invoke-virtual {v1, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "uid"

    .line 19
    invoke-virtual {v1, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "version"

    .line 20
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "default_cc"

    .line 21
    invoke-virtual {v1, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-virtual {v1, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "stamp"

    .line 23
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "https://app.show-caller.com/api/v1/sealis.php"

    .line 24
    invoke-static {v0, v1}, Lcom/allinone/callerid/j/a;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c

    .line 25
    :try_start_3
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b

    if-eqz v0, :cond_3

    .line 26
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enlode_result:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/allinone/callerid/util/c0;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v12, v1

    goto/16 :goto_11

    :cond_3
    :goto_0
    if-eqz v1, :cond_15

    .line 27
    :try_start_5
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 28
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "status"

    .line 29
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    const-string v2, "list"

    .line 30
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 32
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v4, v0, :cond_f

    .line 33
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 34
    new-instance v13, Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-direct {v13}, Lcom/allinone/callerid/model/EZSearchContacts;-><init>()V

    .line 35
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b

    const/4 v3, 0x1

    if-ne v15, v3, :cond_4

    .line 36
    :try_start_6
    invoke-virtual {v13, v3}, Lcom/allinone/callerid/model/EZSearchContacts;->setSearched(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-object v3, v1

    move-object v15, v2

    goto :goto_2

    :cond_4
    move-object v3, v1

    move-object v15, v2

    .line 37
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v13, v1, v2}, Lcom/allinone/callerid/model/EZSearchContacts;->setSearch_time(J)V

    :goto_2
    const-string v1, "old_tel_number"

    .line 38
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/allinone/callerid/model/EZSearchContacts;->setOld_tel_number(Ljava/lang/String;)V

    const-string v1, "tel_number"

    .line 39
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/allinone/callerid/model/EZSearchContacts;->setTel_number(Ljava/lang/String;)V

    const-string v1, "t_p"

    .line 40
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/allinone/callerid/model/EZSearchContacts;->setT_p(Ljava/lang/String;)V

    const-string v1, "format_tel_number"

    .line 41
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/allinone/callerid/model/EZSearchContacts;->setFormat_tel_number(Ljava/lang/String;)V

    const-string v1, "operator"

    .line 42
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/allinone/callerid/model/EZSearchContacts;->setOperator(Ljava/lang/String;)V

    const-string v1, "type"

    .line 43
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/allinone/callerid/model/EZSearchContacts;->setType(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/allinone/callerid/model/EZSearchContacts;->setType_label(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/allinone/callerid/model/EZSearchContacts;->setReport_count(Ljava/lang/String;)V

    move-object/from16 v1, v18

    .line 46
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/allinone/callerid/model/EZSearchContacts;->setName(Ljava/lang/String;)V

    const-string v2, "address"

    .line 47
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/allinone/callerid/model/EZSearchContacts;->setAddress(Ljava/lang/String;)V

    const-string v2, "belong_area"

    .line 48
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/allinone/callerid/model/EZSearchContacts;->setBelong_area(Ljava/lang/String;)V

    const-string v2, "avatar"

    .line 49
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/allinone/callerid/model/EZSearchContacts;->setAvatar(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v13, v2}, Lcom/allinone/callerid/model/EZSearchContacts;->setFaild_error_log(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    move-object/from16 v2, v16

    move-object/from16 v16, v3

    .line 51
    :try_start_8
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/allinone/callerid/model/EZSearchContacts;->setName_tags(Ljava/lang/String;)V

    move-object/from16 v3, p1

    move-object/from16 p1, v7

    .line 52
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Lcom/allinone/callerid/model/EZSearchContacts;->setType_tags(Ljava/lang/String;)V

    const-string v7, "soft_comments_tags"

    .line 53
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Lcom/allinone/callerid/model/EZSearchContacts;->setComment_tags(Ljava/lang/String;)V

    const-string v7, "country"

    .line 54
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Lcom/allinone/callerid/model/EZSearchContacts;->setCountry(Ljava/lang/String;)V

    const-string v7, "e164_tel_number"

    .line 55
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Lcom/allinone/callerid/model/EZSearchContacts;->setE164_tel_number(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Lcom/allinone/callerid/model/EZSearchContacts;->setCc(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v18, v1

    .line 58
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x1

    goto :goto_4

    .line 61
    :cond_6
    :goto_3
    invoke-static {}, Lcom/allinone/callerid/util/a1;->v0()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 62
    invoke-static {v0}, Lcom/allinone/callerid/util/a1;->c2(I)V

    .line 63
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_7

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "spam_or_name:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/allinone/callerid/util/a1;->v0()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_7
    :goto_4
    invoke-static {}, Lcom/allinone/callerid/util/a1;->h()Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    if-eqz v0, :cond_9

    .line 66
    :try_start_9
    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 67
    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getOld_tel_number()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/allinone/callerid/util/h1;->Y(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 68
    invoke-static {}, Lcom/allinone/callerid/f/i;->a()Lcom/allinone/callerid/f/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/f/i;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 69
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v1, 0x3

    if-ge v7, v1, :cond_8

    .line 70
    new-instance v0, Lcom/allinone/callerid/bean/SpamCall;

    invoke-direct {v0}, Lcom/allinone/callerid/bean/SpamCall;-><init>()V

    .line 71
    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getOld_tel_number()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/SpamCall;->setNumber(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/SpamCall;->setTypelabel(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/SpamCall;->setReportcounts(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/SpamCall;->setType(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getTel_number()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/SpamCall;->setTel_number(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getFormat_tel_number()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/SpamCall;->setFormat_tel_number(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/SpamCall;->setOperator(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/SpamCall;->setName(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/SpamCall;->setAddress(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getBelong_area()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/SpamCall;->setBelong_area(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/SpamCall;->setAvatar(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getName_tags()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/SpamCall;->setName_tags(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_tags()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/SpamCall;->setType_tags(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getComment_tags()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/SpamCall;->setComment_tags(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/SpamCall;->setCountry(Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/allinone/callerid/f/i;->a()Lcom/allinone/callerid/f/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/allinone/callerid/f/i;->c(Lcom/allinone/callerid/bean/SpamCall;)V

    goto/16 :goto_5

    :cond_8
    if-nez v0, :cond_9

    .line 87
    new-instance v0, Lcom/allinone/callerid/bean/SpamCall;

    invoke-direct {v0}, Lcom/allinone/callerid/bean/SpamCall;-><init>()V

    .line 88
    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getOld_tel_number()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/SpamCall;->setNumber(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/SpamCall;->setTypelabel(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/SpamCall;->setReportcounts(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/SpamCall;->setType(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getTel_number()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/SpamCall;->setTel_number(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getFormat_tel_number()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/SpamCall;->setFormat_tel_number(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/SpamCall;->setOperator(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/SpamCall;->setName(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/SpamCall;->setAddress(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getBelong_area()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/SpamCall;->setBelong_area(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/SpamCall;->setAvatar(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getName_tags()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/SpamCall;->setName_tags(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_tags()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/SpamCall;->setType_tags(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getComment_tags()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/SpamCall;->setComment_tags(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/SpamCall;->setCountry(Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/allinone/callerid/f/i;->a()Lcom/allinone/callerid/f/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/allinone/callerid/f/i;->c(Lcom/allinone/callerid/bean/SpamCall;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 104
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 105
    :cond_9
    :goto_5
    :try_start_b
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v0

    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getOld_tel_number()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/f/f;->d(Ljava/lang/String;)Lcom/allinone/callerid/model/EZSearchContacts;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    const/4 v7, 0x1

    move-object/from16 v1, p0

    :try_start_c
    iput-object v0, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    if-eqz v0, :cond_e

    .line 106
    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZSearchContacts;->getSearch_time()J

    move-result-wide v19
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    const-wide/16 v21, 0x0

    cmp-long v0, v19, v21

    if-eqz v0, :cond_a

    .line 107
    :try_start_d
    iget-object v0, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/allinone/callerid/model/EZSearchContacts;->setIs_can_search(Z)V

    .line 108
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v0

    iget-object v7, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    const-string v19, "is_can_search"
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    move-object/from16 v20, v5

    :try_start_e
    filled-new-array/range {v19 .. v19}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Lcom/allinone/callerid/f/f;->e(Lcom/allinone/callerid/model/EZSearchContacts;[Ljava/lang/String;)V

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v20, v5

    goto/16 :goto_7

    :cond_a
    move-object/from16 v20, v5

    .line 109
    :goto_6
    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getComment_tags()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 110
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 111
    iget-object v5, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v5, v0}, Lcom/allinone/callerid/model/EZSearchContacts;->setComment_tags(Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v0

    iget-object v5, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    const-string v7, "comment_tags"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Lcom/allinone/callerid/f/f;->e(Lcom/allinone/callerid/model/EZSearchContacts;[Ljava/lang/String;)V

    .line 113
    :cond_b
    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getName_tags()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 114
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 115
    iget-object v5, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v5, v0}, Lcom/allinone/callerid/model/EZSearchContacts;->setName_tags(Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v0

    iget-object v5, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Lcom/allinone/callerid/f/f;->e(Lcom/allinone/callerid/model/EZSearchContacts;[Ljava/lang/String;)V

    .line 117
    :cond_c
    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_tags()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 118
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 119
    iget-object v5, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v5, v0}, Lcom/allinone/callerid/model/EZSearchContacts;->setType_tags(Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v0

    iget-object v5, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Lcom/allinone/callerid/f/f;->e(Lcom/allinone/callerid/model/EZSearchContacts;[Ljava/lang/String;)V

    .line 121
    :cond_d
    iget-object v0, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->isSearched()Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/allinone/callerid/model/EZSearchContacts;->setSearched(Z)V

    .line 122
    iget-object v0, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/allinone/callerid/model/EZSearchContacts;->setType_label(Ljava/lang/String;)V

    .line 123
    iget-object v0, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/allinone/callerid/model/EZSearchContacts;->setReport_count(Ljava/lang/String;)V

    .line 124
    iget-object v0, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getBelong_area()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/allinone/callerid/model/EZSearchContacts;->setBelong_area(Ljava/lang/String;)V

    .line 125
    iget-object v0, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/allinone/callerid/model/EZSearchContacts;->setName(Ljava/lang/String;)V

    .line 126
    iget-object v0, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/allinone/callerid/model/EZSearchContacts;->setType(Ljava/lang/String;)V

    .line 127
    iget-object v0, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getFormat_tel_number()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/allinone/callerid/model/EZSearchContacts;->setFormat_tel_number(Ljava/lang/String;)V

    .line 128
    iget-object v0, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/allinone/callerid/model/EZSearchContacts;->setOperator(Ljava/lang/String;)V

    .line 129
    iget-object v0, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/allinone/callerid/model/EZSearchContacts;->setAddress(Ljava/lang/String;)V

    .line 130
    iget-object v0, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getAvatar()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/allinone/callerid/model/EZSearchContacts;->setAvatar(Ljava/lang/String;)V

    .line 131
    iget-object v0, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getTel_number()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/allinone/callerid/model/EZSearchContacts;->setTel_number(Ljava/lang/String;)V

    .line 132
    iget-object v0, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getT_p()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/allinone/callerid/model/EZSearchContacts;->setT_p(Ljava/lang/String;)V

    .line 133
    iget-object v0, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    move-object v5, v2

    move-object v7, v3

    :try_start_f
    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getSearch_time()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/allinone/callerid/model/EZSearchContacts;->setSearch_time(J)V

    .line 134
    iget-object v0, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/model/EZSearchContacts;->setCountry(Ljava/lang/String;)V

    .line 135
    iget-object v0, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getE164_tel_number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/model/EZSearchContacts;->setE164_tel_number(Ljava/lang/String;)V

    .line 136
    iget-object v0, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v13}, Lcom/allinone/callerid/model/EZSearchContacts;->getCc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/model/EZSearchContacts;->setCc(Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v0

    iget-object v2, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    const-string v21, "isSearched"

    const-string v22, "type_label"

    const-string v23, "report_count"

    const-string v24, "belong_area"

    const-string v25, "name"

    const-string v26, "type"

    const-string v27, "format_tel_number"

    const-string v28, "operator"

    const-string v29, "address"

    const-string v30, "avatar"

    const-string v31, "tel_number"

    const-string v32, "t_p"

    const-string v33, "search_time"

    const-string v34, "country"

    const-string v35, "e164_tel_number"

    const-string v36, "cc"

    filled-new-array/range {v21 .. v36}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/allinone/callerid/f/f;->e(Lcom/allinone/callerid/model/EZSearchContacts;[Ljava/lang/String;)V

    goto :goto_a

    :catch_3
    move-exception v0

    :goto_7
    move-object v5, v2

    move-object v7, v3

    goto :goto_9

    :cond_e
    move-object v7, v3

    move-object/from16 v20, v5

    move-object v5, v2

    .line 138
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/allinone/callerid/f/f;->c(Lcom/allinone/callerid/model/EZSearchContacts;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    goto :goto_a

    :catch_4
    move-exception v0

    goto :goto_9

    :catch_5
    move-exception v0

    goto :goto_8

    :catch_6
    move-exception v0

    move-object/from16 v1, p0

    :goto_8
    move-object v7, v3

    move-object/from16 v20, v5

    move-object v5, v2

    .line 139
    :goto_9
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    :goto_a
    add-int/lit8 v4, v4, 0x1

    move-object v2, v15

    move-object/from16 v1, v16

    move-object/from16 v16, v5

    move-object/from16 v5, v20

    move-object/from16 v37, v7

    move-object/from16 v7, p1

    move-object/from16 p1, v37

    goto/16 :goto_1

    :catch_7
    move-exception v0

    goto/16 :goto_f

    :catch_8
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v16, v3

    goto/16 :goto_10

    :cond_f
    move-object/from16 v16, v1

    move-object/from16 v1, p0

    .line 140
    :try_start_11
    invoke-static {v9}, Lcom/allinone/callerid/g/e;->U2(Lcom/allinone/callerid/g/e;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-static {v9}, Lcom/allinone/callerid/g/e;->U2(Lcom/allinone/callerid/g/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_14

    const/4 v7, 0x0

    .line 141
    :goto_b
    invoke-static {v9}, Lcom/allinone/callerid/g/e;->U2(Lcom/allinone/callerid/g/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_14

    .line 142
    invoke-static {v9}, Lcom/allinone/callerid/g/e;->U2(Lcom/allinone/callerid/g/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/search/CallLogBean;

    .line 143
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v2

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/f/f;->d(Ljava/lang/String;)Lcom/allinone/callerid/model/EZSearchContacts;

    move-result-object v2

    iput-object v2, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    if-eqz v2, :cond_12

    .line 144
    invoke-virtual {v2}, Lcom/allinone/callerid/model/EZSearchContacts;->isSearched()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/CallLogBean;->P0(Z)V

    const/4 v2, 0x0

    .line 145
    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/CallLogBean;->m0(Z)V

    .line 146
    iget-object v3, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/allinone/callerid/util/h1;->D(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->e1(Ljava/lang/String;)V

    .line 147
    iget-object v3, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->f1(Ljava/lang/String;)V

    .line 148
    iget-object v3, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->L0(Ljava/lang/String;)V

    .line 149
    iget-object v3, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->getBelong_area()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->g0(Ljava/lang/String;)V

    .line 150
    iget-object v3, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->M0(Ljava/lang/String;)V

    .line 151
    iget-object v3, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    const-string v3, "Mobile"

    iget-object v4, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v4}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "Fixed line"

    iget-object v4, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v4}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 152
    :cond_10
    iget-object v3, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/allinone/callerid/util/h1;->J(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->O0(Ljava/lang/String;)V

    .line 153
    :cond_11
    iget-object v3, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->getTel_number()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->a1(Ljava/lang/String;)V

    .line 154
    iget-object v3, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->getOld_tel_number()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->G0(Ljava/lang/String;)V

    .line 155
    iget-object v3, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->getFormat_tel_number()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->x0(Ljava/lang/String;)V

    .line 156
    iget-object v3, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->H0(Ljava/lang/String;)V

    .line 157
    iget-object v3, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->d0(Ljava/lang/String;)V

    .line 158
    iget-object v3, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->getAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->e0(Ljava/lang/String;)V

    .line 159
    iget-object v3, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->getFb_avatar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->w0(Ljava/lang/String;)V

    .line 160
    iget-object v3, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->getT_p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->Z0(Ljava/lang/String;)V

    .line 161
    iget-object v3, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->getName_tags()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->D0(Ljava/lang/String;)V

    .line 162
    iget-object v3, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_tags()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->g1(Ljava/lang/String;)V

    .line 163
    iget-object v3, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->getComment_tags()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->o0(Ljava/lang/String;)V

    .line 164
    iget-object v3, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->r0(Ljava/lang/String;)V

    .line 165
    iget-object v3, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->getSubtype()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->W0(Ljava/lang/String;)V

    .line 166
    iget-object v3, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->getSubtype_cc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->X0(Ljava/lang/String;)V

    .line 167
    iget-object v3, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->getKeyword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->z0(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/allinone/callerid/util/h1;->w0(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->h1(Z)V

    .line 169
    iget-object v3, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->getFaild_error_log()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->v0(I)V

    .line 170
    iget-object v3, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->getSubtype_pdt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->Y0(Ljava/lang/String;)V

    .line 171
    iget-object v3, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->getComment_count()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->n0(Ljava/lang/String;)V

    .line 172
    iget-object v3, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->isCan_search_commentcount()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->l0(Z)V

    .line 173
    iget-object v3, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->getSearch_time()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/allinone/callerid/search/CallLogBean;->N0(J)V

    .line 174
    iget-object v3, v1, Lcom/allinone/callerid/g/e$v;->c:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->isIs_can_search()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->k0(Z)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9

    goto :goto_c

    :cond_12
    const/4 v2, 0x0

    :goto_c
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_b

    :catch_9
    move-exception v0

    .line 175
    :try_start_12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    :cond_13
    move-object/from16 v16, v1

    move-object/from16 v1, p0

    .line 176
    :cond_14
    :goto_d
    iget-boolean v0, v1, Lcom/allinone/callerid/g/e$v;->d:Z

    if-eqz v0, :cond_16

    .line 177
    invoke-static {v9}, Lcom/allinone/callerid/g/e;->p2(Lcom/allinone/callerid/g/e;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_a

    goto :goto_e

    :catch_a
    move-exception v0

    goto :goto_10

    :cond_15
    move-object/from16 v16, v1

    move-object/from16 v1, p0

    :cond_16
    :goto_e
    move-object/from16 v12, v16

    goto :goto_13

    :catch_b
    move-exception v0

    move-object/from16 v16, v1

    :goto_f
    move-object/from16 v1, p0

    :goto_10
    move-object/from16 v12, v16

    goto :goto_12

    :catch_c
    move-exception v0

    :goto_11
    move-object/from16 v1, p0

    goto :goto_12

    :catch_d
    move-exception v0

    .line 178
    :goto_12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 179
    invoke-static {v9}, Lcom/allinone/callerid/g/e;->U2(Lcom/allinone/callerid/g/e;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/allinone/callerid/l/a/f;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 180
    :goto_13
    invoke-static {}, Lcom/allinone/callerid/util/a1;->h()Z

    move-result v0

    iput-boolean v0, v1, Lcom/allinone/callerid/g/e$v;->e:Z

    :cond_17
    return-object v12
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/allinone/callerid/g/e$v;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/g/e;

    if-eqz p1, :cond_3

    .line 3
    invoke-static {p1}, Lcom/allinone/callerid/g/e;->U2(Lcom/allinone/callerid/g/e;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "com.allinone.callerid.IDENTIFY_NUMBER"

    if-eqz v0, :cond_2

    :try_start_1
    invoke-static {p1}, Lcom/allinone/callerid/g/e;->U2(Lcom/allinone/callerid/g/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {p1}, Lcom/allinone/callerid/g/e;->W2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/b/t;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p1}, Lcom/allinone/callerid/g/e;->W2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/b/t;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/allinone/callerid/g/e$v;->e:Z

    if-eqz v0, :cond_1

    .line 7
    invoke-static {p1}, Lcom/allinone/callerid/g/e;->S2(Lcom/allinone/callerid/g/e;)V

    .line 8
    :cond_1
    invoke-static {p1}, Lcom/allinone/callerid/g/e;->e2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/mvc/controller/MainActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-static {p1}, Lcom/allinone/callerid/g/e;->e2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/mvc/controller/MainActivity;

    move-result-object v2

    invoke-static {v2}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lb/p/a/a;->d(Landroid/content/Intent;)Z

    .line 11
    :cond_2
    invoke-static {p1}, Lcom/allinone/callerid/g/e;->r2(Lcom/allinone/callerid/g/e;)V

    .line 12
    invoke-static {p1}, Lcom/allinone/callerid/g/e;->e2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/mvc/controller/MainActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 13
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-static {p1}, Lcom/allinone/callerid/g/e;->e2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/mvc/controller/MainActivity;

    move-result-object p1

    invoke-static {p1}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lb/p/a/a;->d(Landroid/content/Intent;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method
