.class Lcom/allinone/callerid/util/x0$b;
.super Landroid/os/AsyncTask;
.source "SaveSearchData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/util/x0;
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

.field c:Z

.field private d:Lcom/allinone/callerid/model/EZSearchContacts;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    .line 3
    iput-object p2, p0, Lcom/allinone/callerid/util/x0$b;->b:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lcom/allinone/callerid/util/x0$b;->c:Z

    return-void
.end method


# virtual methods
.method protected a([Ljava/lang/Object;)Ljava/lang/String;
    .locals 27

    move-object/from16 v1, p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v0

    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/f/f;->d(Ljava/lang/String;)Lcom/allinone/callerid/model/EZSearchContacts;

    move-result-object v0

    iput-object v0, v1, Lcom/allinone/callerid/util/x0$b;->d:Lcom/allinone/callerid/model/EZSearchContacts;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "categories"

    const-string v3, "soft_comments"

    const-string v4, "t_p"

    const-string v5, "type_tags"

    const-string v6, "name_tags"

    const-string v7, "avatar"

    const-string v8, "soft_comments_tags"

    const-string v9, "belong_area"

    const-string v10, "address"

    const-string v11, "format_tel_number"

    const-string v12, "tel_number"

    const-string v13, "name"

    const-string v14, "operator"

    const-string v15, "type_label"

    move-object/from16 p1, v2

    const-string v2, "type"

    move-object/from16 v16, v3

    const-string v3, "faild_error_log"

    move-object/from16 v17, v8

    const-string v8, "cc"

    move-object/from16 v18, v8

    const-string v8, "e164_tel_number"

    move-object/from16 v19, v8

    const-string v8, "report_count"

    move-object/from16 v20, v5

    const-string v5, ""

    if-nez v0, :cond_6

    .line 2
    :try_start_1
    new-instance v0, Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-direct {v0}, Lcom/allinone/callerid/model/EZSearchContacts;-><init>()V

    move-object/from16 v21, v5

    .line 3
    iget-object v5, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v22, v6

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 4
    invoke-virtual {v0, v6}, Lcom/allinone/callerid/model/EZSearchContacts;->setSearched(Z)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/allinone/callerid/model/EZSearchContacts;->setSearch_time(J)V

    .line 6
    :goto_0
    iget-object v5, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    const-string v6, "old_tel_number"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/allinone/callerid/model/EZSearchContacts;->setOld_tel_number(Ljava/lang/String;)V

    .line 7
    iget-object v5, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/allinone/callerid/model/EZSearchContacts;->setTel_number(Ljava/lang/String;)V

    .line 8
    iget-object v5, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/allinone/callerid/model/EZSearchContacts;->setFormat_tel_number(Ljava/lang/String;)V

    .line 9
    iget-object v5, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/allinone/callerid/model/EZSearchContacts;->setOperator(Ljava/lang/String;)V

    .line 10
    iget-object v5, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/model/EZSearchContacts;->setType(Ljava/lang/String;)V

    .line 11
    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/model/EZSearchContacts;->setType_label(Ljava/lang/String;)V

    .line 12
    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/model/EZSearchContacts;->setReport_count(Ljava/lang/String;)V

    .line 13
    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/model/EZSearchContacts;->setName(Ljava/lang/String;)V

    .line 14
    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/model/EZSearchContacts;->setAddress(Ljava/lang/String;)V

    .line 15
    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/model/EZSearchContacts;->setBelong_area(Ljava/lang/String;)V

    .line 16
    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/model/EZSearchContacts;->setAvatar(Ljava/lang/String;)V

    .line 17
    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/model/EZSearchContacts;->setFaild_error_log(I)V

    .line 18
    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    const-string v3, "website"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/model/EZSearchContacts;->setWebsite(Ljava/lang/String;)V

    .line 19
    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/model/EZSearchContacts;->setT_p(Ljava/lang/String;)V

    .line 20
    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    move-object/from16 v5, v22

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/model/EZSearchContacts;->setName_tags(Ljava/lang/String;)V

    .line 21
    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    move-object/from16 v6, v20

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/model/EZSearchContacts;->setType_tags(Ljava/lang/String;)V

    .line 22
    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    move-object/from16 v3, v17

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/model/EZSearchContacts;->setComment_tags(Ljava/lang/String;)V

    .line 23
    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    const-string v3, "country"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/model/EZSearchContacts;->setCountry(Ljava/lang/String;)V

    .line 24
    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    move-object/from16 v3, v19

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 25
    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/model/EZSearchContacts;->setE164_tel_number(Ljava/lang/String;)V

    .line 26
    :cond_1
    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    move-object/from16 v3, v18

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 27
    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/model/EZSearchContacts;->setCc(Ljava/lang/String;)V

    .line 28
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/allinone/callerid/model/EZSearchContacts;->setDate(J)V

    .line 29
    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    move-object/from16 v3, v16

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 30
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/model/EZSearchContacts;->setSoft_comments(Ljava/lang/String;)V

    .line 31
    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 32
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v21

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-eqz v3, :cond_5

    .line 33
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_3

    const/4 v3, 0x0

    .line 34
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 35
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 36
    invoke-virtual {v0, v5}, Lcom/allinone/callerid/model/EZSearchContacts;->setTag_main(Ljava/lang/String;)V

    .line 37
    :cond_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_5

    const/4 v3, 0x0

    .line 38
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    .line 39
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_4

    .line 40
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 41
    invoke-virtual {v0, v3}, Lcom/allinone/callerid/model/EZSearchContacts;->setTag_main(Ljava/lang/String;)V

    :cond_4
    if-eqz v2, :cond_5

    .line 42
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 43
    invoke-virtual {v0, v2}, Lcom/allinone/callerid/model/EZSearchContacts;->setTag_sub(Ljava/lang/String;)V

    .line 44
    :cond_5
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/allinone/callerid/f/f;->c(Lcom/allinone/callerid/model/EZSearchContacts;)V

    goto/16 :goto_6

    :cond_6
    move-object/from16 v23, p1

    move-object/from16 p1, v4

    move-object/from16 v24, v16

    move-object/from16 v4, v17

    move-object/from16 v25, v18

    move-object/from16 v26, v19

    move-object/from16 v16, v7

    move-object v7, v5

    move-object v5, v6

    move-object/from16 v6, v20

    .line 45
    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/allinone/callerid/util/x0$b;->d:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 46
    :cond_7
    iget-object v0, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 47
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    move-object/from16 v17, v10

    .line 48
    iget-object v10, v1, Lcom/allinone/callerid/util/x0$b;->d:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v10, v0}, Lcom/allinone/callerid/model/EZSearchContacts;->setType(Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v0

    iget-object v10, v1, Lcom/allinone/callerid/util/x0$b;->d:Lcom/allinone/callerid/model/EZSearchContacts;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v10, v2}, Lcom/allinone/callerid/f/f;->e(Lcom/allinone/callerid/model/EZSearchContacts;[Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    move-object/from16 v17, v10

    .line 50
    :goto_1
    iget-object v0, v1, Lcom/allinone/callerid/util/x0$b;->d:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/allinone/callerid/util/x0$b;->d:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 51
    :cond_9
    iget-object v0, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 52
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 53
    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->d:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v2, v0}, Lcom/allinone/callerid/model/EZSearchContacts;->setType_label(Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v0

    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->d:Lcom/allinone/callerid/model/EZSearchContacts;

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v2, v10}, Lcom/allinone/callerid/f/f;->e(Lcom/allinone/callerid/model/EZSearchContacts;[Ljava/lang/String;)V

    .line 55
    :cond_a
    iget-object v0, v1, Lcom/allinone/callerid/util/x0$b;->d:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZSearchContacts;->getOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/allinone/callerid/util/x0$b;->d:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZSearchContacts;->getOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 56
    :cond_b
    iget-object v0, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 57
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 58
    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->d:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v2, v0}, Lcom/allinone/callerid/model/EZSearchContacts;->setOperator(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v0

    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->d:Lcom/allinone/callerid/model/EZSearchContacts;

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v2, v10}, Lcom/allinone/callerid/f/f;->e(Lcom/allinone/callerid/model/EZSearchContacts;[Ljava/lang/String;)V

    .line 60
    :cond_c
    iget-object v0, v1, Lcom/allinone/callerid/util/x0$b;->d:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/allinone/callerid/util/x0$b;->d:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 61
    :cond_d
    iget-object v0, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 62
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 63
    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->d:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v2, v0}, Lcom/allinone/callerid/model/EZSearchContacts;->setName(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v0

    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->d:Lcom/allinone/callerid/model/EZSearchContacts;

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v2, v10}, Lcom/allinone/callerid/f/f;->e(Lcom/allinone/callerid/model/EZSearchContacts;[Ljava/lang/String;)V

    .line 65
    :cond_e
    iget-object v0, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    goto :goto_2

    .line 66
    :cond_f
    iget-object v0, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 67
    :goto_2
    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->d:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v2}, Lcom/allinone/callerid/model/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->d:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v2}, Lcom/allinone/callerid/model/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_3

    .line 68
    :cond_10
    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->d:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v2}, Lcom/allinone/callerid/model/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_4

    :cond_11
    :goto_3
    const/4 v2, 0x0

    :goto_4
    if-le v0, v2, :cond_12

    .line 69
    iget-object v0, v1, Lcom/allinone/callerid/util/x0$b;->d:Lcom/allinone/callerid/model/EZSearchContacts;

    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/model/EZSearchContacts;->setReport_count(Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v0

    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->d:Lcom/allinone/callerid/model/EZSearchContacts;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v2, v8}, Lcom/allinone/callerid/f/f;->e(Lcom/allinone/callerid/model/EZSearchContacts;[Ljava/lang/String;)V

    .line 71
    :cond_12
    iget-object v0, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    .line 72
    iget-object v0, v1, Lcom/allinone/callerid/util/x0$b;->d:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/model/EZSearchContacts;->setSearched(Z)V

    goto :goto_5

    .line 73
    :cond_13
    iget-object v0, v1, Lcom/allinone/callerid/util/x0$b;->d:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/allinone/callerid/model/EZSearchContacts;->setSearch_time(J)V

    .line 74
    :goto_5
    iget-object v0, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 75
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 76
    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->d:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v2, v0}, Lcom/allinone/callerid/model/EZSearchContacts;->setComment_tags(Ljava/lang/String;)V

    .line 77
    :cond_14
    iget-object v0, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 78
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 79
    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->d:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v2, v0}, Lcom/allinone/callerid/model/EZSearchContacts;->setName_tags(Ljava/lang/String;)V

    .line 80
    :cond_15
    iget-object v0, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 81
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 82
    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->d:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v2, v0}, Lcom/allinone/callerid/model/EZSearchContacts;->setType_tags(Ljava/lang/String;)V

    .line 83
    :cond_16
    iget-object v0, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 84
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 85
    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->d:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v2, v0}, Lcom/allinone/callerid/model/EZSearchContacts;->setFormat_tel_number(Ljava/lang/String;)V

    .line 86
    :cond_17
    iget-object v0, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 87
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 88
    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->d:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v2, v0}, Lcom/allinone/callerid/model/EZSearchContacts;->setTel_number(Ljava/lang/String;)V

    .line 89
    :cond_18
    iget-object v0, v1, Lcom/allinone/callerid/util/x0$b;->d:Lcom/allinone/callerid/model/EZSearchContacts;

    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/model/EZSearchContacts;->setBelong_area(Ljava/lang/String;)V

    .line 90
    iget-object v0, v1, Lcom/allinone/callerid/util/x0$b;->d:Lcom/allinone/callerid/model/EZSearchContacts;

    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    move-object/from16 v3, v17

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/model/EZSearchContacts;->setAddress(Ljava/lang/String;)V

    .line 91
    iget-object v0, v1, Lcom/allinone/callerid/util/x0$b;->d:Lcom/allinone/callerid/model/EZSearchContacts;

    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    move-object/from16 v3, v16

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/model/EZSearchContacts;->setAvatar(Ljava/lang/String;)V

    .line 92
    iget-object v0, v1, Lcom/allinone/callerid/util/x0$b;->d:Lcom/allinone/callerid/model/EZSearchContacts;

    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/model/EZSearchContacts;->setT_p(Ljava/lang/String;)V

    .line 93
    iget-object v0, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    move-object/from16 v2, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 94
    iget-object v0, v1, Lcom/allinone/callerid/util/x0$b;->d:Lcom/allinone/callerid/model/EZSearchContacts;

    iget-object v3, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/model/EZSearchContacts;->setE164_tel_number(Ljava/lang/String;)V

    .line 95
    :cond_19
    iget-object v0, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    move-object/from16 v2, v25

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 96
    iget-object v0, v1, Lcom/allinone/callerid/util/x0$b;->d:Lcom/allinone/callerid/model/EZSearchContacts;

    iget-object v3, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/model/EZSearchContacts;->setCc(Ljava/lang/String;)V

    .line 97
    :cond_1a
    iget-object v0, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    move-object/from16 v2, v24

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 98
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_1b

    .line 99
    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, v1, Lcom/allinone/callerid/util/x0$b;->d:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v3}, Lcom/allinone/callerid/model/EZSearchContacts;->getSoft_comments()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-le v3, v2, :cond_1b

    .line 101
    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->d:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/allinone/callerid/model/EZSearchContacts;->setSoft_comments(Ljava/lang/String;)V

    .line 102
    :cond_1b
    iget-object v0, v1, Lcom/allinone/callerid/util/x0$b;->a:Lorg/json/JSONObject;

    move-object/from16 v2, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 103
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_1e

    .line 104
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    const/4 v2, 0x0

    .line 105
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 106
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 107
    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->d:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/model/EZSearchContacts;->setTag_main(Ljava/lang/String;)V

    .line 108
    :cond_1c
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1e

    const/4 v2, 0x0

    .line 109
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 110
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_1d

    .line 111
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 112
    iget-object v3, v1, Lcom/allinone/callerid/util/x0$b;->d:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v3, v2}, Lcom/allinone/callerid/model/EZSearchContacts;->setTag_main(Ljava/lang/String;)V

    :cond_1d
    if-eqz v0, :cond_1e

    .line 113
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 114
    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->d:Lcom/allinone/callerid/model/EZSearchContacts;

    invoke-virtual {v2, v0}, Lcom/allinone/callerid/model/EZSearchContacts;->setTag_sub(Ljava/lang/String;)V

    .line 115
    :cond_1e
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v0

    iget-object v2, v1, Lcom/allinone/callerid/util/x0$b;->d:Lcom/allinone/callerid/model/EZSearchContacts;

    const-string v3, "isSearched"

    const-string v4, "search_time"

    const-string v5, "comment_tags"

    const-string v6, "name_tags"

    const-string v7, "type_tags"

    const-string v8, "format_tel_number"

    const-string v9, "tel_number"

    const-string v10, "belong_area"

    const-string v11, "address"

    const-string v12, "avatar"

    const-string v13, "t_p"

    const-string v14, "soft_comments"

    const-string v15, "tag_main"

    const-string v16, "tag_sub"

    const-string v17, "e164_tel_number"

    const-string v18, "cc"

    filled-new-array/range {v3 .. v18}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/allinone/callerid/f/f;->e(Lcom/allinone/callerid/model/EZSearchContacts;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/util/x0$b;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-boolean p1, p0, Lcom/allinone/callerid/util/x0$b;->c:Z

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.allinone.callerid.INIT_HISTORY"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/p/a/a;->d(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method
