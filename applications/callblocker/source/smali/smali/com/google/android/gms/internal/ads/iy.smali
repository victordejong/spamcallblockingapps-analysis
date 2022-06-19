.class public Lcom/google/android/gms/internal/ads/iy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dqu;


# static fields
.field private static final a:Z


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/sg;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/ga;

.field private final d:Lcom/google/android/gms/internal/ads/hx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    sget-boolean v0, Lcom/google/android/gms/internal/ads/ez;->a:Z

    sput-boolean v0, Lcom/google/android/gms/internal/ads/iy;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/ga;)V
    .locals 2

    .prologue
    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/hx;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/hx;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/iy;-><init>(Lcom/google/android/gms/internal/ads/ga;Lcom/google/android/gms/internal/ads/hx;)V

    .line 2
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/ga;Lcom/google/android/gms/internal/ads/hx;)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/iy;->c:Lcom/google/android/gms/internal/ads/ga;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/iy;->b:Lcom/google/android/gms/internal/ads/sg;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/iy;->d:Lcom/google/android/gms/internal/ads/hx;

    .line 7
    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/dts;Lcom/google/android/gms/internal/ads/zzae;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/dts",
            "<*>;",
            "Lcom/google/android/gms/internal/ads/zzae;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 98
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dts;->k()Lcom/google/android/gms/internal/ads/cc;

    move-result-object v0

    .line 99
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dts;->j()I

    move-result v1

    .line 100
    :try_start_0
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/cc;->a(Lcom/google/android/gms/internal/ads/zzae;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzae; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    const-string/jumbo v0, "%s-retry [timeout=%s]"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/dts;->b(Ljava/lang/String;)V

    .line 108
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    const-string/jumbo v2, "%s-timeout-giveup [timeout=%s]"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/dts;->b(Ljava/lang/String;)V

    .line 106
    throw v0
.end method

.method private final a(Ljava/io/InputStream;I)[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 109
    new-instance v2, Lcom/google/android/gms/internal/ads/we;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iy;->d:Lcom/google/android/gms/internal/ads/hx;

    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/internal/ads/we;-><init>(Lcom/google/android/gms/internal/ads/hx;I)V

    .line 110
    const/4 v1, 0x0

    .line 111
    if-nez p1, :cond_1

    .line 112
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzac;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzac;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :catchall_0
    move-exception v0

    .line 126
    if-eqz p1, :cond_0

    .line 127
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 131
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/iy;->d:Lcom/google/android/gms/internal/ads/hx;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/hx;->a([B)V

    .line 132
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/we;->close()V

    .line 133
    throw v0

    .line 113
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iy;->d:Lcom/google/android/gms/internal/ads/hx;

    const/16 v3, 0x400

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/hx;->a(I)[B

    move-result-object v1

    .line 114
    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 115
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Lcom/google/android/gms/internal/ads/we;->write([BII)V

    goto :goto_1

    .line 116
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/we;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 117
    if-eqz p1, :cond_3

    .line 118
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 122
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/iy;->d:Lcom/google/android/gms/internal/ads/hx;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/hx;->a([B)V

    .line 123
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/we;->close()V

    .line 124
    return-object v0

    .line 121
    :catch_0
    move-exception v3

    const-string/jumbo v3, "Error occurred when closing InputStream"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/ez;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 130
    :catch_1
    move-exception v3

    const-string/jumbo v3, "Error occurred when closing InputStream"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/ez;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ads/dts;)Lcom/google/android/gms/internal/ads/drt;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dts",
            "<*>;)",
            "Lcom/google/android/gms/internal/ads/drt;"
        }
    .end annotation

    .prologue
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 9
    :goto_0
    const/4 v3, 0x0

    .line 10
    const/4 v9, 0x0

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 13
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/dts;->g()Lcom/google/android/gms/internal/ads/bzv;

    move-result-object v4

    .line 14
    if-nez v4, :cond_1

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 25
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/iy;->c:Lcom/google/android/gms/internal/ads/ga;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v2}, Lcom/google/android/gms/internal/ads/ga;->a(Lcom/google/android/gms/internal/ads/dts;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/pm;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v17

    .line 26
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/ads/pm;->a()I

    move-result v3

    .line 27
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/ads/pm;->b()Ljava/util/List;

    move-result-object v8

    .line 28
    const/16 v2, 0x130

    if-ne v3, v2, :cond_a

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/dts;->g()Lcom/google/android/gms/internal/ads/bzv;

    move-result-object v4

    .line 30
    if-nez v4, :cond_3

    .line 31
    new-instance v2, Lcom/google/android/gms/internal/ads/drt;

    const/16 v3, 0x130

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v18

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/drt;-><init>(I[BZJLjava/util/List;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 75
    :goto_2
    return-object v2

    .line 16
    :cond_1
    :try_start_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 17
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/bzv;->b:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 18
    const-string/jumbo v5, "If-None-Match"

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/bzv;->b:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_2
    iget-wide v6, v4, Lcom/google/android/gms/internal/ads/bzv;->d:J

    const-wide/16 v10, 0x0

    cmp-long v5, v6, v10

    if-lez v5, :cond_0

    .line 20
    const-string/jumbo v5, "If-Modified-Since"

    iget-wide v6, v4, Lcom/google/android/gms/internal/ads/bzv;->d:J

    .line 21
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/qn;->a(J)Ljava/lang/String;

    move-result-object v4

    .line 22
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    .line 77
    :catch_0
    move-exception v2

    const-string/jumbo v2, "socket"

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaf;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzaf;-><init>()V

    move-object/from16 v0, p1

    invoke-static {v2, v0, v3}, Lcom/google/android/gms/internal/ads/iy;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/dts;Lcom/google/android/gms/internal/ads/zzae;)V

    goto :goto_0

    .line 35
    :cond_3
    :try_start_3
    new-instance v5, Ljava/util/TreeSet;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v5, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 36
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 37
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/dnv;

    .line 38
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dnv;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 79
    :catch_1
    move-exception v2

    move-object v3, v2

    .line 80
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Bad URL "

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/dts;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-direct {v4, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 40
    :cond_4
    :try_start_4
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 41
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/bzv;->h:Ljava/util/List;

    if-eqz v2, :cond_7

    .line 42
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/bzv;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 43
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/bzv;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/dnv;

    .line 44
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dnv;->a()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 45
    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    .line 81
    :catch_2
    move-exception v2

    move-object v4, v9

    move-object/from16 v3, v17

    .line 82
    :goto_6
    if-eqz v3, :cond_12

    .line 83
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/pm;->a()I

    move-result v3

    .line 85
    const-string/jumbo v2, "Unexpected response code %d for %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/dts;->e()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Lcom/google/android/gms/internal/ads/ez;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    if-eqz v4, :cond_16

    .line 87
    new-instance v2, Lcom/google/android/gms/internal/ads/drt;

    const/4 v5, 0x0

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v18

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/drt;-><init>(I[BZJLjava/util/List;)V

    .line 89
    const/16 v4, 0x191

    if-eq v3, v4, :cond_6

    const/16 v4, 0x193

    if-ne v3, v4, :cond_13

    .line 90
    :cond_6
    const-string/jumbo v3, "auth"

    new-instance v4, Lcom/google/android/gms/internal/ads/zzb;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/zzb;-><init>(Lcom/google/android/gms/internal/ads/drt;)V

    move-object/from16 v0, p1

    invoke-static {v3, v0, v4}, Lcom/google/android/gms/internal/ads/iy;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/dts;Lcom/google/android/gms/internal/ads/zzae;)V

    goto/16 :goto_0

    .line 47
    :cond_7
    :try_start_5
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/bzv;->g:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 48
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/bzv;->g:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 49
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 50
    new-instance v7, Lcom/google/android/gms/internal/ads/dnv;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v7, v3, v2}, Lcom/google/android/gms/internal/ads/dnv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 54
    :cond_9
    new-instance v10, Lcom/google/android/gms/internal/ads/drt;

    const/16 v11, 0x130

    iget-object v12, v4, Lcom/google/android/gms/internal/ads/bzv;->a:[B

    const/4 v13, 0x1

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v14, v2, v18

    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/drt;-><init>(I[BZJLjava/util/List;)V

    move-object v2, v10

    .line 56
    goto/16 :goto_2

    .line 57
    :cond_a
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/ads/pm;->d()Ljava/io/InputStream;

    move-result-object v2

    .line 58
    if-eqz v2, :cond_e

    .line 60
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/ads/pm;->c()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/google/android/gms/internal/ads/iy;->a(Ljava/io/InputStream;I)[B
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v4

    .line 62
    :goto_8
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v18

    .line 64
    sget-boolean v2, Lcom/google/android/gms/internal/ads/iy;->a:Z

    if-nez v2, :cond_b

    const-wide/16 v10, 0xbb8

    cmp-long v2, v6, v10

    if-lez v2, :cond_c

    .line 65
    :cond_b
    const-string/jumbo v5, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v2, 0x5

    new-array v9, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v9, v2

    const/4 v2, 0x1

    .line 66
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v9, v2

    const/4 v6, 0x2

    .line 67
    if-eqz v4, :cond_f

    array-length v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_9
    aput-object v2, v9, v6

    const/4 v2, 0x3

    .line 68
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v2

    const/4 v2, 0x4

    .line 69
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/dts;->k()Lcom/google/android/gms/internal/ads/cc;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/cc;->b()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v2

    .line 70
    invoke-static {v5, v9}, Lcom/google/android/gms/internal/ads/ez;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :cond_c
    const/16 v2, 0xc8

    if-lt v3, v2, :cond_d

    const/16 v2, 0x12b

    if-le v3, v2, :cond_10

    .line 72
    :cond_d
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 81
    :catch_3
    move-exception v2

    move-object/from16 v3, v17

    goto/16 :goto_6

    .line 61
    :cond_e
    const/4 v2, 0x0

    :try_start_7
    new-array v4, v2, [B
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_8

    .line 67
    :cond_f
    :try_start_8
    const-string/jumbo v2, "null"

    goto :goto_9

    .line 73
    :cond_10
    new-instance v2, Lcom/google/android/gms/internal/ads/drt;

    const/4 v5, 0x0

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v18

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/drt;-><init>(I[BZJLjava/util/List;)V
    :try_end_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_2

    .line 80
    :cond_11
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 84
    :cond_12
    new-instance v3, Lcom/google/android/gms/internal/ads/zzr;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzr;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 91
    :cond_13
    const/16 v4, 0x190

    if-lt v3, v4, :cond_14

    const/16 v4, 0x1f3

    if-gt v3, v4, :cond_14

    .line 92
    new-instance v3, Lcom/google/android/gms/internal/ads/zzh;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzh;-><init>(Lcom/google/android/gms/internal/ads/drt;)V

    throw v3

    .line 93
    :cond_14
    const/16 v4, 0x1f4

    if-lt v3, v4, :cond_15

    const/16 v4, 0x257

    if-gt v3, v4, :cond_15

    .line 94
    new-instance v3, Lcom/google/android/gms/internal/ads/zzac;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzac;-><init>(Lcom/google/android/gms/internal/ads/drt;)V

    throw v3

    .line 95
    :cond_15
    new-instance v3, Lcom/google/android/gms/internal/ads/zzac;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzac;-><init>(Lcom/google/android/gms/internal/ads/drt;)V

    throw v3

    .line 96
    :cond_16
    const-string/jumbo v2, "network"

    new-instance v3, Lcom/google/android/gms/internal/ads/zzp;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzp;-><init>()V

    move-object/from16 v0, p1

    invoke-static {v2, v0, v3}, Lcom/google/android/gms/internal/ads/iy;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/dts;Lcom/google/android/gms/internal/ads/zzae;)V

    goto/16 :goto_0

    .line 81
    :catch_4
    move-exception v2

    move-object v4, v9

    goto/16 :goto_6
.end method
