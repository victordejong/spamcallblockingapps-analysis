.class public Lcom/allinone/callerid/l/a/e;
.super Landroid/os/AsyncTask;
.source "OfflineDownloadTask.java"


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

.field private b:Lcom/allinone/callerid/l/a/d;

.field private c:Lc/d/a/i;


# direct methods
.method public constructor <init>(Lcom/allinone/callerid/l/a/d;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phone/libphone/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/office.zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/l/a/e;->a:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/allinone/callerid/l/a/e$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/l/a/e$a;-><init>(Lcom/allinone/callerid/l/a/e;)V

    iput-object v0, p0, Lcom/allinone/callerid/l/a/e;->c:Lc/d/a/i;

    .line 4
    iput-object p1, p0, Lcom/allinone/callerid/l/a/e;->b:Lcom/allinone/callerid/l/a/d;

    return-void
.end method

.method static synthetic a(Lcom/allinone/callerid/l/a/e;)Lcom/allinone/callerid/l/a/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/l/a/e;->b:Lcom/allinone/callerid/l/a/d;

    return-object p0
.end method

.method static synthetic b(Lcom/allinone/callerid/l/a/e;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/l/a/e;->a:Ljava/lang/String;

    return-object p0
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    const-string v0, "\\"

    const-string v1, "/"

    .line 1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    array-length p0, v0

    const/4 v2, 0x1

    if-le p0, v2, :cond_2

    const/4 p0, 0x0

    .line 5
    :goto_0
    array-length p1, v0

    sub-int/2addr p1, v2

    if-ge p0, p1, :cond_0

    .line 6
    aget-object p1, v0, p0

    .line 7
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    move-object v1, v3

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 10
    :cond_1
    array-length p0, v0

    sub-int/2addr p0, v2

    aget-object p0, v0, p0

    .line 11
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1

    .line 12
    :cond_2
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method protected varargs c([Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string p1, "/"

    const-string v0, ""

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/util/a1;->w2()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide v6, 0x9a7ec800L

    cmp-long v8, v3, v6

    if-gtz v8, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v3

    const-string v4, "request_offline_parser_new"

    invoke-virtual {v3, v4}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v3

    invoke-static {v3}, Lcom/allinone/callerid/util/f0;->y(Landroid/content/Context;)V

    const-string v3, "https://app.show-caller.com/proc/v1/parcheupd.php"

    .line 5
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v4

    invoke-static {v4}, Lcom/allinone/callerid/util/p;->d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/allinone/callerid/model/EZCountryCode;->getIso_code()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v6

    invoke-static {v6}, Lcom/allinone/callerid/util/p;->d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    .line 8
    invoke-virtual {v4, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v4, v7, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 9
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->T(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 10
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v8, "app_version"

    .line 11
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v9

    invoke-static {v9}, Lcom/allinone/callerid/util/h1;->W(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "uid"

    .line 12
    invoke-virtual {v7, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "country"

    .line 13
    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "cc"

    .line 14
    invoke-virtual {v7, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "language"

    .line 15
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "last_update_time"

    .line 16
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "stamp"

    .line 17
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/allinone/callerid/util/h1;->Q(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "wbb"

    if-eqz p1, :cond_2

    .line 19
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "params: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_2
    invoke-static {v3, v7}, Lcom/allinone/callerid/j/a;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 21
    sget-boolean v2, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v2, :cond_3

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p1, :cond_5

    .line 23
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data_url"

    .line 24
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    if-eqz v5, :cond_5

    .line 26
    invoke-static {}, Lcom/allinone/callerid/util/a1;->P2()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/l/a/e;->c([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected e(Ljava/lang/String;)V
    .locals 2

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

    const-string v1, "wbb"

    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_2

    const-string v0, ""

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/e;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "download_offline_parser_new"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/f0;->l(Landroid/content/Context;)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/l/a/e;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/l/a/e;->b:Lcom/allinone/callerid/l/a/d;

    if-eqz p1, :cond_3

    .line 10
    invoke-interface {p1}, Lcom/allinone/callerid/l/a/d;->b()V

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/l/a/e;->b:Lcom/allinone/callerid/l/a/d;

    if-eqz p1, :cond_3

    .line 12
    invoke-interface {p1}, Lcom/allinone/callerid/l/a/d;->b()V

    :cond_3
    :goto_0
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f00\u59cb\u4e0b\u8f7d\u79bb\u7ebf\u89e3\u6790\u5e93: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wbb"

    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    :try_start_0
    invoke-static {}, Lc/d/a/q;->d()Lc/d/a/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/d/a/q;->c(Ljava/lang/String;)Lc/d/a/a;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/l/a/e;->a:Ljava/lang/String;

    .line 4
    invoke-interface {p1, v0}, Lc/d/a/a;->h(Ljava/lang/String;)Lc/d/a/a;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/l/a/e;->c:Lc/d/a/i;

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

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    const/16 v2, 0x400

    new-array v3, v2, [B

    .line 3
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 5
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 8
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/allinone/callerid/l/a/e;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 11
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 12
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 13
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-virtual {v0, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_1
    const/4 v4, 0x0

    .line 14
    invoke-virtual {v6, v3, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 15
    invoke-virtual {v5, v3, v4, v7}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 17
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    const-wide/16 v0, 0x7d0

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 20
    :try_start_0
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 22
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 23
    :cond_3
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string p2, "download_offline_parser_ok_new"

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/f0;->m(Landroid/content/Context;)V

    .line 25
    invoke-static {}, Lcom/allinone/callerid/util/a1;->P2()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    :goto_2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/allinone/callerid/l/a/e$b;

    invoke-direct {p2, p0}, Lcom/allinone/callerid/l/a/e$b;-><init>(Lcom/allinone/callerid/l/a/e;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/l/a/e;->e(Ljava/lang/String;)V

    return-void
.end method
