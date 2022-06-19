.class Lcom/callerid/block/util/l0$b;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/util/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
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
.field a:Lorg/json/JSONObject;

.field b:Ljava/lang/String;

.field private c:Lcom/callerid/block/bean/EZSearchContacts;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/callerid/block/util/l0$b;->a:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/callerid/block/util/l0$b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a([Ljava/lang/Object;)Ljava/lang/String;
    .locals 16

    move-object/from16 v1, p0

    :try_start_0
    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object v0

    iget-object v2, v1, Lcom/callerid/block/util/l0$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/callerid/block/d/d;->d(Ljava/lang/String;)Lcom/callerid/block/bean/EZSearchContacts;

    move-result-object v0

    iput-object v0, v1, Lcom/callerid/block/util/l0$b;->c:Lcom/callerid/block/bean/EZSearchContacts;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "categories"

    const-string v4, "soft_comments"

    const-string v5, "t_p"

    const-string v6, "report_count"

    const-string v7, "belong_area"

    const-string v8, "type_label"

    const-string v9, "tel_number"

    const-string v10, "format_tel_number"

    const-string v11, "faild_error_log"

    const-string v12, "cc"

    const-string v13, "e164_tel_number"

    const/4 v15, 0x1

    const-string v3, ""

    if-nez v0, :cond_4

    :try_start_1
    new-instance v0, Lcom/callerid/block/bean/EZSearchContacts;

    invoke-direct {v0}, Lcom/callerid/block/bean/EZSearchContacts;-><init>()V

    iget-object v14, v1, Lcom/callerid/block/util/l0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v14, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    if-ne v14, v15, :cond_0

    invoke-virtual {v0, v15}, Lcom/callerid/block/bean/EZSearchContacts;->setSearched(Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v0, v14, v15}, Lcom/callerid/block/bean/EZSearchContacts;->setSearch_time(J)V

    :goto_0
    iget-object v14, v1, Lcom/callerid/block/util/l0$b;->a:Lorg/json/JSONObject;

    const-string v15, "old_tel_number"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/callerid/block/bean/EZSearchContacts;->setOld_tel_number(Ljava/lang/String;)V

    iget-object v14, v1, Lcom/callerid/block/util/l0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/callerid/block/bean/EZSearchContacts;->setTel_number(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/callerid/block/util/l0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/callerid/block/bean/EZSearchContacts;->setFormat_tel_number(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/callerid/block/util/l0$b;->a:Lorg/json/JSONObject;

    const-string v10, "operator"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/callerid/block/bean/EZSearchContacts;->setOperator(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/callerid/block/util/l0$b;->a:Lorg/json/JSONObject;

    const-string v10, "type"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/callerid/block/bean/EZSearchContacts;->setType(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/callerid/block/util/l0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/callerid/block/bean/EZSearchContacts;->setType_label(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/callerid/block/util/l0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/callerid/block/bean/EZSearchContacts;->setReport_count(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/callerid/block/util/l0$b;->a:Lorg/json/JSONObject;

    const-string v8, "name"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/callerid/block/bean/EZSearchContacts;->setName(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/callerid/block/util/l0$b;->a:Lorg/json/JSONObject;

    const-string v8, "address"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/callerid/block/bean/EZSearchContacts;->setAddress(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/callerid/block/util/l0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/callerid/block/bean/EZSearchContacts;->setBelong_area(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/callerid/block/util/l0$b;->a:Lorg/json/JSONObject;

    const-string v7, "avatar"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/callerid/block/bean/EZSearchContacts;->setAvatar(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/callerid/block/util/l0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/callerid/block/bean/EZSearchContacts;->setFaild_error_log(I)V

    iget-object v6, v1, Lcom/callerid/block/util/l0$b;->a:Lorg/json/JSONObject;

    const-string v7, "website"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/callerid/block/bean/EZSearchContacts;->setWebsite(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/callerid/block/util/l0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/callerid/block/bean/EZSearchContacts;->setT_p(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/callerid/block/util/l0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/callerid/block/bean/EZSearchContacts;->setE164_tel_number(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/callerid/block/util/l0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/callerid/block/bean/EZSearchContacts;->setCc(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/callerid/block/bean/EZSearchContacts;->setDate(J)V

    iget-object v5, v1, Lcom/callerid/block/util/l0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/callerid/block/bean/EZSearchContacts;->setSoft_comments(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/callerid/block/util/l0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v5}, Lcom/callerid/block/bean/EZSearchContacts;->setTag_main(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v4, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0, v4}, Lcom/callerid/block/bean/EZSearchContacts;->setTag_main(Ljava/lang/String;)V

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0, v2}, Lcom/callerid/block/bean/EZSearchContacts;->setTag_sub(Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/callerid/block/d/d;->c(Lcom/callerid/block/bean/EZSearchContacts;)V

    goto/16 :goto_2

    :cond_4
    iget-object v0, v1, Lcom/callerid/block/util/l0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v11, 0x1

    if-ne v0, v11, :cond_5

    iget-object v0, v1, Lcom/callerid/block/util/l0$b;->c:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {v0, v11}, Lcom/callerid/block/bean/EZSearchContacts;->setSearched(Z)V

    goto :goto_1

    :cond_5
    iget-object v0, v1, Lcom/callerid/block/util/l0$b;->c:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v0, v14, v15}, Lcom/callerid/block/bean/EZSearchContacts;->setSearch_time(J)V

    :goto_1
    iget-object v0, v1, Lcom/callerid/block/util/l0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    iget-object v11, v1, Lcom/callerid/block/util/l0$b;->c:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {v11, v0}, Lcom/callerid/block/bean/EZSearchContacts;->setFormat_tel_number(Ljava/lang/String;)V

    :cond_6
    iget-object v0, v1, Lcom/callerid/block/util/l0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    iget-object v11, v1, Lcom/callerid/block/util/l0$b;->c:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {v11, v0}, Lcom/callerid/block/bean/EZSearchContacts;->setTel_number(Ljava/lang/String;)V

    :cond_7
    iget-object v0, v1, Lcom/callerid/block/util/l0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    iget-object v11, v1, Lcom/callerid/block/util/l0$b;->c:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {v11, v0}, Lcom/callerid/block/bean/EZSearchContacts;->setType_label(Ljava/lang/String;)V

    :cond_8
    iget-object v0, v1, Lcom/callerid/block/util/l0$b;->c:Lcom/callerid/block/bean/EZSearchContacts;

    iget-object v11, v1, Lcom/callerid/block/util/l0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/callerid/block/bean/EZSearchContacts;->setBelong_area(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/callerid/block/util/l0$b;->c:Lcom/callerid/block/bean/EZSearchContacts;

    iget-object v11, v1, Lcom/callerid/block/util/l0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/callerid/block/bean/EZSearchContacts;->setReport_count(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/callerid/block/util/l0$b;->c:Lcom/callerid/block/bean/EZSearchContacts;

    iget-object v11, v1, Lcom/callerid/block/util/l0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/callerid/block/bean/EZSearchContacts;->setT_p(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/callerid/block/util/l0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/callerid/block/util/l0$b;->c:Lcom/callerid/block/bean/EZSearchContacts;

    iget-object v11, v1, Lcom/callerid/block/util/l0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/callerid/block/bean/EZSearchContacts;->setE164_tel_number(Ljava/lang/String;)V

    :cond_9
    iget-object v0, v1, Lcom/callerid/block/util/l0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/callerid/block/util/l0$b;->c:Lcom/callerid/block/bean/EZSearchContacts;

    iget-object v11, v1, Lcom/callerid/block/util/l0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/callerid/block/bean/EZSearchContacts;->setCc(Ljava/lang/String;)V

    :cond_a
    iget-object v0, v1, Lcom/callerid/block/util/l0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-eqz v11, :cond_b

    new-instance v11, Lorg/json/JSONArray;

    iget-object v14, v1, Lcom/callerid/block/util/l0$b;->c:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {v14}, Lcom/callerid/block/bean/EZSearchContacts;->getSoft_comments()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v14

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-le v14, v11, :cond_b

    iget-object v11, v1, Lcom/callerid/block/util/l0$b;->c:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/callerid/block/bean/EZSearchContacts;->setSoft_comments(Ljava/lang/String;)V

    :cond_b
    iget-object v0, v1, Lcom/callerid/block/util/l0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v11, 0x1

    if-ne v2, v11, :cond_c

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_c

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, v1, Lcom/callerid/block/util/l0$b;->c:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {v2, v11}, Lcom/callerid/block/bean/EZSearchContacts;->setTag_main(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v11, 0x2

    if-ne v2, v11, :cond_e

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v11, :cond_d

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, v1, Lcom/callerid/block/util/l0$b;->c:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {v2, v11}, Lcom/callerid/block/bean/EZSearchContacts;->setTag_main(Ljava/lang/String;)V

    :cond_d
    if-eqz v0, :cond_e

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, v1, Lcom/callerid/block/util/l0$b;->c:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {v2, v0}, Lcom/callerid/block/bean/EZSearchContacts;->setTag_sub(Ljava/lang/String;)V

    :cond_e
    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object v0

    iget-object v2, v1, Lcom/callerid/block/util/l0$b;->c:Lcom/callerid/block/bean/EZSearchContacts;

    const/16 v3, 0xd

    new-array v3, v3, [Ljava/lang/String;

    const-string v11, "isSearched"

    const/4 v14, 0x0

    aput-object v11, v3, v14

    const-string v11, "search_time"

    const/4 v14, 0x1

    aput-object v11, v3, v14

    const/4 v11, 0x2

    aput-object v10, v3, v11

    const/4 v10, 0x3

    aput-object v9, v3, v10

    const/4 v9, 0x4

    aput-object v7, v3, v9

    const/4 v7, 0x5

    aput-object v6, v3, v7

    const/4 v6, 0x6

    aput-object v5, v3, v6

    const/4 v5, 0x7

    aput-object v13, v3, v5

    const/16 v5, 0x8

    aput-object v12, v3, v5

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const/16 v4, 0xa

    const-string v5, "tag_main"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "tag_sub"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    aput-object v8, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/callerid/block/d/d;->f(Lcom/callerid/block/bean/EZSearchContacts;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/callerid/block/util/l0$b;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string p1, "searchhis"

    const-string v0, "OK"

    invoke-static {p1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.callerid.block.INIT_HISTORY"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Ld/p/a/a;->b(Landroid/content/Context;)Ld/p/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/p/a/a;->d(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
