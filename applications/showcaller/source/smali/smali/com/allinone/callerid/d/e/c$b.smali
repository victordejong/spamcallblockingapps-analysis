.class Lcom/allinone/callerid/d/e/c$b;
.super Landroid/os/AsyncTask;
.source "HomeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/d/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/util/ArrayList<",
        "Lcom/allinone/callerid/callscreen/bean/HomeInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/allinone/callerid/d/e/c$a;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/callscreen/bean/HomeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/lang/String;ZLcom/allinone/callerid/d/e/c$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/allinone/callerid/d/e/c$b;->d:Z

    .line 3
    iput-boolean v0, p0, Lcom/allinone/callerid/d/e/c$b;->e:Z

    .line 4
    iput-boolean v0, p0, Lcom/allinone/callerid/d/e/c$b;->f:Z

    .line 5
    iput-object p4, p0, Lcom/allinone/callerid/d/e/c$b;->a:Lcom/allinone/callerid/d/e/c$a;

    .line 6
    iput p1, p0, Lcom/allinone/callerid/d/e/c$b;->b:I

    .line 7
    iput-object p2, p0, Lcom/allinone/callerid/d/e/c$b;->c:Ljava/lang/String;

    .line 8
    iput-boolean p3, p0, Lcom/allinone/callerid/d/e/c$b;->e:Z

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/callscreen/bean/HomeInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "hd_video_data_size"

    const-string v2, "sd_video_data_size"

    .line 1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/a1;->x0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "en_GB"

    .line 3
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "en_CA"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const-string v4, "en"

    .line 4
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v5

    .line 5
    invoke-static {v5}, Lcom/allinone/callerid/util/p;->d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v6

    const-string v7, "default_cc"

    invoke-virtual {v3, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "language"

    .line 6
    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {v5}, Lcom/allinone/callerid/util/p0;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "screen_size"

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {v5}, Lcom/allinone/callerid/util/h1;->T(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "uid"

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {v5}, Lcom/allinone/callerid/util/h1;->W(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "version"

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v4, v1, Lcom/allinone/callerid/d/e/c$b;->c:Ljava/lang/String;

    const-string v6, "sort"

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {v5}, Lcom/allinone/callerid/util/h1;->T(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/allinone/callerid/util/h1;->Q(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "stamp"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v1, Lcom/allinone/callerid/d/e/c$b;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "page"

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-boolean v4, Lcom/allinone/callerid/util/c0;->a:Z

    const-string v6, "callscreen"

    if-eqz v4, :cond_2

    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "params: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :try_start_0
    const-string v4, "https://app.show-caller.com/caller_screen_v2/v1/getsou.php"

    .line 15
    invoke-static {v4, v3}, Lcom/allinone/callerid/j/a;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 16
    sget-boolean v4, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v4, :cond_3

    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "result: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/allinone/callerid/util/c0;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v3, :cond_16

    .line 18
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 19
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "status"

    .line 20
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_14

    .line 21
    iput-boolean v8, v1, Lcom/allinone/callerid/d/e/c$b;->d:Z

    const-string v3, "data"

    .line 22
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 23
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lcom/allinone/callerid/d/e/c$b;->g:Ljava/util/ArrayList;

    .line 24
    invoke-static {}, Lcom/allinone/callerid/f/a;->c()Lcom/allinone/callerid/f/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/allinone/callerid/f/a;->a()Z

    move-result v4

    iput-boolean v4, v1, Lcom/allinone/callerid/d/e/c$b;->f:Z

    const/4 v4, 0x0

    .line 25
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v4, v9, :cond_9

    .line 26
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "id"

    .line 27
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "name"

    .line 28
    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "author"

    .line 29
    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "gif_thumb_path"

    .line 30
    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "jpg_thumb_path"

    .line 31
    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "sd_video_path"

    .line 32
    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 33
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-wide/16 v16, 0x0

    if-nez v7, :cond_4

    .line 34
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v20, v18

    goto :goto_1

    :cond_4
    move-wide/from16 v20, v16

    :goto_1
    const-string v7, "hd_video_path"

    .line 35
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 36
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 37
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    :cond_5
    move-object v8, v2

    move-object/from16 v19, v3

    move-wide/from16 v2, v16

    move-object/from16 v16, v0

    const-string v0, "audio_path"

    .line 38
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v5

    const-string v5, "like_count"

    .line 39
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v22, v8

    const-string v8, "download_count"

    .line 40
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 41
    new-instance v9, Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-direct {v9}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v23, v6

    .line 42
    :try_start_1
    iget-boolean v6, v1, Lcom/allinone/callerid/d/e/c$b;->f:Z

    if-eqz v6, :cond_8

    .line 43
    iget v6, v1, Lcom/allinone/callerid/d/e/c$b;->b:I

    move/from16 v24, v4

    const/4 v4, 0x1

    if-ne v6, v4, :cond_7

    .line 44
    iget-object v6, v1, Lcom/allinone/callerid/d/e/c$b;->g:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    const/4 v6, 0x0

    .line 45
    invoke-virtual {v9, v6}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setUnLock(Z)V

    goto :goto_2

    .line 46
    :cond_6
    invoke-virtual {v9, v4}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setUnLock(Z)V

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    .line 47
    invoke-virtual {v9, v4}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setUnLock(Z)V

    goto :goto_2

    :cond_8
    move/from16 v24, v4

    const/4 v4, 0x1

    .line 48
    invoke-virtual {v9, v4}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setUnLock(Z)V

    .line 49
    :goto_2
    invoke-virtual {v9, v10}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setData_id(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v9, v11}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setName(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v9, v12}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setAuthor(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v9, v13}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setGifimg_url(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v9, v14}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setJpgimg_url(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v9, v15}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setSdvideo_url(Ljava/lang/String;)V

    move-wide/from16 v10, v20

    .line 55
    invoke-virtual {v9, v10, v11}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setSdvideo_size(J)V

    .line 56
    invoke-virtual {v9, v7}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setHdvideo_url(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v9, v2, v3}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setHdvideo_size(J)V

    .line 58
    invoke-virtual {v9, v0}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setAudio_url(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v9, v5}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setLike_count(I)V

    .line 60
    invoke-virtual {v9, v8}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setDownloads(I)V

    .line 61
    iget-object v0, v1, Lcom/allinone/callerid/d/e/c$b;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v24, 0x1

    move-object/from16 v0, v16

    move-object/from16 v5, v17

    move-object/from16 v3, v19

    move-object/from16 v2, v22

    move-object/from16 v6, v23

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_9
    move-object/from16 v23, v6

    .line 62
    iget-boolean v0, v1, Lcom/allinone/callerid/d/e/c$b;->e:Z

    if-eqz v0, :cond_b

    .line 63
    invoke-static {}, Lcom/allinone/callerid/d/b/e;->e()Lcom/allinone/callerid/d/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/d/b/e;->b()Z

    move-result v0

    .line 64
    invoke-static {}, Lcom/allinone/callerid/d/b/c;->d()Lcom/allinone/callerid/d/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/allinone/callerid/d/b/c;->b()Z

    move-result v2

    .line 65
    new-instance v3, Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-direct {v3}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;-><init>()V

    .line 66
    invoke-virtual {v3, v0}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setDefautl_diy(Z)V

    if-eqz v0, :cond_a

    .line 67
    invoke-static {}, Lcom/allinone/callerid/d/b/e;->e()Lcom/allinone/callerid/d/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/d/b/e;->g()Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 68
    invoke-virtual {v0}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setPath(Ljava/lang/String;)V

    .line 69
    :cond_a
    invoke-virtual {v3, v2}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setContacts_diy(Z)V

    .line 70
    iget-object v0, v1, Lcom/allinone/callerid/d/e/c$b;->g:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 71
    :cond_b
    iget-object v0, v1, Lcom/allinone/callerid/d/e/c$b;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    .line 72
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    .line 73
    invoke-static {}, Lcom/allinone/callerid/d/b/e;->e()Lcom/allinone/callerid/d/b/e;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/allinone/callerid/d/b/e;->h(Lcom/allinone/callerid/callscreen/bean/HomeInfo;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-static {}, Lcom/allinone/callerid/d/b/c;->d()Lcom/allinone/callerid/d/b/c;

    move-result-object v3

    invoke-virtual {v2}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getData_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/allinone/callerid/d/b/c;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_4

    :cond_c
    const/4 v3, 0x0

    .line 74
    invoke-virtual {v2, v3}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setIsdefault(Z)V

    .line 75
    invoke-virtual {v2, v3}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setIsselect(Z)V

    goto :goto_5

    :cond_d
    :goto_4
    const/4 v3, 0x1

    .line 76
    invoke-virtual {v2, v3}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setIsdefault(Z)V

    .line 77
    invoke-virtual {v2, v3}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setIsselect(Z)V

    .line 78
    :goto_5
    invoke-static {}, Lcom/allinone/callerid/d/b/d;->b()Lcom/allinone/callerid/d/b/d;

    move-result-object v3

    invoke-virtual {v2}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getData_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/allinone/callerid/d/b/d;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    .line 79
    invoke-virtual {v2, v3}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setUnLock(Z)V

    .line 80
    :cond_e
    invoke-static {}, Lcom/allinone/callerid/d/b/b;->b()Lcom/allinone/callerid/d/b/b;

    move-result-object v3

    invoke-virtual {v2}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getData_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/allinone/callerid/d/b/b;->d(Ljava/lang/String;)Lcom/allinone/callerid/callscreen/bean/DownloadInfo;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 81
    sget-boolean v4, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v4, :cond_f

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6709\u4e0b\u8f7d\u5b8c\u6210\u7684\uff1a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/allinone/callerid/callscreen/bean/DownloadInfo;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v5, v23

    :try_start_2
    invoke-static {v5, v4}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_f
    move-object/from16 v5, v23

    .line 83
    :goto_6
    invoke-virtual {v3}, Lcom/allinone/callerid/callscreen/bean/DownloadInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setPath(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v3}, Lcom/allinone/callerid/callscreen/bean/DownloadInfo;->getAudio_path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setAudio_path(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 85
    invoke-virtual {v2, v3}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setUnLock(Z)V

    goto :goto_7

    :cond_10
    move-object/from16 v5, v23

    const/4 v3, 0x1

    .line 86
    :goto_7
    invoke-static {}, Lcom/allinone/callerid/d/b/a;->a()Lcom/allinone/callerid/d/b/a;

    move-result-object v4

    invoke-virtual {v2}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getData_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/allinone/callerid/d/b/a;->b(Ljava/lang/String;)Lcom/allinone/callerid/callscreen/bean/ActionInfo;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 87
    invoke-virtual {v4}, Lcom/allinone/callerid/callscreen/bean/ActionInfo;->isLike()Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setIslike(Z)V

    .line 88
    invoke-virtual {v4}, Lcom/allinone/callerid/callscreen/bean/ActionInfo;->getLike_counts()I

    move-result v6

    if-eqz v6, :cond_11

    .line 89
    invoke-virtual {v4}, Lcom/allinone/callerid/callscreen/bean/ActionInfo;->getLike_counts()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setLike_count(I)V

    .line 90
    :cond_11
    invoke-virtual {v4}, Lcom/allinone/callerid/callscreen/bean/ActionInfo;->isReport()Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setIsreport(Z)V

    .line 91
    sget-boolean v2, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v2, :cond_12

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "actionInfo\uff1a"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/allinone/callerid/callscreen/bean/ActionInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    move-object/from16 v23, v5

    goto/16 :goto_3

    :cond_13
    move-object/from16 v5, v23

    const-string v0, "https"

    .line 93
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_9

    :catch_0
    move-exception v0

    move-object/from16 v5, v23

    goto :goto_8

    :cond_14
    move-object v5, v6

    const/16 v0, -0x14

    if-ne v3, v0, :cond_15

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, v1, Lcom/allinone/callerid/d/e/c$b;->d:Z

    .line 95
    invoke-static {}, Lcom/allinone/callerid/util/s;->a()V

    goto :goto_9

    :cond_15
    const/4 v0, 0x0

    .line 96
    iput-boolean v0, v1, Lcom/allinone/callerid/d/e/c$b;->d:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v5, v6

    .line 97
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    sget-boolean v2, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v2, :cond_16

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_16
    :goto_9
    iget-object v0, v1, Lcom/allinone/callerid/d/e/c$b;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected b(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/callscreen/bean/HomeInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/d/e/c$b;->a:Lcom/allinone/callerid/d/e/c$a;

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v1, p0, Lcom/allinone/callerid/d/e/c$b;->d:Z

    invoke-interface {v0, p1, v1}, Lcom/allinone/callerid/d/e/c$a;->a(Ljava/util/ArrayList;Z)V

    :cond_0
    return-void
.end method

.method protected varargs c([Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/d/e/c$b;->a([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/d/e/c$b;->b(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/d/e/c$b;->c([Ljava/lang/String;)V

    return-void
.end method
