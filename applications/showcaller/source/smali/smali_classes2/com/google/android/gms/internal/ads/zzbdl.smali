.class public final Lcom/google/android/gms/internal/ads/zzbdl;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzbdl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:I

.field public final g:Z

.field public final h:I

.field public final i:I

.field public final j:[Lcom/google/android/gms/internal/ads/zzbdl;

.field public final k:Z

.field public final l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/yq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/yq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbdl;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 1
    invoke-direct/range {v0 .. v15}, Lcom/google/android/gms/internal/ads/zzbdl;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/ads/zzbdl;ZZZZZZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/f;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/ads/f;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbdl;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/f;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/google/android/gms/ads/f;)V
    .locals 12

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    .line 4
    aget-object v1, p2, v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdl;->g:Z

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/ads/f;->e()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbdl;->l:Z

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/ads/a0;->f(Lcom/google/android/gms/ads/f;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzbdl;->p:Z

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/ads/a0;->g(Lcom/google/android/gms/ads/f;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzbdl;->q:Z

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/ads/a0;->d(Lcom/google/android/gms/ads/f;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzbdl;->r:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/ads/f;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/ads/f;->c()I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzbdl;->h:I

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/ads/f;->a()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzbdl;->e:I

    goto :goto_0

    .line 11
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbdl;->q:Z

    if-eqz v2, :cond_1

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/ads/f;->c()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzbdl;->h:I

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/ads/a0;->h(Lcom/google/android/gms/ads/f;)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzbdl;->e:I

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/ads/f;->c()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzbdl;->h:I

    .line 15
    invoke-static {v1}, Lcom/google/android/gms/ads/a0;->e(Lcom/google/android/gms/ads/f;)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzbdl;->e:I

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/ads/f;->c()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzbdl;->h:I

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/ads/f;->a()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzbdl;->e:I

    .line 18
    :goto_0
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzbdl;->h:I

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/4 v5, -0x1

    if-ne v3, v5, :cond_9

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/wr;->a()Lcom/google/android/gms/internal/ads/xh0;

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    goto/16 :goto_4

    .line 22
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 23
    iget v7, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v7, v6

    float-to-int v6, v7

    const/16 v7, 0x258

    if-ge v6, v7, :cond_8

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/wr;->a()Lcom/google/android/gms/internal/ads/xh0;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    const-string v7, "window"

    .line 26
    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    if-eqz v7, :cond_8

    .line 27
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 28
    invoke-static {}, Lcom/google/android/gms/common/util/o;->d()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 29
    invoke-virtual {v7, v6}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 30
    iget v8, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 31
    iget v9, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_2

    .line 32
    :cond_4
    :try_start_0
    const-class v8, Landroid/view/Display;

    const-string v9, "getRawHeight"

    new-array v10, v0, [Ljava/lang/Class;

    .line 33
    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-array v9, v0, [Ljava/lang/Object;

    invoke-virtual {v8, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    const-class v9, Landroid/view/Display;

    const-string v10, "getRawWidth"

    new-array v11, v0, [Ljava/lang/Class;

    .line 34
    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    new-array v10, v0, [Ljava/lang/Object;

    invoke-virtual {v9, v7, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-nez v8, :cond_5

    const/4 v8, 0x0

    goto :goto_1

    .line 35
    :cond_5
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_1
    if-nez v9, :cond_6

    const/4 v9, 0x0

    goto :goto_2

    .line 36
    :cond_6
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_2
    invoke-virtual {v7, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 38
    iget v7, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 39
    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v7, v8, :cond_8

    if-ne v6, v9, :cond_8

    .line 40
    iget v6, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/ads/wr;->a()Lcom/google/android/gms/internal/ads/xh0;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "navigation_bar_width"

    const-string v9, "dimen"

    const-string v10, "android"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_7

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    :goto_3
    sub-int/2addr v6, v7

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzbdl;->i:I

    goto :goto_5

    .line 44
    :catch_0
    :cond_8
    :goto_4
    iget v6, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzbdl;->i:I

    :goto_5
    int-to-float v6, v6

    .line 45
    iget v7, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v6, v7

    float-to-double v6, v6

    double-to-int v8, v6

    int-to-double v9, v8

    sub-double/2addr v6, v9

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v11, v6, v9

    if-ltz v11, :cond_a

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 46
    :cond_9
    iget v8, p0, Lcom/google/android/gms/internal/ads/zzbdl;->h:I

    .line 47
    invoke-static {}, Lcom/google/android/gms/internal/ads/wr;->a()Lcom/google/android/gms/internal/ads/xh0;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzbdl;->h:I

    invoke-static {v4, v6}, Lcom/google/android/gms/internal/ads/xh0;->i(Landroid/util/DisplayMetrics;I)I

    move-result v6

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzbdl;->i:I

    :cond_a
    :goto_6
    const/4 v6, -0x2

    if-ne v2, v6, :cond_b

    .line 48
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzbdl;->p0(Landroid/util/DisplayMetrics;)I

    move-result v7

    goto :goto_7

    .line 49
    :cond_b
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzbdl;->e:I

    .line 50
    :goto_7
    invoke-static {}, Lcom/google/android/gms/internal/ads/wr;->a()Lcom/google/android/gms/internal/ads/xh0;

    invoke-static {v4, v7}, Lcom/google/android/gms/internal/ads/xh0;->i(Landroid/util/DisplayMetrics;I)I

    move-result v4

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzbdl;->f:I

    const-string v4, "_as"

    const-string v9, "x"

    const/16 v10, 0x1a

    if-eq v3, v5, :cond_10

    if-ne v2, v6, :cond_c

    goto :goto_a

    .line 51
    :cond_c
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbdl;->q:Z

    if-nez v2, :cond_f

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbdl;->r:Z

    if-eqz v2, :cond_d

    goto :goto_8

    .line 52
    :cond_d
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbdl;->l:Z

    if-eqz v2, :cond_e

    const-string v1, "320x50_mb"

    goto :goto_9

    .line 53
    :cond_e
    invoke-virtual {v1}, Lcom/google/android/gms/ads/f;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdl;->d:Ljava/lang/String;

    goto :goto_b

    .line 54
    :cond_f
    :goto_8
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbdl;->h:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbdl;->e:I

    new-instance v3, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_9
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdl;->d:Ljava/lang/String;

    goto :goto_b

    .line 56
    :cond_10
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdl;->d:Ljava/lang/String;

    .line 58
    :goto_b
    array-length v1, p2

    const/4 v2, 0x1

    if-le v1, v2, :cond_11

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzbdl;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdl;->j:[Lcom/google/android/gms/internal/ads/zzbdl;

    const/4 v1, 0x0

    .line 59
    :goto_c
    array-length v2, p2

    if-ge v1, v2, :cond_12

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdl;->j:[Lcom/google/android/gms/internal/ads/zzbdl;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbdl;

    .line 60
    aget-object v4, p2, v1

    invoke-direct {v3, p1, v4}, Lcom/google/android/gms/internal/ads/zzbdl;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/f;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_11
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdl;->j:[Lcom/google/android/gms/internal/ads/zzbdl;

    :cond_12
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdl;->k:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdl;->m:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/ads/zzbdl;ZZZZZZZZ)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdl;->d:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbdl;->e:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbdl;->f:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzbdl;->g:Z

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzbdl;->h:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzbdl;->i:I

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzbdl;->j:[Lcom/google/android/gms/internal/ads/zzbdl;

    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/zzbdl;->k:Z

    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/zzbdl;->l:Z

    iput-boolean p10, p0, Lcom/google/android/gms/internal/ads/zzbdl;->m:Z

    iput-boolean p11, p0, Lcom/google/android/gms/internal/ads/zzbdl;->n:Z

    iput-boolean p12, p0, Lcom/google/android/gms/internal/ads/zzbdl;->o:Z

    iput-boolean p13, p0, Lcom/google/android/gms/internal/ads/zzbdl;->p:Z

    iput-boolean p14, p0, Lcom/google/android/gms/internal/ads/zzbdl;->q:Z

    iput-boolean p15, p0, Lcom/google/android/gms/internal/ads/zzbdl;->r:Z

    return-void
.end method

.method public static k0(Landroid/util/DisplayMetrics;)I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbdl;->p0(Landroid/util/DisplayMetrics;)I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public static l0()Lcom/google/android/gms/internal/ads/zzbdl;
    .locals 17

    .line 1
    new-instance v16, Lcom/google/android/gms/internal/ads/zzbdl;

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

    invoke-direct/range {v0 .. v15}, Lcom/google/android/gms/internal/ads/zzbdl;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/ads/zzbdl;ZZZZZZZZ)V

    return-object v16
.end method

.method public static m0()Lcom/google/android/gms/internal/ads/zzbdl;
    .locals 17

    .line 1
    new-instance v16, Lcom/google/android/gms/internal/ads/zzbdl;

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

    invoke-direct/range {v0 .. v15}, Lcom/google/android/gms/internal/ads/zzbdl;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/ads/zzbdl;ZZZZZZZZ)V

    return-object v16
.end method

.method public static n0()Lcom/google/android/gms/internal/ads/zzbdl;
    .locals 17

    .line 1
    new-instance v16, Lcom/google/android/gms/internal/ads/zzbdl;

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

    invoke-direct/range {v0 .. v15}, Lcom/google/android/gms/internal/ads/zzbdl;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/ads/zzbdl;ZZZZZZZZ)V

    return-object v16
.end method

.method public static o0()Lcom/google/android/gms/internal/ads/zzbdl;
    .locals 17

    .line 1
    new-instance v16, Lcom/google/android/gms/internal/ads/zzbdl;

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

    invoke-direct/range {v0 .. v15}, Lcom/google/android/gms/internal/ads/zzbdl;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/ads/zzbdl;ZZZZZZZZ)V

    return-object v16
.end method

.method private static p0(Landroid/util/DisplayMetrics;)I
    .locals 1

    .line 1
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


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdl;->d:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbdl;->e:I

    const/4 v2, 0x3

    .line 3
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;II)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbdl;->f:I

    const/4 v2, 0x4

    .line 4
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;II)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbdl;->g:Z

    const/4 v2, 0x5

    .line 5
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;IZ)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbdl;->h:I

    const/4 v2, 0x6

    .line 6
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;II)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbdl;->i:I

    const/4 v2, 0x7

    .line 7
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdl;->j:[Lcom/google/android/gms/internal/ads/zzbdl;

    const/16 v2, 0x8

    .line 8
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->u(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbdl;->k:Z

    const/16 v1, 0x9

    .line 9
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;IZ)V

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbdl;->l:Z

    const/16 v1, 0xa

    .line 10
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;IZ)V

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbdl;->m:Z

    const/16 v1, 0xb

    .line 11
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;IZ)V

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbdl;->n:Z

    const/16 v1, 0xc

    .line 12
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;IZ)V

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbdl;->o:Z

    const/16 v1, 0xd

    .line 13
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;IZ)V

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbdl;->p:Z

    const/16 v1, 0xe

    .line 14
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;IZ)V

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbdl;->q:Z

    const/16 v1, 0xf

    .line 15
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;IZ)V

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbdl;->r:Z

    const/16 v1, 0x10

    .line 16
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;IZ)V

    .line 17
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    return-void
.end method
