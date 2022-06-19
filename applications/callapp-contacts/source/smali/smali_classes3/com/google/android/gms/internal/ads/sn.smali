.class public Lcom/google/android/gms/internal/ads/sn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ehl;


# instance fields
.field private final zzce:Lcom/google/android/gms/internal/ads/acj;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final zzcf:Lcom/google/android/gms/internal/ads/pq;

.field private final zzcg:Lcom/google/android/gms/internal/ads/rq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/pq;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/rq;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/rq;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/sn;-><init>(Lcom/google/android/gms/internal/ads/pq;Lcom/google/android/gms/internal/ads/rq;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/pq;Lcom/google/android/gms/internal/ads/rq;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sn;->zzcf:Lcom/google/android/gms/internal/ads/pq;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sn;->zzce:Lcom/google/android/gms/internal/ads/acj;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/sn;->zzcg:Lcom/google/android/gms/internal/ads/rq;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/ads/z;)Lcom/google/android/gms/internal/ads/emg;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/z<",
            "*>;)",
            "Lcom/google/android/gms/internal/ads/emg;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzap;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 11
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 13
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/z;->zzf()Lcom/google/android/gms/internal/ads/eap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    .line 16
    :cond_0
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 17
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/eap;->b:Ljava/lang/String;

    if-eqz v10, :cond_1

    const-string v10, "If-None-Match"

    .line 18
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/eap;->b:Ljava/lang/String;

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_1
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/eap;->d:J

    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    if-lez v14, :cond_2

    const-string v10, "If-Modified-Since"

    .line 20
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/eap;->d:J

    const-string v0, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    .line 1068
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aaj;->a(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-interface {v9, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v0, v9

    .line 25
    :goto_1
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/sn;->zzcf:Lcom/google/android/gms/internal/ads/pq;

    invoke-virtual {v9, v2, v0}, Lcom/google/android/gms/internal/ads/pq;->a(Lcom/google/android/gms/internal/ads/z;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zk;

    move-result-object v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2010
    :try_start_1
    iget v11, v9, Lcom/google/android/gms/internal/ads/zk;->a:I

    .line 2011
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zk;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/16 v10, 0x130

    if-ne v11, v10, :cond_9

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v16, v10, v3

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/z;->zzf()Lcom/google/android/gms/internal/ads/eap;

    move-result-object v10

    if-nez v10, :cond_3

    .line 33
    new-instance v10, Lcom/google/android/gms/internal/ads/emg;

    const/16 v13, 0x130

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object v12, v10

    move-object/from16 v18, v0

    invoke-direct/range {v12 .. v18}, Lcom/google/android/gms/internal/ads/emg;-><init>(I[BZJLjava/util/List;)V

    return-object v10

    .line 35
    :cond_3
    new-instance v11, Ljava/util/TreeSet;

    sget-object v12, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v11, v12}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 36
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    .line 37
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/ads/eim;

    .line 3005
    iget-object v13, v13, Lcom/google/android/gms/internal/ads/eim;->a:Ljava/lang/String;

    .line 38
    invoke-interface {v11, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 40
    :cond_4
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 41
    iget-object v0, v10, Lcom/google/android/gms/internal/ads/eap;->h:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 42
    iget-object v0, v10, Lcom/google/android/gms/internal/ads/eap;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 43
    iget-object v0, v10, Lcom/google/android/gms/internal/ads/eap;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/ads/eim;

    .line 4005
    iget-object v13, v12, Lcom/google/android/gms/internal/ads/eim;->a:Ljava/lang/String;

    .line 44
    invoke-interface {v11, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 45
    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 47
    :cond_6
    iget-object v0, v10, Lcom/google/android/gms/internal/ads/eap;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 48
    iget-object v0, v10, Lcom/google/android/gms/internal/ads/eap;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 49
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 50
    new-instance v13, Lcom/google/android/gms/internal/ads/eim;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-direct {v13, v14, v12}, Lcom/google/android/gms/internal/ads/eim;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 54
    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/ads/emg;

    const/16 v13, 0x130

    iget-object v14, v10, Lcom/google/android/gms/internal/ads/eap;->a:[B

    const/4 v10, 0x1

    move-object v12, v0

    move-object v11, v15

    move v15, v10

    move-object/from16 v18, v11

    invoke-direct/range {v12 .. v18}, Lcom/google/android/gms/internal/ads/emg;-><init>(I[BZJLjava/util/List;)V

    return-object v0

    .line 4013
    :cond_9
    iget-object v10, v9, Lcom/google/android/gms/internal/ads/zk;->d:Ljava/io/InputStream;

    if-eqz v10, :cond_a

    .line 4014
    iget-object v10, v9, Lcom/google/android/gms/internal/ads/zk;->d:Ljava/io/InputStream;

    goto :goto_5

    :cond_a
    move-object v10, v8

    :goto_5
    if-eqz v10, :cond_b

    .line 5012
    iget v12, v9, Lcom/google/android/gms/internal/ads/zk;->c:I

    .line 59
    iget-object v13, v1, Lcom/google/android/gms/internal/ads/sn;->zzcg:Lcom/google/android/gms/internal/ads/rq;

    .line 60
    invoke-static {v10, v12, v13}, Lcom/google/android/gms/internal/ads/agj;->a(Ljava/io/InputStream;ILcom/google/android/gms/internal/ads/rq;)[B

    move-result-object v8

    goto :goto_6

    :cond_b
    new-array v8, v7, [B

    .line 62
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v12, v3

    .line 64
    sget-boolean v10, Lcom/google/android/gms/internal/ads/mz;->a:Z

    if-nez v10, :cond_c

    const-wide/16 v14, 0xbb8

    cmp-long v10, v12, v14

    if-lez v10, :cond_e

    :cond_c
    const-string v10, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v2, v14, v7

    .line 66
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v14, v5

    if-eqz v8, :cond_d

    .line 67
    array-length v12, v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_7

    :cond_d
    const-string v12, "null"

    :goto_7
    aput-object v12, v14, v6

    const/4 v12, 0x3

    .line 68
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v14, v12

    const/4 v12, 0x4

    .line 69
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/z;->zzj()Lcom/google/android/gms/internal/ads/iy;

    move-result-object v13

    invoke-interface {v13}, Lcom/google/android/gms/internal/ads/iy;->b()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v14, v12

    .line 70
    invoke-static {v10, v14}, Lcom/google/android/gms/internal/ads/mz;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    const/16 v10, 0xc8

    if-lt v11, v10, :cond_f

    const/16 v10, 0x12b

    if-gt v11, v10, :cond_f

    .line 73
    new-instance v17, Lcom/google/android/gms/internal/ads/emg;

    const/4 v13, 0x0

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long/2addr v14, v3

    move-object/from16 v10, v17

    move-object v12, v8

    move-object/from16 v16, v0

    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/emg;-><init>(I[BZJLjava/util/List;)V

    return-object v17

    .line 72
    :cond_f
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    move-object v11, v8

    move-object v8, v9

    goto :goto_8

    :catch_1
    move-exception v0

    move-object v11, v8

    .line 5035
    :goto_8
    instance-of v9, v0, Ljava/net/SocketTimeoutException;

    if-eqz v9, :cond_10

    .line 5036
    new-instance v0, Lcom/google/android/gms/internal/ads/zzam;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzam;-><init>()V

    const-string v5, "socket"

    invoke-static {v5, v2, v0}, Lcom/google/android/gms/internal/ads/agj;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/z;Lcom/google/android/gms/internal/ads/zzap;)V

    goto/16 :goto_0

    .line 5037
    :cond_10
    instance-of v9, v0, Ljava/net/MalformedURLException;

    if-eqz v9, :cond_12

    .line 5038
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Bad URL "

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/z;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_11
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_9
    invoke-direct {v3, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_12
    if-eqz v8, :cond_19

    .line 6010
    iget v0, v8, Lcom/google/android/gms/internal/ads/zk;->a:I

    new-array v6, v6, [Ljava/lang/Object;

    .line 5042
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/z;->getUrl()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    const-string v5, "Unexpected response code %d for %s"

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/mz;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v11, :cond_18

    .line 6011
    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zk;->b:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    .line 5045
    new-instance v5, Lcom/google/android/gms/internal/ads/emg;

    const/4 v12, 0x0

    .line 5046
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v13, v6, v3

    move-object v9, v5

    move v10, v0

    invoke-direct/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/emg;-><init>(I[BZJLjava/util/List;)V

    const/16 v6, 0x191

    if-eq v0, v6, :cond_17

    const/16 v6, 0x193

    if-ne v0, v6, :cond_13

    goto :goto_b

    :cond_13
    const/16 v2, 0x190

    if-lt v0, v2, :cond_15

    const/16 v2, 0x1f3

    if-le v0, v2, :cond_14

    goto :goto_a

    .line 5050
    :cond_14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzo;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzo;-><init>(Lcom/google/android/gms/internal/ads/emg;)V

    throw v0

    :cond_15
    :goto_a
    const/16 v2, 0x1f4

    if-lt v0, v2, :cond_16

    const/16 v2, 0x257

    if-gt v0, v2, :cond_16

    .line 5052
    new-instance v0, Lcom/google/android/gms/internal/ads/zzan;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzan;-><init>(Lcom/google/android/gms/internal/ads/emg;)V

    throw v0

    .line 5053
    :cond_16
    new-instance v0, Lcom/google/android/gms/internal/ads/zzan;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzan;-><init>(Lcom/google/android/gms/internal/ads/emg;)V

    throw v0

    .line 5048
    :cond_17
    :goto_b
    new-instance v0, Lcom/google/android/gms/internal/ads/zzl;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzl;-><init>(Lcom/google/android/gms/internal/ads/emg;)V

    const-string v5, "auth"

    invoke-static {v5, v2, v0}, Lcom/google/android/gms/internal/ads/agj;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/z;Lcom/google/android/gms/internal/ads/zzap;)V

    goto/16 :goto_0

    .line 5054
    :cond_18
    new-instance v0, Lcom/google/android/gms/internal/ads/zzw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzw;-><init>()V

    const-string v5, "network"

    invoke-static {v5, v2, v0}, Lcom/google/android/gms/internal/ads/agj;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/z;Lcom/google/android/gms/internal/ads/zzap;)V

    goto/16 :goto_0

    .line 5041
    :cond_19
    new-instance v2, Lcom/google/android/gms/internal/ads/zzy;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzy;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
