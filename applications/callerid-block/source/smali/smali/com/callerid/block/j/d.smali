.class public Lcom/callerid/block/j/d;
.super Landroid/os/AsyncTask;
.source ""


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

.field private c:Ljava/lang/String;

.field private d:Lcom/callerid/block/k/a/b;

.field private e:Z

.field private f:Landroid/content/Context;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Le/e/a/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/callerid/block/k/a/b;)V
    .locals 4

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/offlinedatavest.7z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/j/d;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v3

    invoke-static {v3}, Lcom/callerid/block/util/t0;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/databases"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/j/d;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/callerid/block/util/t0;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/databases/offlinedatavest.sqlite"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/j/d;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/callerid/block/j/d;->g:I

    iput-object v2, p0, Lcom/callerid/block/j/d;->h:Ljava/lang/String;

    new-instance v0, Lcom/callerid/block/j/d$a;

    invoke-direct {v0, p0}, Lcom/callerid/block/j/d$a;-><init>(Lcom/callerid/block/j/d;)V

    iput-object v0, p0, Lcom/callerid/block/j/d;->i:Le/e/a/i;

    iput-object p3, p0, Lcom/callerid/block/j/d;->d:Lcom/callerid/block/k/a/b;

    iput-boolean p2, p0, Lcom/callerid/block/j/d;->e:Z

    iput-object p1, p0, Lcom/callerid/block/j/d;->f:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/callerid/block/j/d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/j/d;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/callerid/block/j/d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/j/d;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/callerid/block/j/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callerid/block/j/d;->l(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/callerid/block/j/d;)Lcom/callerid/block/k/a/b;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/j/d;->d:Lcom/callerid/block/k/a/b;

    return-object p0
.end method

