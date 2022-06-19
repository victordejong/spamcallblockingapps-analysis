.class public Lcom/allinone/callerid/k/c;
.super Landroid/os/AsyncTask;
.source "OfflineDbDownloadTask.java"


# annotations
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
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/allinone/callerid/l/a/d;

.field private d:Z

.field private e:Landroid/content/Context;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Lc/d/a/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/allinone/callerid/l/a/d;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/offlinedata.7z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/k/c;->a:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/allinone/callerid/util/h1;->M(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/databases"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/k/c;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/allinone/callerid/k/c;->f:I

    .line 5
    iput-object v2, p0, Lcom/allinone/callerid/k/c;->g:Ljava/lang/String;

    .line 6
    new-instance v0, Lcom/allinone/callerid/k/c$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/k/c$a;-><init>(Lcom/allinone/callerid/k/c;)V

    iput-object v0, p0, Lcom/allinone/callerid/k/c;->h:Lc/d/a/i;

    .line 7
    iput-object p3, p0, Lcom/allinone/callerid/k/c;->c:Lcom/allinone/callerid/l/a/d;

    .line 8
    iput-boolean p2, p0, Lcom/allinone/callerid/k/c;->d:Z

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/k/c;->e:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/allinone/callerid/k/c;)Lcom/allinone/callerid/l/a/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/k/c;->c:Lcom/allinone/callerid/l/a/d;

    return-object p0
.end method

