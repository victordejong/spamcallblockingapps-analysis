.class public final Lcom/google/android/gms/internal/ads/zzyo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzwp;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfd;

.field private zzb:Lcom/google/android/gms/internal/ads/zzws;

.field private zzc:I

.field private zzd:I

.field private zze:I

.field private zzf:J

.field private zzg:Lcom/google/android/gms/internal/ads/zzaak;

.field private zzh:Lcom/google/android/gms/internal/ads/zzwq;

.field private zzi:Lcom/google/android/gms/internal/ads/zzyr;

.field private zzj:Lcom/google/android/gms/internal/ads/zzacf;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfd;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfd;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzyo;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzf:J

    return-void
.end method

.method private final zze(Lcom/google/android/gms/internal/ads/zzwq;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyo;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzC(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyo;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzH()[B

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzwk;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p1, v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzwk;->zzm([BIIZ)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyo;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfd;->zzo()I

    move-result p1

    return p1
.end method

.method private final zzf()V
    .locals 6

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzdc;

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzyo;->zzg([Lcom/google/android/gms/internal/ads/zzdc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzb:Lcom/google/android/gms/internal/ads/zzws;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzws;->zzB()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzb:Lcom/google/android/gms/internal/ads/zzws;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzxo;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzxo;-><init>(JJ)V

    .line 4
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzws;->zzL(Lcom/google/android/gms/internal/ads/zzxp;)V

    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzc:I

    return-void
.end method

.method private final varargs zzg([Lcom/google/android/gms/internal/ads/zzdc;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzb:Lcom/google/android/gms/internal/ads/zzws;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x400

    const/4 v2, 0x4

    .line 2
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzws;->zzv(II)Lcom/google/android/gms/internal/ads/zzxt;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzz;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzz;-><init>()V

    const-string v2, "image/jpeg"

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzz;->zzz(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdd;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzdd;-><init>([Lcom/google/android/gms/internal/ads/zzdc;)V

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzz;->zzM(Lcom/google/android/gms/internal/ads/zzdd;)Lcom/google/android/gms/internal/ads/zzz;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzz;->zzY()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object p1

    .line 6
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzxt;->zzk(Lcom/google/android/gms/internal/ads/zzab;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzwq;Lcom/google/android/gms/internal/ads/zzxm;)I
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzyo;->zzc:I

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    if-eqz v3, :cond_18

    if-eq v3, v6, :cond_17

    const/4 v10, -0x1

    if-eq v3, v5, :cond_a

    const/4 v5, 0x5

    if-eq v3, v4, :cond_5

    if-eq v3, v5, :cond_1

    const/4 v1, 0x6

    if-ne v3, v1, :cond_0

    return v10

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 3
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 4
    :cond_1
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzyo;->zzi:Lcom/google/android/gms/internal/ads/zzyr;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzyo;->zzh:Lcom/google/android/gms/internal/ads/zzwq;

    if-eq v1, v3, :cond_3

    :cond_2
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzyo;->zzh:Lcom/google/android/gms/internal/ads/zzwq;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzyr;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzyo;->zzf:J

    .line 5
    invoke-direct {v3, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzyr;-><init>(Lcom/google/android/gms/internal/ads/zzwq;J)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzyo;->zzi:Lcom/google/android/gms/internal/ads/zzyr;

    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzyo;->zzj:Lcom/google/android/gms/internal/ads/zzacf;

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzyo;->zzi:Lcom/google/android/gms/internal/ads/zzyr;

    .line 8
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzacf;->zza(Lcom/google/android/gms/internal/ads/zzwq;Lcom/google/android/gms/internal/ads/zzxm;)I

    move-result v1

    if-ne v1, v6, :cond_4

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzxm;->zza:J

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzyo;->zzf:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzxm;->zza:J

    :cond_4
    return v1

    .line 9
    :cond_5
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwq;->zze()J

    move-result-wide v3

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzyo;->zzf:J

    cmp-long v10, v3, v7

    if-nez v10, :cond_9

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzyo;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfd;->zzH()[B

    move-result-object v2

    .line 10
    invoke-interface {v1, v2, v9, v6, v6}, Lcom/google/android/gms/internal/ads/zzwq;->zzm([BIIZ)Z

    move-result v2

    if-nez v2, :cond_6

    .line 11
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzyo;->zzf()V

    goto :goto_0

    .line 12
    :cond_6
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwq;->zzj()V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzyo;->zzj:Lcom/google/android/gms/internal/ads/zzacf;

    if-nez v2, :cond_7

    .line 13
    new-instance v2, Lcom/google/android/gms/internal/ads/zzacf;

    .line 14
    invoke-direct {v2, v9}, Lcom/google/android/gms/internal/ads/zzacf;-><init>(I)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzyo;->zzj:Lcom/google/android/gms/internal/ads/zzacf;

    :cond_7
    new-instance v2, Lcom/google/android/gms/internal/ads/zzyr;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzyo;->zzf:J

    .line 15
    invoke-direct {v2, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzyr;-><init>(Lcom/google/android/gms/internal/ads/zzwq;J)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzyo;->zzi:Lcom/google/android/gms/internal/ads/zzyr;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzyo;->zzj:Lcom/google/android/gms/internal/ads/zzacf;

    .line 16
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzacf;->zzd(Lcom/google/android/gms/internal/ads/zzwq;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzyo;->zzj:Lcom/google/android/gms/internal/ads/zzacf;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzyt;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzyo;->zzf:J

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzyo;->zzb:Lcom/google/android/gms/internal/ads/zzws;

    .line 17
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-direct {v2, v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzyt;-><init>(JLcom/google/android/gms/internal/ads/zzws;)V

    .line 19
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzacf;->zzb(Lcom/google/android/gms/internal/ads/zzws;)V

    new-array v1, v6, [Lcom/google/android/gms/internal/ads/zzdc;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzyo;->zzg:Lcom/google/android/gms/internal/ads/zzaak;

    .line 20
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aput-object v2, v1, v9

    .line 21
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzyo;->zzg([Lcom/google/android/gms/internal/ads/zzdc;)V

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzyo;->zzc:I

    goto :goto_0

    .line 22
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzyo;->zzf()V

    :goto_0
    return v9

    :cond_9
    iput-wide v7, v2, Lcom/google/android/gms/internal/ads/zzxm;->zza:J

    return v6

    :cond_a
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzyo;->zzd:I

    const v3, 0xffe1

    if-ne v2, v3, :cond_16

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfd;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzyo;->zze:I

    .line 23
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzfd;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfd;->zzH()[B

    move-result-object v3

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzyo;->zze:I

    move-object v6, v1

    check-cast v6, Lcom/google/android/gms/internal/ads/zzwk;

    .line 24
    invoke-virtual {v6, v3, v9, v4, v9}, Lcom/google/android/gms/internal/ads/zzwk;->zzn([BIIZ)Z

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzyo;->zzg:Lcom/google/android/gms/internal/ads/zzaak;

    if-nez v3, :cond_15

    .line 25
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzfd;->zzv(C)Ljava/lang/String;

    move-result-object v3

    const-string v4, "http://ns.adobe.com/xap/1.0/"

    .line 26
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 27
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzfd;->zzv(C)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwq;->zzc()J

    move-result-wide v3

    cmp-long v6, v3, v7

    if-nez v6, :cond_c

    :cond_b
    :goto_1
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 28
    :cond_c
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzyu;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzyq;

    move-result-object v2

    if-nez v2, :cond_d

    goto :goto_1

    :cond_d
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzyq;->zzb:Ljava/util/List;

    .line 29
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v5, :cond_e

    goto :goto_1

    :cond_e
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzyq;->zzb:Ljava/util/List;

    .line 30
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v10

    move-wide v11, v7

    move-wide v13, v11

    move-wide/from16 v17, v13

    move-wide/from16 v19, v17

    const/4 v6, 0x0

    :goto_2
    if-ltz v5, :cond_13

    iget-object v10, v2, Lcom/google/android/gms/internal/ads/zzyq;->zzb:Ljava/util/List;

    .line 31
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/ads/zzyp;

    .line 32
    iget-object v15, v10, Lcom/google/android/gms/internal/ads/zzyp;->zza:Ljava/lang/String;

    const-string v1, "video/mp4"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v1, v6

    if-nez v5, :cond_f

    .line 33
    iget-wide v9, v10, Lcom/google/android/gms/internal/ads/zzyp;->zzd:J

    sub-long/2addr v3, v9

    const-wide/16 v9, 0x0

    goto :goto_3

    .line 34
    :cond_f
    iget-wide v9, v10, Lcom/google/android/gms/internal/ads/zzyp;->zzc:J

    sub-long v9, v3, v9

    :goto_3
    move-wide/from16 v21, v3

    move-wide v3, v9

    move-wide/from16 v9, v21

    if-eqz v1, :cond_10

    cmp-long v6, v3, v9

    if-eqz v6, :cond_10

    sub-long v19, v9, v3

    move-wide/from16 v17, v3

    const/4 v6, 0x0

    goto :goto_4

    :cond_10
    move v6, v1

    :goto_4
    if-nez v5, :cond_11

    move-wide v13, v9

    :cond_11
    if-nez v5, :cond_12

    move-wide v11, v3

    :cond_12
    add-int/lit8 v5, v5, -0x1

    const/4 v9, 0x0

    goto :goto_2

    :cond_13
    cmp-long v1, v17, v7

    if-eqz v1, :cond_b

    cmp-long v1, v19, v7

    if-eqz v1, :cond_b

    cmp-long v1, v11, v7

    if-eqz v1, :cond_b

    cmp-long v1, v13, v7

    if-nez v1, :cond_14

    goto :goto_1

    :cond_14
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaak;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzyq;->zza:J

    move-object v10, v1

    move-wide v15, v2

    invoke-direct/range {v10 .. v20}, Lcom/google/android/gms/internal/ads/zzaak;-><init>(JJJJJ)V

    .line 35
    :goto_5
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzyo;->zzg:Lcom/google/android/gms/internal/ads/zzaak;

    if-eqz v1, :cond_15

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzaak;->zzd:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzyo;->zzf:J

    :cond_15
    const/4 v3, 0x0

    goto :goto_6

    .line 36
    :cond_16
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzyo;->zze:I

    check-cast v1, Lcom/google/android/gms/internal/ads/zzwk;

    const/4 v3, 0x0

    .line 37
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzwk;->zzo(IZ)Z

    .line 38
    :goto_6
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzyo;->zzc:I

    return v3

    :cond_17
    const/4 v3, 0x0

    .line 39
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzyo;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    .line 40
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzfd;->zzC(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzyo;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfd;->zzH()[B

    move-result-object v2

    check-cast v1, Lcom/google/android/gms/internal/ads/zzwk;

    .line 41
    invoke-virtual {v1, v2, v3, v5, v3}, Lcom/google/android/gms/internal/ads/zzwk;->zzn([BIIZ)Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzyo;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    .line 42
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzo()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzyo;->zze:I

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzyo;->zzc:I

    return v3

    :cond_18
    const/4 v3, 0x0

    .line 43
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzyo;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzfd;->zzC(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzyo;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfd;->zzH()[B

    move-result-object v2

    check-cast v1, Lcom/google/android/gms/internal/ads/zzwk;

    .line 44
    invoke-virtual {v1, v2, v3, v5, v3}, Lcom/google/android/gms/internal/ads/zzwk;->zzn([BIIZ)Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzyo;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    .line 45
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzo()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzyo;->zzd:I

    const v2, 0xffda

    if-ne v1, v2, :cond_1a

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzyo;->zzf:J

    cmp-long v3, v1, v7

    if-eqz v3, :cond_19

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzyo;->zzc:I

    goto :goto_7

    .line 46
    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzyo;->zzf()V

    goto :goto_7

    :cond_1a
    const v2, 0xffd0

    if-lt v1, v2, :cond_1b

    const v2, 0xffd9

    if-le v1, v2, :cond_1c

    :cond_1b
    const v2, 0xff01

    if-eq v1, v2, :cond_1c

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzyo;->zzc:I

    :cond_1c
    :goto_7
    const/4 v1, 0x0

    return v1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzws;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzb:Lcom/google/android/gms/internal/ads/zzws;

    return-void
.end method

.method public final zzc(JJ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzc:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzj:Lcom/google/android/gms/internal/ads/zzacf;

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzc:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzj:Lcom/google/android/gms/internal/ads/zzacf;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzacf;->zzc(JJ)V

    :cond_1
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzwq;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzyo;->zze(Lcom/google/android/gms/internal/ads/zzwq;)I

    move-result v0

    const/4 v1, 0x0

    const v2, 0xffd8

    if-eq v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzyo;->zze(Lcom/google/android/gms/internal/ads/zzwq;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzd:I

    const v2, 0xffe0

    const/4 v3, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyo;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    .line 3
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfd;->zzC(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyo;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzH()[B

    move-result-object v0

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzwk;

    .line 4
    invoke-virtual {v2, v0, v1, v3, v1}, Lcom/google/android/gms/internal/ads/zzwk;->zzm([BIIZ)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyo;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzo()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .line 6
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzwk;->zzl(IZ)Z

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzyo;->zze(Lcom/google/android/gms/internal/ads/zzwq;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzyo;->zzd:I

    :cond_1
    const v2, 0xffe1

    if-ne v0, v2, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzwk;

    .line 8
    invoke-virtual {p1, v3, v1}, Lcom/google/android/gms/internal/ads/zzwk;->zzl(IZ)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyo;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    const/4 v2, 0x6

    .line 9
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfd;->zzC(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyo;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzH()[B

    move-result-object v0

    .line 10
    invoke-virtual {p1, v0, v1, v2, v1}, Lcom/google/android/gms/internal/ads/zzwk;->zzm([BIIZ)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyo;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfd;->zzs()J

    move-result-wide v2

    const-wide/32 v4, 0x45786966    # 5.758429993E-315

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyo;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfd;->zzo()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method
