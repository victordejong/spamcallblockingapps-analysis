.class final Lcom/google/android/gms/measurement/internal/hl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/net/URL;

.field private final b:[B

.field private final c:Lcom/google/android/gms/measurement/internal/hi;

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

.field private final synthetic f:Lcom/google/android/gms/measurement/internal/hj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/hj;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/hi;)V
    .locals 1
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
            "Lcom/google/android/gms/measurement/internal/hi;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/hl;->f:Lcom/google/android/gms/measurement/internal/hj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p6}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/hl;->a:Ljava/net/URL;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/hl;->b:[B

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/hl;->c:Lcom/google/android/gms/measurement/internal/hi;

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/hl;->d:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/hl;->e:Ljava/util/Map;

    .line 10
    return-void
.end method

.method private final b(ILjava/lang/Exception;[BLjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Exception;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hl;->f:Lcom/google/android/gms/measurement/internal/hj;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v6

    new-instance v0, Lcom/google/android/gms/measurement/internal/hk;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/hk;-><init>(Lcom/google/android/gms/measurement/internal/hl;ILjava/lang/Exception;[BLjava/util/Map;)V

    .line 38
    invoke-virtual {v6, v0}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/lang/Runnable;)V

    .line 39
    return-void
.end method


# virtual methods
.method final synthetic a(ILjava/lang/Exception;[BLjava/util/Map;)V
    .locals 6

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hl;->c:Lcom/google/android/gms/measurement/internal/hi;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/hl;->d:Ljava/lang/String;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/hi;->a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method

.method public final run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hl;->f:Lcom/google/android/gms/measurement/internal/hj;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->n()V

    .line 13
    const/4 v3, 0x0

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hl;->f:Lcom/google/android/gms/measurement/internal/hj;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/hl;->a:Ljava/net/URL;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/hj;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 16
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hl;->e:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hl;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 18
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 28
    :goto_1
    if-eqz v4, :cond_0

    .line 29
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 30
    :cond_0
    invoke-direct {p0, v3, v0, v2, v1}, Lcom/google/android/gms/measurement/internal/hl;->b(ILjava/lang/Exception;[BLjava/util/Map;)V

    .line 31
    :goto_2
    return-void

    .line 20
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 21
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    .line 22
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hl;->f:Lcom/google/android/gms/measurement/internal/hj;

    invoke-static {v0, v4}, Lcom/google/android/gms/measurement/internal/hj;->a(Lcom/google/android/gms/measurement/internal/hj;Ljava/net/HttpURLConnection;)[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v0

    .line 23
    if-eqz v4, :cond_2

    .line 24
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 25
    :cond_2
    invoke-direct {p0, v3, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/hl;->b(ILjava/lang/Exception;[BLjava/util/Map;)V

    goto :goto_2

    .line 32
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v4, v2

    .line 33
    :goto_3
    if-eqz v4, :cond_3

    .line 34
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 35
    :cond_3
    invoke-direct {p0, v3, v2, v2, v1}, Lcom/google/android/gms/measurement/internal/hl;->b(ILjava/lang/Exception;[BLjava/util/Map;)V

    .line 36
    throw v0

    .line 32
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 27
    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v4, v2

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method