.method static synthetic b(Lcom/allinone/callerid/k/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/k/c;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/allinone/callerid/k/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/k/c;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/allinone/callerid/k/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/allinone/callerid/k/c;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/allinone/callerid/k/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/k/c;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/allinone/callerid/k/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/k/c;->g:Ljava/lang/String;

    return-object p1
.end method

.method private i(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f00\u59cb\u4e0b\u8f7d\u79bb\u7ebf\u5e93: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checkupdate"

    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    :try_start_0
    invoke-static {}, Lc/d/a/q;->d()Lc/d/a/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/d/a/q;->c(Ljava/lang/String;)Lc/d/a/a;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/k/c;->a:Ljava/lang/String;

    .line 4
    invoke-interface {p1, v0}, Lc/d/a/a;->h(Ljava/lang/String;)Lc/d/a/a;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/k/c;->h:Lc/d/a/i;

    .line 5
    invoke-interface {p1, v0}, Lc/d/a/a;->P(Lc/d/a/i;)Lc/d/a/a;

    move-result-object p1

    const/16 v0, 0x8

    .line 6
    invoke-interface {p1, v0}, Lc/d/a/a;->F(I)Lc/d/a/a;

    move-result-object p1

    const/16 v0, 0x3e8

    .line 7
    invoke-interface {p1, v0}, Lc/d/a/a;->N(I)Lc/d/a/a;

    move-result-object p1

    .line 8
    invoke-interface {p1, v0}, Lc/d/a/a;->I(I)Lc/d/a/a;

    move-result-object p1

    .line 9
    invoke-interface {p1}, Lc/d/a/a;->start()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "un_7zip"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/allinone/callerid/k/c$b;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/k/c$b;-><init>(Lcom/allinone/callerid/k/c;)V

    invoke-static {p1, p2, v0}, Lcom/hzy/lib7z/Z7Extractor;->extractFile(Ljava/lang/String;Ljava/lang/String;Lcom/hzy/lib7z/ExtractCallback;)Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/k/c;->g([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs g([Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "is_need_full"

    const-string v2, "request_offline_db_first_new"

    const-string v3, ""

    .line 1
    :try_start_0
    iget-object v4, v1, Lcom/allinone/callerid/k/c;->e:Landroid/content/Context;

    invoke-static {v4}, Lcom/allinone/callerid/util/p;->d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/allinone/callerid/model/EZCountryCode;->getIso_code()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 2
    iget-object v6, v1, Lcom/allinone/callerid/k/c;->e:Landroid/content/Context;

    invoke-static {v6}, Lcom/allinone/callerid/util/p;->d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v6

    .line 3
    iget-object v7, v1, Lcom/allinone/callerid/k/c;->e:Landroid/content/Context;

    invoke-static {v7}, Lcom/allinone/callerid/util/h1;->T(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "0"

    .line 4
    invoke-static {}, Lcom/allinone/callerid/i/a/o/c;->a()Lcom/allinone/callerid/i/a/o/c;

    move-result-object v9

    invoke-virtual {v9}, Lcom/allinone/callerid/i/a/o/c;->b()Lcom/allinone/callerid/bean/ParserIpBean;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 5
    invoke-virtual {v9}, Lcom/allinone/callerid/bean/ParserIpBean;->getCountry()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v9}, Lcom/allinone/callerid/bean/ParserIpBean;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 6
    invoke-virtual {v9}, Lcom/allinone/callerid/bean/ParserIpBean;->getCountry()Ljava/lang/String;

    move-result-object v4

    .line 7
    :cond_0
    invoke-virtual {v9}, Lcom/allinone/callerid/bean/ParserIpBean;->getState()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v9}, Lcom/allinone/callerid/bean/ParserIpBean;->getState()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 8
    invoke-virtual {v9}, Lcom/allinone/callerid/bean/ParserIpBean;->getState()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_1
    move-object v10, v3

    .line 9
    :goto_0
    invoke-virtual {v9}, Lcom/allinone/callerid/bean/ParserIpBean;->getCity()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual {v9}, Lcom/allinone/callerid/bean/ParserIpBean;->getCity()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 10
    invoke-virtual {v9}, Lcom/allinone/callerid/bean/ParserIpBean;->getCity()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_2
    move-object v9, v3

    goto :goto_1

    :cond_3
    move-object v9, v3

    move-object v10, v9

    .line 11
    :goto_1
    invoke-static {}, Lcom/allinone/callerid/util/a1;->q()Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v8, "1"

    .line 12
    :cond_4
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v11

    invoke-static {v11}, Lcom/allinone/callerid/util/f0;->x(Landroid/content/Context;)V

    .line 13
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v11

    const-string v12, "request_offline_db_new"

    invoke-virtual {v11, v12}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/allinone/callerid/util/a1;->W()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-nez v15, :cond_5

    .line 15
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 17
    :cond_5
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/allinone/callerid/util/f0;->w(Landroid/content/Context;)V

    const-string v2, "https://app.show-caller.com/proc/v1/offpaccheupd.php"

    .line 18
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const-string v12, "last_update_time"

    .line 19
    invoke-static {}, Lcom/allinone/callerid/util/a1;->W()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "cc"

    .line 20
    invoke-virtual {v11, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "platform"

    const-string v12, "android"

    .line 21
    invoke-virtual {v11, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "package"

    .line 22
    iget-object v12, v1, Lcom/allinone/callerid/k/c;->e:Landroid/content/Context;

    invoke-static {v12}, Lcom/allinone/callerid/util/h1;->M(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "app_version"

    .line 23
    iget-object v12, v1, Lcom/allinone/callerid/k/c;->e:Landroid/content/Context;

    invoke-static {v12}, Lcom/allinone/callerid/util/h1;->W(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "uid"

    .line 24
    invoke-virtual {v11, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "stamp"

    .line 25
    iget-object v12, v1, Lcom/allinone/callerid/k/c;->e:Landroid/content/Context;

    invoke-static {v12, v7}, Lcom/allinone/callerid/util/h1;->Q(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "country"

    .line 26
    invoke-virtual {v11, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "state"

    .line 27
    invoke-virtual {v11, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "city"

    .line 28
    invoke-virtual {v11, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-virtual {v11, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-boolean v4, Lcom/allinone/callerid/util/c0;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "checkupdate"

    if-eqz v4, :cond_6

    .line 31
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "params: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_6
    invoke-static {v2, v11}, Lcom/allinone/callerid/j/a;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "result="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_9

    .line 34
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/32 v9, 0x2932e00

    add-long/2addr v7, v9

    invoke-static {v7, v8}, Lcom/allinone/callerid/util/a1;->L1(J)V

    .line 36
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "status"

    .line 37
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_9

    const-string v2, "data_url"

    .line 38
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dataurl="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "filesize"

    .line 40
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 41
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 42
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v1, Lcom/allinone/callerid/k/c;->f:I

    .line 43
    :cond_7
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v7, :cond_8

    .line 44
    invoke-static {v7}, Lcom/allinone/callerid/util/a1;->T0(Z)V

    goto :goto_2

    .line 45
    :cond_8
    invoke-static {v5}, Lcom/allinone/callerid/util/a1;->T0(Z)V

    :goto_2
    if-eqz v2, :cond_9

    .line 46
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_9

    return-object v2

    :catch_0
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    sget-boolean v2, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v2, :cond_9

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "wbb"

    invoke-static {v2, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-object v3
.end method

.method protected h(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPostExecute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checkupdate"

    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_5

    const-string v0, ""

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 5
    iget-boolean v0, p0, Lcom/allinone/callerid/k/c;->d:Z

    const-string v1, "download_offline_db_new"

    if-eqz v0, :cond_4

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/k/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/allinone/callerid/util/e;->d(Landroid/content/Context;)Z

    move-result v0

    const-string v2, "download_offline_db_first_new"

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/k/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/allinone/callerid/util/f0;->i(Landroid/content/Context;)V

    .line 8
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/k/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/allinone/callerid/util/f0;->h(Landroid/content/Context;)V

    .line 10
    invoke-direct {p0, p1}, Lcom/allinone/callerid/k/c;->i(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/allinone/callerid/util/a1;->W()J

    move-result-wide v0

    cmp-long p1, v0, v3

    if-nez p1, :cond_6

    .line 12
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/k/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/allinone/callerid/util/e;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    invoke-static {}, Lcom/allinone/callerid/util/a1;->W()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-nez v0, :cond_2

    .line 15
    iget-object v0, p0, Lcom/allinone/callerid/k/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/allinone/callerid/util/f0;->i(Landroid/content/Context;)V

    .line 16
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/allinone/callerid/k/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/allinone/callerid/util/f0;->h(Landroid/content/Context;)V

    .line 18
    invoke-direct {p0, p1}, Lcom/allinone/callerid/k/c;->i(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/allinone/callerid/util/a1;->W()J

    move-result-wide v0

    cmp-long p1, v0, v3

    if-nez p1, :cond_6

    .line 20
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :cond_2
    iget v0, p0, Lcom/allinone/callerid/k/c;->f:I

    if-eqz v0, :cond_6

    const/high16 v5, 0x100000

    if-ge v0, v5, :cond_3

    .line 22
    iget-object v0, p0, Lcom/allinone/callerid/k/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/allinone/callerid/util/f0;->i(Landroid/content/Context;)V

    .line 23
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/allinone/callerid/k/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/allinone/callerid/util/f0;->h(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/allinone/callerid/k/c;->i(Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/allinone/callerid/util/a1;->W()J

    move-result-wide v0

    cmp-long p1, v0, v3

    if-nez p1, :cond_6

    .line 27
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_3
    iget-object p1, p0, Lcom/allinone/callerid/k/c;->c:Lcom/allinone/callerid/l/a/d;

    if-eqz p1, :cond_6

    .line 29
    invoke-interface {p1}, Lcom/allinone/callerid/l/a/d;->b()V

    goto :goto_0

    .line 30
    :cond_4
    iget-object v0, p0, Lcom/allinone/callerid/k/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/allinone/callerid/util/f0;->i(Landroid/content/Context;)V

    .line 31
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/allinone/callerid/k/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/allinone/callerid/util/f0;->h(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/allinone/callerid/k/c;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 34
    :cond_5
    iget-object p1, p0, Lcom/allinone/callerid/k/c;->c:Lcom/allinone/callerid/l/a/d;

    if-eqz p1, :cond_6

    .line 35
    invoke-interface {p1}, Lcom/allinone/callerid/l/a/d;->b()V

    :cond_6
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/k/c;->h(Ljava/lang/String;)V

    return-void
.end method
