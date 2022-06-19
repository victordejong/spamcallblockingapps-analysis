.class final Lcom/google/android/gms/internal/ads/zzhf;
.super Lcom/google/android/gms/internal/ads/zzi;
.source "SourceFile"


# instance fields
.field private zzA:I

.field private zzB:J

.field private final zzC:Lcom/google/android/gms/internal/ads/zzgx;

.field private zzD:Lcom/google/android/gms/internal/ads/zzrq;

.field public final zzb:Lcom/google/android/gms/internal/ads/zzsw;

.field public final zzc:Lcom/google/android/gms/internal/ads/zzbr;

.field private final zzd:[Lcom/google/android/gms/internal/ads/zzil;

.field private final zze:Lcom/google/android/gms/internal/ads/zzsv;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzei;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzhp;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzeo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeo<",
            "Lcom/google/android/gms/internal/ads/zzbs;",
            ">;"
        }
    .end annotation
.end field

.field private final zzi:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/gms/internal/ads/zzgh;",
            ">;"
        }
    .end annotation
.end field

.field private final zzj:Lcom/google/android/gms/internal/ads/zzca;

.field private final zzk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzhe;",
            ">;"
        }
    .end annotation
.end field

.field private final zzl:Z

.field private final zzm:Lcom/google/android/gms/internal/ads/zzqk;

.field private final zzn:Lcom/google/android/gms/internal/ads/zzlb;

.field private final zzo:Landroid/os/Looper;

.field private final zzp:Lcom/google/android/gms/internal/ads/zzte;

.field private final zzq:Lcom/google/android/gms/internal/ads/zzdz;

.field private zzr:I

.field private zzs:I

.field private zzt:Z

.field private zzu:I

.field private zzv:Lcom/google/android/gms/internal/ads/zzio;

.field private zzw:Lcom/google/android/gms/internal/ads/zzbr;

.field private zzx:Lcom/google/android/gms/internal/ads/zzbe;

.field private zzy:Lcom/google/android/gms/internal/ads/zzbe;

