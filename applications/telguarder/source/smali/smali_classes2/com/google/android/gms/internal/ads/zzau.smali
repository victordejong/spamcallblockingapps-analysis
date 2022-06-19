.class public Lcom/google/android/gms/internal/ads/zzau;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzu;


# instance fields
.field private final zzce:Lcom/google/android/gms/internal/ads/zzbe;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final zzcf:Lcom/google/android/gms/internal/ads/zzar;

.field private final zzcg:Lcom/google/android/gms/internal/ads/zzat;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzar;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzat;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzat;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzau;-><init>(Lcom/google/android/gms/internal/ads/zzar;Lcom/google/android/gms/internal/ads/zzat;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzar;Lcom/google/android/gms/internal/ads/zzat;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzau;->zzcf:Lcom/google/android/gms/internal/ads/zzar;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzau;->zzce:Lcom/google/android/gms/internal/ads/zzbe;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzau;->zzcg:Lcom/google/android/gms/internal/ads/zzat;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/ads/zzab;)Lcom/google/android/gms/internal/ads/zzz;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzab<",
            "*>;)",
            "Lcom/google/android/gms/internal/ads/zzz;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzap;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 11
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    const/4 v2, 0x0

    .line 13
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzab;->zzf()Lcom/google/android/gms/internal/ads/zzn;

    move-result-object v0

    if-nez v0, :cond_0

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    .line 16
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 17
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzn;->zzr:Ljava/lang/String;

    if-eqz v4, :cond_1

    const-string v4, "If-None-Match"

    .line 18
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzn;->zzr:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_1
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzn;->zzt:J

    const-wide/16 v6, 0x0

    cmp-long v11, v4, v6

    if-lez v11, :cond_2

    const-string v4, "If-Modified-Since"

    .line 20
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzn;->zzt:J

    .line 21
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzbc;->zzb(J)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v0, v3

    .line 25
    :goto_1
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzau;->zzcf:Lcom/google/android/gms/internal/ads/zzar;

    invoke-virtual {v3, v8, v0}, Lcom/google/android/gms/internal/ads/zzar;->zza(Lcom/google/android/gms/internal/ads/zzab;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 26
    :try_start_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbb;->getStatusCode()I

    move-result v12

    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbb;->zzq()Ljava/util/List;

    move-result-object v0

    const/16 v4, 0x130

    if-ne v12, v4, :cond_9

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v9

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzab;->zzf()Lcom/google/android/gms/internal/ads/zzn;

    move-result-object v6

    if-nez v6, :cond_3

    .line 33
    new-instance v6, Lcom/google/android/gms/internal/ads/zzz;

    const/16 v14, 0x130

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object v13, v6

    move-wide/from16 v17, v4

    move-object/from16 v19, v0

    invoke-direct/range {v13 .. v19}, Lcom/google/android/gms/internal/ads/zzz;-><init>(I[BZJLjava/util/List;)V

    return-object v6

    .line 35
    :cond_3
    new-instance v7, Ljava/util/TreeSet;

    sget-object v11, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v7, v11}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 36
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    .line 37
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/ads/zzv;

    .line 38
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzv;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 40
    :cond_4
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 41
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzn;->zzx:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 42
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzn;->zzx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 43
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzn;->zzx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/ads/zzv;

    .line 44
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzv;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 45
    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 47
    :cond_6
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzn;->zzw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 48
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzn;->zzw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 49
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 50
    new-instance v12, Lcom/google/android/gms/internal/ads/zzv;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {v12, v13, v11}, Lcom/google/android/gms/internal/ads/zzv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 54
    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzz;

    const/16 v12, 0x130

    iget-object v13, v6, Lcom/google/android/gms/internal/ads/zzn;->data:[B

    const/4 v14, 0x1

    move-object v11, v0

    move-object v6, v15

    move-wide v15, v4

    move-object/from16 v17, v6

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzz;-><init>(I[BZJLjava/util/List;)V

    return-object v0

    .line 56
    :cond_9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbb;->getContent()Ljava/io/InputStream;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_a

    .line 59
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbb;->getContentLength()I

    move-result v6

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzau;->zzcg:Lcom/google/android/gms/internal/ads/zzat;

    .line 60
    invoke-static {v4, v6, v7}, Lcom/google/android/gms/internal/ads/zzbi;->zza(Ljava/io/InputStream;ILcom/google/android/gms/internal/ads/zzat;)[B

    move-result-object v2

    goto :goto_5

    :cond_a
    new-array v2, v5, [B

    .line 62
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v9

    .line 64
    sget-boolean v4, Lcom/google/android/gms/internal/ads/zzao;->DEBUG:Z

    if-nez v4, :cond_b

    const-wide/16 v13, 0xbb8

    cmp-long v4, v6, v13

    if-lez v4, :cond_d

    :cond_b
    const-string v4, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v8, v11, v5

    const/4 v5, 0x1

    .line 66
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v11, v5

    const/4 v5, 0x2

    if-eqz v2, :cond_c

    .line 67
    array-length v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_6

    :cond_c
    const-string v6, "null"

    :goto_6
    aput-object v6, v11, v5

    const/4 v5, 0x3

    .line 68
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v11, v5

    const/4 v5, 0x4

    .line 69
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzab;->zzj()Lcom/google/android/gms/internal/ads/zzak;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzak;->zzc()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v11, v5

    .line 70
    invoke-static {v4, v11}, Lcom/google/android/gms/internal/ads/zzao;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    const/16 v4, 0xc8

    if-lt v12, v4, :cond_e

    const/16 v4, 0x12b

    if-gt v12, v4, :cond_e

    .line 73
    new-instance v4, Lcom/google/android/gms/internal/ads/zzz;

    const/4 v14, 0x0

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v15, v5, v9

    move-object v11, v4

    move-object v13, v2

    move-object/from16 v17, v0

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzz;-><init>(I[BZJLjava/util/List;)V

    return-object v4

    .line 72
    :cond_e
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    move-object v7, v2

    move-object v6, v3

    move-object v3, v0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v6, v2

    move-object v7, v6

    :goto_7
    move-object/from16 v2, p1

    move-wide v4, v9

    .line 77
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzbi;->zza(Lcom/google/android/gms/internal/ads/zzab;Ljava/io/IOException;JLcom/google/android/gms/internal/ads/zzbb;[B)V

    goto/16 :goto_0
.end method
