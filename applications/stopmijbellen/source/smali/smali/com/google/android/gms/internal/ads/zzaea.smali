.class public final Lcom/google/android/gms/internal/ads/zzaea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadr;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzaes;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzaeg;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzaeg;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzaeg;

.field private zze:J

.field private final zzf:[Z

.field private zzg:Ljava/lang/String;

.field private zzh:Lcom/google/android/gms/internal/ads/zzxt;

.field private zzi:Lcom/google/android/gms/internal/ads/zzadz;

.field private zzj:Z

.field private zzk:J

.field private zzl:Z

.field private final zzm:Lcom/google/android/gms/internal/ads/zzfd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaes;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaea;->zza:Lcom/google/android/gms/internal/ads/zzaes;

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzf:[Z

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaeg;

    const/4 p2, 0x7

    const/16 p3, 0x80

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaeg;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzb:Lcom/google/android/gms/internal/ads/zzaeg;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaeg;

    const/16 p2, 0x8

    .line 2
    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaeg;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzc:Lcom/google/android/gms/internal/ads/zzaeg;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaeg;

    const/4 p2, 0x6

    .line 3
    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaeg;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzd:Lcom/google/android/gms/internal/ads/zzaeg;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzk:J

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfd;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzfd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzm:Lcom/google/android/gms/internal/ads/zzfd;

    return-void
.end method

.method private final zzf([BII)V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sampleReader"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzj:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzb:Lcom/google/android/gms/internal/ads/zzaeg;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaeg;->zza([BII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzc:Lcom/google/android/gms/internal/ads/zzaeg;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaeg;->zza([BII)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzd:Lcom/google/android/gms/internal/ads/zzaeg;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaeg;->zza([BII)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfd;)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzh:Lcom/google/android/gms/internal/ads/zzxt;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget v1, Lcom/google/android/gms/internal/ads/zzfn;->zza:I

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfd;->zzc()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfd;->zzd()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfd;->zzH()[B

    move-result-object v3

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaea;->zze:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfd;->zza()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaea;->zze:J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzh:Lcom/google/android/gms/internal/ads/zzxt;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfd;->zza()I

    move-result v5

    move-object/from16 v6, p1

    .line 3
    invoke-static {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzxr;->zzb(Lcom/google/android/gms/internal/ads/zzxt;Lcom/google/android/gms/internal/ads/zzfd;I)V

    :goto_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzf:[Z

    .line 4
    invoke-static {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzeu;->zza([BII[Z)I

    move-result v4

    if-eq v4, v2, :cond_a

    add-int/lit8 v5, v4, 0x3

    .line 5
    aget-byte v6, v3, v5

    and-int/lit8 v10, v6, 0x1f

    sub-int v6, v4, v1

    if-lez v6, :cond_0

    .line 6
    invoke-direct {v0, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzaea;->zzf([BII)V

    :cond_0
    sub-int v14, v2, v4

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzaea;->zze:J

    int-to-long v11, v14

    sub-long v8, v7, v11

    if-gez v6, :cond_1

    neg-int v4, v6

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzk:J

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzj:Z

    const/4 v12, 0x4

    if-eqz v11, :cond_3

    :cond_2
    move/from16 v18, v2

    move/from16 v17, v5

    goto/16 :goto_2

    .line 7
    :cond_3
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzb:Lcom/google/android/gms/internal/ads/zzaeg;

    .line 8
    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/ads/zzaeg;->zzd(I)Z

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzc:Lcom/google/android/gms/internal/ads/zzaeg;

    .line 9
    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/ads/zzaeg;->zzd(I)Z

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzj:Z

    if-nez v11, :cond_4

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzb:Lcom/google/android/gms/internal/ads/zzaeg;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzaeg;->zze()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzc:Lcom/google/android/gms/internal/ads/zzaeg;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzaeg;->zze()Z

    move-result v11

    if-eqz v11, :cond_2

    new-instance v11, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzb:Lcom/google/android/gms/internal/ads/zzaeg;

    iget-object v15, v13, Lcom/google/android/gms/internal/ads/zzaeg;->zza:[B

    iget v13, v13, Lcom/google/android/gms/internal/ads/zzaeg;->zzb:I

    .line 11
    invoke-static {v15, v13}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzc:Lcom/google/android/gms/internal/ads/zzaeg;

    iget-object v15, v13, Lcom/google/android/gms/internal/ads/zzaeg;->zza:[B

    iget v13, v13, Lcom/google/android/gms/internal/ads/zzaeg;->zzb:I

    .line 12
    invoke-static {v15, v13}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzb:Lcom/google/android/gms/internal/ads/zzaeg;

    iget-object v15, v13, Lcom/google/android/gms/internal/ads/zzaeg;->zza:[B

    iget v13, v13, Lcom/google/android/gms/internal/ads/zzaeg;->zzb:I

    .line 13
    invoke-static {v15, v12, v13}, Lcom/google/android/gms/internal/ads/zzeu;->zzd([BII)Lcom/google/android/gms/internal/ads/zzet;

    move-result-object v13

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzc:Lcom/google/android/gms/internal/ads/zzaeg;

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzaeg;->zza:[B

    iget v15, v15, Lcom/google/android/gms/internal/ads/zzaeg;->zzb:I

    .line 14
    invoke-static {v1, v12, v15}, Lcom/google/android/gms/internal/ads/zzeu;->zzc([BII)Lcom/google/android/gms/internal/ads/zzes;

    move-result-object v1

    iget v15, v13, Lcom/google/android/gms/internal/ads/zzet;->zza:I

    iget v12, v13, Lcom/google/android/gms/internal/ads/zzet;->zzb:I

    move/from16 v17, v5

    iget v5, v13, Lcom/google/android/gms/internal/ads/zzet;->zzc:I

    .line 15
    invoke-static {v15, v12, v5}, Lcom/google/android/gms/internal/ads/zzea;->zza(III)Ljava/lang/String;

    move-result-object v5

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzh:Lcom/google/android/gms/internal/ads/zzxt;

    new-instance v15, Lcom/google/android/gms/internal/ads/zzz;

    invoke-direct {v15}, Lcom/google/android/gms/internal/ads/zzz;-><init>()V

    move/from16 v18, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzg:Ljava/lang/String;

    .line 16
    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/ads/zzz;->zzH(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    const-string v2, "video/avc"

    .line 17
    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/ads/zzz;->zzS(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    .line 18
    invoke-virtual {v15, v5}, Lcom/google/android/gms/internal/ads/zzz;->zzx(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    iget v2, v13, Lcom/google/android/gms/internal/ads/zzet;->zze:I

    .line 19
    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/ads/zzz;->zzX(I)Lcom/google/android/gms/internal/ads/zzz;

    iget v2, v13, Lcom/google/android/gms/internal/ads/zzet;->zzf:I

    .line 20
    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/ads/zzz;->zzF(I)Lcom/google/android/gms/internal/ads/zzz;

    iget v2, v13, Lcom/google/android/gms/internal/ads/zzet;->zzg:F

    .line 21
    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/ads/zzz;->zzP(F)Lcom/google/android/gms/internal/ads/zzz;

    .line 22
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzz;->zzI(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzz;

    .line 23
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzz;->zzY()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v2

    .line 24
    invoke-interface {v12, v2}, Lcom/google/android/gms/internal/ads/zzxt;->zzk(Lcom/google/android/gms/internal/ads/zzab;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzj:Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzi:Lcom/google/android/gms/internal/ads/zzadz;

    .line 25
    invoke-virtual {v2, v13}, Lcom/google/android/gms/internal/ads/zzadz;->zzb(Lcom/google/android/gms/internal/ads/zzet;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzi:Lcom/google/android/gms/internal/ads/zzadz;

    .line 26
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzadz;->zza(Lcom/google/android/gms/internal/ads/zzes;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzb:Lcom/google/android/gms/internal/ads/zzaeg;

    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaeg;->zzb()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzc:Lcom/google/android/gms/internal/ads/zzaeg;

    .line 28
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaeg;->zzb()V

    goto :goto_2

    :cond_4
    move/from16 v18, v2

    move/from16 v17, v5

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzb:Lcom/google/android/gms/internal/ads/zzaeg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaeg;->zze()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzb:Lcom/google/android/gms/internal/ads/zzaeg;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaeg;->zza:[B

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaeg;->zzb:I

    const/4 v5, 0x4

    .line 29
    invoke-static {v2, v5, v1}, Lcom/google/android/gms/internal/ads/zzeu;->zzd([BII)Lcom/google/android/gms/internal/ads/zzet;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzi:Lcom/google/android/gms/internal/ads/zzadz;

    .line 30
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzadz;->zzb(Lcom/google/android/gms/internal/ads/zzet;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzb:Lcom/google/android/gms/internal/ads/zzaeg;

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaeg;->zzb()V

    goto :goto_2

    :cond_5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzc:Lcom/google/android/gms/internal/ads/zzaeg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaeg;->zze()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzc:Lcom/google/android/gms/internal/ads/zzaeg;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaeg;->zza:[B

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaeg;->zzb:I

    const/4 v5, 0x4

    .line 32
    invoke-static {v2, v5, v1}, Lcom/google/android/gms/internal/ads/zzeu;->zzc([BII)Lcom/google/android/gms/internal/ads/zzes;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzi:Lcom/google/android/gms/internal/ads/zzadz;

    .line 33
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzadz;->zza(Lcom/google/android/gms/internal/ads/zzes;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzc:Lcom/google/android/gms/internal/ads/zzaeg;

    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaeg;->zzb()V

    .line 35
    :cond_6
    :goto_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzd:Lcom/google/android/gms/internal/ads/zzaeg;

    .line 36
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzaeg;->zzd(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzd:Lcom/google/android/gms/internal/ads/zzaeg;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaeg;->zza:[B

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaeg;->zzb:I

    .line 37
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzeu;->zzb([BI)I

    move-result v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzm:Lcom/google/android/gms/internal/ads/zzfd;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzd:Lcom/google/android/gms/internal/ads/zzaeg;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzaeg;->zza:[B

    .line 38
    invoke-virtual {v2, v4, v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzD([BI)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzm:Lcom/google/android/gms/internal/ads/zzfd;

    const/4 v2, 0x4

    .line 39
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaea;->zza:Lcom/google/android/gms/internal/ads/zzaes;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzm:Lcom/google/android/gms/internal/ads/zzfd;

    .line 40
    invoke-virtual {v1, v6, v7, v2}, Lcom/google/android/gms/internal/ads/zzaes;->zza(JLcom/google/android/gms/internal/ads/zzfd;)V

    :cond_7
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzi:Lcom/google/android/gms/internal/ads/zzadz;

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzj:Z

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzl:Z

    move-wide v12, v8

    move/from16 v16, v1

    .line 41
    invoke-virtual/range {v11 .. v16}, Lcom/google/android/gms/internal/ads/zzadz;->zze(JIZZ)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzl:Z

    :cond_8
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzk:J

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzj:Z

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzb:Lcom/google/android/gms/internal/ads/zzaeg;

    .line 42
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzaeg;->zzc(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzc:Lcom/google/android/gms/internal/ads/zzaeg;

    .line 43
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzaeg;->zzc(I)V

    :cond_9
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzd:Lcom/google/android/gms/internal/ads/zzaeg;

    .line 44
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzaeg;->zzc(I)V

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaea;->zzi:Lcom/google/android/gms/internal/ads/zzadz;

    .line 45
    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/zzadz;->zzd(JIJ)V

    move/from16 v1, v17

    move/from16 v2, v18

    goto/16 :goto_0

    .line 46
    :cond_a
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzaea;->zzf([BII)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzws;Lcom/google/android/gms/internal/ads/zzafd;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzafd;->zzc()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzafd;->zzb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzg:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzafd;->zza()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzws;->zzv(II)Lcom/google/android/gms/internal/ads/zzxt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzh:Lcom/google/android/gms/internal/ads/zzxt;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzadz;

    const/4 v2, 0x0

    .line 4
    invoke-direct {v1, v0, v2, v2}, Lcom/google/android/gms/internal/ads/zzadz;-><init>(Lcom/google/android/gms/internal/ads/zzxt;ZZ)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzi:Lcom/google/android/gms/internal/ads/zzadz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zza:Lcom/google/android/gms/internal/ads/zzaes;

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaes;->zzb(Lcom/google/android/gms/internal/ads/zzws;Lcom/google/android/gms/internal/ads/zzafd;)V

    return-void
.end method

.method public final zzc()V
    .locals 0

    return-void
.end method

.method public final zzd(JI)V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzk:J

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzl:Z

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzl:Z

    return-void
.end method

.method public final zze()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zze:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzl:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzk:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzf:[Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeu;->zze([Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzb:Lcom/google/android/gms/internal/ads/zzaeg;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaeg;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzc:Lcom/google/android/gms/internal/ads/zzaeg;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaeg;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzd:Lcom/google/android/gms/internal/ads/zzaeg;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaeg;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzi:Lcom/google/android/gms/internal/ads/zzadz;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzadz;->zzc()V

    :cond_0
    return-void
.end method
