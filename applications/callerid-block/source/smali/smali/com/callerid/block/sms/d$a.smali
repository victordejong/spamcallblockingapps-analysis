.class Lcom/callerid/block/sms/d$a;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/sms/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
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
.field private a:Landroid/content/Context;

.field private b:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/callerid/block/sms/d$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/callerid/block/sms/d$a;->b:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method protected a([Ljava/lang/Object;)Ljava/lang/String;
    .locals 18

    move-object/from16 v1, p0

    :try_start_0
    iget-object v0, v1, Lcom/callerid/block/sms/d$a;->b:Lorg/json/JSONArray;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_17

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v1, Lcom/callerid/block/sms/d$a;->b:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_17

    iget-object v3, v1, Lcom/callerid/block/sms/d$a;->b:Lorg/json/JSONArray;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "old_sms_number"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/callerid/block/d/d;->d(Ljava/lang/String;)Lcom/callerid/block/bean/EZSearchContacts;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "format_tel_number"

    const-string v15, "format_sms_number"

    const-string v8, "report_count"

    const-string v9, "address"

    const-string v10, "avatar"

    const-string v11, "type"

    const-string v12, "belong_area"

    const-string v13, "operator"

    const-string v7, "type_label"

    const-string v0, "name"

    const-string v14, ""

    if-eqz v5, :cond_9

    :try_start_1
    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    invoke-virtual {v5, v4}, Lcom/callerid/block/bean/EZSearchContacts;->setFormat_tel_number(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    invoke-virtual {v5, v4}, Lcom/callerid/block/bean/EZSearchContacts;->setTel_number(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    invoke-virtual {v5, v4}, Lcom/callerid/block/bean/EZSearchContacts;->setBelong_area(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    invoke-virtual {v5, v4}, Lcom/callerid/block/bean/EZSearchContacts;->setType(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    invoke-virtual {v5, v4}, Lcom/callerid/block/bean/EZSearchContacts;->setName(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    invoke-virtual {v5, v4}, Lcom/callerid/block/bean/EZSearchContacts;->setAvatar(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    invoke-virtual {v5, v4}, Lcom/callerid/block/bean/EZSearchContacts;->setAddress(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    invoke-virtual {v5, v4}, Lcom/callerid/block/bean/EZSearchContacts;->setType_label(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v5, v3}, Lcom/callerid/block/bean/EZSearchContacts;->setReport_count(Ljava/lang/String;)V

    :cond_8
    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object v3

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v8, v4, v14

    const/4 v8, 0x1

    aput-object v7, v4, v8

    const/4 v7, 0x2

    aput-object v9, v4, v7

    const/4 v7, 0x3

    aput-object v10, v4, v7

    const/4 v7, 0x4

    aput-object v0, v4, v7

    const/4 v0, 0x5

    aput-object v11, v4, v0

    const/4 v0, 0x6

    aput-object v12, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v6, v4, v0

    invoke-virtual {v3, v5, v4}, Lcom/callerid/block/d/d;->f(Lcom/callerid/block/bean/EZSearchContacts;[Ljava/lang/String;)V

    move/from16 v16, v2

    goto/16 :goto_4

    :cond_9
    move/from16 v16, v2

    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object v2

    move-object/from16 v17, v5

    iget-object v5, v1, Lcom/callerid/block/sms/d$a;->a:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/callerid/block/util/t0;->a0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/callerid/block/d/d;->d(Ljava/lang/String;)Lcom/callerid/block/bean/EZSearchContacts;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v2, v4}, Lcom/callerid/block/bean/EZSearchContacts;->setFormat_tel_number(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v2, v4}, Lcom/callerid/block/bean/EZSearchContacts;->setTel_number(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {v2, v4}, Lcom/callerid/block/bean/EZSearchContacts;->setBelong_area(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {v2, v4}, Lcom/callerid/block/bean/EZSearchContacts;->setType(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {v2, v4}, Lcom/callerid/block/bean/EZSearchContacts;->setName(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {v2, v4}, Lcom/callerid/block/bean/EZSearchContacts;->setAvatar(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual {v2, v4}, Lcom/callerid/block/bean/EZSearchContacts;->setAddress(Ljava/lang/String;)V

    :cond_10
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    invoke-virtual {v2, v4}, Lcom/callerid/block/bean/EZSearchContacts;->setType_label(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {v2, v3}, Lcom/callerid/block/bean/EZSearchContacts;->setReport_count(Ljava/lang/String;)V

    :cond_12
    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object v2

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v3, v5

    const/4 v4, 0x1

    aput-object v7, v3, v4

    const/4 v4, 0x2

    aput-object v9, v3, v4

    const/4 v4, 0x3

    aput-object v10, v3, v4

    const/4 v4, 0x4

    aput-object v0, v3, v4

    const/4 v0, 0x5

    aput-object v11, v3, v0

    const/4 v0, 0x6

    aput-object v12, v3, v0

    const/4 v0, 0x7

    aput-object v13, v3, v0

    const/16 v0, 0x8

    aput-object v6, v3, v0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v3}, Lcom/callerid/block/d/d;->f(Lcom/callerid/block/bean/EZSearchContacts;[Ljava/lang/String;)V

    goto :goto_4

    :cond_13
    const/4 v5, 0x0

    new-instance v2, Lcom/callerid/block/bean/EZSearchContacts;

    invoke-direct {v2}, Lcom/callerid/block/bean/EZSearchContacts;-><init>()V

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v6, :cond_15

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    goto :goto_2

    :cond_14
    :goto_1
    const/4 v5, 0x1

    goto :goto_3

    :cond_15
    :goto_2
    if-eqz v5, :cond_16

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    goto :goto_1

    :goto_3
    invoke-virtual {v2, v5}, Lcom/callerid/block/bean/EZSearchContacts;->setSearched(Z)V

    :cond_16
    invoke-virtual {v2, v4}, Lcom/callerid/block/bean/EZSearchContacts;->setOld_tel_number(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/callerid/block/bean/EZSearchContacts;->setFormat_tel_number(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/callerid/block/bean/EZSearchContacts;->setOperator(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/callerid/block/bean/EZSearchContacts;->setType(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/callerid/block/bean/EZSearchContacts;->setType_label(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/callerid/block/bean/EZSearchContacts;->setReport_count(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/callerid/block/bean/EZSearchContacts;->setName(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/callerid/block/bean/EZSearchContacts;->setAddress(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/callerid/block/bean/EZSearchContacts;->setBelong_area(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/callerid/block/bean/EZSearchContacts;->setAvatar(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/callerid/block/d/d;->c(Lcom/callerid/block/bean/EZSearchContacts;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    add-int/lit8 v2, v16, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/callerid/block/sms/d$a;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string p1, "tony"

    const-string v0, "SaveOK"

    invoke-static {p1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.callerid.block.SEARCH_SMS_OK"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/callerid/block/sms/d$a;->a:Landroid/content/Context;

    invoke-static {v0}, Ld/p/a/a;->b(Landroid/content/Context;)Ld/p/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/p/a/a;->d(Landroid/content/Intent;)Z

    return-void
.end method