.field private zzz:Lcom/google/android/gms/internal/ads/zzif;


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/zzil;Lcom/google/android/gms/internal/ads/zzsv;Lcom/google/android/gms/internal/ads/zzqk;Lcom/google/android/gms/internal/ads/zzhs;Lcom/google/android/gms/internal/ads/zzte;Lcom/google/android/gms/internal/ads/zzlb;ZLcom/google/android/gms/internal/ads/zzio;JJLcom/google/android/gms/internal/ads/zzgb;JZLcom/google/android/gms/internal/ads/zzdz;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzbw;Lcom/google/android/gms/internal/ads/zzbr;[B)V
    .locals 20
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v12, p17

    move-object/from16 v13, p18

    move-object/from16 v14, p19

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p13

    move-object/from16 v16, p17

    move-object/from16 v15, p18

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzi;-><init>()V

    .line 2
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 p7, v2

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfn;->zze:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 p9, v3

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v17, v17, 0x1e

    add-int v5, v17, v18

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Init "

    move-object/from16 p10, v6

    const-string v6, " [ExoPlayerLib/2.15.1] ["

    invoke-static {v3, v5, v4, v6, v2}, Landroid/support/v4/media/b;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ExoPlayerImpl"

    .line 3
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    array-length v2, v1

    .line 5
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzd:[Lcom/google/android/gms/internal/ads/zzil;

    .line 6
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzhf;->zze:Lcom/google/android/gms/internal/ads/zzsv;

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzm:Lcom/google/android/gms/internal/ads/zzqk;

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzp:Lcom/google/android/gms/internal/ads/zzte;

    iput-object v8, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzn:Lcom/google/android/gms/internal/ads/zzlb;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzl:Z

    move-object/from16 v2, p8

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzv:Lcom/google/android/gms/internal/ads/zzio;

    iput-object v13, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzo:Landroid/os/Looper;

    iput-object v12, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzq:Lcom/google/android/gms/internal/ads/zzdz;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeo;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzgw;

    .line 7
    invoke-direct {v3, v14}, Lcom/google/android/gms/internal/ads/zzgw;-><init>(Lcom/google/android/gms/internal/ads/zzbw;)V

    invoke-direct {v2, v13, v12, v3}, Lcom/google/android/gms/internal/ads/zzeo;-><init>(Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzdz;Lcom/google/android/gms/internal/ads/zzem;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzh:Lcom/google/android/gms/internal/ads/zzeo;

    .line 8
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzi:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v3, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzk:Ljava/util/List;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzrq;

    const/4 v4, 0x0

    .line 10
    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/zzrq;-><init>(I)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzD:Lcom/google/android/gms/internal/ads/zzrq;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzsw;

    move-object v4, v3

    const/4 v5, 0x2

    new-array v6, v5, [Lcom/google/android/gms/internal/ads/zzin;

    new-array v5, v5, [Lcom/google/android/gms/internal/ads/zzsb;

    .line 11
    sget-object v17, Lcom/google/android/gms/internal/ads/zzcr;->zza:Lcom/google/android/gms/internal/ads/zzcr;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 p11, v3

    move-object/from16 p12, v6

    move-object/from16 p13, v5

    move-object/from16 p14, v17

    move-object/from16 p15, v18

    move-object/from16 p16, v19

    invoke-direct/range {p11 .. p16}, Lcom/google/android/gms/internal/ads/zzsw;-><init>([Lcom/google/android/gms/internal/ads/zzin;[Lcom/google/android/gms/internal/ads/zzsb;Lcom/google/android/gms/internal/ads/zzcr;Ljava/lang/Object;[B)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzb:Lcom/google/android/gms/internal/ads/zzsw;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzca;

    .line 12
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzca;-><init>()V

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzj:Lcom/google/android/gms/internal/ads/zzca;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzbp;

    .line 13
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzbp;-><init>()V

    const/16 v6, 0xb

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    .line 14
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzbp;->zzc([I)Lcom/google/android/gms/internal/ads/zzbp;

    const/16 v6, 0x1c

    .line 15
    invoke-virtual {v5, v6, v1}, Lcom/google/android/gms/internal/ads/zzbp;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbp;

    move-object/from16 v1, p20

    .line 16
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzbp;->zzb(Lcom/google/android/gms/internal/ads/zzbr;)Lcom/google/android/gms/internal/ads/zzbp;

    .line 17
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbp;->zze()Lcom/google/android/gms/internal/ads/zzbr;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzc:Lcom/google/android/gms/internal/ads/zzbr;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzbp;

    .line 18
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzbp;-><init>()V

    .line 19
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzbp;->zzb(Lcom/google/android/gms/internal/ads/zzbr;)Lcom/google/android/gms/internal/ads/zzbp;

    const/4 v1, 0x3

    .line 20
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzbp;->zza(I)Lcom/google/android/gms/internal/ads/zzbp;

    const/16 v1, 0x9

    .line 21
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzbp;->zza(I)Lcom/google/android/gms/internal/ads/zzbp;

    .line 22
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbp;->zze()Lcom/google/android/gms/internal/ads/zzbr;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzw:Lcom/google/android/gms/internal/ads/zzbr;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbe;->zza:Lcom/google/android/gms/internal/ads/zzbe;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzx:Lcom/google/android/gms/internal/ads/zzbe;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzy:Lcom/google/android/gms/internal/ads/zzbe;

    const/4 v1, -0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzA:I

    const/4 v1, 0x0

    .line 23
    invoke-interface {v12, v13, v1}, Lcom/google/android/gms/internal/ads/zzdz;->zza(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/zzei;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzf:Lcom/google/android/gms/internal/ads/zzei;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgx;

    move-object/from16 v17, v1

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzgx;-><init>(Lcom/google/android/gms/internal/ads/zzhf;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzC:Lcom/google/android/gms/internal/ads/zzgx;

    .line 24
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzif;->zzh(Lcom/google/android/gms/internal/ads/zzsw;)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    .line 25
    invoke-virtual {v8, v14, v13}, Lcom/google/android/gms/internal/ads/zzlb;->zzW(Lcom/google/android/gms/internal/ads/zzbw;Landroid/os/Looper;)V

    .line 26
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzeo;->zzb(Ljava/lang/Object;)V

    new-instance v1, Landroid/os/Handler;

    .line 27
    invoke-direct {v1, v13}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-interface {v7, v1, v8}, Lcom/google/android/gms/internal/ads/zzte;->zze(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zztd;)V

    .line 28
    new-instance v2, Lcom/google/android/gms/internal/ads/zzhp;

    move-object v1, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v12, 0x1f4

    const/4 v14, 0x0

    move-object/from16 v5, p4

    move-object/from16 v3, p9

    move-object/from16 v6, p10

    move-object v0, v2

    move-object/from16 v2, p7

    invoke-direct/range {v1 .. v18}, Lcom/google/android/gms/internal/ads/zzhp;-><init>([Lcom/google/android/gms/internal/ads/zzil;Lcom/google/android/gms/internal/ads/zzsv;Lcom/google/android/gms/internal/ads/zzsw;Lcom/google/android/gms/internal/ads/zzhs;Lcom/google/android/gms/internal/ads/zzte;IZLcom/google/android/gms/internal/ads/zzlb;Lcom/google/android/gms/internal/ads/zzio;Lcom/google/android/gms/internal/ads/zzgb;JZLandroid/os/Looper;Lcom/google/android/gms/internal/ads/zzdz;Lcom/google/android/gms/internal/ads/zzgx;[B)V

    move-object v1, v0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzg:Lcom/google/android/gms/internal/ads/zzhp;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x1d
    .end array-data
.end method

.method public static synthetic zzB(Lcom/google/android/gms/internal/ads/zzif;Lcom/google/android/gms/internal/ads/zzbs;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhf;->zzQ(Lcom/google/android/gms/internal/ads/zzif;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzbs;->zzc(Z)V

    return-void
.end method

.method private final zzJ()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzA:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbf;->zza:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzj:Lcom/google/android/gms/internal/ads/zzca;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzcd;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzca;)Lcom/google/android/gms/internal/ads/zzca;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzca;->zzd:I

    return v0
.end method

.method private final zzK(Lcom/google/android/gms/internal/ads/zzif;)J
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzB:J

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzk;->zzc(J)J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbf;->zzb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzif;->zzs:J

    return-wide v0

    .line 5
    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzif;->zzs:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhf;->zzM(Lcom/google/android/gms/internal/ads/zzcd;Lcom/google/android/gms/internal/ads/zzpz;J)J

    return-wide v2
.end method

.method private static zzL(Lcom/google/android/gms/internal/ads/zzif;)J
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcc;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzca;

    .line 2
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzca;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzbf;->zza:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzcd;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzca;)Lcom/google/android/gms/internal/ads/zzca;

    .line 4
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzif;->zzc:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 5
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzca;->zzd:I

    const-wide/16 v2, 0x0

    .line 6
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzcd;->zze(ILcom/google/android/gms/internal/ads/zzcc;J)Lcom/google/android/gms/internal/ads/zzcc;

    move-result-object p0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcc;->zzm:J

    :cond_0
    return-wide v2
.end method

.method private final zzM(Lcom/google/android/gms/internal/ads/zzcd;Lcom/google/android/gms/internal/ads/zzpz;J)J
    .locals 1

    .line 1
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzbf;->zza:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzj:Lcom/google/android/gms/internal/ads/zzca;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzcd;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzca;)Lcom/google/android/gms/internal/ads/zzca;

    return-wide p3
.end method

.method private final zzN(Lcom/google/android/gms/internal/ads/zzcd;IJ)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcd;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzA:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, p1

    if-nez v0, :cond_0

    move-wide p3, v1

    :cond_0
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzB:J

    const/4 p1, 0x0

    return-object p1

    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcd;->zzc()I

    move-result v0

    if-lt p2, v0, :cond_3

    :cond_2
    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcd;->zzg(Z)I

    move-result p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzi;->zza:Lcom/google/android/gms/internal/ads/zzcc;

    .line 4
    invoke-virtual {p1, p2, p3, v1, v2}, Lcom/google/android/gms/internal/ads/zzcd;->zze(ILcom/google/android/gms/internal/ads/zzcc;J)Lcom/google/android/gms/internal/ads/zzcc;

    move-result-object p3

    iget-wide p3, p3, Lcom/google/android/gms/internal/ads/zzcc;->zzm:J

    .line 5
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzk;->zzd(J)J

    move-result-wide p3

    :cond_3
    move v3, p2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzi;->zza:Lcom/google/android/gms/internal/ads/zzcc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzj:Lcom/google/android/gms/internal/ads/zzca;

    .line 6
    invoke-static {p3, p4}, Lcom/google/android/gms/internal/ads/zzk;->zzc(J)J

    move-result-wide v4

    move-object v0, p1

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcd;->zzl(Lcom/google/android/gms/internal/ads/zzcc;Lcom/google/android/gms/internal/ads/zzca;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private final zzO(Lcom/google/android/gms/internal/ads/zzif;Lcom/google/android/gms/internal/ads/zzcd;Landroid/util/Pair;)Lcom/google/android/gms/internal/ads/zzif;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzif;",
            "Lcom/google/android/gms/internal/ads/zzcd;",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzif;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzd(Z)V

    move-object/from16 v3, p1

    .line 2
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    .line 3
    invoke-virtual/range {p1 .. p2}, Lcom/google/android/gms/internal/ads/zzif;->zzg(Lcom/google/android/gms/internal/ads/zzcd;)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v7

    .line 4
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzif;->zzi()Lcom/google/android/gms/internal/ads/zzpz;

    move-result-object v1

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzB:J

    .line 5
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzk;->zzc(J)J

    move-result-wide v13

    const-wide/16 v15, 0x0

    .line 6
    sget-object v17, Lcom/google/android/gms/internal/ads/zzch;->zza:Lcom/google/android/gms/internal/ads/zzch;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzb:Lcom/google/android/gms/internal/ads/zzsw;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfss;->zzo()Lcom/google/android/gms/internal/ads/zzfss;

    move-result-object v19

    move-object v8, v1

    move-wide v9, v13

    move-wide v11, v13

    move-object/from16 v18, v2

    .line 8
    invoke-virtual/range {v7 .. v19}, Lcom/google/android/gms/internal/ads/zzif;->zzb(Lcom/google/android/gms/internal/ads/zzpz;JJJJLcom/google/android/gms/internal/ads/zzch;Lcom/google/android/gms/internal/ads/zzsw;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v2

    .line 9
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzif;->zza(Lcom/google/android/gms/internal/ads/zzpz;)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v1

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzif;->zzs:J

    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzif;->zzq:J

    return-object v1

    :cond_2
    iget-object v3, v7, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    .line 10
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzbf;->zza:Ljava/lang/Object;

    .line 11
    sget v8, Lcom/google/android/gms/internal/ads/zzfn;->zza:I

    iget-object v8, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v5

    if-eqz v8, :cond_3

    new-instance v9, Lcom/google/android/gms/internal/ads/zzpz;

    .line 12
    iget-object v10, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {v9, v10}, Lcom/google/android/gms/internal/ads/zzpz;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    .line 13
    :cond_3
    iget-object v9, v7, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    :goto_2
    move-object v15, v9

    .line 14
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhf;->zzj()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzk;->zzc(J)J

    move-result-wide v9

    .line 16
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzj:Lcom/google/android/gms/internal/ads/zzca;

    .line 17
    invoke-virtual {v6, v3, v2}, Lcom/google/android/gms/internal/ads/zzcd;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzca;)Lcom/google/android/gms/internal/ads/zzca;

    :cond_4
    if-nez v8, :cond_a

    cmp-long v2, v13, v9

    if-gez v2, :cond_5

    goto/16 :goto_5

    :cond_5
    if-nez v2, :cond_8

    .line 18
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzif;->zzk:Lcom/google/android/gms/internal/ads/zzpz;

    .line 19
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbf;->zza:Ljava/lang/Object;

    .line 20
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcd;->zza(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzj:Lcom/google/android/gms/internal/ads/zzca;

    .line 21
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcd;->zzd(ILcom/google/android/gms/internal/ads/zzca;Z)Lcom/google/android/gms/internal/ads/zzca;

    move-result-object v2

    .line 22
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzca;->zzd:I

    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzbf;->zza:Ljava/lang/Object;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzj:Lcom/google/android/gms/internal/ads/zzca;

    .line 23
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzcd;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzca;)Lcom/google/android/gms/internal/ads/zzca;

    move-result-object v3

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzca;->zzd:I

    if-eq v2, v3, :cond_e

    .line 24
    :cond_6
    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzbf;->zza:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzj:Lcom/google/android/gms/internal/ads/zzca;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcd;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzca;)Lcom/google/android/gms/internal/ads/zzca;

    .line 25
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzbf;->zzb()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzj:Lcom/google/android/gms/internal/ads/zzca;

    .line 26
    iget v2, v15, Lcom/google/android/gms/internal/ads/zzbf;->zzb:I

    iget v3, v15, Lcom/google/android/gms/internal/ads/zzbf;->zzc:I

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzca;->zzf(II)J

    move-result-wide v1

    goto :goto_3

    .line 27
    :cond_7
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzj:Lcom/google/android/gms/internal/ads/zzca;

    .line 28
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzca;->zze:J

    .line 29
    :goto_3
    iget-wide v9, v7, Lcom/google/android/gms/internal/ads/zzif;->zzs:J

    iget-wide v11, v7, Lcom/google/android/gms/internal/ads/zzif;->zzs:J

    iget-wide v13, v7, Lcom/google/android/gms/internal/ads/zzif;->zzd:J

    iget-wide v3, v7, Lcom/google/android/gms/internal/ads/zzif;->zzs:J

    sub-long v3, v1, v3

    iget-object v5, v7, Lcom/google/android/gms/internal/ads/zzif;->zzh:Lcom/google/android/gms/internal/ads/zzch;

    iget-object v6, v7, Lcom/google/android/gms/internal/ads/zzif;->zzi:Lcom/google/android/gms/internal/ads/zzsw;

    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zzif;->zzj:Ljava/util/List;

    move-object/from16 v19, v8

    move-object v8, v15

    move-object v0, v15

    move-wide v15, v3

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 30
    invoke-virtual/range {v7 .. v19}, Lcom/google/android/gms/internal/ads/zzif;->zzb(Lcom/google/android/gms/internal/ads/zzpz;JJJJLcom/google/android/gms/internal/ads/zzch;Lcom/google/android/gms/internal/ads/zzsw;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v3

    .line 31
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzif;->zza(Lcom/google/android/gms/internal/ads/zzpz;)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v7

    iput-wide v1, v7, Lcom/google/android/gms/internal/ads/zzif;->zzq:J

    goto :goto_4

    :cond_8
    move-object v0, v15

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbf;->zzb()Z

    move-result v1

    xor-int/2addr v1, v5

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzf(Z)V

    const-wide/16 v1, 0x0

    iget-wide v3, v7, Lcom/google/android/gms/internal/ads/zzif;->zzr:J

    sub-long v5, v13, v9

    sub-long/2addr v3, v5

    .line 33
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v15

    iget-wide v1, v7, Lcom/google/android/gms/internal/ads/zzif;->zzq:J

    iget-object v3, v7, Lcom/google/android/gms/internal/ads/zzif;->zzk:Lcom/google/android/gms/internal/ads/zzpz;

    iget-object v4, v7, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    .line 34
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzbf;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    add-long v1, v13, v15

    :cond_9
    iget-object v3, v7, Lcom/google/android/gms/internal/ads/zzif;->zzh:Lcom/google/android/gms/internal/ads/zzch;

    iget-object v4, v7, Lcom/google/android/gms/internal/ads/zzif;->zzi:Lcom/google/android/gms/internal/ads/zzsw;

    iget-object v5, v7, Lcom/google/android/gms/internal/ads/zzif;->zzj:Ljava/util/List;

    move-object v8, v0

    move-wide v9, v13

    move-wide v11, v13

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    .line 35
    invoke-virtual/range {v7 .. v19}, Lcom/google/android/gms/internal/ads/zzif;->zzb(Lcom/google/android/gms/internal/ads/zzpz;JJJJLcom/google/android/gms/internal/ads/zzch;Lcom/google/android/gms/internal/ads/zzsw;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v7

    iput-wide v1, v7, Lcom/google/android/gms/internal/ads/zzif;->zzq:J

    :goto_4
    move-object/from16 v0, p0

    goto :goto_9

    :cond_a
    :goto_5
    move-object v0, v15

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbf;->zzb()Z

    move-result v1

    xor-int/2addr v1, v5

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzf(Z)V

    if-eqz v8, :cond_b

    .line 37
    sget-object v1, Lcom/google/android/gms/internal/ads/zzch;->zza:Lcom/google/android/gms/internal/ads/zzch;

    goto :goto_6

    .line 38
    :cond_b
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzif;->zzh:Lcom/google/android/gms/internal/ads/zzch;

    :goto_6
    move-object/from16 v17, v1

    if-eqz v8, :cond_c

    move-object v1, v0

    move-object/from16 v0, p0

    .line 39
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzb:Lcom/google/android/gms/internal/ads/zzsw;

    goto :goto_7

    :cond_c
    move-object v1, v0

    move-object/from16 v0, p0

    .line 40
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzif;->zzi:Lcom/google/android/gms/internal/ads/zzsw;

    :goto_7
    move-object/from16 v18, v2

    if-eqz v8, :cond_d

    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfss;->zzo()Lcom/google/android/gms/internal/ads/zzfss;

    move-result-object v2

    goto :goto_8

    .line 42
    :cond_d
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzif;->zzj:Ljava/util/List;

    :goto_8
    move-object/from16 v19, v2

    const-wide/16 v15, 0x0

    move-object v8, v1

    move-wide v9, v13

    move-wide v11, v13

    move-wide v2, v13

    .line 43
    invoke-virtual/range {v7 .. v19}, Lcom/google/android/gms/internal/ads/zzif;->zzb(Lcom/google/android/gms/internal/ads/zzpz;JJJJLcom/google/android/gms/internal/ads/zzch;Lcom/google/android/gms/internal/ads/zzsw;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v4

    .line 44
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzif;->zza(Lcom/google/android/gms/internal/ads/zzpz;)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v7

    iput-wide v2, v7, Lcom/google/android/gms/internal/ads/zzif;->zzq:J

    :cond_e
    :goto_9
    return-object v7
.end method

.method private final zzP(Lcom/google/android/gms/internal/ads/zzif;IIZZIJI)V
    .locals 40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    .line 1
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    .line 2
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzcd;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 3
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    .line 4
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    .line 5
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v8

    const/4 v10, 0x3

    const-wide/16 v11, 0x0

    const/4 v13, -0x1

    .line 6
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    if-eqz v8, :cond_0

    .line 7
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v4, Landroid/util/Pair;

    .line 8
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v4, v6, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 9
    :cond_0
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v8

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v9

    if-eq v8, v9, :cond_1

    new-instance v4, Landroid/util/Pair;

    .line 10
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 11
    :cond_1
    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzbf;->zza:Ljava/lang/Object;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzj:Lcom/google/android/gms/internal/ads/zzca;

    .line 12
    invoke-virtual {v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzcd;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzca;)Lcom/google/android/gms/internal/ads/zzca;

    move-result-object v8

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzca;->zzd:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzi;->zza:Lcom/google/android/gms/internal/ads/zzcc;

    .line 13
    invoke-virtual {v6, v8, v9, v11, v12}, Lcom/google/android/gms/internal/ads/zzcd;->zze(ILcom/google/android/gms/internal/ads/zzcc;J)Lcom/google/android/gms/internal/ads/zzcc;

    move-result-object v6

    .line 14
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzcc;->zzc:Ljava/lang/Object;

    .line 15
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzbf;->zza:Ljava/lang/Object;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzj:Lcom/google/android/gms/internal/ads/zzca;

    .line 16
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzcd;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzca;)Lcom/google/android/gms/internal/ads/zzca;

    move-result-object v8

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzca;->zzd:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzi;->zza:Lcom/google/android/gms/internal/ads/zzcc;

    .line 17
    invoke-virtual {v7, v8, v9, v11, v12}, Lcom/google/android/gms/internal/ads/zzcd;->zze(ILcom/google/android/gms/internal/ads/zzcc;J)Lcom/google/android/gms/internal/ads/zzcc;

    move-result-object v7

    .line 18
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzcc;->zzc:Ljava/lang/Object;

    .line 19
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz p5, :cond_2

    if-nez v2, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_3

    if-ne v2, v5, :cond_3

    const/4 v4, 0x2

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    const/4 v4, 0x3

    :goto_0
    new-instance v6, Landroid/util/Pair;

    .line 20
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v6, v7, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v6

    goto :goto_1

    .line 21
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 22
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_5
    if-eqz p5, :cond_6

    if-nez v2, :cond_6

    .line 23
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    iget-wide v6, v4, Lcom/google/android/gms/internal/ads/zzbf;->zzd:J

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    iget-wide v8, v4, Lcom/google/android/gms/internal/ads/zzbf;->zzd:J

    cmp-long v4, v6, v8

    if-gez v4, :cond_6

    new-instance v4, Landroid/util/Pair;

    .line 24
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 25
    :cond_6
    new-instance v4, Landroid/util/Pair;

    .line 26
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v4, v6, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    :goto_1
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 28
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzx:Lcom/google/android/gms/internal/ads/zzbe;

    if-eqz v6, :cond_9

    .line 29
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v7

    if-nez v7, :cond_7

    .line 30
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzbf;->zza:Ljava/lang/Object;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzj:Lcom/google/android/gms/internal/ads/zzca;

    .line 31
    invoke-virtual {v7, v9, v14}, Lcom/google/android/gms/internal/ads/zzcd;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzca;)Lcom/google/android/gms/internal/ads/zzca;

    move-result-object v7

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzca;->zzd:I

    .line 32
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzi;->zza:Lcom/google/android/gms/internal/ads/zzcc;

    .line 33
    invoke-virtual {v9, v7, v14, v11, v12}, Lcom/google/android/gms/internal/ads/zzcd;->zze(ILcom/google/android/gms/internal/ads/zzcc;J)Lcom/google/android/gms/internal/ads/zzcc;

    move-result-object v7

    .line 34
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzcc;->zzd:Lcom/google/android/gms/internal/ads/zzaz;

    goto :goto_2

    :cond_7
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_8

    iget-object v9, v7, Lcom/google/android/gms/internal/ads/zzaz;->zzg:Lcom/google/android/gms/internal/ads/zzbe;

    goto :goto_3

    .line 35
    :cond_8
    sget-object v9, Lcom/google/android/gms/internal/ads/zzbe;->zza:Lcom/google/android/gms/internal/ads/zzbe;

    :goto_3
    move-object/from16 v39, v9

    move-object v9, v7

    move-object/from16 v7, v39

    goto :goto_4

    :cond_9
    const/4 v9, 0x0

    :goto_4
    if-nez v6, :cond_a

    .line 36
    iget-object v14, v3, Lcom/google/android/gms/internal/ads/zzif;->zzj:Ljava/util/List;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzif;->zzj:Ljava/util/List;

    .line 37
    invoke-interface {v14, v10}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 38
    :cond_a
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzbe;->zza()Lcom/google/android/gms/internal/ads/zzbc;

    move-result-object v7

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzif;->zzj:Ljava/util/List;

    const/4 v14, 0x0

    .line 39
    :goto_5
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    if-ge v14, v8, :cond_c

    .line 40
    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzdd;

    const/4 v13, 0x0

    .line 41
    :goto_6
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzdd;->zza()I

    move-result v11

    if-ge v13, v11, :cond_b

    .line 42
    invoke-virtual {v8, v13}, Lcom/google/android/gms/internal/ads/zzdd;->zzb(I)Lcom/google/android/gms/internal/ads/zzdc;

    move-result-object v11

    .line 43
    invoke-interface {v11, v7}, Lcom/google/android/gms/internal/ads/zzdc;->zza(Lcom/google/android/gms/internal/ads/zzbc;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_b
    add-int/lit8 v14, v14, 0x1

    const-wide/16 v11, 0x0

    const/4 v13, -0x1

    goto :goto_5

    :cond_c
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzbc;->zzr()Lcom/google/android/gms/internal/ads/zzbe;

    move-result-object v7

    :cond_d
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzx:Lcom/google/android/gms/internal/ads/zzbe;

    .line 44
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzbe;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v5

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzx:Lcom/google/android/gms/internal/ads/zzbe;

    .line 45
    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/zzcd;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzh:Lcom/google/android/gms/internal/ads/zzeo;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzgr;

    move/from16 v11, p2

    invoke-direct {v10, v1, v11}, Lcom/google/android/gms/internal/ads/zzgr;-><init>(Lcom/google/android/gms/internal/ads/zzif;I)V

    .line 46
    invoke-virtual {v7, v15, v10}, Lcom/google/android/gms/internal/ads/zzeo;->zzd(ILcom/google/android/gms/internal/ads/zzel;)V

    :cond_e
    const/16 v7, 0xb

    if-eqz p5, :cond_16

    new-instance v10, Lcom/google/android/gms/internal/ads/zzca;

    .line 47
    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/zzca;-><init>()V

    .line 48
    iget-object v11, v3, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v11

    if-nez v11, :cond_f

    .line 49
    iget-object v11, v3, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzbf;->zza:Ljava/lang/Object;

    .line 50
    iget-object v12, v3, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    invoke-virtual {v12, v11, v10}, Lcom/google/android/gms/internal/ads/zzcd;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzca;)Lcom/google/android/gms/internal/ads/zzca;

    iget v12, v10, Lcom/google/android/gms/internal/ads/zzca;->zzd:I

    .line 51
    iget-object v13, v3, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzcd;->zza(Ljava/lang/Object;)I

    move-result v13

    .line 52
    iget-object v14, v3, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzi;->zza:Lcom/google/android/gms/internal/ads/zzcc;

    move/from16 v16, v6

    const-wide/16 v5, 0x0

    .line 53
    invoke-virtual {v14, v12, v15, v5, v6}, Lcom/google/android/gms/internal/ads/zzcd;->zze(ILcom/google/android/gms/internal/ads/zzcc;J)Lcom/google/android/gms/internal/ads/zzcc;

    move-result-object v14

    .line 54
    iget-object v5, v14, Lcom/google/android/gms/internal/ads/zzcc;->zzc:Ljava/lang/Object;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzi;->zza:Lcom/google/android/gms/internal/ads/zzcc;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzcc;->zzd:Lcom/google/android/gms/internal/ads/zzaz;

    move-object/from16 v18, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v11

    move/from16 v19, v12

    move/from16 v22, v13

    goto :goto_7

    :cond_f
    move/from16 v16, v6

    move/from16 v19, p9

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    :goto_7
    if-nez v2, :cond_11

    iget-wide v5, v10, Lcom/google/android/gms/internal/ads/zzca;->zze:J

    .line 55
    iget-object v11, v3, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzbf;->zzb()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 56
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    iget v6, v5, Lcom/google/android/gms/internal/ads/zzbf;->zzb:I

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzbf;->zzc:I

    .line 57
    invoke-virtual {v10, v6, v5}, Lcom/google/android/gms/internal/ads/zzca;->zzf(II)J

    move-result-wide v5

    .line 58
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzhf;->zzL(Lcom/google/android/gms/internal/ads/zzif;)J

    move-result-wide v10

    goto :goto_9

    .line 59
    :cond_10
    iget-object v10, v3, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    iget v10, v10, Lcom/google/android/gms/internal/ads/zzbf;->zze:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_13

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    .line 60
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzbf;->zzb()Z

    move-result v10

    if-eqz v10, :cond_13

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    .line 61
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzhf;->zzL(Lcom/google/android/gms/internal/ads/zzif;)J

    move-result-wide v5

    goto :goto_8

    .line 62
    :cond_11
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbf;->zzb()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 63
    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzif;->zzs:J

    .line 64
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzhf;->zzL(Lcom/google/android/gms/internal/ads/zzif;)J

    move-result-wide v10

    goto :goto_9

    .line 65
    :cond_12
    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzif;->zzs:J

    :cond_13
    :goto_8
    move-wide v10, v5

    .line 66
    :goto_9
    new-instance v12, Lcom/google/android/gms/internal/ads/zzbv;

    .line 67
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzk;->zzd(J)J

    move-result-wide v23

    .line 68
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/zzk;->zzd(J)J

    move-result-wide v25

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    iget v6, v5, Lcom/google/android/gms/internal/ads/zzbf;->zzb:I

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzbf;->zzc:I

    move-object/from16 v17, v12

    move/from16 v27, v6

    move/from16 v28, v5

    invoke-direct/range {v17 .. v28}, Lcom/google/android/gms/internal/ads/zzbv;-><init>(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzaz;Ljava/lang/Object;IJJII)V

    .line 69
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbw;->zzg()I

    move-result v5

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    .line 70
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v6

    if-nez v6, :cond_14

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    .line 71
    iget-object v10, v6, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzbf;->zza:Ljava/lang/Object;

    .line 72
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzj:Lcom/google/android/gms/internal/ads/zzca;

    invoke-virtual {v6, v10, v11}, Lcom/google/android/gms/internal/ads/zzcd;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzca;)Lcom/google/android/gms/internal/ads/zzca;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    .line 73
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/ads/zzcd;->zza(Ljava/lang/Object;)I

    move-result v6

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    .line 74
    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzi;->zza:Lcom/google/android/gms/internal/ads/zzcc;

    const-wide/16 v14, 0x0

    .line 75
    invoke-virtual {v11, v5, v13, v14, v15}, Lcom/google/android/gms/internal/ads/zzcd;->zze(ILcom/google/android/gms/internal/ads/zzcc;J)Lcom/google/android/gms/internal/ads/zzcc;

    move-result-object v11

    .line 76
    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzcc;->zzc:Ljava/lang/Object;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzi;->zza:Lcom/google/android/gms/internal/ads/zzcc;

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzcc;->zzd:Lcom/google/android/gms/internal/ads/zzaz;

    move/from16 v32, v6

    move-object/from16 v31, v10

    move-object/from16 v28, v11

    move-object/from16 v30, v13

    goto :goto_a

    :cond_14
    const/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, -0x1

    .line 77
    :goto_a
    invoke-static/range {p7 .. p8}, Lcom/google/android/gms/internal/ads/zzk;->zzd(J)J

    move-result-wide v33

    new-instance v6, Lcom/google/android/gms/internal/ads/zzbv;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    .line 78
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzbf;->zzb()Z

    move-result v10

    if-eqz v10, :cond_15

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    .line 79
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzhf;->zzL(Lcom/google/android/gms/internal/ads/zzif;)J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/zzk;->zzd(J)J

    move-result-wide v10

    move-wide/from16 v35, v10

    goto :goto_b

    :cond_15
    move-wide/from16 v35, v33

    :goto_b
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    .line 80
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    iget v11, v10, Lcom/google/android/gms/internal/ads/zzbf;->zzb:I

    iget v10, v10, Lcom/google/android/gms/internal/ads/zzbf;->zzc:I

    move-object/from16 v27, v6

    move/from16 v29, v5

    move/from16 v37, v11

    move/from16 v38, v10

    invoke-direct/range {v27 .. v38}, Lcom/google/android/gms/internal/ads/zzbv;-><init>(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzaz;Ljava/lang/Object;IJJII)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzh:Lcom/google/android/gms/internal/ads/zzeo;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzgt;

    invoke-direct {v10, v2, v12, v6}, Lcom/google/android/gms/internal/ads/zzgt;-><init>(ILcom/google/android/gms/internal/ads/zzbv;Lcom/google/android/gms/internal/ads/zzbv;)V

    .line 81
    invoke-virtual {v5, v7, v10}, Lcom/google/android/gms/internal/ads/zzeo;->zzd(ILcom/google/android/gms/internal/ads/zzel;)V

    goto :goto_c

    :cond_16
    move/from16 v16, v6

    :goto_c
    if-eqz v16, :cond_17

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzh:Lcom/google/android/gms/internal/ads/zzeo;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzgz;

    invoke-direct {v5, v9, v4}, Lcom/google/android/gms/internal/ads/zzgz;-><init>(Lcom/google/android/gms/internal/ads/zzaz;I)V

    const/4 v4, 0x1

    .line 82
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzeo;->zzd(ILcom/google/android/gms/internal/ads/zzel;)V

    .line 83
    :cond_17
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzif;->zzf:Lcom/google/android/gms/internal/ads/zzgg;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzif;->zzf:Lcom/google/android/gms/internal/ads/zzgg;

    const/16 v5, 0xa

    if-eq v2, v4, :cond_18

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzh:Lcom/google/android/gms/internal/ads/zzeo;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzhc;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzhc;-><init>(Lcom/google/android/gms/internal/ads/zzif;)V

    .line 84
    invoke-virtual {v2, v5, v4}, Lcom/google/android/gms/internal/ads/zzeo;->zzd(ILcom/google/android/gms/internal/ads/zzel;)V

    .line 85
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzif;->zzf:Lcom/google/android/gms/internal/ads/zzgg;

    if-eqz v2, :cond_18

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzh:Lcom/google/android/gms/internal/ads/zzeo;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzhd;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzhd;-><init>(Lcom/google/android/gms/internal/ads/zzif;)V

    .line 86
    invoke-virtual {v2, v5, v4}, Lcom/google/android/gms/internal/ads/zzeo;->zzd(ILcom/google/android/gms/internal/ads/zzel;)V

    .line 87
    :cond_18
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzif;->zzi:Lcom/google/android/gms/internal/ads/zzsw;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzif;->zzi:Lcom/google/android/gms/internal/ads/zzsw;

    if-eq v2, v4, :cond_19

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzhf;->zze:Lcom/google/android/gms/internal/ads/zzsv;

    .line 88
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzsw;->zzd:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzsv;->zzj(Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzci;

    .line 89
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzif;->zzi:Lcom/google/android/gms/internal/ads/zzsw;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzsw;->zze:[Lcom/google/android/gms/internal/ads/zzsb;

    const/4 v6, 0x0

    invoke-direct {v2, v4, v6}, Lcom/google/android/gms/internal/ads/zzci;-><init>([Lcom/google/android/gms/internal/ads/zzsb;[B)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzh:Lcom/google/android/gms/internal/ads/zzeo;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzgs;

    invoke-direct {v6, v1, v2}, Lcom/google/android/gms/internal/ads/zzgs;-><init>(Lcom/google/android/gms/internal/ads/zzif;Lcom/google/android/gms/internal/ads/zzci;)V

    const/4 v2, 0x2

    .line 90
    invoke-virtual {v4, v2, v6}, Lcom/google/android/gms/internal/ads/zzeo;->zzd(ILcom/google/android/gms/internal/ads/zzel;)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzh:Lcom/google/android/gms/internal/ads/zzeo;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzgj;

    invoke-direct {v6, v1}, Lcom/google/android/gms/internal/ads/zzgj;-><init>(Lcom/google/android/gms/internal/ads/zzif;)V

    .line 91
    invoke-virtual {v4, v2, v6}, Lcom/google/android/gms/internal/ads/zzeo;->zzd(ILcom/google/android/gms/internal/ads/zzel;)V

    :cond_19
    if-eqz v8, :cond_1a

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzx:Lcom/google/android/gms/internal/ads/zzbe;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzh:Lcom/google/android/gms/internal/ads/zzeo;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzha;

    invoke-direct {v6, v2}, Lcom/google/android/gms/internal/ads/zzha;-><init>(Lcom/google/android/gms/internal/ads/zzbe;)V

    const/16 v2, 0xe

    .line 92
    invoke-virtual {v4, v2, v6}, Lcom/google/android/gms/internal/ads/zzeo;->zzd(ILcom/google/android/gms/internal/ads/zzel;)V

    .line 93
    :cond_1a
    iget-boolean v2, v3, Lcom/google/android/gms/internal/ads/zzif;->zzg:Z

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzif;->zzg:Z

    if-eq v2, v4, :cond_1b

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzh:Lcom/google/android/gms/internal/ads/zzeo;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzgk;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzgk;-><init>(Lcom/google/android/gms/internal/ads/zzif;)V

    const/4 v6, 0x3

    .line 94
    invoke-virtual {v2, v6, v4}, Lcom/google/android/gms/internal/ads/zzeo;->zzd(ILcom/google/android/gms/internal/ads/zzel;)V

    .line 95
    :cond_1b
    iget v2, v3, Lcom/google/android/gms/internal/ads/zzif;->zze:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzif;->zze:I

    if-ne v2, v4, :cond_1c

    iget-boolean v2, v3, Lcom/google/android/gms/internal/ads/zzif;->zzl:Z

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzif;->zzl:Z

    if-eq v2, v4, :cond_1d

    :cond_1c
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzh:Lcom/google/android/gms/internal/ads/zzeo;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzgl;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzgl;-><init>(Lcom/google/android/gms/internal/ads/zzif;)V

    const/4 v6, -0x1

    .line 96
    invoke-virtual {v2, v6, v4}, Lcom/google/android/gms/internal/ads/zzeo;->zzd(ILcom/google/android/gms/internal/ads/zzel;)V

    .line 97
    :cond_1d
    iget v2, v3, Lcom/google/android/gms/internal/ads/zzif;->zze:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzif;->zze:I

    const/4 v6, 0x4

    if-eq v2, v4, :cond_1e

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzh:Lcom/google/android/gms/internal/ads/zzeo;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzgm;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzgm;-><init>(Lcom/google/android/gms/internal/ads/zzif;)V

    .line 98
    invoke-virtual {v2, v6, v4}, Lcom/google/android/gms/internal/ads/zzeo;->zzd(ILcom/google/android/gms/internal/ads/zzel;)V

    .line 99
    :cond_1e
    iget-boolean v2, v3, Lcom/google/android/gms/internal/ads/zzif;->zzl:Z

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzif;->zzl:Z

    const/4 v8, 0x5

    if-eq v2, v4, :cond_1f

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzh:Lcom/google/android/gms/internal/ads/zzeo;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzgq;

    move/from16 v9, p3

    invoke-direct {v4, v1, v9}, Lcom/google/android/gms/internal/ads/zzgq;-><init>(Lcom/google/android/gms/internal/ads/zzif;I)V

    .line 100
    invoke-virtual {v2, v8, v4}, Lcom/google/android/gms/internal/ads/zzeo;->zzd(ILcom/google/android/gms/internal/ads/zzel;)V

    .line 101
    :cond_1f
    iget v2, v3, Lcom/google/android/gms/internal/ads/zzif;->zzm:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzif;->zzm:I

    const/4 v9, 0x6

    if-eq v2, v4, :cond_20

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzh:Lcom/google/android/gms/internal/ads/zzeo;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzgn;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzgn;-><init>(Lcom/google/android/gms/internal/ads/zzif;)V

    .line 102
    invoke-virtual {v2, v9, v4}, Lcom/google/android/gms/internal/ads/zzeo;->zzd(ILcom/google/android/gms/internal/ads/zzel;)V

    .line 103
    :cond_20
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzhf;->zzQ(Lcom/google/android/gms/internal/ads/zzif;)Z

    move-result v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzhf;->zzQ(Lcom/google/android/gms/internal/ads/zzif;)Z

    move-result v4

    const/4 v10, 0x7

    if-eq v2, v4, :cond_21

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzh:Lcom/google/android/gms/internal/ads/zzeo;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzgo;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzgo;-><init>(Lcom/google/android/gms/internal/ads/zzif;)V

    .line 104
    invoke-virtual {v2, v10, v4}, Lcom/google/android/gms/internal/ads/zzeo;->zzd(ILcom/google/android/gms/internal/ads/zzel;)V

    .line 105
    :cond_21
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzif;->zzn:Lcom/google/android/gms/internal/ads/zzbn;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzif;->zzn:Lcom/google/android/gms/internal/ads/zzbn;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzbn;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzh:Lcom/google/android/gms/internal/ads/zzeo;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzgp;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzgp;-><init>(Lcom/google/android/gms/internal/ads/zzif;)V

    const/16 v11, 0xc

    .line 106
    invoke-virtual {v2, v11, v4}, Lcom/google/android/gms/internal/ads/zzeo;->zzd(ILcom/google/android/gms/internal/ads/zzel;)V

    :cond_22
    if-eqz p4, :cond_23

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzh:Lcom/google/android/gms/internal/ads/zzeo;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgv;->zza:Lcom/google/android/gms/internal/ads/zzgv;

    const/4 v11, -0x1

    .line 107
    invoke-virtual {v2, v11, v4}, Lcom/google/android/gms/internal/ads/zzeo;->zzd(ILcom/google/android/gms/internal/ads/zzel;)V

    :cond_23
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzw:Lcom/google/android/gms/internal/ads/zzbr;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzc:Lcom/google/android/gms/internal/ads/zzbr;

    new-instance v11, Lcom/google/android/gms/internal/ads/zzbp;

    .line 108
    invoke-direct {v11}, Lcom/google/android/gms/internal/ads/zzbp;-><init>()V

    .line 109
    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/ads/zzbp;->zzb(Lcom/google/android/gms/internal/ads/zzbr;)Lcom/google/android/gms/internal/ads/zzbp;

    .line 110
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbw;->zzp()Z

    move-result v4

    const/4 v12, 0x1

    xor-int/2addr v4, v12

    const/4 v12, 0x3

    invoke-virtual {v11, v12, v4}, Lcom/google/android/gms/internal/ads/zzbp;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbp;

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzi;->zzd()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 112
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbw;->zzp()Z

    move-result v4

    if-nez v4, :cond_24

    const/4 v4, 0x1

    goto :goto_d

    :cond_24
    const/4 v4, 0x0

    :goto_d
    invoke-virtual {v11, v6, v4}, Lcom/google/android/gms/internal/ads/zzbp;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbp;

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzi;->zzb()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 114
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbw;->zzp()Z

    move-result v4

    if-nez v4, :cond_25

    const/4 v4, 0x1

    goto :goto_e

    :cond_25
    const/4 v4, 0x0

    :goto_e
    invoke-virtual {v11, v8, v4}, Lcom/google/android/gms/internal/ads/zzbp;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbp;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    .line 115
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    .line 116
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v4

    if-nez v4, :cond_27

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzi;->zzb()Z

    move-result v4

    if-nez v4, :cond_26

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzi;->zzc()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzi;->zzd()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 120
    :cond_26
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbw;->zzp()Z

    move-result v4

    if-nez v4, :cond_27

    const/4 v4, 0x1

    goto :goto_f

    :cond_27
    const/4 v4, 0x0

    .line 121
    :goto_f
    invoke-virtual {v11, v9, v4}, Lcom/google/android/gms/internal/ads/zzbp;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbp;

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzi;->zza()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 123
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbw;->zzp()Z

    move-result v4

    if-nez v4, :cond_28

    const/4 v4, 0x1

    goto :goto_10

    :cond_28
    const/4 v4, 0x0

    :goto_10
    invoke-virtual {v11, v10, v4}, Lcom/google/android/gms/internal/ads/zzbp;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbp;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    .line 124
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    .line 125
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v4

    if-nez v4, :cond_2a

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzi;->zza()Z

    move-result v4

    if-nez v4, :cond_29

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzi;->zzc()Z

    move-result v4

    if-eqz v4, :cond_2a

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    .line 128
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    .line 129
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v6

    if-nez v6, :cond_2a

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbw;->zzg()I

    move-result v6

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzi;->zza:Lcom/google/android/gms/internal/ads/zzcc;

    const-wide/16 v9, 0x0

    .line 130
    invoke-virtual {v4, v6, v8, v9, v10}, Lcom/google/android/gms/internal/ads/zzcd;->zze(ILcom/google/android/gms/internal/ads/zzcc;J)Lcom/google/android/gms/internal/ads/zzcc;

    move-result-object v4

    .line 131
    iget-boolean v4, v4, Lcom/google/android/gms/internal/ads/zzcc;->zzi:Z

    if-eqz v4, :cond_2a

    .line 132
    :cond_29
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbw;->zzp()Z

    move-result v4

    if-nez v4, :cond_2a

    const/4 v4, 0x1

    goto :goto_11

    :cond_2a
    const/4 v4, 0x0

    :goto_11
    const/16 v6, 0x8

    .line 133
    invoke-virtual {v11, v6, v4}, Lcom/google/android/gms/internal/ads/zzbp;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbp;

    const/16 v4, 0x9

    .line 134
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbw;->zzp()Z

    move-result v6

    const/4 v8, 0x1

    xor-int/2addr v6, v8

    invoke-virtual {v11, v4, v6}, Lcom/google/android/gms/internal/ads/zzbp;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbp;

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzi;->zzd()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 136
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbw;->zzp()Z

    move-result v4

    if-nez v4, :cond_2b

    const/4 v4, 0x1

    goto :goto_12

    :cond_2b
    const/4 v4, 0x0

    :goto_12
    invoke-virtual {v11, v5, v4}, Lcom/google/android/gms/internal/ads/zzbp;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbp;

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzi;->zzd()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 138
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbw;->zzp()Z

    move-result v4

    if-nez v4, :cond_2c

    const/4 v5, 0x1

    goto :goto_13

    :cond_2c
    const/4 v5, 0x0

    :goto_13
    invoke-virtual {v11, v7, v5}, Lcom/google/android/gms/internal/ads/zzbp;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbp;

    .line 139
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzbp;->zze()Lcom/google/android/gms/internal/ads/zzbr;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzw:Lcom/google/android/gms/internal/ads/zzbr;

    .line 140
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzbr;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzh:Lcom/google/android/gms/internal/ads/zzeo;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzhb;

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/ads/zzhb;-><init>(Lcom/google/android/gms/internal/ads/zzhf;)V

    const/16 v5, 0xd

    .line 141
    invoke-virtual {v2, v5, v4}, Lcom/google/android/gms/internal/ads/zzeo;->zzd(ILcom/google/android/gms/internal/ads/zzel;)V

    :cond_2d
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzh:Lcom/google/android/gms/internal/ads/zzeo;

    .line 142
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeo;->zzc()V

    .line 143
    iget-boolean v2, v3, Lcom/google/android/gms/internal/ads/zzif;->zzo:Z

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzif;->zzo:Z

    if-eq v2, v4, :cond_2e

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzi:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 144
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzgh;

    .line 145
    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzif;->zzo:Z

    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/ads/zzgh;->zzq(Z)V

    goto :goto_14

    .line 146
    :cond_2e
    iget-boolean v2, v3, Lcom/google/android/gms/internal/ads/zzif;->zzp:Z

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzif;->zzp:Z

    if-eq v2, v3, :cond_2f

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzhf;->zzi:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 147
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzgh;

    .line 148
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzif;->zzp:Z

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzgh;->zzr(Z)V

    goto :goto_15

    :cond_2f
    return-void
.end method

.method private static zzQ(Lcom/google/android/gms/internal/ads/zzif;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zze:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzl:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzm:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final synthetic zzA(Lcom/google/android/gms/internal/ads/zzbs;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzw:Lcom/google/android/gms/internal/ads/zzbr;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzbs;->zza(Lcom/google/android/gms/internal/ads/zzbr;)V

    return-void
.end method

.method public final zzC()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzif;->zze:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzif;->zze(Lcom/google/android/gms/internal/ads/zzgg;)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v1

    if-eq v2, v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    .line 4
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzif;->zzf(I)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzr:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzr:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzg:Lcom/google/android/gms/internal/ads/zzhp;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhp;->zzk()V

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x5

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, -0x1

    move-object v3, p0

    .line 6
    invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/internal/ads/zzhf;->zzP(Lcom/google/android/gms/internal/ads/zzif;IIZZIJI)V

    return-void
.end method

.method public final zzD()V
    .locals 8

    .line 1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfn;->zze:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzt;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x24

    invoke-static {v3, v7, v4, v5}, La6/h;->g(IIII)I

    move-result v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Release "

    const-string v4, " [ExoPlayerLib/2.15.1] ["

    invoke-static {v6, v3, v0, v4, v1}, Landroid/support/v4/media/b;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "] ["

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExoPlayerImpl"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzg:Lcom/google/android/gms/internal/ads/zzhp;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhp;->zzp()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzh:Lcom/google/android/gms/internal/ads/zzeo;

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgu;->zza:Lcom/google/android/gms/internal/ads/zzgu;

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeo;->zzd(ILcom/google/android/gms/internal/ads/zzel;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeo;->zzc()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzh:Lcom/google/android/gms/internal/ads/zzeo;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeo;->zze()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzf:Lcom/google/android/gms/internal/ads/zzei;

    const/4 v1, 0x0

    .line 7
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzei;->zzd(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzn:Lcom/google/android/gms/internal/ads/zzlb;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzp:Lcom/google/android/gms/internal/ads/zzte;

    .line 8
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzte;->zzf(Lcom/google/android/gms/internal/ads/zztd;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzif;->zzf(I)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    .line 10
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzif;->zza(Lcom/google/android/gms/internal/ads/zzpz;)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    .line 11
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzif;->zzs:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzif;->zzq:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    const-wide/16 v1, 0x0

    .line 12
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzif;->zzr:J

    return-void
.end method

.method public final zzE(Ljava/util/List;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzqb;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhf;->zzJ()I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhf;->zzk()J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzr:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzr:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzk:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzk:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    :goto_0
    if-ltz v3, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzk:Ljava/util/List;

    .line 5
    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzD:Lcom/google/android/gms/internal/ads/zzrq;

    .line 6
    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/internal/ads/zzrq;->zzh(II)Lcom/google/android/gms/internal/ads/zzrq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzD:Lcom/google/android/gms/internal/ads/zzrq;

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 8
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzic;

    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzqb;

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzl:Z

    invoke-direct {v3, v6, v7}, Lcom/google/android/gms/internal/ads/zzic;-><init>(Lcom/google/android/gms/internal/ads/zzqb;Z)V

    .line 10
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzk:Ljava/util/List;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzhe;

    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzic;->zzb:Ljava/lang/Object;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzic;->zza:Lcom/google/android/gms/internal/ads/zzpv;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzpv;->zzz()Lcom/google/android/gms/internal/ads/zzcd;

    move-result-object v3

    invoke-direct {v7, v8, v3}, Lcom/google/android/gms/internal/ads/zzhe;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcd;)V

    .line 11
    invoke-interface {v6, v0, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzD:Lcom/google/android/gms/internal/ads/zzrq;

    .line 12
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 13
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzrq;->zzg(II)Lcom/google/android/gms/internal/ads/zzrq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzD:Lcom/google/android/gms/internal/ads/zzrq;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzij;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzk:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzD:Lcom/google/android/gms/internal/ads/zzrq;

    const/4 v6, 0x0

    .line 14
    invoke-direct {v0, v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzij;-><init>(Ljava/util/Collection;Lcom/google/android/gms/internal/ads/zzrq;[B)V

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, -0x1

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzij;->zzc()I

    move-result v3

    if-ltz v3, :cond_3

    goto :goto_2

    .line 16
    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzac;

    .line 17
    invoke-direct {v1, v0, v7, v5, v6}, Lcom/google/android/gms/internal/ads/zzac;-><init>(Lcom/google/android/gms/internal/ads/zzcd;IJ)V

    throw v1

    .line 18
    :cond_4
    :goto_2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzg(Z)I

    move-result v8

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    .line 19
    invoke-direct {p0, v0, v8, v5, v6}, Lcom/google/android/gms/internal/ads/zzhf;->zzN(Lcom/google/android/gms/internal/ads/zzcd;IJ)Landroid/util/Pair;

    move-result-object v9

    .line 20
    invoke-direct {p0, v3, v0, v9}, Lcom/google/android/gms/internal/ads/zzhf;->zzO(Lcom/google/android/gms/internal/ads/zzif;Lcom/google/android/gms/internal/ads/zzcd;Landroid/util/Pair;)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v3

    iget v9, v3, Lcom/google/android/gms/internal/ads/zzif;->zze:I

    const/4 v10, 0x4

    if-eq v8, v7, :cond_7

    if-eq v9, v1, :cond_7

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzij;->zzc()I

    move-result v0

    if-lt v8, v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v9, 0x2

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v9, 0x4

    .line 22
    :cond_7
    :goto_4
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzif;->zzf(I)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v9

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzg:Lcom/google/android/gms/internal/ads/zzhp;

    .line 23
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzk;->zzc(J)J

    move-result-wide v6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzD:Lcom/google/android/gms/internal/ads/zzrq;

    move v5, v8

    move-object v8, v0

    .line 24
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzhp;->zzq(Ljava/util/List;IJLcom/google/android/gms/internal/ads/zzrq;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    .line 25
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbf;->zza:Ljava/lang/Object;

    iget-object v3, v9, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzbf;->zza:Ljava/lang/Object;

    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v5, 0x1

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    :goto_5
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x4

    .line 28
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/ads/zzhf;->zzK(Lcom/google/android/gms/internal/ads/zzif;)J

    move-result-wide v7

    const/4 v10, -0x1

    move-object v0, p0

    move-object v1, v9

    move v9, v10

    .line 29
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzhf;->zzP(Lcom/google/android/gms/internal/ads/zzif;IIZZIJI)V

    return-void
.end method

.method public final zzF(ZII)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzif;->zzl:Z

    if-ne v1, p1, :cond_0

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzif;->zzm:I

    if-ne v1, p2, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzr:I

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzif;->zzd(ZI)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzg:Lcom/google/android/gms/internal/ads/zzhp;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhp;->zzn(ZI)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x5

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v11, -0x1

    move-object v2, p0

    move v5, p3

    .line 4
    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/internal/ads/zzhf;->zzP(Lcom/google/android/gms/internal/ads/zzif;IIZZIJI)V

    return-void
.end method

.method public final zzG(ZLcom/google/android/gms/internal/ads/zzgg;)V
    .locals 11

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzif;->zza(Lcom/google/android/gms/internal/ads/zzpz;)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object p1

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzif;->zzs:J

    iput-wide v0, p1, Lcom/google/android/gms/internal/ads/zzif;->zzq:J

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/google/android/gms/internal/ads/zzif;->zzr:J

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzif;->zzf(I)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzif;->zze(Lcom/google/android/gms/internal/ads/zzgg;)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object p1

    :cond_0
    move-object v2, p1

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzr:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzr:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzg:Lcom/google/android/gms/internal/ads/zzhp;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhp;->zzo()V

    iget-object p1, v2, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x4

    .line 6
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzhf;->zzK(Lcom/google/android/gms/internal/ads/zzif;)J

    move-result-wide v8

    const/4 v10, -0x1

    move-object v1, p0

    .line 7
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzhf;->zzP(Lcom/google/android/gms/internal/ads/zzif;IIZZIJI)V

    return-void
.end method

.method public final zzH()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zzp:Z

    return v0
.end method

.method public final zzI()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zzl:Z

    return v0
.end method

.method public final zze()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhf;->zzp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbf;->zzb:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final zzf()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhf;->zzp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbf;->zzc:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final zzg()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhf;->zzJ()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public final zzh()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbf;->zza:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcd;->zza(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zzi()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzj()J
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhf;->zzp()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbf;->zza:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzj:Lcom/google/android/gms/internal/ads/zzca;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzcd;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzca;)Lcom/google/android/gms/internal/ads/zzca;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    .line 3
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzif;->zzc:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v3

    if-nez v7, :cond_0

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    .line 5
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbw;->zzg()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzi;->zza:Lcom/google/android/gms/internal/ads/zzcc;

    .line 6
    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzcd;->zze(ILcom/google/android/gms/internal/ads/zzcc;J)Lcom/google/android/gms/internal/ads/zzcc;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzcc;->zzm:J

    .line 7
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzk;->zzd(J)J

    move-result-wide v0

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzk;->zzd(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    .line 9
    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzif;->zzc:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzk;->zzd(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhf;->zzk()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzk()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhf;->zzK(Lcom/google/android/gms/internal/ads/zzif;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzk;->zzd(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzl()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zzr:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzk;->zzd(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzm()Lcom/google/android/gms/internal/ads/zzcd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    return-object v0
.end method

.method public final zzn(IJ)V
    .locals 13

    move-object v10, p0

    move v0, p1

    move-wide v1, p2

    .line 1
    iget-object v3, v10, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    if-ltz v0, :cond_3

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcd;->zzc()I

    move-result v4

    if-ge v0, v4, :cond_3

    :cond_0
    iget v4, v10, Lcom/google/android/gms/internal/ads/zzhf;->zzr:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v10, Lcom/google/android/gms/internal/ads/zzhf;->zzr:I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhf;->zzp()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v10, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    .line 4
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzif;->zze:I

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    .line 5
    :goto_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbw;->zzg()I

    move-result v9

    iget-object v4, v10, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    .line 6
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzif;->zzf(I)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v4

    .line 7
    invoke-direct {p0, v3, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzhf;->zzN(Lcom/google/android/gms/internal/ads/zzcd;IJ)Landroid/util/Pair;

    move-result-object v5

    .line 8
    invoke-direct {p0, v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzhf;->zzO(Lcom/google/android/gms/internal/ads/zzif;Lcom/google/android/gms/internal/ads/zzcd;Landroid/util/Pair;)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v4

    iget-object v5, v10, Lcom/google/android/gms/internal/ads/zzhf;->zzg:Lcom/google/android/gms/internal/ads/zzhp;

    .line 9
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/zzk;->zzc(J)J

    move-result-wide v1

    invoke-virtual {v5, v3, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzhp;->zzl(Lcom/google/android/gms/internal/ads/zzcd;IJ)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 10
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzhf;->zzK(Lcom/google/android/gms/internal/ads/zzif;)J

    move-result-wide v11

    move-object v0, p0

    move-object v1, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-wide v7, v11

    .line 11
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzhf;->zzP(Lcom/google/android/gms/internal/ads/zzif;IIZZIJI)V

    return-void

    :cond_2
    const-string v0, "ExoPlayerImpl"

    const-string v1, "seekTo ignored because an ad is playing"

    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhn;

    iget-object v1, v10, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhn;-><init>(Lcom/google/android/gms/internal/ads/zzif;)V

    .line 13
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzhn;->zza(I)V

    iget-object v1, v10, Lcom/google/android/gms/internal/ads/zzhf;->zzC:Lcom/google/android/gms/internal/ads/zzgx;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgx;->zza:Lcom/google/android/gms/internal/ads/zzhf;

    .line 14
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzhf;->zzz(Lcom/google/android/gms/internal/ads/zzhn;)V

    return-void

    .line 15
    :cond_3
    new-instance v4, Lcom/google/android/gms/internal/ads/zzac;

    .line 16
    invoke-direct {v4, v3, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzac;-><init>(Lcom/google/android/gms/internal/ads/zzcd;IJ)V

    throw v4
.end method

.method public final zzo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzp()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbf;->zzb()Z

    move-result v0

    return v0
.end method

.method public final zzq()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zze:I

    return v0
.end method

.method public final zzr()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzd:[Lcom/google/android/gms/internal/ads/zzil;

    array-length v0, v0

    const/4 v0, 0x2

    return v0
.end method

.method public final zzs()J
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhf;->zzp()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzif;->zzk:Lcom/google/android/gms/internal/ads/zzpz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbf;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    .line 3
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zzq:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzk;->zzd(J)J

    move-result-wide v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhf;->zzt()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzB:J

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    .line 6
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzif;->zzk:Lcom/google/android/gms/internal/ads/zzpz;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzbf;->zzd:J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzbf;->zzd:J

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v3

    if-eqz v7, :cond_3

    .line 7
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    .line 8
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbw;->zzg()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzi;->zza:Lcom/google/android/gms/internal/ads/zzcc;

    .line 9
    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzcd;->zze(ILcom/google/android/gms/internal/ads/zzcc;J)Lcom/google/android/gms/internal/ads/zzcc;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzcc;->zzn:J

    .line 10
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzk;->zzd(J)J

    move-result-wide v0

    goto :goto_2

    .line 11
    :cond_3
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zzq:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    .line 12
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzif;->zzk:Lcom/google/android/gms/internal/ads/zzpz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbf;->zzb()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    .line 13
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zzk:Lcom/google/android/gms/internal/ads/zzpz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbf;->zza:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzj:Lcom/google/android/gms/internal/ads/zzca;

    .line 14
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzcd;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzca;)Lcom/google/android/gms/internal/ads/zzca;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    .line 15
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzif;->zzk:Lcom/google/android/gms/internal/ads/zzpz;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzbf;->zzb:I

    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzca;->zzg(I)J

    goto :goto_1

    :cond_4
    move-wide v5, v0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    .line 17
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zzk:Lcom/google/android/gms/internal/ads/zzpz;

    .line 18
    invoke-direct {p0, v1, v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzhf;->zzM(Lcom/google/android/gms/internal/ads/zzcd;Lcom/google/android/gms/internal/ads/zzpz;J)J

    .line 19
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzk;->zzd(J)J

    move-result-wide v0

    :goto_2
    return-wide v0
.end method

.method public final zzt()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhf;->zzp()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 4
    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbw;->zzg()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzi;->zza:Lcom/google/android/gms/internal/ads/zzcc;

    const-wide/16 v3, 0x0

    .line 5
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcd;->zze(ILcom/google/android/gms/internal/ads/zzcc;J)Lcom/google/android/gms/internal/ads/zzcc;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzcc;->zzn:J

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzk;->zzd(J)J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    .line 7
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    .line 8
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbf;->zza:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzj:Lcom/google/android/gms/internal/ads/zzca;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzcd;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzca;)Lcom/google/android/gms/internal/ads/zzca;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzj:Lcom/google/android/gms/internal/ads/zzca;

    .line 9
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzbf;->zzb:I

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzbf;->zzc:I

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzca;->zzf(II)J

    move-result-wide v0

    .line 10
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzk;->zzd(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzu()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzo:Landroid/os/Looper;

    return-object v0
.end method

.method public final zzv(Lcom/google/android/gms/internal/ads/zzih;)Lcom/google/android/gms/internal/ads/zzii;
    .locals 8

    .line 1
    new-instance v7, Lcom/google/android/gms/internal/ads/zzii;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzg:Lcom/google/android/gms/internal/ads/zzhp;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbw;->zzg()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzq:Lcom/google/android/gms/internal/ads/zzdz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzg:Lcom/google/android/gms/internal/ads/zzhp;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhp;->zzb()Landroid/os/Looper;

    move-result-object v6

    move-object v0, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzii;-><init>(Lcom/google/android/gms/internal/ads/zzig;Lcom/google/android/gms/internal/ads/zzih;Lcom/google/android/gms/internal/ads/zzcd;ILcom/google/android/gms/internal/ads/zzdz;Landroid/os/Looper;)V

    return-object v7
.end method

.method public final zzw(Lcom/google/android/gms/internal/ads/zzgh;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzi:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzx(Lcom/google/android/gms/internal/ads/zzbs;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzh:Lcom/google/android/gms/internal/ads/zzeo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeo;->zzb(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic zzy(Lcom/google/android/gms/internal/ads/zzhn;)V
    .locals 12

    .line 1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzr:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzhn;->zzb:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzr:I

    .line 2
    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzhn;->zzc:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 3
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzhn;->zzd:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzs:I

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzt:Z

    .line 4
    :cond_0
    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzhn;->zze:Z

    if-eqz v2, :cond_1

    .line 5
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzhn;->zzf:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzu:I

    :cond_1
    if-nez v1, :cond_b

    .line 6
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzhn;->zza:Lcom/google/android/gms/internal/ads/zzif;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    .line 7
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzA:I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzB:J

    .line 8
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_4

    .line 9
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzij;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzij;->zzw()Ljava/util/List;

    move-result-object v2

    .line 10
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzk:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdy;->zzf(Z)V

    const/4 v5, 0x0

    .line 11
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzk:Ljava/util/List;

    .line 12
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzhe;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzcd;

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzhe;->zzc(Lcom/google/android/gms/internal/ads/zzhe;Lcom/google/android/gms/internal/ads/zzcd;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzt:Z

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_a

    .line 13
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzhn;->zza:Lcom/google/android/gms/internal/ads/zzif;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    .line 14
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzbf;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzhn;->zza:Lcom/google/android/gms/internal/ads/zzif;

    iget-wide v7, v2, Lcom/google/android/gms/internal/ads/zzif;->zzd:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzz:Lcom/google/android/gms/internal/ads/zzif;

    iget-wide v10, v2, Lcom/google/android/gms/internal/ads/zzif;->zzs:J

    cmp-long v2, v7, v10

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :cond_6
    :goto_2
    if-eqz v3, :cond_9

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzhn;->zza:Lcom/google/android/gms/internal/ads/zzif;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbf;->zzb()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_3

    .line 16
    :cond_7
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzhn;->zza:Lcom/google/android/gms/internal/ads/zzif;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    iget-wide v6, v2, Lcom/google/android/gms/internal/ads/zzif;->zzd:J

    invoke-direct {p0, v1, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzhf;->zzM(Lcom/google/android/gms/internal/ads/zzcd;Lcom/google/android/gms/internal/ads/zzpz;J)J

    goto :goto_4

    .line 17
    :cond_8
    :goto_3
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzhn;->zza:Lcom/google/android/gms/internal/ads/zzif;

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzif;->zzd:J

    :goto_4
    move v5, v3

    move-wide v7, v6

    goto :goto_5

    :cond_9
    move-wide v7, v5

    move v5, v3

    goto :goto_5

    :cond_a
    move-wide v7, v5

    const/4 v5, 0x0

    :goto_5
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzt:Z

    .line 18
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzhn;->zza:Lcom/google/android/gms/internal/ads/zzif;

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzu:I

    const/4 v4, 0x0

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzs:I

    const/4 v9, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzhf;->zzP(Lcom/google/android/gms/internal/ads/zzif;IIZZIJI)V

    :cond_b
    return-void
.end method

.method public final synthetic zzz(Lcom/google/android/gms/internal/ads/zzhn;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzf:Lcom/google/android/gms/internal/ads/zzei;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgy;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzgy;-><init>(Lcom/google/android/gms/internal/ads/zzhf;Lcom/google/android/gms/internal/ads/zzhn;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzei;->zzg(Ljava/lang/Runnable;)Z

    return-void
.end method
