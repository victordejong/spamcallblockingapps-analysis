.class Lcom/allinone/callerid/i/a/x/a$a;
.super Landroid/os/AsyncTask;
.source "EZSearchNumberManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/i/a/x/a;
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
        "Lcom/allinone/callerid/search/EZSearchResult;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/allinone/callerid/i/a/x/e;

.field private b:Ljava/lang/String;

.field private c:Lcom/allinone/callerid/search/EZSearchResult;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/content/Context;

.field private h:Lorg/json/JSONObject;

.field private i:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/allinone/callerid/i/a/x/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p5, p0, Lcom/allinone/callerid/i/a/x/a$a;->a:Lcom/allinone/callerid/i/a/x/e;

    .line 3
    iput-object p4, p0, Lcom/allinone/callerid/i/a/x/a$a;->b:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/allinone/callerid/i/a/x/a$a;->e:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/allinone/callerid/i/a/x/a$a;->f:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/allinone/callerid/i/a/x/a$a;->g:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lcom/allinone/callerid/search/EZSearchResult;
    .locals 30

    move-object/from16 v1, p0

    const-string v0, "operator"

    const-string v2, "name"

    const-string v3, "faild_error_log"

    const-string v4, "type"

    const-string v5, "type_label"

    const-string v6, "status"

    const-string v7, "stamp"

    const-string v8, "default_cc"

    const-string v9, "uid"

    const-string v10, "android"

    const-string v11, "device"

    const-string v12, "cc"

    const-string v13, "tel_number"

    const-string v14, "searchNumber"

    const-string v15, ""

    move-object/from16 p1, v2

    .line 1
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v16, v0

    .line 2
    iget-object v0, v1, Lcom/allinone/callerid/i/a/x/a$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {v2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, v1, Lcom/allinone/callerid/i/a/x/a$a;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->T(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "version"

    move-object/from16 v17, v9

    .line 5
    iget-object v9, v1, Lcom/allinone/callerid/i/a/x/a$a;->g:Landroid/content/Context;

    invoke-static {v9}, Lcom/allinone/callerid/util/h1;->W(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, v1, Lcom/allinone/callerid/i/a/x/a$a;->e:Ljava/lang/String;

    invoke-virtual {v2, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, v1, Lcom/allinone/callerid/i/a/x/a$a;->f:Ljava/lang/String;

    invoke-virtual {v2, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, v1, Lcom/allinone/callerid/i/a/x/a$a;->g:Landroid/content/Context;

    iget-object v9, v1, Lcom/allinone/callerid/i/a/x/a$a;->b:Ljava/lang/String;

    invoke-static {v0, v9}, Lcom/allinone/callerid/util/h1;->Q(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cid"

    .line 9
    invoke-virtual {v2, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "is_contacts"

    .line 10
    invoke-virtual {v2, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "params:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v9, "search_number"

    invoke-virtual {v0, v9}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/allinone/callerid/util/a1;->B()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v0, v18, v20

    if-eqz v0, :cond_1

    .line 15
    new-instance v0, Ljava/util/Date;

    move-object v9, v7

    move-object/from16 v18, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v0, v7, v8}, Ljava/util/Date;-><init>(J)V

    new-instance v7, Ljava/util/Date;

    move-object/from16 v19, v9

    invoke-static {}, Lcom/allinone/callerid/util/a1;->B()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, v7}, Lcom/allinone/callerid/util/i;->r(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v7, "search_number_install_day"

    invoke-virtual {v0, v7}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object/from16 v19, v7

    move-object/from16 v18, v8

    :cond_2
    :goto_0
    const-string v0, "https://app.show-caller.com/api/v1/sea.php"

    .line 17
    invoke-static {v0, v2}, Lcom/allinone/callerid/j/a;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 18
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 19
    sget-boolean v2, Lcom/allinone/callerid/util/c0;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const-string v7, "response:"

    if-eqz v2, :cond_3

    .line 20
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_3
    new-instance v2, Lcom/allinone/callerid/search/EZSearchResult;

    invoke-direct {v2}, Lcom/allinone/callerid/search/EZSearchResult;-><init>()V

    iput-object v2, v1, Lcom/allinone/callerid/i/a/x/a$a;->c:Lcom/allinone/callerid/search/EZSearchResult;

    .line 22
    iget-object v8, v1, Lcom/allinone/callerid/i/a/x/a$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/allinone/callerid/search/EZSearchResult;->setNumber(Ljava/lang/String;)V

    .line 23
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/allinone/callerid/i/a/x/a$a;->h:Lorg/json/JSONObject;

    .line 24
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 25
    iget-object v2, v1, Lcom/allinone/callerid/i/a/x/a$a;->c:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v2, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setStatus(I)V

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1d

    .line 26
    iget-object v0, v1, Lcom/allinone/callerid/i/a/x/a$a;->h:Lorg/json/JSONObject;

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    iget-object v2, v1, Lcom/allinone/callerid/i/a/x/a$a;->c:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v2, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setType_label_id(Ljava/lang/String;)V

    .line 28
    iget-object v2, v1, Lcom/allinone/callerid/i/a/x/a$a;->c:Lcom/allinone/callerid/search/EZSearchResult;

    iget-object v8, v1, Lcom/allinone/callerid/i/a/x/a$a;->g:Landroid/content/Context;

    invoke-static {v8, v0}, Lcom/allinone/callerid/util/h1;->D(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/allinone/callerid/search/EZSearchResult;->setType_label(Ljava/lang/String;)V

    .line 29
    iget-object v2, v1, Lcom/allinone/callerid/i/a/x/a$a;->h:Lorg/json/JSONObject;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    const-string v8, "Fixed line"

    const-string v9, "Mobile"

    if-eqz v2, :cond_5

    .line 30
    :try_start_2
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_4

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    :cond_4
    move-object/from16 v22, v8

    .line 31
    iget-object v8, v1, Lcom/allinone/callerid/i/a/x/a$a;->c:Lcom/allinone/callerid/search/EZSearchResult;

    move-object/from16 v23, v9

    iget-object v9, v1, Lcom/allinone/callerid/i/a/x/a$a;->g:Landroid/content/Context;

    invoke-static {v9, v2}, Lcom/allinone/callerid/util/h1;->J(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/allinone/callerid/search/EZSearchResult;->setType(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object/from16 v22, v8

    move-object/from16 v23, v9

    .line 32
    :goto_1
    iget-object v2, v1, Lcom/allinone/callerid/i/a/x/a$a;->h:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    const/4 v8, 0x1

    if-ne v2, v8, :cond_7

    .line 33
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v8

    const-string v9, "new_search_success_zhudong"

    invoke-virtual {v8, v9}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 34
    :cond_7
    :goto_2
    iget-object v8, v1, Lcom/allinone/callerid/i/a/x/a$a;->h:Lorg/json/JSONObject;

    move-object/from16 v9, p1

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 35
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_8

    move-object/from16 p1, v4

    .line 36
    iget-object v4, v1, Lcom/allinone/callerid/i/a/x/a$a;->c:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v4, v8}, Lcom/allinone/callerid/search/EZSearchResult;->setName(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v4

    const-string v8, "new_search_name_success_zhudong"

    invoke-virtual {v4, v8}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    move-object/from16 p1, v4

    .line 38
    iget-object v4, v1, Lcom/allinone/callerid/i/a/x/a$a;->c:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v4, v15}, Lcom/allinone/callerid/search/EZSearchResult;->setName(Ljava/lang/String;)V

    .line 39
    :goto_3
    iget-object v4, v1, Lcom/allinone/callerid/i/a/x/a$a;->h:Lorg/json/JSONObject;

    const-string v8, "old_tel_number"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 40
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 41
    iget-object v8, v1, Lcom/allinone/callerid/i/a/x/a$a;->c:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v8, v4}, Lcom/allinone/callerid/search/EZSearchResult;->setOld_tel_number(Ljava/lang/String;)V

    .line 42
    :cond_9
    iget-object v4, v1, Lcom/allinone/callerid/i/a/x/a$a;->h:Lorg/json/JSONObject;

    move-object/from16 v8, v16

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 43
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_a

    move-object/from16 v16, v8

    .line 44
    iget-object v8, v1, Lcom/allinone/callerid/i/a/x/a$a;->c:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v8, v4}, Lcom/allinone/callerid/search/EZSearchResult;->setOperator(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    move-object/from16 v16, v8

    .line 45
    :goto_4
    iget-object v4, v1, Lcom/allinone/callerid/i/a/x/a$a;->h:Lorg/json/JSONObject;

    const-string v8, "format_tel_number"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 46
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 47
    iget-object v8, v1, Lcom/allinone/callerid/i/a/x/a$a;->c:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v8, v4}, Lcom/allinone/callerid/search/EZSearchResult;->setFormat_tel_number(Ljava/lang/String;)V

    .line 48
    :cond_b
    iget-object v4, v1, Lcom/allinone/callerid/i/a/x/a$a;->c:Lcom/allinone/callerid/search/EZSearchResult;

    iget-object v8, v1, Lcom/allinone/callerid/i/a/x/a$a;->h:Lorg/json/JSONObject;

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/allinone/callerid/search/EZSearchResult;->setTel_number(Ljava/lang/String;)V

    .line 49
    iget-object v4, v1, Lcom/allinone/callerid/i/a/x/a$a;->c:Lcom/allinone/callerid/search/EZSearchResult;

    iget-object v8, v1, Lcom/allinone/callerid/i/a/x/a$a;->h:Lorg/json/JSONObject;

    move-object/from16 v24, v9

    const-string v9, "t_p"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/allinone/callerid/search/EZSearchResult;->setT_p(Ljava/lang/String;)V

    .line 50
    iget-object v4, v1, Lcom/allinone/callerid/i/a/x/a$a;->h:Lorg/json/JSONObject;

    const-string v8, "avatar"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 51
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 52
    iget-object v8, v1, Lcom/allinone/callerid/i/a/x/a$a;->c:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v8, v4}, Lcom/allinone/callerid/search/EZSearchResult;->setIcon(Ljava/lang/String;)V

    :cond_c
    const/4 v4, 0x0

    if-eqz v0, :cond_d

    .line 53
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 54
    iget-object v0, v1, Lcom/allinone/callerid/i/a/x/a$a;->c:Lcom/allinone/callerid/search/EZSearchResult;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/allinone/callerid/search/EZSearchResult;->setIsSpam(Z)V

    .line 55
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v8, "search_number_spam"

    invoke-virtual {v0, v8}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_5

    .line 56
    :cond_d
    iget-object v0, v1, Lcom/allinone/callerid/i/a/x/a$a;->c:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0, v4}, Lcom/allinone/callerid/search/EZSearchResult;->setIsSpam(Z)V

    .line 57
    :goto_5
    iget-object v0, v1, Lcom/allinone/callerid/i/a/x/a$a;->h:Lorg/json/JSONObject;

    const-string v8, "belong_area"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 58
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 59
    iget-object v8, v1, Lcom/allinone/callerid/i/a/x/a$a;->c:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v8, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setLocation(Ljava/lang/String;)V

    .line 60
    sget-boolean v8, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v8, :cond_f

    .line 61
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u4f4d\u7f6e\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 62
    :cond_e
    iget-object v0, v1, Lcom/allinone/callerid/i/a/x/a$a;->c:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0, v15}, Lcom/allinone/callerid/search/EZSearchResult;->setLocation(Ljava/lang/String;)V

    .line 63
    :cond_f
    :goto_6
    iget-object v0, v1, Lcom/allinone/callerid/i/a/x/a$a;->h:Lorg/json/JSONObject;

    const-string v8, "soft_comments_tags"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 64
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 65
    iget-object v8, v1, Lcom/allinone/callerid/i/a/x/a$a;->c:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v8, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setComment_tags(Ljava/lang/String;)V

    .line 66
    :cond_10
    iget-object v0, v1, Lcom/allinone/callerid/i/a/x/a$a;->h:Lorg/json/JSONObject;

    const-string v8, "country"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 67
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 68
    iget-object v8, v1, Lcom/allinone/callerid/i/a/x/a$a;->c:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v8, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setCountry(Ljava/lang/String;)V

    .line 69
    :cond_11
    iget-object v0, v1, Lcom/allinone/callerid/i/a/x/a$a;->h:Lorg/json/JSONObject;

    const-string v8, "address"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 70
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 71
    iget-object v8, v1, Lcom/allinone/callerid/i/a/x/a$a;->c:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v8, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setLocation(Ljava/lang/String;)V

    .line 72
    :cond_12
    iget-object v0, v1, Lcom/allinone/callerid/i/a/x/a$a;->c:Lcom/allinone/callerid/search/EZSearchResult;

    iget-object v8, v1, Lcom/allinone/callerid/i/a/x/a$a;->h:Lorg/json/JSONObject;

    const-string v9, "report_count"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/allinone/callerid/search/EZSearchResult;->setComplaint_times(Ljava/lang/String;)V

    .line 73
    iget-object v0, v1, Lcom/allinone/callerid/i/a/x/a$a;->g:Landroid/content/Context;

    iget-object v8, v1, Lcom/allinone/callerid/i/a/x/a$a;->b:Ljava/lang/String;

    invoke-static {v0, v8}, Lcom/allinone/callerid/util/h1;->w(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 74
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    .line 75
    iget-object v8, v1, Lcom/allinone/callerid/i/a/x/a$a;->c:Lcom/allinone/callerid/search/EZSearchResult;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/allinone/callerid/search/EZSearchResult;->setContact(Z)V

    .line 76
    iget-object v8, v1, Lcom/allinone/callerid/i/a/x/a$a;->c:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v8, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setName(Ljava/lang/String;)V

    .line 77
    iget-object v0, v1, Lcom/allinone/callerid/i/a/x/a$a;->c:Lcom/allinone/callerid/search/EZSearchResult;

    iget-object v8, v1, Lcom/allinone/callerid/i/a/x/a$a;->g:Landroid/content/Context;

    iget-object v9, v1, Lcom/allinone/callerid/i/a/x/a$a;->b:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/allinone/callerid/util/h1;->Z(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/allinone/callerid/search/EZSearchResult;->setRaw_contact_id(I)V

    .line 78
    :cond_13
    iget-object v0, v1, Lcom/allinone/callerid/i/a/x/a$a;->h:Lorg/json/JSONObject;

    const-string v8, "e164_tel_number"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v8, v1, Lcom/allinone/callerid/i/a/x/a$a;->h:Lorg/json/JSONObject;

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    invoke-static {}, Lcom/allinone/callerid/util/a1;->c()J

    move-result-wide v27

    sub-long v25, v25, v27

    cmp-long v9, v25, v20

    if-lez v9, :cond_20

    if-nez v2, :cond_20

    if-eqz v0, :cond_20

    .line 81
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 82
    invoke-static {}, Lcom/allinone/callerid/util/a1;->d()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 83
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v2

    const-string v9, "search_buyu_token_max_zhudong"

    invoke-virtual {v2, v9}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v2

    const-string v9, "search_buyu_token_max_zhudong"

    invoke-virtual {v2, v9}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    goto :goto_7

    .line 85
    :cond_14
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v2

    const-string v9, "search_buyu_count_zhudong"

    invoke-virtual {v2, v9}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v2

    const-string v9, "search_buyu_count_zhudong"

    invoke-virtual {v2, v9}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 87
    :goto_7
    :try_start_3
    invoke-static {}, Lcom/allinone/callerid/util/h1;->N()Ljava/lang/String;

    move-result-object v2

    .line 88
    iget-object v9, v1, Lcom/allinone/callerid/i/a/x/a$a;->g:Landroid/content/Context;

    invoke-static {v9}, Lcom/allinone/callerid/util/h1;->T(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 89
    iget-object v4, v1, Lcom/allinone/callerid/i/a/x/a$a;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/allinone/callerid/util/h1;->W(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v26, v14

    .line 90
    :try_start_4
    iget-object v14, v1, Lcom/allinone/callerid/i/a/x/a$a;->g:Landroid/content/Context;

    invoke-static {v14}, Lcom/allinone/callerid/util/p;->d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object v14

    invoke-virtual {v14}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v27, v5

    .line 91
    iget-object v5, v1, Lcom/allinone/callerid/i/a/x/a$a;->g:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/allinone/callerid/util/h1;->Q(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 92
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_20

    if-eqz v14, :cond_20

    .line 93
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_20

    if-eqz v5, :cond_20

    .line 94
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_20

    move-object/from16 v28, v3

    .line 95
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v29, v6

    const-string v6, "platform"

    .line 96
    invoke-virtual {v3, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-virtual {v3, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v17

    .line 98
    invoke-virtual {v3, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "app_version"

    .line 99
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {v0}, Lcom/allinone/callerid/util/v;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v18

    .line 101
    invoke-virtual {v3, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-virtual {v3, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v19

    .line 103
    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "https://app2.show-caller.com/api/v1/scl.php"

    .line 104
    sget-boolean v4, Lcom/allinone/callerid/util/c0;->a:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const-string v5, "buyu"

    if-eqz v4, :cond_15

    .line 105
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "searchNumber\uff1a"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6240\u6709\u53c2\u6570\uff1a"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_15
    invoke-static {v2, v3}, Lcom/allinone/callerid/j/a;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 108
    sget-boolean v2, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v2, :cond_16

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    if-eqz v0, :cond_20

    .line 110
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    if-nez v2, :cond_20

    .line 111
    :try_start_6
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/allinone/callerid/i/a/x/a$a;->i:Lorg/json/JSONObject;

    move-object/from16 v0, v29

    .line 112
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1a

    const/4 v3, 0x0

    .line 113
    invoke-static {v3}, Lcom/allinone/callerid/util/a1;->G0(Z)V

    .line 114
    iget-object v0, v1, Lcom/allinone/callerid/i/a/x/a$a;->i:Lorg/json/JSONObject;

    move-object/from16 v3, v28

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_17

    .line 115
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v2, "search_buyu_count_zhudong_ok"

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 116
    :cond_17
    invoke-static/range {v20 .. v21}, Lcom/allinone/callerid/util/a1;->F0(J)V

    .line 117
    iget-object v0, v1, Lcom/allinone/callerid/i/a/x/a$a;->i:Lorg/json/JSONObject;

    move-object/from16 v2, v27

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    iget-object v2, v1, Lcom/allinone/callerid/i/a/x/a$a;->i:Lorg/json/JSONObject;

    move-object/from16 v3, v24

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 119
    iget-object v3, v1, Lcom/allinone/callerid/i/a/x/a$a;->i:Lorg/json/JSONObject;

    const-string v4, "format_tel_number"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 120
    iget-object v4, v1, Lcom/allinone/callerid/i/a/x/a$a;->i:Lorg/json/JSONObject;

    const-string v5, "avatar"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 121
    iget-object v5, v1, Lcom/allinone/callerid/i/a/x/a$a;->i:Lorg/json/JSONObject;

    move-object/from16 v6, v16

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 122
    iget-object v6, v1, Lcom/allinone/callerid/i/a/x/a$a;->i:Lorg/json/JSONObject;

    move-object/from16 v7, p1

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 123
    iget-object v7, v1, Lcom/allinone/callerid/i/a/x/a$a;->c:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v7, v2}, Lcom/allinone/callerid/search/EZSearchResult;->setName(Ljava/lang/String;)V

    .line 124
    iget-object v2, v1, Lcom/allinone/callerid/i/a/x/a$a;->c:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v2, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setType_label_id(Ljava/lang/String;)V

    .line 125
    iget-object v2, v1, Lcom/allinone/callerid/i/a/x/a$a;->c:Lcom/allinone/callerid/search/EZSearchResult;

    iget-object v7, v1, Lcom/allinone/callerid/i/a/x/a$a;->g:Landroid/content/Context;

    invoke-static {v7, v0}, Lcom/allinone/callerid/util/h1;->D(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/allinone/callerid/search/EZSearchResult;->setType_label(Ljava/lang/String;)V

    .line 126
    iget-object v0, v1, Lcom/allinone/callerid/i/a/x/a$a;->c:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/EZSearchResult;->setFormat_tel_number(Ljava/lang/String;)V

    .line 127
    iget-object v0, v1, Lcom/allinone/callerid/i/a/x/a$a;->c:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0, v4}, Lcom/allinone/callerid/search/EZSearchResult;->setIcon(Ljava/lang/String;)V

    if-eqz v6, :cond_19

    move-object/from16 v0, v23

    .line 128
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 129
    :cond_18
    iget-object v0, v1, Lcom/allinone/callerid/i/a/x/a$a;->c:Lcom/allinone/callerid/search/EZSearchResult;

    iget-object v2, v1, Lcom/allinone/callerid/i/a/x/a$a;->g:Landroid/content/Context;

    invoke-static {v2, v6}, Lcom/allinone/callerid/util/h1;->J(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/EZSearchResult;->setType(Ljava/lang/String;)V

    .line 130
    :cond_19
    iget-object v0, v1, Lcom/allinone/callerid/i/a/x/a$a;->c:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0, v5}, Lcom/allinone/callerid/search/EZSearchResult;->setOperator(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_1a
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1b

    const/4 v2, 0x1

    .line 131
    invoke-static {v2}, Lcom/allinone/callerid/util/a1;->G0(Z)V

    .line 132
    iget-object v0, v1, Lcom/allinone/callerid/i/a/x/a$a;->i:Lorg/json/JSONObject;

    const-string v2, "time_stamp"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 133
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 134
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-static {v2, v3}, Lcom/allinone/callerid/util/a1;->F0(J)V

    goto/16 :goto_a

    :cond_1b
    const/16 v2, -0x1e

    if-ne v0, v2, :cond_1c

    const/4 v0, 0x0

    .line 135
    invoke-static {v0}, Lcom/allinone/callerid/util/a1;->G0(Z)V

    .line 136
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v2, "search_buyu_error_30_zhudong"

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_a

    :cond_1c
    const/4 v0, 0x0

    .line 137
    invoke-static {v0}, Lcom/allinone/callerid/util/a1;->G0(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    .line 138
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v26, v14

    .line 139
    :goto_8
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    :cond_1d
    move-object/from16 v26, v14

    const/16 v2, -0x14

    if-ne v0, v2, :cond_20

    .line 140
    invoke-static {}, Lcom/allinone/callerid/util/s;->a()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_a

    :catch_3
    move-exception v0

    goto :goto_9

    :catch_4
    move-exception v0

    move-object/from16 v26, v14

    .line 141
    :goto_9
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/util/q;->g(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "connect timed out"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v2, 0x1

    .line 143
    iput-boolean v2, v1, Lcom/allinone/callerid/i/a/x/a$a;->d:Z

    .line 144
    :cond_1e
    sget-boolean v2, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v2, :cond_1f

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v26

    invoke-static {v3, v2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 147
    :cond_20
    :goto_a
    iget-object v0, v1, Lcom/allinone/callerid/i/a/x/a$a;->c:Lcom/allinone/callerid/search/EZSearchResult;

    return-object v0
.end method

.method protected b(Lcom/allinone/callerid/search/EZSearchResult;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/i/a/x/a$a;->a:Lcom/allinone/callerid/i/a/x/e;

    iget-boolean v1, p0, Lcom/allinone/callerid/i/a/x/a$a;->d:Z

    invoke-interface {v0, p1, v1}, Lcom/allinone/callerid/i/a/x/e;->a(Lcom/allinone/callerid/search/EZSearchResult;Z)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/i/a/x/a$a;->h:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "status"

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 4
    :try_start_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 5
    iget-object v2, p0, Lcom/allinone/callerid/i/a/x/a$a;->c:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v2, p1}, Lcom/allinone/callerid/search/EZSearchResult;->setStatus(I)V

    if-ne p1, v1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/i/a/x/a$a;->h:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/allinone/callerid/i/a/x/a$a;->b:Ljava/lang/String;

    invoke-static {p1, v2, v1}, Lcom/allinone/callerid/util/x0;->b(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/i/a/x/a$a;->i:Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/i/a/x/a$a;->i:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/allinone/callerid/i/a/x/a$a;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/allinone/callerid/util/x0;->a(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/x/a$a;->a([Ljava/lang/String;)Lcom/allinone/callerid/search/EZSearchResult;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/x/a$a;->b(Lcom/allinone/callerid/search/EZSearchResult;)V

    return-void
.end method
