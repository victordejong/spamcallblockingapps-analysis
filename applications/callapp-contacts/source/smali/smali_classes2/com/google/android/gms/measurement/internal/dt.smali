.class final Lcom/google/android/gms/measurement/internal/dt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/du;

.field private final b:Ljava/net/URL;

.field private final c:[B

.field private final d:Lcom/google/android/gms/measurement/internal/dr;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/du;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/dr;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/measurement/internal/dr;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/dt;->a:Lcom/google/android/gms/measurement/internal/du;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p6}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/dt;->b:Ljava/net/URL;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/dt;->c:[B

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/dt;->d:Lcom/google/android/gms/measurement/internal/dr;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/dt;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/dt;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    const-string v0, "Error closing HTTP compressed POST connection output stream. appId"

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/dt;->a:Lcom/google/android/gms/measurement/internal/du;

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fm;->T_()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/dt;->a:Lcom/google/android/gms/measurement/internal/du;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/dt;->b:Ljava/net/URL;

    .line 1001
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 1002
    instance-of v5, v4, Ljava/net/HttpURLConnection;

    if-eqz v5, :cond_7

    .line 1003
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/du;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v3, :cond_0

    .line 1004
    instance-of v5, v4, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v5, :cond_0

    .line 1005
    move-object v5, v4

    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;

    .line 1006
    invoke-virtual {v5, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 1007
    :cond_0
    check-cast v4, Ljava/net/HttpURLConnection;

    .line 1008
    invoke-virtual {v4, v1}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    const v3, 0xea60

    .line 1010
    invoke-virtual {v4, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v3, 0xee48

    .line 1012
    invoke-virtual {v4, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1013
    invoke-virtual {v4, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 v3, 0x1

    .line 1014
    invoke-virtual {v4, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 2
    :try_start_1
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/dt;->f:Ljava/util/Map;

    if-eqz v5, :cond_1

    .line 3
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/dt;->c:[B

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/dt;->a:Lcom/google/android/gms/measurement/internal/du;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/jd;->f:Lcom/google/android/gms/measurement/internal/jo;

    .line 5
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/jo;->g()Lcom/google/android/gms/measurement/internal/jq;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/dt;->c:[B

    .line 6
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/jq;->b([B)[B

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/dt;->a:Lcom/google/android/gms/measurement/internal/du;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 7
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v6

    .line 4000
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    .line 8
    array-length v7, v5

    const-string v8, "Uploading data. size"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v4, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v3, "Content-Encoding"

    const-string v6, "gzip"

    .line 10
    invoke-virtual {v4, v3, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v4, v7}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 12
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 13
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 14
    :try_start_2
    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 15
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    move-object v10, v2

    move-object v2, v3

    move-object v3, v5

    goto/16 :goto_6

    :catch_0
    move-exception v5

    move-object v10, v2

    move-object v2, v3

    move-object v8, v5

    goto/16 :goto_a

    .line 16
    :cond_2
    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 17
    :try_start_4
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v11
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 18
    :try_start_5
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 19
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/16 v6, 0x400

    :try_start_6
    new-array v6, v6, [B

    .line 20
    :goto_2
    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_3

    .line 21
    invoke-virtual {v3, v6, v1, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .line 22
    :cond_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v5, :cond_4

    .line 23
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :cond_4
    if-eqz v4, :cond_5

    .line 25
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dt;->a:Lcom/google/android/gms/measurement/internal/du;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/ds;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/dt;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/dt;->d:Lcom/google/android/gms/measurement/internal/dr;

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object v5, v1

    .line 27
    invoke-direct/range {v5 .. v12}, Lcom/google/android/gms/measurement/internal/ds;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/dq;)V

    .line 28
    :goto_3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ep;->a(Ljava/lang/Runnable;)V

    return-void

    :catchall_1
    move-exception v1

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v5, v2

    :goto_4
    if-eqz v5, :cond_6

    .line 23
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 24
    :cond_6
    throw v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v1

    move-object v5, v1

    move-object v3, v5

    move v7, v8

    move-object v10, v11

    goto :goto_7

    :catch_1
    move-exception v1

    move-object v5, v1

    move v7, v8

    move-object v10, v11

    goto :goto_5

    :catchall_4
    move-exception v5

    move-object v10, v2

    move-object v3, v5

    move v7, v8

    goto :goto_7

    :catch_2
    move-exception v5

    move-object v10, v2

    move v7, v8

    :goto_5
    move-object v8, v5

    goto :goto_b

    :catchall_5
    move-exception v3

    move-object v10, v2

    goto :goto_6

    :catch_3
    move-exception v3

    move-object v10, v2

    goto :goto_9

    .line 1002
    :cond_7
    :try_start_9
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Failed to obtain HTTP connection"

    .line 1003
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :catchall_6
    move-exception v3

    move-object v4, v2

    move-object v10, v4

    :goto_6
    const/4 v7, 0x0

    :goto_7
    if-eqz v2, :cond_8

    .line 29
    :try_start_a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_8

    :catch_4
    move-exception v1

    .line 32
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/dt;->a:Lcom/google/android/gms/measurement/internal/du;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 30
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v2

    .line 6000
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    .line 31
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/dt;->e:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 32
    invoke-virtual {v2, v0, v5, v1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    :goto_8
    if-eqz v4, :cond_9

    .line 25
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dt;->a:Lcom/google/android/gms/measurement/internal/du;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/ds;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/dt;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/dt;->d:Lcom/google/android/gms/measurement/internal/dr;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v4, v1

    .line 27
    invoke-direct/range {v4 .. v11}, Lcom/google/android/gms/measurement/internal/ds;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/dq;)V

    .line 28
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ep;->a(Ljava/lang/Runnable;)V

    .line 33
    throw v3

    :catch_5
    move-exception v3

    move-object v4, v2

    move-object v10, v4

    :goto_9
    move-object v8, v3

    :goto_a
    const/4 v7, 0x0

    :goto_b
    if-eqz v2, :cond_a

    .line 29
    :try_start_b
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_c

    :catch_6
    move-exception v1

    .line 24
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/dt;->a:Lcom/google/android/gms/measurement/internal/du;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 30
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v2

    .line 5000
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    .line 31
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/dt;->e:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 32
    invoke-virtual {v2, v0, v3, v1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a
    :goto_c
    if-eqz v4, :cond_b

    .line 25
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dt;->a:Lcom/google/android/gms/measurement/internal/du;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/ds;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/dt;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/dt;->d:Lcom/google/android/gms/measurement/internal/dr;

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v4, v1

    .line 27
    invoke-direct/range {v4 .. v11}, Lcom/google/android/gms/measurement/internal/ds;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/dq;)V

    goto/16 :goto_3
.end method
