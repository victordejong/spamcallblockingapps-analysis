.class final Lcom/google/android/gms/measurement/internal/gy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/gz;

.field final c:Lcom/google/android/gms/measurement/internal/eq;

.field private final d:Ljava/net/URL;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/gz;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/eq;[B)V
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
            "Lcom/google/android/gms/measurement/internal/eq;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/gy;->b:Lcom/google/android/gms/measurement/internal/gz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p6}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/gy;->d:Ljava/net/URL;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/gy;->c:Lcom/google/android/gms/measurement/internal/eq;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/gy;->a:Ljava/lang/String;

    return-void
.end method

.method private final a(ILjava/lang/Exception;[BLjava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Exception;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/gy;->b:Lcom/google/android/gms/measurement/internal/gz;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    new-instance v7, Lcom/google/android/gms/measurement/internal/gx;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/gx;-><init>(Lcom/google/android/gms/measurement/internal/gy;ILjava/lang/Exception;[BLjava/util/Map;)V

    .line 3
    invoke-virtual {v0, v7}, Lcom/google/android/gms/measurement/internal/ep;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/gy;->b:Lcom/google/android/gms/measurement/internal/gz;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->T_()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/gy;->b:Lcom/google/android/gms/measurement/internal/gz;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/gy;->d:Ljava/net/URL;

    .line 1001
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 1002
    instance-of v4, v3, Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_5

    .line 1003
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/gz;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v2, :cond_0

    .line 1004
    instance-of v4, v3, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v4, :cond_0

    .line 1005
    move-object v4, v3

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    .line 1006
    invoke-virtual {v4, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 1007
    :cond_0
    check-cast v3, Ljava/net/HttpURLConnection;

    .line 1008
    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    const v2, 0xea60

    .line 1010
    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v2, 0xee48

    .line 1012
    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1013
    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 v2, 0x1

    .line 1014
    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 3
    :try_start_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 4
    :try_start_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 5
    :try_start_3
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v7, 0x400

    :try_start_4
    new-array v7, v7, [B

    .line 7
    :goto_0
    invoke-virtual {v6, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_1

    .line 8
    invoke-virtual {v5, v7, v0, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_2

    .line 10
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_2
    if-eqz v3, :cond_3

    .line 12
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 13
    :cond_3
    invoke-direct {p0, v2, v1, v0, v4}, Lcom/google/android/gms/measurement/internal/gy;->a(ILjava/lang/Exception;[BLjava/util/Map;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v6, v1

    :goto_1
    if-eqz v6, :cond_4

    .line 10
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 11
    :cond_4
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v4, v1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v4, v1

    goto :goto_5

    :catchall_4
    move-exception v2

    move-object v4, v1

    goto :goto_2

    :catch_2
    move-exception v2

    move-object v4, v1

    goto :goto_4

    .line 1002
    :cond_5
    :try_start_7
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to obtain HTTP connection"

    .line 1003
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :catchall_5
    move-exception v2

    move-object v3, v1

    move-object v4, v3

    :goto_2
    move-object v0, v2

    const/4 v2, 0x0

    :goto_3
    if-eqz v3, :cond_6

    .line 12
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 13
    :cond_6
    invoke-direct {p0, v2, v1, v1, v4}, Lcom/google/android/gms/measurement/internal/gy;->a(ILjava/lang/Exception;[BLjava/util/Map;)V

    .line 14
    throw v0

    :catch_3
    move-exception v2

    move-object v3, v1

    move-object v4, v3

    :goto_4
    move-object v0, v2

    const/4 v2, 0x0

    :goto_5
    if-eqz v3, :cond_7

    .line 12
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 13
    :cond_7
    invoke-direct {p0, v2, v0, v1, v4}, Lcom/google/android/gms/measurement/internal/gy;->a(ILjava/lang/Exception;[BLjava/util/Map;)V

    return-void
.end method
