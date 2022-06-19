.class public final Lcom/google/android/gms/internal/ads/zzabg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzwp;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzww;

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzzr;


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/ads/zzfd;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzxj;

.field private final zze:Lcom/google/android/gms/internal/ads/zzxf;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzxh;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzxt;

.field private zzh:Lcom/google/android/gms/internal/ads/zzws;

.field private zzi:Lcom/google/android/gms/internal/ads/zzxt;

.field private zzj:Lcom/google/android/gms/internal/ads/zzxt;

.field private zzk:I

.field private zzl:Lcom/google/android/gms/internal/ads/zzdd;

.field private zzm:J

.field private zzn:J

.field private zzo:J

.field private zzp:I

.field private zzq:Lcom/google/android/gms/internal/ads/zzabi;

.field private zzr:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabe;->zza:Lcom/google/android/gms/internal/ads/zzabe;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzabg;->zza:Lcom/google/android/gms/internal/ads/zzww;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zza:Lcom/google/android/gms/internal/ads/zzabf;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzabg;->zzb:Lcom/google/android/gms/internal/ads/zzzr;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzabg;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfd;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzfd;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzc:Lcom/google/android/gms/internal/ads/zzfd;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzxj;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzxj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzd:Lcom/google/android/gms/internal/ads/zzxj;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzxf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzxf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabg;->zze:Lcom/google/android/gms/internal/ads/zzxf;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzm:J

    new-instance p1, Lcom/google/android/gms/internal/ads/zzxh;

    .line 3
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzxh;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzf:Lcom/google/android/gms/internal/ads/zzxh;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzwo;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzwo;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzg:Lcom/google/android/gms/internal/ads/zzxt;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzj:Lcom/google/android/gms/internal/ads/zzxt;

    return-void
.end method

