.class public final Lcom/google/firebase/perf/internal/zzv;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-perf@@19.0.2"


# instance fields
.field private final zzbz:Lcom/google/firebase/perf/internal/RemoteConfigManager;

.field private final zzee:J

.field private zzef:Z

.field private zzeg:Lcom/google/firebase/perf/internal/zzw;

.field private zzeh:Lcom/google/firebase/perf/internal/zzw;


# direct methods
.method private constructor <init>(JJLcom/google/android/gms/internal/firebase-perf/zzan;JLcom/google/firebase/perf/internal/RemoteConfigManager;)V
    .locals 12

    move-object v0, p0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, v0, Lcom/google/firebase/perf/internal/zzv;->zzef:Z

    const/4 v1, 0x0

    .line 9
    iput-object v1, v0, Lcom/google/firebase/perf/internal/zzv;->zzeg:Lcom/google/firebase/perf/internal/zzw;

    .line 10
    iput-object v1, v0, Lcom/google/firebase/perf/internal/zzv;->zzeh:Lcom/google/firebase/perf/internal/zzw;

    move-wide/from16 v1, p6

    .line 11
    iput-wide v1, v0, Lcom/google/firebase/perf/internal/zzv;->zzee:J

    move-object/from16 v10, p8

    .line 12
    iput-object v10, v0, Lcom/google/firebase/perf/internal/zzv;->zzbz:Lcom/google/firebase/perf/internal/RemoteConfigManager;

    .line 13
    new-instance v11, Lcom/google/firebase/perf/internal/zzw;

    sget-object v8, Lcom/google/firebase/perf/internal/zzu;->zzdx:Lcom/google/firebase/perf/internal/zzu;

    iget-boolean v9, v0, Lcom/google/firebase/perf/internal/zzv;->zzef:Z

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x1f4

    move-object v1, v11

    move-object/from16 v6, p5

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v9}, Lcom/google/firebase/perf/internal/zzw;-><init>(JJLcom/google/android/gms/internal/firebase-perf/zzan;Lcom/google/firebase/perf/internal/RemoteConfigManager;Lcom/google/firebase/perf/internal/zzu;Z)V

    iput-object v11, v0, Lcom/google/firebase/perf/internal/zzv;->zzeg:Lcom/google/firebase/perf/internal/zzw;

    .line 14
    new-instance v11, Lcom/google/firebase/perf/internal/zzw;

    sget-object v8, Lcom/google/firebase/perf/internal/zzu;->zzdw:Lcom/google/firebase/perf/internal/zzu;

    iget-boolean v9, v0, Lcom/google/firebase/perf/internal/zzv;->zzef:Z

    move-object v1, v11

    invoke-direct/range {v1 .. v9}, Lcom/google/firebase/perf/internal/zzw;-><init>(JJLcom/google/android/gms/internal/firebase-perf/zzan;Lcom/google/firebase/perf/internal/RemoteConfigManager;Lcom/google/firebase/perf/internal/zzu;Z)V

    iput-object v11, v0, Lcom/google/firebase/perf/internal/zzv;->zzeh:Lcom/google/firebase/perf/internal/zzw;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JJ)V
    .locals 9

    .line 1
    new-instance v5, Lcom/google/android/gms/internal/firebase-perf/zzan;

    invoke-direct {v5}, Lcom/google/android/gms/internal/firebase-perf/zzan;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "android_id"

    invoke-static {p2, p3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/firebase/perf/internal/zzv;->zzh(Ljava/lang/String;)J

    move-result-wide v6

    .line 3
    invoke-static {}, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzbi()Lcom/google/firebase/perf/internal/RemoteConfigManager;

    move-result-object v8

    const-wide/16 v1, 0x64

    const-wide/16 v3, 0x1f4

    move-object v0, p0

    .line 4
    invoke-direct/range {v0 .. v8}, Lcom/google/firebase/perf/internal/zzv;-><init>(JJLcom/google/android/gms/internal/firebase-perf/zzan;JLcom/google/firebase/perf/internal/RemoteConfigManager;)V

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-perf/zzbd;->zzg(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/firebase/perf/internal/zzv;->zzef:Z

    return-void
.end method

.method private static zzb(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-perf/zzch;",
            ">;)Z"
        }
    .end annotation

    .line 62
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-perf/zzch;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-perf/zzch;->zzep()I

    move-result v0

    if-lez v0, :cond_0

    .line 63
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-perf/zzch;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/firebase-perf/zzch;->zzn(I)Lcom/google/android/gms/internal/firebase-perf/zzco;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/firebase-perf/zzco;->zzli:Lcom/google/android/gms/internal/firebase-perf/zzco;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method private final zzg(Ljava/lang/String;)F
    .locals 3

    .line 16
    iget-object v0, p0, Lcom/google/firebase/perf/internal/zzv;->zzbz:Lcom/google/firebase/perf/internal/RemoteConfigManager;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 17
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 18
    invoke-virtual {v0, p1, v2}, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzb(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x0

    cmpg-float v0, v0, p1

    const/high16 v2, 0x42c80000    # 100.0f

    if-gtz v0, :cond_0

    cmpg-float v0, p1, v1

    if-gtz v0, :cond_0

    mul-float/2addr p1, v2

    return p1

    :cond_0
    return v2
.end method

.method private static zzh(Ljava/lang/String;)J
    .locals 4

    :try_start_0
    const-string v0, "SHA-1"

    .line 65
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-perf/zzbd;->zza([B)I

    move-result p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-perf/zzbd;->zza([B)I

    move-result p0

    :goto_0
    int-to-long v0, p0

    const-wide/32 v2, 0x5f5e100

    .line 70
    rem-long/2addr v0, v2

    add-long/2addr v0, v2

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method final zzb(Z)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/google/firebase/perf/internal/zzv;->zzeg:Lcom/google/firebase/perf/internal/zzw;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/internal/zzw;->zzb(Z)V

    .line 72
    iget-object v0, p0, Lcom/google/firebase/perf/internal/zzv;->zzeh:Lcom/google/firebase/perf/internal/zzw;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/internal/zzw;->zzb(Z)V

    return-void
.end method

.method final zzb(Lcom/google/android/gms/internal/firebase-perf/zzcg;)Z
    .locals 8

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-perf/zzcg;->zzeh()Z

    move-result v0

    const v1, 0x49742400    # 1000000.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const-string v0, "trace_sampling_rate"

    .line 25
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/internal/zzv;->zzg(Ljava/lang/String;)F

    move-result v0

    mul-float/2addr v0, v1

    float-to-long v4, v0

    .line 28
    iget-wide v6, p0, Lcom/google/firebase/perf/internal/zzv;->zzee:J

    cmp-long v0, v6, v4

    if-gtz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-nez v0, :cond_1

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-perf/zzcg;->zzei()Lcom/google/android/gms/internal/firebase-perf/zzcp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-perf/zzcp;->zzdz()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/perf/internal/zzv;->zzb(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    return v3

    .line 32
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-perf/zzcg;->zzej()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "network_sampling_rate"

    .line 35
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/internal/zzv;->zzg(Ljava/lang/String;)F

    move-result v0

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 38
    iget-wide v4, p0, Lcom/google/firebase/perf/internal/zzv;->zzee:J

    cmp-long v0, v4, v0

    if-gtz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    if-nez v0, :cond_3

    .line 40
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-perf/zzcg;->zzek()Lcom/google/android/gms/internal/firebase-perf/zzca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-perf/zzca;->zzdz()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/perf/internal/zzv;->zzb(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    return v3

    .line 43
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-perf/zzcg;->zzeh()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 44
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-perf/zzcg;->zzei()Lcom/google/android/gms/internal/firebase-perf/zzcp;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-perf/zzcp;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-perf/zzao;->zzgs:Lcom/google/android/gms/internal/firebase-perf/zzao;

    .line 46
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-perf/zzao;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 47
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-perf/zzcg;->zzei()Lcom/google/android/gms/internal/firebase-perf/zzcp;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-perf/zzcp;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-perf/zzao;->zzgt:Lcom/google/android/gms/internal/firebase-perf/zzao;

    .line 49
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-perf/zzao;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 50
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-perf/zzcg;->zzei()Lcom/google/android/gms/internal/firebase-perf/zzcp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-perf/zzcp;->zzes()I

    move-result v0

    if-lez v0, :cond_5

    goto :goto_2

    .line 52
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-perf/zzcg;->zzel()Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_2
    move v0, v3

    goto :goto_3

    :cond_6
    move v0, v2

    :goto_3
    if-nez v0, :cond_7

    return v2

    .line 57
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-perf/zzcg;->zzej()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 58
    iget-object v0, p0, Lcom/google/firebase/perf/internal/zzv;->zzeh:Lcom/google/firebase/perf/internal/zzw;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/internal/zzw;->zzb(Lcom/google/android/gms/internal/firebase-perf/zzcg;)Z

    move-result p1

    return p1

    .line 59
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-perf/zzcg;->zzeh()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 60
    iget-object v0, p0, Lcom/google/firebase/perf/internal/zzv;->zzeg:Lcom/google/firebase/perf/internal/zzw;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/internal/zzw;->zzb(Lcom/google/android/gms/internal/firebase-perf/zzcg;)Z

    move-result p1

    return p1

    :cond_9
    return v3
.end method
