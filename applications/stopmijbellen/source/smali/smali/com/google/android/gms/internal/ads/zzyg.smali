.class public final Lcom/google/android/gms/internal/ads/zzyg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzwp;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzww;


# instance fields
.field private final zzb:[B

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfd;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzwx;

.field private zze:Lcom/google/android/gms/internal/ads/zzws;

.field private zzf:Lcom/google/android/gms/internal/ads/zzxt;

.field private zzg:I

.field private zzh:Lcom/google/android/gms/internal/ads/zzdd;

.field private zzi:Lcom/google/android/gms/internal/ads/zzxd;

.field private zzj:I

.field private zzk:I

.field private zzl:Lcom/google/android/gms/internal/ads/zzye;

.field private zzm:I

.field private zzn:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzyf;->zza:Lcom/google/android/gms/internal/ads/zzyf;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzyg;->zza:Lcom/google/android/gms/internal/ads/zzww;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzyg;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x2a

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzb:[B

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfd;

    const v0, 0x8000

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfd;-><init>([BI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzc:Lcom/google/android/gms/internal/ads/zzfd;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzwx;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzwx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzd:Lcom/google/android/gms/internal/ads/zzwx;

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzg:I

    return-void
.end method

.method private final zze(Lcom/google/android/gms/internal/ads/zzfd;Z)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzi:Lcom/google/android/gms/internal/ads/zzxd;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfd;->zzc()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfd;->zzd()I

    move-result v1

    add-int/lit8 v1, v1, -0x10

    if-gt v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzi:Lcom/google/android/gms/internal/ads/zzxd;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzk:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzd:Lcom/google/android/gms/internal/ads/zzwx;

    .line 4
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzwy;->zzc(Lcom/google/android/gms/internal/ads/zzfd;Lcom/google/android/gms/internal/ads/zzxd;ILcom/google/android/gms/internal/ads/zzwx;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzd:Lcom/google/android/gms/internal/ads/zzwx;

    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/zzwx;->zza:J

    return-wide p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_5

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfd;->zzd()I

    move-result p2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzj:I

    sub-int/2addr p2, v1

    if-gt v0, p2, :cond_4

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzi:Lcom/google/android/gms/internal/ads/zzxd;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzk:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzd:Lcom/google/android/gms/internal/ads/zzwx;

    .line 7
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzwy;->zzc(Lcom/google/android/gms/internal/ads/zzfd;Lcom/google/android/gms/internal/ads/zzxd;ILcom/google/android/gms/internal/ads/zzwx;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfd;->zzc()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfd;->zzd()I

    move-result v2

    if-le v1, v2, :cond_2

    goto :goto_3

    :cond_2
    if-eqz p2, :cond_3

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzd:Lcom/google/android/gms/internal/ads/zzwx;

    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/zzwx;->zza:J

    return-wide p1

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfd;->zzd()I

    move-result p2

    .line 9
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    goto :goto_4

    .line 10
    :cond_5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    :goto_4
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method private final zzf()V
    .locals 11

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzn:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzi:Lcom/google/android/gms/internal/ads/zzxd;

    sget v3, Lcom/google/android/gms/internal/ads/zzfn;->zza:I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzxd;->zze:I

    const-wide/32 v3, 0xf4240

    mul-long v0, v0, v3

    int-to-long v2, v2

    div-long v5, v0, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzf:Lcom/google/android/gms/internal/ads/zzxt;

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzm:I

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 2
    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzxt;->zzs(JIIILcom/google/android/gms/internal/ads/zzxs;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzwq;Lcom/google/android/gms/internal/ads/zzxm;)I
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzg:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_17

    const/4 v5, 0x2

    if-eq v2, v3, :cond_16

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x4

    if-eq v2, v5, :cond_14

    if-eq v2, v7, :cond_d

    const-wide/16 v9, -0x1

    if-eq v2, v8, :cond_9

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzf:Lcom/google/android/gms/internal/ads/zzxt;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzi:Lcom/google/android/gms/internal/ads/zzxd;

    .line 4
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzl:Lcom/google/android/gms/internal/ads/zzye;

    const/4 v5, -0x1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzwg;->zze()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzl:Lcom/google/android/gms/internal/ads/zzye;

    move-object/from16 v3, p2

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzwg;->zza(Lcom/google/android/gms/internal/ads/zzwq;Lcom/google/android/gms/internal/ads/zzxm;)I

    move-result v4

    goto/16 :goto_2

    :cond_0
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzn:J

    cmp-long v2, v6, v9

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzi:Lcom/google/android/gms/internal/ads/zzxd;

    .line 6
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzwy;->zzb(Lcom/google/android/gms/internal/ads/zzwq;Lcom/google/android/gms/internal/ads/zzxd;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzn:J

    goto/16 :goto_2

    :cond_1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzc:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfd;->zzd()I

    move-result v2

    const v6, 0x8000

    if-ge v2, v6, :cond_4

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzc:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfd;->zzH()[B

    move-result-object v7

    sub-int/2addr v6, v2

    .line 7
    invoke-interface {v1, v7, v2, v6}, Lcom/google/android/gms/internal/ads/zzwq;->zzg([BII)I

    move-result v1

    if-ne v1, v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzc:Lcom/google/android/gms/internal/ads/zzfd;

    add-int/2addr v2, v1

    .line 8
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzfd;->zzE(I)V

    goto :goto_1

    .line 9
    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzc:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfd;->zza()I

    move-result v1

    if-nez v1, :cond_5

    .line 10
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzyg;->zzf()V

    const/4 v4, -0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 11
    :cond_5
    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzc:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzc()I

    move-result v1

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzm:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzj:I

    if-ge v2, v5, :cond_6

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzc:Lcom/google/android/gms/internal/ads/zzfd;

    sub-int/2addr v5, v2

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzfd;->zza()I

    move-result v2

    .line 12
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    :cond_6
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzc:Lcom/google/android/gms/internal/ads/zzfd;

    .line 13
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzyg;->zze(Lcom/google/android/gms/internal/ads/zzfd;Z)J

    move-result-wide v2

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzc:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfd;->zzc()I

    move-result v5

    sub-int/2addr v5, v1

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzc:Lcom/google/android/gms/internal/ads/zzfd;

    .line 14
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzf:Lcom/google/android/gms/internal/ads/zzxt;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzc:Lcom/google/android/gms/internal/ads/zzfd;

    .line 15
    invoke-static {v1, v6, v5}, Lcom/google/android/gms/internal/ads/zzxr;->zzb(Lcom/google/android/gms/internal/ads/zzxt;Lcom/google/android/gms/internal/ads/zzfd;I)V

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzm:I

    add-int/2addr v1, v5

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzm:I

    cmp-long v1, v2, v9

    if-eqz v1, :cond_7

    .line 16
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzyg;->zzf()V

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzm:I

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzn:J

    :cond_7
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzc:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfd;->zza()I

    move-result v1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_8

    :goto_2
    return v4

    :cond_8
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzc:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfd;->zza()I

    move-result v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzc:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfd;->zzH()[B

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzc:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfd;->zzc()I

    move-result v3

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzc:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfd;->zzH()[B

    move-result-object v5

    .line 17
    invoke-static {v2, v3, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzc:Lcom/google/android/gms/internal/ads/zzfd;

    .line 18
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzc:Lcom/google/android/gms/internal/ads/zzfd;

    .line 19
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzE(I)V

    return v4

    .line 20
    :cond_9
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwq;->zzj()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfd;

    .line 21
    invoke-direct {v2, v5}, Lcom/google/android/gms/internal/ads/zzfd;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfd;->zzH()[B

    move-result-object v3

    move-object v7, v1

    check-cast v7, Lcom/google/android/gms/internal/ads/zzwk;

    .line 22
    invoke-virtual {v7, v3, v4, v5, v4}, Lcom/google/android/gms/internal/ads/zzwk;->zzm([BIIZ)Z

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfd;->zzo()I

    move-result v2

    shr-int/lit8 v3, v2, 0x2

    const/16 v5, 0x3ffe

    if-ne v3, v5, :cond_c

    .line 24
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwq;->zzj()V

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzk:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzyg;->zze:Lcom/google/android/gms/internal/ads/zzws;

    .line 25
    sget v3, Lcom/google/android/gms/internal/ads/zzfn;->zza:I

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwq;->zze()J

    move-result-wide v14

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwq;->zzc()J

    move-result-wide v16

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzi:Lcom/google/android/gms/internal/ads/zzxd;

    .line 26
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzxd;->zzk:Lcom/google/android/gms/internal/ads/zzxc;

    if-eqz v1, :cond_a

    new-instance v1, Lcom/google/android/gms/internal/ads/zzxb;

    invoke-direct {v1, v12, v14, v15}, Lcom/google/android/gms/internal/ads/zzxb;-><init>(Lcom/google/android/gms/internal/ads/zzxd;J)V

    goto :goto_3

    :cond_a
    const-wide/16 v5, 0x0

    cmp-long v1, v16, v9

    if-eqz v1, :cond_b

    .line 28
    iget-wide v7, v12, Lcom/google/android/gms/internal/ads/zzxd;->zzj:J

    cmp-long v1, v7, v5

    if-lez v1, :cond_b

    new-instance v1, Lcom/google/android/gms/internal/ads/zzye;

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzk:I

    move-object v11, v1

    .line 29
    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzye;-><init>(Lcom/google/android/gms/internal/ads/zzxd;IJJ)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzl:Lcom/google/android/gms/internal/ads/zzye;

    .line 30
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzwg;->zzb()Lcom/google/android/gms/internal/ads/zzxp;

    move-result-object v1

    goto :goto_3

    .line 31
    :cond_b
    new-instance v1, Lcom/google/android/gms/internal/ads/zzxo;

    .line 32
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzxd;->zza()J

    move-result-wide v7

    invoke-direct {v1, v7, v8, v5, v6}, Lcom/google/android/gms/internal/ads/zzxo;-><init>(JJ)V

    .line 33
    :goto_3
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzws;->zzL(Lcom/google/android/gms/internal/ads/zzxp;)V

    const/4 v1, 0x5

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzg:I

    return v4

    .line 34
    :cond_c
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwq;->zzj()V

    const-string v1, "First frame does not start with sync code."

    .line 35
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/zzbj;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbj;

    move-result-object v1

    throw v1

    .line 36
    :cond_d
    new-instance v2, Lcom/google/android/gms/internal/ads/zzwz;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzi:Lcom/google/android/gms/internal/ads/zzxd;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzwz;-><init>(Lcom/google/android/gms/internal/ads/zzxd;)V

    .line 37
    :cond_e
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwq;->zzj()V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfc;

    new-array v5, v8, [B

    invoke-direct {v3, v5, v8}, Lcom/google/android/gms/internal/ads/zzfc;-><init>([BI)V

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzfc;->zza:[B

    move-object v6, v1

    check-cast v6, Lcom/google/android/gms/internal/ads/zzwk;

    .line 38
    invoke-virtual {v6, v5, v4, v8, v4}, Lcom/google/android/gms/internal/ads/zzwk;->zzm([BIIZ)Z

    .line 39
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfc;->zzl()Z

    move-result v5

    const/4 v9, 0x7

    .line 40
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzfc;->zzc(I)I

    move-result v9

    const/16 v10, 0x18

    .line 41
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzfc;->zzc(I)I

    move-result v3

    add-int/2addr v3, v8

    const/4 v10, 0x6

    if-nez v9, :cond_f

    const/16 v3, 0x26

    new-array v9, v3, [B

    .line 42
    invoke-virtual {v6, v9, v4, v3, v4}, Lcom/google/android/gms/internal/ads/zzwk;->zzn([BIIZ)Z

    new-instance v3, Lcom/google/android/gms/internal/ads/zzxd;

    .line 43
    invoke-direct {v3, v9, v8}, Lcom/google/android/gms/internal/ads/zzxd;-><init>([BI)V

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/zzwz;->zza:Lcom/google/android/gms/internal/ads/zzxd;

    goto/16 :goto_4

    .line 44
    :cond_f
    iget-object v11, v2, Lcom/google/android/gms/internal/ads/zzwz;->zza:Lcom/google/android/gms/internal/ads/zzxd;

    if-eqz v11, :cond_13

    if-ne v9, v7, :cond_10

    .line 45
    new-instance v9, Lcom/google/android/gms/internal/ads/zzfd;

    .line 46
    invoke-direct {v9, v3}, Lcom/google/android/gms/internal/ads/zzfd;-><init>(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzfd;->zzH()[B

    move-result-object v12

    .line 47
    invoke-virtual {v6, v12, v4, v3, v4}, Lcom/google/android/gms/internal/ads/zzwk;->zzn([BIIZ)Z

    .line 48
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzxa;->zzb(Lcom/google/android/gms/internal/ads/zzfd;)Lcom/google/android/gms/internal/ads/zzxc;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/google/android/gms/internal/ads/zzxd;->zzf(Lcom/google/android/gms/internal/ads/zzxc;)Lcom/google/android/gms/internal/ads/zzxd;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/zzwz;->zza:Lcom/google/android/gms/internal/ads/zzxd;

    goto/16 :goto_4

    :cond_10
    if-ne v9, v8, :cond_11

    new-instance v9, Lcom/google/android/gms/internal/ads/zzfd;

    .line 49
    invoke-direct {v9, v3}, Lcom/google/android/gms/internal/ads/zzfd;-><init>(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzfd;->zzH()[B

    move-result-object v12

    .line 50
    invoke-virtual {v6, v12, v4, v3, v4}, Lcom/google/android/gms/internal/ads/zzwk;->zzn([BIIZ)Z

    .line 51
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    .line 52
    invoke-static {v9, v4, v4}, Lcom/google/android/gms/internal/ads/zzxy;->zzb(Lcom/google/android/gms/internal/ads/zzfd;ZZ)Lcom/google/android/gms/internal/ads/zzxv;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzxv;->zzb:[Ljava/lang/String;

    .line 53
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 54
    invoke-virtual {v11, v3}, Lcom/google/android/gms/internal/ads/zzxd;->zzg(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzxd;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/zzwz;->zza:Lcom/google/android/gms/internal/ads/zzxd;

    goto :goto_4

    :cond_11
    if-ne v9, v10, :cond_12

    new-instance v9, Lcom/google/android/gms/internal/ads/zzfd;

    .line 55
    invoke-direct {v9, v3}, Lcom/google/android/gms/internal/ads/zzfd;-><init>(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzfd;->zzH()[B

    move-result-object v12

    .line 56
    invoke-virtual {v6, v12, v4, v3, v4}, Lcom/google/android/gms/internal/ads/zzwk;->zzn([BIIZ)Z

    .line 57
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    .line 58
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v14

    .line 59
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v3

    .line 60
    sget-object v6, Lcom/google/android/gms/internal/ads/zzfpt;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {v9, v3, v6}, Lcom/google/android/gms/internal/ads/zzfd;->zzx(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v15

    .line 61
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v3

    sget-object v6, Lcom/google/android/gms/internal/ads/zzfpt;->zzc:Ljava/nio/charset/Charset;

    .line 62
    invoke-virtual {v9, v3, v6}, Lcom/google/android/gms/internal/ads/zzfd;->zzx(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v16

    .line 63
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v17

    .line 64
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v18

    .line 65
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v19

    .line 66
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v20

    .line 67
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v3

    .line 68
    new-array v6, v3, [B

    .line 69
    invoke-virtual {v9, v6, v4, v3}, Lcom/google/android/gms/internal/ads/zzfd;->zzB([BII)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzyz;

    move-object v13, v3

    move-object/from16 v21, v6

    invoke-direct/range {v13 .. v21}, Lcom/google/android/gms/internal/ads/zzyz;-><init>(ILjava/lang/String;Ljava/lang/String;IIII[B)V

    .line 70
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/google/android/gms/internal/ads/zzxd;->zze(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzxd;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/zzwz;->zza:Lcom/google/android/gms/internal/ads/zzxd;

    goto :goto_4

    .line 71
    :cond_12
    invoke-virtual {v6, v3, v4}, Lcom/google/android/gms/internal/ads/zzwk;->zzo(IZ)Z

    .line 72
    :goto_4
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzwz;->zza:Lcom/google/android/gms/internal/ads/zzxd;

    .line 73
    sget v6, Lcom/google/android/gms/internal/ads/zzfn;->zza:I

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzi:Lcom/google/android/gms/internal/ads/zzxd;

    if-eqz v5, :cond_e

    .line 74
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, v3, Lcom/google/android/gms/internal/ads/zzxd;->zzc:I

    .line 75
    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzj:I

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzf:Lcom/google/android/gms/internal/ads/zzxt;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzi:Lcom/google/android/gms/internal/ads/zzxd;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzb:[B

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzh:Lcom/google/android/gms/internal/ads/zzdd;

    .line 76
    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzxd;->zzc([BLcom/google/android/gms/internal/ads/zzdd;)Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzxt;->zzk(Lcom/google/android/gms/internal/ads/zzab;)V

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzg:I

    return v4

    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 77
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 78
    :cond_14
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfd;

    .line 79
    invoke-direct {v2, v8}, Lcom/google/android/gms/internal/ads/zzfd;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfd;->zzH()[B

    move-result-object v3

    check-cast v1, Lcom/google/android/gms/internal/ads/zzwk;

    .line 80
    invoke-virtual {v1, v3, v4, v8, v4}, Lcom/google/android/gms/internal/ads/zzwk;->zzn([BIIZ)Z

    .line 81
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfd;->zzs()J

    move-result-wide v1

    const-wide/32 v8, 0x664c6143

    cmp-long v3, v1, v8

    if-nez v3, :cond_15

    .line 82
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzg:I

    return v4

    :cond_15
    const-string v1, "Failed to read FLAC stream marker."

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/zzbj;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbj;

    move-result-object v1

    throw v1

    .line 83
    :cond_16
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzb:[B

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzwk;

    const/16 v6, 0x2a

    .line 84
    invoke-virtual {v3, v2, v4, v6, v4}, Lcom/google/android/gms/internal/ads/zzwk;->zzm([BIIZ)Z

    .line 85
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwq;->zzj()V

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzg:I

    return v4

    .line 86
    :cond_17
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwq;->zzj()V

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwq;->zzd()J

    move-result-wide v5

    .line 87
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzxa;->zza(Lcom/google/android/gms/internal/ads/zzwq;Z)Lcom/google/android/gms/internal/ads/zzdd;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwq;->zzd()J

    move-result-wide v7

    check-cast v1, Lcom/google/android/gms/internal/ads/zzwk;

    sub-long/2addr v7, v5

    long-to-int v5, v7

    .line 88
    invoke-virtual {v1, v5, v4}, Lcom/google/android/gms/internal/ads/zzwk;->zzo(IZ)Z

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzh:Lcom/google/android/gms/internal/ads/zzdd;

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzyg;->zzg:I

    return v4
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzws;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyg;->zze:Lcom/google/android/gms/internal/ads/zzws;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzws;->zzv(II)Lcom/google/android/gms/internal/ads/zzxt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzf:Lcom/google/android/gms/internal/ads/zzxt;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzws;->zzB()V

    return-void
.end method

.method public final zzc(JJ)V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzg:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzl:Lcom/google/android/gms/internal/ads/zzye;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzwg;->zzd(J)V

    :cond_1
    :goto_0
    cmp-long p1, p3, v1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v1, -0x1

    .line 3
    :goto_1
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzn:J

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzm:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzc:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzC(I)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzwq;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzxa;->zza(Lcom/google/android/gms/internal/ads/zzwq;Z)Lcom/google/android/gms/internal/ads/zzdd;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfd;

    const/4 v2, 0x4

    .line 2
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfd;-><init>(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzH()[B

    move-result-object v3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzwk;

    .line 3
    invoke-virtual {p1, v3, v0, v2, v0}, Lcom/google/android/gms/internal/ads/zzwk;->zzm([BIIZ)Z

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzs()J

    move-result-wide v1

    const-wide/32 v3, 0x664c6143

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method
