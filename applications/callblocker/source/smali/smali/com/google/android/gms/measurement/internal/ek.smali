.class final Lcom/google/android/gms/measurement/internal/ek;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/net/URL;

.field private final b:[B

.field private final c:Lcom/google/android/gms/measurement/internal/ei;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final synthetic f:Lcom/google/android/gms/measurement/internal/eg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/eg;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/ei;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/measurement/internal/ei;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ek;->f:Lcom/google/android/gms/measurement/internal/eg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p6}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/ek;->a:Ljava/net/URL;

    .line 6
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/ek;->b:[B

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/ek;->c:Lcom/google/android/gms/measurement/internal/ei;

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/ek;->d:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/ek;->e:Ljava/util/Map;

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ek;->f:Lcom/google/android/gms/measurement/internal/eg;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->n()V

    .line 14
    const/4 v3, 0x0

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ek;->f:Lcom/google/android/gms/measurement/internal/eg;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ek;->a:Ljava/net/URL;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/eg;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 17
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ek;->e:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ek;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 19
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 40
    :catch_0
    move-exception v9

    move-object v11, v4

    move v8, v3

    move-object v0, v4

    move-object v1, v2

    .line 41
    :goto_1
    if-eqz v0, :cond_0

    .line 42
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 49
    :cond_0
    :goto_2
    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ek;->f:Lcom/google/android/gms/measurement/internal/eg;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/measurement/internal/eh;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/ek;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/ek;->c:Lcom/google/android/gms/measurement/internal/ei;

    move-object v10, v4

    move-object v12, v4

    invoke-direct/range {v5 .. v12}, Lcom/google/android/gms/measurement/internal/eh;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/ei;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/ee;)V

    .line 52
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/lang/Runnable;)V

    .line 53
    :goto_3
    return-void

    .line 21
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ek;->b:[B

    if-eqz v0, :cond_3

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ek;->f:Lcom/google/android/gms/measurement/internal/eg;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jm;->v_()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ek;->b:[B

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/js;->c([B)[B

    move-result-object v1

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ek;->f:Lcom/google/android/gms/measurement/internal/eg;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v5, "Uploading data. size"

    array-length v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 25
    const-string/jumbo v0, "Content-Encoding"

    const-string/jumbo v5, "gzip"

    invoke-virtual {v2, v0, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    array-length v0, v1

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 27
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 28
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 29
    :try_start_4
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 30
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 32
    :cond_3
    :try_start_5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 33
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v6

    .line 34
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ek;->f:Lcom/google/android/gms/measurement/internal/eg;

    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/eg;->a(Lcom/google/android/gms/measurement/internal/eg;Ljava/net/HttpURLConnection;)[B
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v5

    .line 35
    if-eqz v2, :cond_4

    .line 36
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 37
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ek;->f:Lcom/google/android/gms/measurement/internal/eg;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v8

    new-instance v0, Lcom/google/android/gms/measurement/internal/eh;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ek;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ek;->c:Lcom/google/android/gms/measurement/internal/ei;

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/eh;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/ei;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/ee;)V

    .line 38
    invoke-virtual {v8, v0}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 44
    :catch_1
    move-exception v0

    .line 45
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ek;->f:Lcom/google/android/gms/measurement/internal/eg;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 46
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Error closing HTTP compressed POST connection output stream. appId"

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/ek;->d:Ljava/lang/String;

    .line 47
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 48
    invoke-virtual {v2, v3, v5, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 54
    :catchall_0
    move-exception v0

    move-object v8, v0

    move-object v6, v4

    move-object v5, v4

    move-object v2, v4

    :goto_4
    if-eqz v5, :cond_5

    .line 55
    :try_start_7
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 62
    :cond_5
    :goto_5
    if-eqz v2, :cond_6

    .line 63
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 64
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ek;->f:Lcom/google/android/gms/measurement/internal/eg;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v9

    new-instance v0, Lcom/google/android/gms/measurement/internal/eh;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ek;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ek;->c:Lcom/google/android/gms/measurement/internal/ei;

    move-object v5, v4

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/eh;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/ei;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/ee;)V

    .line 65
    invoke-virtual {v9, v0}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/lang/Runnable;)V

    .line 66
    throw v8

    .line 57
    :catch_2
    move-exception v0

    .line 58
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ek;->f:Lcom/google/android/gms/measurement/internal/eg;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v5, "Error closing HTTP compressed POST connection output stream. appId"

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/ek;->d:Ljava/lang/String;

    .line 60
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 61
    invoke-virtual {v1, v5, v7, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    .line 54
    :catchall_1
    move-exception v0

    move-object v8, v0

    move-object v6, v4

    move-object v5, v4

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v8, v1

    move-object v6, v4

    move-object v5, v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v8, v0

    move-object v5, v4

    goto :goto_4

    .line 40
    :catch_3
    move-exception v9

    move-object v11, v4

    move v8, v3

    move-object v0, v4

    move-object v1, v4

    goto/16 :goto_1

    :catch_4
    move-exception v9

    move-object v11, v4

    move v8, v3

    move-object v1, v2

    goto/16 :goto_1

    :catch_5
    move-exception v9

    move-object v11, v6

    move v8, v3

    move-object v0, v4

    move-object v1, v2

    goto/16 :goto_1
.end method
