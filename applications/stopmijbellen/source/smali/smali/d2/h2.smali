.class public Ld2/h2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld2/h2$a;
    }
.end annotation


# instance fields
.field public a:Ljava/net/HttpURLConnection;

.field public b:Ljava/io/InputStream;

.field public c:Ld2/t0;

.field public d:Ld2/h2$a;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:Z

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Z

.field public n:I

.field public o:I


# direct methods
.method public constructor <init>(Ld2/t0;Ld2/h2$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ld2/h2;->f:I

    .line 3
    iput-boolean v0, p0, Ld2/h2;->g:Z

    const-string v0, ""

    .line 4
    iput-object v0, p0, Ld2/h2;->i:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Ld2/h2;->j:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Ld2/h2;->k:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Ld2/h2;->l:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Ld2/h2;->c:Ld2/t0;

    .line 9
    iput-object p2, p0, Ld2/h2;->d:Ld2/h2$a;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld2/h2;->c:Ld2/t0;

    .line 2
    iget-object v0, v0, Ld2/t0;->b:Ld2/f4;

    const-string v1, "content_type"

    .line 3
    invoke-virtual {v0, v1}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    .line 4
    invoke-virtual {v0, v2}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "user_agent"

    .line 5
    invoke-virtual {v0, v3}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "read_timeout"

    const v5, 0xea60

    .line 6
    invoke-static {v0, v4, v5}, Ld2/e4;->a(Ld2/f4;Ljava/lang/String;I)I

    move-result v4

    const-string v6, "connect_timeout"

    .line 7
    invoke-static {v0, v6, v5}, Ld2/e4;->a(Ld2/f4;Ljava/lang/String;I)I

    move-result v5

    const-string v6, "no_redirect"

    .line 8
    invoke-static {v0, v6}, Ld2/e4;->l(Ld2/f4;Ljava/lang/String;)Z

    move-result v6

    const-string v7, "url"

    .line 9
    invoke-virtual {v0, v7}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 10
    iput-object v7, p0, Ld2/h2;->k:Ljava/lang/String;

    const-string v7, "filepath"

    .line 11
    invoke-virtual {v0, v7}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 12
    iput-object v7, p0, Ld2/h2;->i:Ljava/lang/String;

    .line 13
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v8

    invoke-virtual {v8}, Ld2/f1;->b()Ld2/o2;

    move-result-object v8

    .line 14
    iget-object v8, v8, Ld2/o2;->d:Ljava/lang/String;

    .line 15
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Ld2/h2;->i:Ljava/lang/String;

    const-string v9, "/"

    .line 16
    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    add-int/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Ld2/h2;->j:Ljava/lang/String;

    const-string v7, "encoding"

    .line 17
    invoke-virtual {v0, v7}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 18
    iput-object v7, p0, Ld2/h2;->e:Ljava/lang/String;

    const-string v7, "max_size"

    const/4 v8, 0x0

    .line 19
    invoke-static {v0, v7, v8}, Ld2/e4;->a(Ld2/f4;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ld2/h2;->f:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    iput-boolean v0, p0, Ld2/h2;->g:Z

    .line 21
    iput v8, p0, Ld2/h2;->n:I

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Ld2/h2;->b:Ljava/io/InputStream;

    .line 23
    iput-object v0, p0, Ld2/h2;->a:Ljava/net/HttpURLConnection;

    .line 24
    iput-object v0, p0, Ld2/h2;->h:Ljava/util/Map;

    .line 25
    iget-object v0, p0, Ld2/h2;->k:Ljava/lang/String;

    const-string v7, "file://"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    iget-object v0, p0, Ld2/h2;->k:Ljava/lang/String;

    const-string v1, "file:///android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    sget-object v0, Ld2/t;->a:Landroid/content/Context;

    if-eqz v0, :cond_5

    .line 28
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Ld2/h2;->k:Ljava/lang/String;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Ld2/h2;->b:Ljava/io/InputStream;

    goto/16 :goto_1

    .line 29
    :cond_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Ld2/h2;->k:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ld2/h2;->b:Ljava/io/InputStream;

    goto :goto_1

    .line 30
    :cond_2
    new-instance v0, Ljava/net/URL;

    iget-object v7, p0, Ld2/h2;->k:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Ld2/h2;->a:Ljava/net/HttpURLConnection;

    .line 31
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 32
    iget-object v0, p0, Ld2/h2;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 33
    iget-object v0, p0, Ld2/h2;->a:Ljava/net/HttpURLConnection;

    xor-int/lit8 v4, v6, 0x1

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 34
    iget-object v0, p0, Ld2/h2;->a:Ljava/net/HttpURLConnection;

    const-string v4, "Accept-Charset"

    const-string v5, "UTF-8"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    if-eqz v3, :cond_3

    .line 35
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 36
    iget-object v4, p0, Ld2/h2;->a:Ljava/net/HttpURLConnection;

    const-string v6, "User-Agent"

    invoke-virtual {v4, v6, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 38
    iget-object v0, p0, Ld2/h2;->a:Ljava/net/HttpURLConnection;

    const-string v3, "Content-Type"

    invoke-virtual {v0, v3, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_4
    iget-object v0, p0, Ld2/h2;->c:Ld2/t0;

    .line 40
    iget-object v0, v0, Ld2/t0;->a:Ljava/lang/String;

    const-string v1, "WebServices.post"

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 42
    iget-object v0, p0, Ld2/h2;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 43
    iget-object v0, p0, Ld2/h2;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 44
    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Ld2/h2;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 45
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 46
    :cond_5
    :goto_1
    iget-object v0, p0, Ld2/h2;->a:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_7

    iget-object v0, p0, Ld2/h2;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v10, 0x0

    :cond_7
    :goto_2
    return v10
.end method

.method public final c()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld2/h2;->c:Ld2/t0;

    .line 2
    iget-object v0, v0, Ld2/t0;->a:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Ld2/h2;->b:Ljava/io/InputStream;

    const/4 v2, 0x0

    const/16 v3, 0x1000

    if-eqz v1, :cond_1

    .line 4
    iget-object v0, p0, Ld2/h2;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    goto/16 :goto_1

    .line 6
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ld2/h2;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :cond_1
    const-string v1, "WebServices.download"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    iget-object v0, p0, Ld2/h2;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Ld2/h2;->b:Ljava/io/InputStream;

    .line 10
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Ld2/h2;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, "WebServices.get"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    iget-object v0, p0, Ld2/h2;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Ld2/h2;->b:Ljava/io/InputStream;

    .line 13
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    goto :goto_1

    :cond_3
    const-string v1, "WebServices.post"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    iget-object v0, p0, Ld2/h2;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 16
    iget-object v0, p0, Ld2/h2;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Ld2/h2;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0x12b

    if-gt v0, v1, :cond_4

    .line 17
    iget-object v0, p0, Ld2/h2;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 18
    :cond_4
    iget-object v0, p0, Ld2/h2;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ld2/h2;->b:Ljava/io/InputStream;

    .line 19
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    goto :goto_1

    :cond_5
    move-object v0, v2

    .line 20
    :goto_1
    iget-object v1, p0, Ld2/h2;->a:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_6

    .line 21
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iput v1, p0, Ld2/h2;->o:I

    .line 22
    iget-object v1, p0, Ld2/h2;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Ld2/h2;->h:Ljava/util/Map;

    .line 23
    :cond_6
    iget-object v1, p0, Ld2/h2;->b:Ljava/io/InputStream;

    .line 24
    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-array v2, v3, [B

    :goto_2
    const/4 v5, 0x0

    .line 25
    invoke-virtual {v4, v2, v5, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_9

    .line 26
    iget v7, p0, Ld2/h2;->n:I

    add-int/2addr v7, v6

    iput v7, p0, Ld2/h2;->n:I

    .line 27
    iget-boolean v8, p0, Ld2/h2;->g:Z

    if-eqz v8, :cond_8

    iget v8, p0, Ld2/h2;->f:I

    if-gt v7, v8, :cond_7

    goto :goto_3

    .line 28
    :cond_7
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data exceeds expected maximum ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Ld2/h2;->n:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Ld2/h2;->f:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "): "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ld2/h2;->a:Ljava/net/HttpURLConnection;

    .line 29
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 30
    :cond_8
    :goto_3
    invoke-virtual {v0, v2, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2

    :cond_9
    const-string v2, "UTF-8"

    .line 31
    iget-object v3, p0, Ld2/h2;->e:Ljava/lang/String;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 32
    iget-object v2, p0, Ld2/h2;->e:Ljava/lang/String;

    .line 33
    :cond_a
    instance-of v3, v0, Ljava/io/ByteArrayOutputStream;

    if-eqz v3, :cond_b

    .line 34
    move-object v3, v0

    check-cast v3, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ld2/h2;->l:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_b
    if-eqz v0, :cond_c

    .line 35
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_c
    if-eqz v1, :cond_d

    .line 36
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 37
    :cond_d
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v2

    goto :goto_4

    :catchall_0
    move-exception v3

    goto :goto_5

    :catch_1
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    .line 38
    :goto_4
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v2

    move-object v3, v2

    move-object v2, v4

    :goto_5
    if-eqz v0, :cond_e

    .line 39
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_e
    if-eqz v1, :cond_f

    .line 40
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_f
    if-eqz v2, :cond_10

    .line 41
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 42
    :cond_10
    throw v3
.end method

.method public run()V
    .locals 7

    const-string v0, "Exception: "

    const-string v1, "/"

    const/4 v2, 0x0

    .line 1
    iput-boolean v2, p0, Ld2/h2;->m:Z

    const/4 v3, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ld2/h2;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3
    invoke-virtual {p0}, Ld2/h2;->c()Z

    iput-boolean v3, p0, Ld2/h2;->m:Z

    .line 4
    iget-object v4, p0, Ld2/h2;->c:Ld2/t0;

    .line 5
    iget-object v4, v4, Ld2/t0;->a:Ljava/lang/String;

    const-string v5, "WebServices.post"

    .line 6
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Ld2/h2;->o:I

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_1

    .line 7
    iput-boolean v2, p0, Ld2/h2;->m:Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    .line 8
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 9
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    .line 10
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v6

    invoke-virtual {v6}, Ld2/f1;->p()Ld2/h0;

    move-result-object v6

    .line 13
    invoke-virtual {v6, v2, v2, v5, v2}, Ld2/h0;->e(IILjava/lang/String;Z)V

    .line 14
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v4

    const-string v5, "okhttp error: "

    .line 15
    invoke-static {v5}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 16
    invoke-virtual {v4}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v6

    .line 17
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v6

    invoke-virtual {v6}, Ld2/f1;->p()Ld2/h0;

    move-result-object v6

    .line 20
    invoke-virtual {v6, v2, v2, v5, v2}, Ld2/h0;->e(IILjava/lang/String;Z)V

    .line 21
    invoke-virtual {v4}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v4, 0x0

    goto/16 :goto_1

    :catch_2
    move-exception v4

    const-string v5, "Download of "

    .line 22
    invoke-static {v5}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 23
    iget-object v6, p0, Ld2/h2;->k:Ljava/lang/String;

    .line 24
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    .line 26
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-static {v2, v3, v4, v3}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    .line 29
    iget v4, p0, Ld2/h2;->o:I

    if-nez v4, :cond_0

    const/16 v4, 0x1f8

    .line 30
    :cond_0
    iput v4, p0, Ld2/h2;->o:I

    goto :goto_0

    :catch_3
    const-string v4, "Out of memory error - disabling AdColony. ("

    .line 31
    invoke-static {v4}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 32
    iget v5, p0, Ld2/h2;->n:I

    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget v5, p0, Ld2/h2;->f:I

    .line 36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Ld2/h2;->k:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 40
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v5

    invoke-virtual {v5}, Ld2/f1;->p()Ld2/h0;

    move-result-object v5

    .line 41
    invoke-virtual {v5, v2, v2, v4, v2}, Ld2/h0;->e(IILjava/lang/String;Z)V

    .line 42
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v4

    .line 43
    iput-boolean v3, v4, Ld2/f1;->C:Z

    goto :goto_0

    :catch_4
    move-exception v4

    const-string v5, "MalformedURLException: "

    .line 44
    invoke-static {v5}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 45
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v4

    .line 46
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 48
    invoke-static {v2, v2, v4, v3}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    .line 49
    iput-boolean v3, p0, Ld2/h2;->m:Z

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_3

    .line 50
    iget-object v4, p0, Ld2/h2;->c:Ld2/t0;

    .line 51
    iget-object v4, v4, Ld2/t0;->a:Ljava/lang/String;

    const-string v5, "WebServices.download"

    .line 52
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 53
    iget-object v4, p0, Ld2/h2;->j:Ljava/lang/String;

    iget-object v5, p0, Ld2/h2;->i:Ljava/lang/String;

    .line 54
    :try_start_1
    invoke-virtual {v5, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v5, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v6, ""

    .line 55
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 56
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v6

    invoke-virtual {v6}, Ld2/f1;->b()Ld2/o2;

    move-result-object v6

    .line 57
    iget-object v6, v6, Ld2/o2;->d:Ljava/lang/String;

    .line 58
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 59
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v1, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Moving of "

    .line 63
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " failed."

    .line 65
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v4

    invoke-virtual {v4}, Ld2/f1;->p()Ld2/h0;

    move-result-object v4

    .line 68
    invoke-virtual {v4, v2, v3, v1, v3}, Ld2/h0;->e(IILjava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_2

    :catch_5
    move-exception v1

    .line 69
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 70
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    .line 71
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v3

    invoke-virtual {v3}, Ld2/f1;->p()Ld2/h0;

    move-result-object v3

    .line 74
    invoke-virtual {v3, v2, v2, v0, v2}, Ld2/h0;->e(IILjava/lang/String;Z)V

    .line 75
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    :cond_2
    :goto_2
    iget-object v0, p0, Ld2/h2;->d:Ld2/h2$a;

    iget-object v1, p0, Ld2/h2;->c:Ld2/t0;

    iget-object v2, p0, Ld2/h2;->h:Ljava/util/Map;

    invoke-interface {v0, p0, v1, v2}, Ld2/h2$a;->a(Ld2/h2;Ld2/t0;Ljava/util/Map;)V

    :cond_3
    return-void
.end method