.method static synthetic e(Lcom/callerid/block/j/d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/j/d;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/callerid/block/j/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/j/d;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lcom/callerid/block/j/d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/j/d;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/callerid/block/j/d;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/j/d;->f:Landroid/content/Context;

    return-object p0
.end method

.method private l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v1, "un_7zip"

    invoke-virtual {v0, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    new-instance v0, Lcom/callerid/block/j/d$b;

    invoke-direct {v0, p0}, Lcom/callerid/block/j/d$b;-><init>(Lcom/callerid/block/j/d;)V

    invoke-static {p1, p2, v0}, Lcom/hzy/lib7z/Z7Extractor;->extractFile(Ljava/lang/String;Ljava/lang/String;Lcom/hzy/lib7z/ExtractCallback;)Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callerid/block/j/d;->i([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs i([Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "is_need_full"

    const-string v2, ""

    :try_start_0
    iget-object v3, v1, Lcom/callerid/block/j/d;->f:Landroid/content/Context;

    invoke-static {v3}, Lcom/callerid/block/util/j;->d(Landroid/content/Context;)Lcom/callerid/block/bean/EZCountryCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callerid/block/bean/EZCountryCode;->getIso_code()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v1, Lcom/callerid/block/j/d;->f:Landroid/content/Context;

    invoke-static {v5}, Lcom/callerid/block/util/j;->d(Landroid/content/Context;)Lcom/callerid/block/bean/EZCountryCode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callerid/block/bean/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/callerid/block/j/d;->f:Landroid/content/Context;

    invoke-static {v6}, Lcom/callerid/block/util/t0;->E(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    invoke-static {}, Lcom/callerid/block/j/b;->a()Lcom/callerid/block/j/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/callerid/block/j/b;->b()Lcom/callerid/block/bean/ParserIpBean;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/callerid/block/bean/ParserIpBean;->getCountry()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v8}, Lcom/callerid/block/bean/ParserIpBean;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v8}, Lcom/callerid/block/bean/ParserIpBean;->getCountry()Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-virtual {v8}, Lcom/callerid/block/bean/ParserIpBean;->getState()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v8}, Lcom/callerid/block/bean/ParserIpBean;->getState()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v8}, Lcom/callerid/block/bean/ParserIpBean;->getState()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_1
    move-object v9, v2

    :goto_0
    invoke-virtual {v8}, Lcom/callerid/block/bean/ParserIpBean;->getCity()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v8}, Lcom/callerid/block/bean/ParserIpBean;->getCity()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v8}, Lcom/callerid/block/bean/ParserIpBean;->getCity()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_2
    move-object v8, v2

    goto :goto_1

    :cond_3
    move-object v8, v2

    move-object v9, v8

    :goto_1
    iget-object v10, v1, Lcom/callerid/block/j/d;->f:Landroid/content/Context;

    invoke-static {v10}, Lcom/callerid/block/util/n0;->w(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v7, "1"

    :cond_4
    iget-object v10, v1, Lcom/callerid/block/j/d;->f:Landroid/content/Context;

    invoke-static {v10}, Lcom/callerid/block/util/z;->j(Landroid/content/Context;)V

    iget-object v10, v1, Lcom/callerid/block/j/d;->f:Landroid/content/Context;

    invoke-static {v10}, Lcom/callerid/block/util/z;->i(Landroid/content/Context;)V

    const-string v10, "https://app.ayamote.com/proc/v1/offpaccheupd.php"

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const-string v12, "last_update_time"

    iget-object v13, v1, Lcom/callerid/block/j/d;->f:Landroid/content/Context;

    invoke-static {v13}, Lcom/callerid/block/util/n0;->r(Landroid/content/Context;)J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "cc"

    invoke-virtual {v11, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "platform"

    const-string v12, "android"

    invoke-virtual {v11, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "package"

    iget-object v12, v1, Lcom/callerid/block/j/d;->f:Landroid/content/Context;

    invoke-static {v12}, Lcom/callerid/block/util/t0;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "app_version"

    iget-object v12, v1, Lcom/callerid/block/j/d;->f:Landroid/content/Context;

    invoke-static {v12}, Lcom/callerid/block/util/t0;->G(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "uid"

    invoke-virtual {v11, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "stamp"

    iget-object v12, v1, Lcom/callerid/block/j/d;->f:Landroid/content/Context;

    invoke-static {v12, v6}, Lcom/callerid/block/util/t0;->A(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "country"

    invoke-virtual {v11, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "state"

    invoke-virtual {v11, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "city"

    invoke-virtual {v11, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v3, Lcom/callerid/block/util/w;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "checkupdate"

    if-eqz v3, :cond_5

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "params: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v3, "utf-8"

    invoke-static {v10, v11, v3}, Lcom/callerid/block/util/t;->b(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/callerid/block/util/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enlode_result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, v1, Lcom/callerid/block/j/d;->f:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/32 v9, 0x2932e00

    add-long/2addr v7, v9

    invoke-static {v6, v7, v8}, Lcom/callerid/block/util/n0;->X0(Landroid/content/Context;J)V

    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "status"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v7, 0x1

    if-ne v3, v7, :cond_8

    const-string v3, "data_url"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "filesize"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v1, Lcom/callerid/block/j/d;->g:I

    :cond_6
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v7, :cond_7

    iget-object v0, v1, Lcom/callerid/block/j/d;->f:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/callerid/block/util/n0;->G0(Landroid/content/Context;Z)V

    goto :goto_2

    :cond_7
    iget-object v0, v1, Lcom/callerid/block/j/d;->f:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/callerid/block/util/n0;->G0(Landroid/content/Context;Z)V

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dataurl="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_8

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_8

    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    return-object v2
.end method

.method protected j(Ljava/lang/String;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPostExecute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checkupdate"

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_7

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/callerid/block/j/d;->e:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/callerid/block/j/d;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/callerid/block/util/d;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/callerid/block/j/d;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/callerid/block/util/d;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/callerid/block/j/d;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/callerid/block/util/n0;->r(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const-string v4, "offline_db_small"

    cmp-long v5, v0, v2

    if-nez v5, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/callerid/block/j/d;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/callerid/block/util/z;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/callerid/block/j/d;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/callerid/block/util/z;->a(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/callerid/block/j/d;->k(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callerid/block/j/d;->d:Lcom/callerid/block/k/a/b;

    invoke-interface {p1}, Lcom/callerid/block/k/a/b;->b()V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    iget v0, p0, Lcom/callerid/block/j/d;->g:I

    if-eqz v0, :cond_8

    const/high16 v1, 0x100000

    if-ge v0, v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/callerid/block/util/n0;->N0(Landroid/content/Context;Z)V

    iget-object p1, p0, Lcom/callerid/block/j/d;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/callerid/block/util/n0;->w(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/callerid/block/j/d;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/callerid/block/util/h0;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "noti_offlinedb_download_show"

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/callerid/block/j/d;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/callerid/block/util/h0;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "noti_offlinedb_update_show"

    :goto_1
    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callerid/block/j/d;->d:Lcom/callerid/block/k/a/b;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/callerid/block/k/a/b;->a()V

    :cond_5
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "offline_db_big"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/callerid/block/j/d;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/callerid/block/util/z;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/callerid/block/j/d;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/callerid/block/util/z;->a(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/callerid/block/j/d;->k(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callerid/block/j/d;->d:Lcom/callerid/block/k/a/b;

    invoke-interface {p1}, Lcom/callerid/block/k/a/b;->b()V

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/callerid/block/j/d;->d:Lcom/callerid/block/k/a/b;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/callerid/block/k/a/b;->a()V

    :cond_8
    :goto_3
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f00\u59cb\u4e0b\u8f7d\u79bb\u7ebf\u5e93: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checkupdate"

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-static {}, Le/e/a/q;->d()Le/e/a/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/e/a/q;->c(Ljava/lang/String;)Le/e/a/a;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/j/d;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Le/e/a/a;->l(Ljava/lang/String;)Le/e/a/a;

    iget-object v0, p0, Lcom/callerid/block/j/d;->i:Le/e/a/i;

    invoke-interface {p1, v0}, Le/e/a/a;->Q(Le/e/a/i;)Le/e/a/a;

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Le/e/a/a;->E(I)Le/e/a/a;

    const/16 v0, 0x3e8

    invoke-interface {p1, v0}, Le/e/a/a;->O(I)Le/e/a/a;

    invoke-interface {p1, v0}, Le/e/a/a;->I(I)Le/e/a/a;

    invoke-interface {p1}, Le/e/a/a;->start()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callerid/block/j/d;->j(Ljava/lang/String;)V

    return-void
.end method
