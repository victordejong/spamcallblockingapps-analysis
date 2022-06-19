.class public Lcom/google/android/gms/internal/ads/zzvt;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzvt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final height:I

.field public final heightPixels:I

.field public final width:I

.field public final widthPixels:I

.field public final zzadd:Ljava/lang/String;

.field public zzadh:Z

.field public final zzbsb:Z

.field public final zzcir:Z

.field public final zzcis:[Lcom/google/android/gms/internal/ads/zzvt;

.field public final zzcit:Z

.field public zzciu:Z

.field public zzciv:Z

.field private zzciw:Z

.field public zzcix:Z

.field public zzciy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 111
    new-instance v0, Lcom/google/android/gms/internal/ads/eje;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/eje;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzvt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 16

    const-string v1, "interstitial_mb"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    .line 12
    invoke-direct/range {v0 .. v15}, Lcom/google/android/gms/internal/ads/zzvt;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/ads/zzvt;ZZZZZZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/ads/AdSize;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzvt;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V
    .locals 13

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    .line 18
    aget-object v1, p2, v0

    .line 19
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzcir:Z

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdSize;->isFluid()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzcit:Z

    .line 21
    invoke-static {v1}, Lcom/google/android/gms/ads/zza;->zzc(Lcom/google/android/gms/ads/AdSize;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzcix:Z

    .line 22
    invoke-static {v1}, Lcom/google/android/gms/ads/zza;->zzd(Lcom/google/android/gms/ads/AdSize;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzciy:Z

    .line 23
    invoke-static {v1}, Lcom/google/android/gms/ads/zza;->zza(Lcom/google/android/gms/ads/AdSize;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzadh:Z

    if-eqz v2, :cond_0

    .line 25
    sget-object v3, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzvt;->width:I

    .line 26
    sget-object v3, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzvt;->height:I

    goto :goto_0

    .line 27
    :cond_0
    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzciy:Z

    if-eqz v4, :cond_1

    .line 28
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzvt;->width:I

    .line 29
    invoke-static {v1}, Lcom/google/android/gms/ads/zza;->zze(Lcom/google/android/gms/ads/AdSize;)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzvt;->height:I

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzvt;->width:I

    .line 32
    invoke-static {v1}, Lcom/google/android/gms/ads/zza;->zzb(Lcom/google/android/gms/ads/AdSize;)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzvt;->height:I

    goto :goto_0

    .line 33
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzvt;->width:I

    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzvt;->height:I

    .line 35
    :goto_0
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzvt;->width:I

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 36
    :goto_1
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzvt;->height:I

    const/4 v6, -0x2

    if-ne v4, v6, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    .line 37
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    if-eqz v3, :cond_6

    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->a()Lcom/google/android/gms/internal/ads/yq;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/yq;->d(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 40
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->a()Lcom/google/android/gms/internal/ads/yq;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/yq;->e(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 42
    iget v7, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->a()Lcom/google/android/gms/internal/ads/yq;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/yq;->f(Landroid/content/Context;)I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzvt;->widthPixels:I

    goto :goto_3

    .line 45
    :cond_5
    iget v7, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 46
    iput v7, p0, Lcom/google/android/gms/internal/ads/zzvt;->widthPixels:I

    .line 47
    :goto_3
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzvt;->widthPixels:I

    int-to-float v7, v7

    iget v8, v6, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v7, v8

    float-to-double v7, v7

    double-to-int v9, v7

    int-to-double v10, v9

    sub-double/2addr v7, v10

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v12, v7, v10

    if-ltz v12, :cond_7

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 52
    :cond_6
    iget v9, p0, Lcom/google/android/gms/internal/ads/zzvt;->width:I

    .line 53
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->a()Lcom/google/android/gms/internal/ads/yq;

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzvt;->width:I

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/yq;->a(Landroid/util/DisplayMetrics;I)I

    move-result v7

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzvt;->widthPixels:I

    :cond_7
    :goto_4
    if-eqz v4, :cond_8

    .line 55
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzvt;->zzd(Landroid/util/DisplayMetrics;)I

    move-result v7

    goto :goto_5

    .line 56
    :cond_8
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzvt;->height:I

    .line 57
    :goto_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->a()Lcom/google/android/gms/internal/ads/yq;

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/yq;->a(Landroid/util/DisplayMetrics;I)I

    move-result v6

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzvt;->heightPixels:I

    const-string v6, "_as"

    const-string v8, "x"

    const/16 v10, 0x1a

    if-nez v3, :cond_d

    if-eqz v4, :cond_9

    goto :goto_7

    .line 60
    :cond_9
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzciy:Z

    if-nez v3, :cond_c

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzadh:Z

    if-eqz v3, :cond_a

    goto :goto_6

    :cond_a
    if-eqz v2, :cond_b

    const-string v1, "320x50_mb"

    .line 63
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzadd:Ljava/lang/String;

    goto :goto_8

    .line 64
    :cond_b
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdSize;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzadd:Ljava/lang/String;

    goto :goto_8

    .line 61
    :cond_c
    :goto_6
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvt;->width:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzvt;->height:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzadd:Ljava/lang/String;

    goto :goto_8

    .line 59
    :cond_d
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzadd:Ljava/lang/String;

    .line 65
    :goto_8
    array-length v1, p2

    if-le v1, v5, :cond_e

    .line 66
    array-length v1, p2

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzvt;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzcis:[Lcom/google/android/gms/internal/ads/zzvt;

    const/4 v1, 0x0

    .line 67
    :goto_9
    array-length v2, p2

    if-ge v1, v2, :cond_f

    .line 68
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzcis:[Lcom/google/android/gms/internal/ads/zzvt;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzvt;

    aget-object v4, p2, v1

    invoke-direct {v3, p1, v4}, Lcom/google/android/gms/internal/ads/zzvt;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_e
    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzcis:[Lcom/google/android/gms/internal/ads/zzvt;

    .line 71
    :cond_f
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzbsb:Z

    .line 72
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzciu:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/ads/zzvt;ZZZZZZZZ)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzadd:Ljava/lang/String;

    .line 76
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzvt;->height:I

    .line 77
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzvt;->heightPixels:I

    .line 78
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzcir:Z

    .line 79
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzvt;->width:I

    .line 80
    iput p6, p0, Lcom/google/android/gms/internal/ads/zzvt;->widthPixels:I

    .line 81
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzcis:[Lcom/google/android/gms/internal/ads/zzvt;

    .line 82
    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzbsb:Z

    .line 83
    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzcit:Z

    .line 84
    iput-boolean p10, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzciu:Z

    .line 85
    iput-boolean p11, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzciv:Z

    .line 86
    iput-boolean p12, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzciw:Z

    .line 87
    iput-boolean p13, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzcix:Z

    .line 88
    iput-boolean p14, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzciy:Z

    .line 89
    iput-boolean p15, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzadh:Z

    return-void
.end method

.method public static zzb(Landroid/util/DisplayMetrics;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method public static zzc(Landroid/util/DisplayMetrics;)I
    .locals 1

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzvt;->zzd(Landroid/util/DisplayMetrics;)I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p0

    float-to-int p0, v0

    return p0
.end method

.method private static zzd(Landroid/util/DisplayMetrics;)I
    .locals 1

    .line 3
    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, p0

    float-to-int p0, v0

    const/16 v0, 0x190

    if-gt p0, v0, :cond_0

    const/16 p0, 0x20

    return p0

    :cond_0
    const/16 v0, 0x2d0

    if-gt p0, v0, :cond_1

    const/16 p0, 0x32

    return p0

    :cond_1
    const/16 p0, 0x5a

    return p0
.end method

.method public static zzqk()Lcom/google/android/gms/internal/ads/zzvt;
    .locals 17

    .line 9
    new-instance v16, Lcom/google/android/gms/internal/ads/zzvt;

    const-string v1, "320x50_mb"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v15}, Lcom/google/android/gms/internal/ads/zzvt;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/ads/zzvt;ZZZZZZZZ)V

    return-object v16
.end method

.method public static zzql()Lcom/google/android/gms/internal/ads/zzvt;
    .locals 17

    .line 10
    new-instance v16, Lcom/google/android/gms/internal/ads/zzvt;

    const-string v1, "reward_mb"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v15}, Lcom/google/android/gms/internal/ads/zzvt;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/ads/zzvt;ZZZZZZZZ)V

    return-object v16
.end method

.method public static zzqm()Lcom/google/android/gms/internal/ads/zzvt;
    .locals 17

    .line 11
    new-instance v16, Lcom/google/android/gms/internal/ads/zzvt;

    const-string v1, "interstitial_mb"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v15}, Lcom/google/android/gms/internal/ads/zzvt;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/ads/zzvt;ZZZZZZZZ)V

    return-object v16
.end method

.method public static zzqn()Lcom/google/android/gms/internal/ads/zzvt;
    .locals 17

    .line 14
    new-instance v16, Lcom/google/android/gms/internal/ads/zzvt;

    const-string v1, "invalid"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v15}, Lcom/google/android/gms/internal/ads/zzvt;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/ads/zzvt;ZZZZZZZZ)V

    return-object v16
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    .line 1001
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result v0

    .line 94
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzadd:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 95
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvt;->height:I

    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;II)V

    .line 96
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvt;->heightPixels:I

    const/4 v2, 0x4

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;II)V

    .line 97
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzcir:Z

    const/4 v2, 0x5

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;IZ)V

    .line 98
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvt;->width:I

    const/4 v2, 0x6

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;II)V

    .line 99
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvt;->widthPixels:I

    const/4 v2, 0x7

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;II)V

    .line 100
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzcis:[Lcom/google/android/gms/internal/ads/zzvt;

    const/16 v2, 0x8

    invoke-static {p1, v2, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    .line 101
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzbsb:Z

    const/16 v1, 0x9

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;IZ)V

    .line 102
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzcit:Z

    const/16 v1, 0xa

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;IZ)V

    .line 103
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzciu:Z

    const/16 v1, 0xb

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;IZ)V

    .line 104
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzciv:Z

    const/16 v1, 0xc

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;IZ)V

    .line 105
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzciw:Z

    const/16 v1, 0xd

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;IZ)V

    .line 106
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzcix:Z

    const/16 v1, 0xe

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;IZ)V

    .line 107
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzciy:Z

    const/16 v1, 0xf

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;IZ)V

    .line 108
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzadh:Z

    const/16 v1, 0x10

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;IZ)V

    .line 2001
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzqo()Lcom/google/android/gms/ads/AdSize;
    .locals 3

    .line 91
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->width:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvt;->height:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzadd:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/ads/zza;->zza(IILjava/lang/String;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    return-object v0
.end method
