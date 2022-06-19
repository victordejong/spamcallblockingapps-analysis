.class Lcom/callerid/block/fragment/EZCallLogFragment$q;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/fragment/EZCallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "q"
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
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/callerid/block/fragment/EZCallLogFragment;",
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

.field private c:Z


# direct methods
.method constructor <init>(Lcom/callerid/block/fragment/EZCallLogFragment;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callerid/block/fragment/EZCallLogFragment;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment$q;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/callerid/block/fragment/EZCallLogFragment$q;->b:Ljava/util/List;

    iput-boolean p3, p0, Lcom/callerid/block/fragment/EZCallLogFragment$q;->c:Z

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    move-object/from16 v1, p0

    const-string v2, "e164_tel_number"

    const-string v3, "avatar"

    const-string v4, "belong_area"

    const-string v5, "address"

    const-string v6, "name"

    const-string v7, "report_count"

    const-string v8, "type_label"

    const-string v9, "type"

    const-string v10, "operator"

    const-string v11, "format_tel_number"

    const-string v12, "t_p"

    const-string v13, "tel_number"

    const-string v14, "faild_error_log"

    const-string v15, "cc"

    iget-object v0, v1, Lcom/callerid/block/fragment/EZCallLogFragment$q;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/callerid/block/fragment/EZCallLogFragment;

    if-eqz v16, :cond_e

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/j;->d(Landroid/content/Context;)Lcom/callerid/block/bean/EZCountryCode;

    move-result-object v17

    move-object/from16 p1, v2

    invoke-virtual/range {v17 .. v17}, Lcom/callerid/block/bean/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/callerid/block/util/d;->d(Landroid/content/Context;)Z

    move-result v17

    move-object/from16 v18, v3

    const-string v3, ""

    if-nez v17, :cond_0

    invoke-static/range {v16 .. v16}, Lcom/callerid/block/fragment/EZCallLogFragment;->E1(Lcom/callerid/block/fragment/EZCallLogFragment;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/callerid/block/k/a/e;->c(Ljava/util/List;Ljava/lang/String;)V

    return-object v3

    :cond_0
    move-object/from16 v17, v4

    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    move-object/from16 v19, v5

    iget-object v5, v1, Lcom/callerid/block/fragment/EZCallLogFragment$q;->b:Ljava/util/List;

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lcom/callerid/block/util/w;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b

    move-object/from16 v20, v6

    const-string v6, "searchList"

    if-eqz v5, :cond_1

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v7

    const-string v7, "tel_number_list:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/callerid/block/util/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object/from16 v21, v7

    :goto_0
    const-string v5, "android"

    invoke-static {v4}, Lcom/callerid/block/util/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/callerid/block/util/t0;->E(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v22, v8

    invoke-static {v0}, Lcom/callerid/block/util/t0;->G(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v23, v9

    iget-object v9, v1, Lcom/callerid/block/fragment/EZCallLogFragment$q;->b:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v24
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b

    const/4 v1, 0x1

    move-object/from16 v25, v10

    add-int/lit8 v10, v24, -0x1

    :try_start_2
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v0, v9}, Lcom/callerid/block/util/t0;->A(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string v10, "tel_number_list"

    invoke-virtual {v9, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "device"

    invoke-virtual {v9, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "uid"

    invoke-virtual {v9, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "version"

    invoke-virtual {v9, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "default_cc"

    invoke-virtual {v9, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "stamp"

    invoke-virtual {v9, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "https://app.ayamote.com/api/v1/sealis.php"

    const-string v4, "utf-8"

    invoke-static {v0, v9, v4}, Lcom/callerid/block/util/t;->b(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a

    :try_start_3
    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    if-eqz v0, :cond_2

    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enlode_result:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/callerid/block/util/w;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v19, v2

    move-object v3, v4

    goto/16 :goto_d

    :cond_2
    :goto_1
    if-eqz v4, :cond_c

    :try_start_5
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "status"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    if-ne v5, v1, :cond_a

    :try_start_6
    const-string v5, "list"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_6

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v8, Lcom/callerid/block/bean/EZSearchContacts;

    invoke-direct {v8}, Lcom/callerid/block/bean/EZSearchContacts;-><init>()V

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    if-ne v9, v1, :cond_3

    :try_start_7
    invoke-virtual {v8, v1}, Lcom/callerid/block/bean/EZSearchContacts;->setSearched(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_3

    :cond_3
    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/callerid/block/bean/EZSearchContacts;->setSearch_time(J)V

    :goto_3
    const-string v9, "old_tel_number"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/callerid/block/bean/EZSearchContacts;->setOld_tel_number(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/callerid/block/bean/EZSearchContacts;->setTel_number(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/callerid/block/bean/EZSearchContacts;->setT_p(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/callerid/block/bean/EZSearchContacts;->setFormat_tel_number(Ljava/lang/String;)V

    move-object/from16 v9, v25

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/callerid/block/bean/EZSearchContacts;->setOperator(Ljava/lang/String;)V

    move-object/from16 v10, v23

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/callerid/block/bean/EZSearchContacts;->setType(Ljava/lang/String;)V

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/callerid/block/bean/EZSearchContacts;->setType_label(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    move-object/from16 v6, v21

    move-object/from16 v21, v4

    :try_start_9
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/callerid/block/bean/EZSearchContacts;->setReport_count(Ljava/lang/String;)V

    move-object/from16 v4, v20

    move-object/from16 v20, v5

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/callerid/block/bean/EZSearchContacts;->setName(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    move-object/from16 v5, v19

    move-object/from16 v19, v2

    :try_start_a
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/callerid/block/bean/EZSearchContacts;->setAddress(Ljava/lang/String;)V

    move-object/from16 v2, v17

    move/from16 v17, v7

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/callerid/block/bean/EZSearchContacts;->setBelong_area(Ljava/lang/String;)V

    move-object/from16 v7, v18

    move-object/from16 v18, v12

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/callerid/block/bean/EZSearchContacts;->setAvatar(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v12}, Lcom/callerid/block/bean/EZSearchContacts;->setFaild_error_log(I)V

    move-object/from16 v12, p1

    move-object/from16 p1, v14

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/callerid/block/bean/EZSearchContacts;->setE164_tel_number(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/callerid/block/bean/EZSearchContacts;->setCc(Ljava/lang/String;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    :try_start_b
    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object v0

    invoke-virtual {v8}, Lcom/callerid/block/bean/EZSearchContacts;->getOld_tel_number()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/callerid/block/d/d;->d(Ljava/lang/String;)Lcom/callerid/block/bean/EZSearchContacts;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/callerid/block/bean/EZSearchContacts;->getSearch_time()J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v14, v24, v26

    if-eqz v14, :cond_4

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Lcom/callerid/block/bean/EZSearchContacts;->setIs_can_search(Z)V

    :cond_4
    invoke-virtual {v8}, Lcom/callerid/block/bean/EZSearchContacts;->isSearched()Z

    move-result v14

    invoke-virtual {v0, v14}, Lcom/callerid/block/bean/EZSearchContacts;->setSearched(Z)V

    invoke-virtual {v8}, Lcom/callerid/block/bean/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/callerid/block/bean/EZSearchContacts;->setType_label(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/callerid/block/bean/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/callerid/block/bean/EZSearchContacts;->setReport_count(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/callerid/block/bean/EZSearchContacts;->getBelong_area()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/callerid/block/bean/EZSearchContacts;->setBelong_area(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/callerid/block/bean/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/callerid/block/bean/EZSearchContacts;->setName(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/callerid/block/bean/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/callerid/block/bean/EZSearchContacts;->setType(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/callerid/block/bean/EZSearchContacts;->getFormat_tel_number()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/callerid/block/bean/EZSearchContacts;->setFormat_tel_number(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/callerid/block/bean/EZSearchContacts;->getOperator()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/callerid/block/bean/EZSearchContacts;->setOperator(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/callerid/block/bean/EZSearchContacts;->getAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/callerid/block/bean/EZSearchContacts;->setAddress(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/callerid/block/bean/EZSearchContacts;->getAvatar()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/callerid/block/bean/EZSearchContacts;->setAvatar(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/callerid/block/bean/EZSearchContacts;->getTel_number()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/callerid/block/bean/EZSearchContacts;->setTel_number(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/callerid/block/bean/EZSearchContacts;->getT_p()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/callerid/block/bean/EZSearchContacts;->setT_p(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    move-object/from16 v24, v15

    :try_start_c
    invoke-virtual {v8}, Lcom/callerid/block/bean/EZSearchContacts;->getSearch_time()J

    move-result-wide v14

    invoke-virtual {v0, v14, v15}, Lcom/callerid/block/bean/EZSearchContacts;->setSearch_time(J)V

    invoke-virtual {v8}, Lcom/callerid/block/bean/EZSearchContacts;->getE164_tel_number()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/callerid/block/bean/EZSearchContacts;->setE164_tel_number(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/callerid/block/bean/EZSearchContacts;->getCc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/callerid/block/bean/EZSearchContacts;->setCc(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object v8

    const/16 v14, 0x10

    new-array v14, v14, [Ljava/lang/String;

    const-string v15, "is_can_search"

    const/16 v22, 0x0

    aput-object v15, v14, v22

    const-string v15, "isSearched"
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    const/16 v23, 0x1

    :try_start_d
    aput-object v15, v14, v23

    const/4 v15, 0x2

    aput-object v1, v14, v15

    const/4 v15, 0x3

    aput-object v6, v14, v15

    const/4 v15, 0x4

    aput-object v2, v14, v15

    const/4 v15, 0x5

    aput-object v4, v14, v15

    const/4 v15, 0x6

    aput-object v10, v14, v15

    const/4 v15, 0x7

    aput-object v11, v14, v15

    const/16 v15, 0x8

    aput-object v9, v14, v15

    const/16 v15, 0x9

    aput-object v5, v14, v15

    const/16 v15, 0xa

    aput-object v7, v14, v15

    const/16 v15, 0xb

    aput-object v13, v14, v15

    const/16 v15, 0xc

    aput-object v18, v14, v15

    const/16 v15, 0xd

    const-string v25, "search_time"

    aput-object v25, v14, v15

    const/16 v15, 0xe

    aput-object v12, v14, v15

    const/16 v15, 0xf

    aput-object v24, v14, v15

    invoke-virtual {v8, v0, v14}, Lcom/callerid/block/d/d;->f(Lcom/callerid/block/bean/EZSearchContacts;[Ljava/lang/String;)V

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_5
    move-object/from16 v24, v15

    const/16 v23, 0x1

    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/callerid/block/d/d;->c(Lcom/callerid/block/bean/EZSearchContacts;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v24, v15

    :goto_4
    const/16 v23, 0x1

    :goto_5
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    :goto_6
    add-int/lit8 v0, v17, 0x1

    move-object/from16 v14, p1

    move-object/from16 v22, v1

    move-object/from16 v17, v2

    move-object/from16 v25, v9

    move-object/from16 v23, v10

    move-object/from16 p1, v12

    move-object/from16 v12, v18

    move-object/from16 v2, v19

    move-object/from16 v15, v24

    const/4 v1, 0x1

    move-object/from16 v19, v5

    move-object/from16 v18, v7

    move-object/from16 v5, v20

    move v7, v0

    move-object/from16 v20, v4

    move-object/from16 v4, v21

    move-object/from16 v21, v6

    goto/16 :goto_2

    :catch_4
    move-exception v0

    move-object/from16 v19, v2

    goto/16 :goto_9

    :cond_6
    move-object/from16 v19, v2

    move-object/from16 v21, v4

    :try_start_f
    invoke-static/range {v16 .. v16}, Lcom/callerid/block/fragment/EZCallLogFragment;->E1(Lcom/callerid/block/fragment/EZCallLogFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static/range {v16 .. v16}, Lcom/callerid/block/fragment/EZCallLogFragment;->E1(Lcom/callerid/block/fragment/EZCallLogFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v14, 0x0

    :goto_7
    invoke-static/range {v16 .. v16}, Lcom/callerid/block/fragment/EZCallLogFragment;->E1(Lcom/callerid/block/fragment/EZCallLogFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v14, v0, :cond_b

    invoke-static/range {v16 .. v16}, Lcom/callerid/block/fragment/EZCallLogFragment;->E1(Lcom/callerid/block/fragment/EZCallLogFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/search/CallLogBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callerid/block/search/CallLogBean;->Z(Z)V

    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object v2

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/callerid/block/d/d;->d(Ljava/lang/String;)Lcom/callerid/block/bean/EZSearchContacts;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->isSearched()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/callerid/block/search/CallLogBean;->w0(Z)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getSearch_time()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/callerid/block/search/CallLogBean;->u0(J)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v3

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/callerid/block/util/t0;->r(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/callerid/block/search/CallLogBean;->H0(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/callerid/block/search/CallLogBean;->s0(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getBelong_area()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/callerid/block/search/CallLogBean;->W(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/callerid/block/search/CallLogBean;->t0(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    const-string v3, "Mobile"

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "Fixed line"

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v3

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/callerid/block/util/t0;->w(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/callerid/block/search/CallLogBean;->v0(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getTel_number()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/callerid/block/search/CallLogBean;->D0(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getOld_tel_number()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/callerid/block/search/CallLogBean;->o0(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getFormat_tel_number()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/callerid/block/search/CallLogBean;->h0(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/callerid/block/search/CallLogBean;->p0(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/callerid/block/search/CallLogBean;->T(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/callerid/block/search/CallLogBean;->U(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getTel_number()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/callerid/block/search/CallLogBean;->D0(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getT_p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/callerid/block/search/CallLogBean;->C0(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getFaild_error_log()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/callerid/block/search/CallLogBean;->e0(I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_7

    :catch_5
    move-exception v0

    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    :catch_6
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v21, v4

    goto :goto_9

    :cond_a
    move-object/from16 v19, v2

    move-object/from16 v21, v4

    invoke-static/range {v16 .. v16}, Lcom/callerid/block/fragment/EZCallLogFragment;->h2(Lcom/callerid/block/fragment/EZCallLogFragment;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    :cond_b
    :goto_8
    move-object/from16 v1, p0

    :try_start_11
    iget-boolean v0, v1, Lcom/callerid/block/fragment/EZCallLogFragment$q;->c:Z

    if-eqz v0, :cond_d

    invoke-static/range {v16 .. v16}, Lcom/callerid/block/fragment/EZCallLogFragment;->R1(Lcom/callerid/block/fragment/EZCallLogFragment;)V

    goto :goto_a

    :catch_7
    move-exception v0

    :goto_9
    move-object/from16 v1, p0

    goto :goto_b

    :cond_c
    move-object/from16 v1, p0

    move-object/from16 v19, v2

    move-object/from16 v21, v4

    invoke-static/range {v16 .. v16}, Lcom/callerid/block/fragment/EZCallLogFragment;->h2(Lcom/callerid/block/fragment/EZCallLogFragment;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    :cond_d
    :goto_a
    move-object/from16 v4, v21

    goto :goto_e

    :catch_8
    move-exception v0

    goto :goto_b

    :catch_9
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v19, v2

    move-object/from16 v21, v4

    :goto_b
    move-object/from16 v3, v21

    goto :goto_d

    :catch_a
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_c

    :catch_b
    move-exception v0

    :goto_c
    move-object/from16 v19, v2

    :goto_d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static/range {v16 .. v16}, Lcom/callerid/block/fragment/EZCallLogFragment;->h2(Lcom/callerid/block/fragment/EZCallLogFragment;)V

    invoke-static/range {v16 .. v16}, Lcom/callerid/block/fragment/EZCallLogFragment;->E1(Lcom/callerid/block/fragment/EZCallLogFragment;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v2, v19

    invoke-static {v0, v2}, Lcom/callerid/block/k/a/e;->c(Ljava/util/List;Ljava/lang/String;)V

    move-object v4, v3

    :goto_e
    return-object v4

    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$q;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/fragment/EZCallLogFragment;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->E1(Lcom/callerid/block/fragment/EZCallLogFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->E1(Lcom/callerid/block/fragment/EZCallLogFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->G1(Lcom/callerid/block/fragment/EZCallLogFragment;)Lcom/callerid/block/b/g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->S1(Lcom/callerid/block/fragment/EZCallLogFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/m0;->d(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/callerid/block/fragment/EZCallLogFragment;->T1(Lcom/callerid/block/fragment/EZCallLogFragment;Z)Z

    :cond_1
    return-void
.end method