.method private final zzf(Lcom/google/android/gms/internal/ads/zzwq;)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput",
            "realTrackOutput"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzk:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    :try_start_0
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzabg;->zzk(Lcom/google/android/gms/internal/ads/zzwq;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v3

    :cond_0
    :goto_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzq:Lcom/google/android/gms/internal/ads/zzabi;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x1

    if-nez v2, :cond_15

    new-instance v14, Lcom/google/android/gms/internal/ads/zzfd;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzd:Lcom/google/android/gms/internal/ads/zzxj;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzxj;->zzc:I

    .line 2
    invoke-direct {v14, v2}, Lcom/google/android/gms/internal/ads/zzfd;-><init>(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzfd;->zzH()[B

    move-result-object v2

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzd:Lcom/google/android/gms/internal/ads/zzxj;

    iget v9, v9, Lcom/google/android/gms/internal/ads/zzxj;->zzc:I

    move-object v10, v1

    check-cast v10, Lcom/google/android/gms/internal/ads/zzwk;

    .line 3
    invoke-virtual {v10, v2, v4, v9, v4}, Lcom/google/android/gms/internal/ads/zzwk;->zzm([BIIZ)Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzd:Lcom/google/android/gms/internal/ads/zzxj;

    iget v9, v2, Lcom/google/android/gms/internal/ads/zzxj;->zza:I

    and-int/2addr v9, v8

    const/16 v10, 0x24

    const/16 v11, 0x15

    if-eqz v9, :cond_1

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzxj;->zze:I

    if-eq v2, v8, :cond_2

    const/16 v2, 0x24

    goto :goto_1

    .line 4
    :cond_1
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzxj;->zze:I

    if-eq v2, v8, :cond_3

    :cond_2
    const/16 v2, 0x15

    goto :goto_1

    :cond_3
    const/16 v11, 0xd

    const/16 v2, 0xd

    .line 5
    :goto_1
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzfd;->zzd()I

    move-result v9

    add-int/lit8 v11, v2, 0x4

    const v12, 0x58696e67

    const v13, 0x56425249

    const v15, 0x496e666f

    if-lt v9, v11, :cond_5

    .line 6
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 7
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v9

    if-eq v9, v12, :cond_4

    if-ne v9, v15, :cond_5

    const v11, 0x496e666f

    goto :goto_2

    :cond_4
    move v11, v9

    goto :goto_2

    .line 8
    :cond_5
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzfd;->zzd()I

    move-result v9

    const/16 v11, 0x28

    if-lt v9, v11, :cond_6

    .line 9
    invoke-virtual {v14, v10}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 10
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v9

    if-ne v9, v13, :cond_6

    const v11, 0x56425249

    goto :goto_2

    :cond_6
    const/4 v11, 0x0

    :goto_2
    if-eq v11, v12, :cond_9

    if-ne v11, v15, :cond_7

    goto :goto_3

    :cond_7
    if-ne v11, v13, :cond_8

    .line 11
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwq;->zzc()J

    move-result-wide v9

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwq;->zze()J

    move-result-wide v11

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzd:Lcom/google/android/gms/internal/ads/zzxj;

    .line 12
    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/zzabj;->zza(JJLcom/google/android/gms/internal/ads/zzxj;Lcom/google/android/gms/internal/ads/zzfd;)Lcom/google/android/gms/internal/ads/zzabj;

    move-result-object v2

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzd:Lcom/google/android/gms/internal/ads/zzxj;

    iget v9, v9, Lcom/google/android/gms/internal/ads/zzxj;->zzc:I

    move-object v10, v1

    check-cast v10, Lcom/google/android/gms/internal/ads/zzwk;

    .line 13
    invoke-virtual {v10, v9, v4}, Lcom/google/android/gms/internal/ads/zzwk;->zzo(IZ)Z

    goto :goto_4

    .line 14
    :cond_8
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwq;->zzj()V

    const/4 v2, 0x0

    goto :goto_4

    .line 15
    :cond_9
    :goto_3
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwq;->zzc()J

    move-result-wide v9

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwq;->zze()J

    move-result-wide v12

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzd:Lcom/google/android/gms/internal/ads/zzxj;

    move v7, v11

    move-wide v11, v12

    move-object v13, v8

    .line 16
    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/zzabk;->zza(JJLcom/google/android/gms/internal/ads/zzxj;Lcom/google/android/gms/internal/ads/zzfd;)Lcom/google/android/gms/internal/ads/zzabk;

    move-result-object v8

    if-eqz v8, :cond_b

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzabg;->zze:Lcom/google/android/gms/internal/ads/zzxf;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzxf;->zza()Z

    move-result v9

    if-nez v9, :cond_b

    .line 17
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwq;->zzj()V

    move-object v9, v1

    check-cast v9, Lcom/google/android/gms/internal/ads/zzwk;

    add-int/lit16 v2, v2, 0x8d

    .line 18
    invoke-virtual {v9, v2, v4}, Lcom/google/android/gms/internal/ads/zzwk;->zzl(IZ)Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzc:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfd;->zzH()[B

    move-result-object v2

    const/4 v10, 0x3

    .line 19
    invoke-virtual {v9, v2, v4, v10, v4}, Lcom/google/android/gms/internal/ads/zzwk;->zzm([BIIZ)Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzc:Lcom/google/android/gms/internal/ads/zzfd;

    .line 20
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabg;->zze:Lcom/google/android/gms/internal/ads/zzxf;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzc:Lcom/google/android/gms/internal/ads/zzfd;

    .line 21
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzfd;->zzm()I

    move-result v9

    shr-int/lit8 v10, v9, 0xc

    and-int/lit16 v9, v9, 0xfff

    if-gtz v10, :cond_a

    if-lez v9, :cond_b

    :cond_a
    iput v10, v2, Lcom/google/android/gms/internal/ads/zzxf;->zza:I

    iput v9, v2, Lcom/google/android/gms/internal/ads/zzxf;->zzb:I

    :cond_b
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzd:Lcom/google/android/gms/internal/ads/zzxj;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzxj;->zzc:I

    move-object v9, v1

    check-cast v9, Lcom/google/android/gms/internal/ads/zzwk;

    .line 22
    invoke-virtual {v9, v2, v4}, Lcom/google/android/gms/internal/ads/zzwk;->zzo(IZ)Z

    if-eqz v8, :cond_c

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzxp;->zzh()Z

    move-result v2

    if-nez v2, :cond_c

    if-ne v7, v15, :cond_c

    .line 23
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzabg;->zzh(Lcom/google/android/gms/internal/ads/zzwq;Z)Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object v2

    goto :goto_4

    :cond_c
    move-object v2, v8

    :goto_4
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzl:Lcom/google/android/gms/internal/ads/zzdd;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwq;->zze()J

    move-result-wide v8

    if-eqz v7, :cond_10

    .line 24
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzdd;->zza()I

    move-result v10

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v10, :cond_10

    .line 25
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/zzdd;->zzb(I)Lcom/google/android/gms/internal/ads/zzdc;

    move-result-object v12

    .line 26
    instance-of v13, v12, Lcom/google/android/gms/internal/ads/zzzy;

    if-eqz v13, :cond_f

    .line 27
    check-cast v12, Lcom/google/android/gms/internal/ads/zzzy;

    .line 28
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzdd;->zza()I

    move-result v10

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v10, :cond_e

    .line 29
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/zzdd;->zzb(I)Lcom/google/android/gms/internal/ads/zzdc;

    move-result-object v13

    .line 30
    instance-of v14, v13, Lcom/google/android/gms/internal/ads/zzaac;

    if-eqz v14, :cond_d

    check-cast v13, Lcom/google/android/gms/internal/ads/zzaac;

    iget-object v14, v13, Lcom/google/android/gms/internal/ads/zzzu;->zzf:Ljava/lang/String;

    const-string v15, "TLEN"

    .line 31
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 32
    iget-object v7, v13, Lcom/google/android/gms/internal/ads/zzaac;->zzb:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/zzk;->zzc(J)J

    move-result-wide v10

    goto :goto_7

    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_e
    move-wide v10, v5

    .line 33
    :goto_7
    invoke-static {v8, v9, v12, v10, v11}, Lcom/google/android/gms/internal/ads/zzabd;->zza(JLcom/google/android/gms/internal/ads/zzzy;J)Lcom/google/android/gms/internal/ads/zzabd;

    move-result-object v7

    goto :goto_8

    :cond_f
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_10
    const/4 v7, 0x0

    :goto_8
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzr:Z

    if-eqz v8, :cond_11

    new-instance v2, Lcom/google/android/gms/internal/ads/zzabh;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzabh;-><init>()V

    goto :goto_a

    :cond_11
    if-eqz v7, :cond_12

    move-object v2, v7

    goto :goto_9

    :cond_12
    if-nez v2, :cond_13

    const/4 v2, 0x0

    :cond_13
    :goto_9
    if-eqz v2, :cond_14

    .line 34
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzxp;->zzh()Z

    goto :goto_a

    .line 35
    :cond_14
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzabg;->zzh(Lcom/google/android/gms/internal/ads/zzwq;Z)Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object v2

    .line 36
    :goto_a
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzq:Lcom/google/android/gms/internal/ads/zzabi;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzh:Lcom/google/android/gms/internal/ads/zzws;

    .line 37
    invoke-interface {v7, v2}, Lcom/google/android/gms/internal/ads/zzws;->zzL(Lcom/google/android/gms/internal/ads/zzxp;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzj:Lcom/google/android/gms/internal/ads/zzxt;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzz;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzz;-><init>()V

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzd:Lcom/google/android/gms/internal/ads/zzxj;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzxj;->zzb:Ljava/lang/String;

    .line 38
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzz;->zzS(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    const/16 v8, 0x1000

    .line 39
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzz;->zzL(I)Lcom/google/android/gms/internal/ads/zzz;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzd:Lcom/google/android/gms/internal/ads/zzxj;

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzxj;->zze:I

    .line 40
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzz;->zzw(I)Lcom/google/android/gms/internal/ads/zzz;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzd:Lcom/google/android/gms/internal/ads/zzxj;

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzxj;->zzd:I

    .line 41
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzz;->zzT(I)Lcom/google/android/gms/internal/ads/zzz;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzabg;->zze:Lcom/google/android/gms/internal/ads/zzxf;

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzxf;->zza:I

    .line 42
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzz;->zzC(I)Lcom/google/android/gms/internal/ads/zzz;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzabg;->zze:Lcom/google/android/gms/internal/ads/zzxf;

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzxf;->zzb:I

    .line 43
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzz;->zzD(I)Lcom/google/android/gms/internal/ads/zzz;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzl:Lcom/google/android/gms/internal/ads/zzdd;

    .line 44
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzz;->zzM(Lcom/google/android/gms/internal/ads/zzdd;)Lcom/google/android/gms/internal/ads/zzz;

    .line 45
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzz;->zzY()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v7

    .line 46
    invoke-interface {v2, v7}, Lcom/google/android/gms/internal/ads/zzxt;->zzk(Lcom/google/android/gms/internal/ads/zzab;)V

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwq;->zze()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzo:J

    goto :goto_b

    .line 47
    :cond_15
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzo:J

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-eqz v2, :cond_16

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwq;->zze()J

    move-result-wide v7

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzo:J

    cmp-long v2, v7, v9

    if-gez v2, :cond_16

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzwk;

    sub-long/2addr v9, v7

    long-to-int v7, v9

    .line 48
    invoke-virtual {v2, v7, v4}, Lcom/google/android/gms/internal/ads/zzwk;->zzo(IZ)Z

    .line 49
    :cond_16
    :goto_b
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzp:I

    if-nez v2, :cond_1c

    .line 50
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwq;->zzj()V

    .line 51
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzabg;->zzj(Lcom/google/android/gms/internal/ads/zzwq;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_f

    :cond_17
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzc:Lcom/google/android/gms/internal/ads/zzfd;

    .line 52
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzc:Lcom/google/android/gms/internal/ads/zzfd;

    .line 53
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v2

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzk:I

    int-to-long v7, v7

    invoke-static {v2, v7, v8}, Lcom/google/android/gms/internal/ads/zzabg;->zzi(IJ)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 54
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzxk;->zzb(I)I

    move-result v7

    if-ne v7, v3, :cond_18

    goto :goto_c

    .line 55
    :cond_18
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzd:Lcom/google/android/gms/internal/ads/zzxj;

    .line 56
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/zzxj;->zza(I)Z

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzm:J

    cmp-long v2, v7, v5

    if-nez v2, :cond_19

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzq:Lcom/google/android/gms/internal/ads/zzabi;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwq;->zze()J

    move-result-wide v5

    .line 57
    invoke-interface {v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzabi;->zzc(J)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzm:J

    :cond_19
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzd:Lcom/google/android/gms/internal/ads/zzxj;

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzxj;->zzc:I

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzp:I

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzq:Lcom/google/android/gms/internal/ads/zzabi;

    .line 58
    instance-of v7, v6, Lcom/google/android/gms/internal/ads/zzabc;

    if-nez v7, :cond_1a

    move v2, v5

    goto :goto_d

    .line 59
    :cond_1a
    check-cast v6, Lcom/google/android/gms/internal/ads/zzabc;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzn:J

    iget v1, v2, Lcom/google/android/gms/internal/ads/zzxj;->zzg:I

    int-to-long v1, v1

    add-long/2addr v3, v1

    .line 60
    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzabg;->zzg(J)J

    const/4 v1, 0x0

    .line 61
    throw v1

    .line 62
    :cond_1b
    :goto_c
    check-cast v1, Lcom/google/android/gms/internal/ads/zzwk;

    const/4 v5, 0x1

    .line 63
    invoke-virtual {v1, v5, v4}, Lcom/google/android/gms/internal/ads/zzwk;->zzo(IZ)Z

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzk:I

    goto :goto_e

    :cond_1c
    :goto_d
    const/4 v5, 0x1

    .line 64
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzj:Lcom/google/android/gms/internal/ads/zzxt;

    .line 65
    invoke-interface {v6, v1, v2, v5}, Lcom/google/android/gms/internal/ads/zzxt;->zze(Lcom/google/android/gms/internal/ads/zzdg;IZ)I

    move-result v1

    if-ne v1, v3, :cond_1d

    goto :goto_f

    :cond_1d
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzp:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzp:I

    if-lez v2, :cond_1e

    :goto_e
    const/4 v3, 0x0

    :goto_f
    return v3

    :cond_1e
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzj:Lcom/google/android/gms/internal/ads/zzxt;

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzn:J

    .line 66
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzabg;->zzg(J)J

    move-result-wide v6

    const/4 v8, 0x1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzd:Lcom/google/android/gms/internal/ads/zzxj;

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzxj;->zzc:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 67
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzxt;->zzs(JIIILcom/google/android/gms/internal/ads/zzxs;)V

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzn:J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzd:Lcom/google/android/gms/internal/ads/zzxj;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzxj;->zzg:I

    int-to-long v5, v3

    add-long/2addr v1, v5

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzn:J

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzp:I

    return v4
.end method

.method private final zzg(J)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzm:J

    const-wide/32 v2, 0xf4240

    mul-long p1, p1, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzd:Lcom/google/android/gms/internal/ads/zzxj;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzxj;->zzd:I

    int-to-long v2, v2

    div-long/2addr p1, v2

    add-long/2addr p1, v0

    return-wide p1
.end method

.method private final zzh(Lcom/google/android/gms/internal/ads/zzwq;Z)Lcom/google/android/gms/internal/ads/zzabi;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzc:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfd;->zzH()[B

    move-result-object p2

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzwk;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, p2, v1, v2, v1}, Lcom/google/android/gms/internal/ads/zzwk;->zzm([BIIZ)Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzc:Lcom/google/android/gms/internal/ads/zzfd;

    .line 2
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzd:Lcom/google/android/gms/internal/ads/zzxj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzc:Lcom/google/android/gms/internal/ads/zzfd;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzxj;->zza(I)Z

    new-instance p2, Lcom/google/android/gms/internal/ads/zzabb;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzwq;->zzc()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzwq;->zze()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzd:Lcom/google/android/gms/internal/ads/zzxj;

    const/4 v7, 0x0

    move-object v1, p2

    .line 4
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzabb;-><init>(JJLcom/google/android/gms/internal/ads/zzxj;Z)V

    return-object p2
.end method

.method private static zzi(IJ)Z
    .locals 4

    const v0, -0x1f400

    and-int/2addr p0, v0

    int-to-long v0, p0

    const-wide/32 v2, -0x1f400

    and-long p0, p1, v2

    cmp-long p2, v0, p0

    if-nez p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final zzj(Lcom/google/android/gms/internal/ads/zzwq;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzq:Lcom/google/android/gms/internal/ads/zzabi;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzabi;->zzb()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzwq;->zzd()J

    move-result-wide v4

    const-wide/16 v6, -0x4

    add-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzc:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzH()[B

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p1, v0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzwq;->zzm([BIIZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v3

    :catch_0
    return v1
.end method

.method private final zzk(Lcom/google/android/gms/internal/ads/zzwq;Z)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq v0, p2, :cond_0

    const/high16 v1, 0x20000

    goto :goto_0

    :cond_0
    const v1, 0x8000

    .line 1
    :goto_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzwq;->zzj()V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzwq;->zze()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    cmp-long v8, v2, v4

    if-nez v8, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzf:Lcom/google/android/gms/internal/ads/zzxh;

    .line 2
    invoke-virtual {v2, p1, v6}, Lcom/google/android/gms/internal/ads/zzxh;->zza(Lcom/google/android/gms/internal/ads/zzwq;Lcom/google/android/gms/internal/ads/zzzr;)Lcom/google/android/gms/internal/ads/zzdd;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzl:Lcom/google/android/gms/internal/ads/zzdd;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzabg;->zze:Lcom/google/android/gms/internal/ads/zzxf;

    .line 3
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzxf;->zzb(Lcom/google/android/gms/internal/ads/zzdd;)Z

    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzwq;->zzd()J

    move-result-wide v2

    long-to-int v3, v2

    if-nez p2, :cond_2

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzwk;

    .line 4
    invoke-virtual {v2, v3, v7}, Lcom/google/android/gms/internal/ads/zzwk;->zzo(IZ)Z

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 5
    :goto_2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzabg;->zzj(Lcom/google/android/gms/internal/ads/zzwq;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-lez v4, :cond_4

    goto :goto_4

    .line 6
    :cond_4
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 7
    :cond_5
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzc:Lcom/google/android/gms/internal/ads/zzfd;

    .line 8
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzc:Lcom/google/android/gms/internal/ads/zzfd;

    .line 9
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v8

    if-eqz v2, :cond_6

    int-to-long v9, v2

    invoke-static {v8, v9, v10}, Lcom/google/android/gms/internal/ads/zzabg;->zzi(IJ)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 10
    :cond_6
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzxk;->zzb(I)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_b

    :cond_7
    add-int/lit8 v2, v5, 0x1

    if-ne v5, v1, :cond_9

    if-eqz p2, :cond_8

    return v7

    :cond_8
    const-string p1, "Searched too many bytes."

    .line 11
    invoke-static {p1, v6}, Lcom/google/android/gms/internal/ads/zzbj;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbj;

    move-result-object p1

    throw p1

    :cond_9
    if-eqz p2, :cond_a

    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzwq;->zzj()V

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzwk;

    add-int v5, v3, v2

    .line 13
    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/internal/ads/zzwk;->zzl(IZ)Z

    goto :goto_3

    :cond_a
    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzwk;

    .line 14
    invoke-virtual {v4, v0, v7}, Lcom/google/android/gms/internal/ads/zzwk;->zzo(IZ)Z

    :goto_3
    move v5, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto :goto_2

    :cond_b
    add-int/lit8 v4, v4, 0x1

    if-ne v4, v0, :cond_c

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzd:Lcom/google/android/gms/internal/ads/zzxj;

    .line 15
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzxj;->zza(I)Z

    move v2, v8

    goto :goto_6

    :cond_c
    const/4 v8, 0x4

    if-ne v4, v8, :cond_e

    :goto_4
    if-eqz p2, :cond_d

    .line 16
    check-cast p1, Lcom/google/android/gms/internal/ads/zzwk;

    add-int/2addr v3, v5

    .line 17
    invoke-virtual {p1, v3, v7}, Lcom/google/android/gms/internal/ads/zzwk;->zzo(IZ)Z

    goto :goto_5

    .line 18
    :cond_d
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzwq;->zzj()V

    .line 19
    :goto_5
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzk:I

    return v0

    .line 20
    :cond_e
    :goto_6
    move-object v8, p1

    check-cast v8, Lcom/google/android/gms/internal/ads/zzwk;

    add-int/lit8 v9, v9, -0x4

    .line 21
    invoke-virtual {v8, v9, v7}, Lcom/google/android/gms/internal/ads/zzwk;->zzl(IZ)Z

    goto :goto_2
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzwq;Lcom/google/android/gms/internal/ads/zzxm;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzi:Lcom/google/android/gms/internal/ads/zzxt;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdy;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget p2, Lcom/google/android/gms/internal/ads/zzfn;->zza:I

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzabg;->zzf(Lcom/google/android/gms/internal/ads/zzwq;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzq:Lcom/google/android/gms/internal/ads/zzabi;

    .line 4
    instance-of p2, p2, Lcom/google/android/gms/internal/ads/zzabc;

    if-eqz p2, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzn:J

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzabg;->zzg(J)J

    move-result-wide v0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzq:Lcom/google/android/gms/internal/ads/zzabi;

    .line 6
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzxp;->zze()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzq:Lcom/google/android/gms/internal/ads/zzabi;

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/ads/zzabc;

    const/4 p1, 0x0

    .line 8
    throw p1

    :cond_1
    :goto_0
    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzws;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzh:Lcom/google/android/gms/internal/ads/zzws;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzws;->zzv(II)Lcom/google/android/gms/internal/ads/zzxt;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzi:Lcom/google/android/gms/internal/ads/zzxt;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzj:Lcom/google/android/gms/internal/ads/zzxt;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzh:Lcom/google/android/gms/internal/ads/zzws;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzws;->zzB()V

    return-void
.end method

.method public final zzc(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzk:I

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzm:J

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzn:J

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzp:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzq:Lcom/google/android/gms/internal/ads/zzabi;

    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zzabc;

    if-nez p2, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzabc;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzwq;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzabg;->zzk(Lcom/google/android/gms/internal/ads/zzwq;Z)Z

    move-result p1

    return p1
.end method

.method public final zze()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzr:Z

    return-void
.end method
