.class public final Lcom/facebook/ads/redexgen/X/bN;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/1u;


# static fields
.field public static A07:[B

.field public static final A08:Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/Ex;

.field public A03:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Z

.field public final A05:Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

.field public final A06:Lcom/facebook/ads/redexgen/X/1z;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 69444
    invoke-static {}, Lcom/facebook/ads/redexgen/X/bN;->A06()V

    const-class v0, Lcom/facebook/ads/redexgen/X/bN;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/bN;->A08:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/1z;Lcom/facebook/ads/redexgen/X/22;Ljava/lang/String;)V
    .locals 2

    .line 69445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69446
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/bN;->A00:I

    .line 69447
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bN;->A04:Z

    .line 69448
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/bN;->A01:J

    .line 69449
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bN;->A06:Lcom/facebook/ads/redexgen/X/1z;

    .line 69450
    new-instance v0, Lcom/facebook/ads/redexgen/X/bG;

    invoke-direct {v0, p3, p2, p0, p1}, Lcom/facebook/ads/redexgen/X/bG;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/22;Lcom/facebook/ads/redexgen/X/bN;Lcom/facebook/ads/redexgen/X/1z;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bN;->A05:Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    .line 69451
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/bN;)J
    .locals 1

    .line 69452
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/bN;->A01:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/bN;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;
    .locals 0

    .line 69453
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bN;->A05:Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/bN;)Lcom/facebook/ads/redexgen/X/Ex;
    .locals 0

    .line 69454
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bN;->A02:Lcom/facebook/ads/redexgen/X/Ex;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/bN;)Lcom/facebook/ads/redexgen/X/1z;
    .locals 0

    .line 69455
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bN;->A06:Lcom/facebook/ads/redexgen/X/1z;

    return-object p0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/bN;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xe

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/bN;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 69456
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bN;->A03:Ljava/lang/String;

    return-object p1
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x70

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/bN;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x74t
        -0x5ft
        0x53t
        -0x6ct
        -0x69t
        0x53t
        -0x61t
        -0x5et
        -0x6ct
        -0x69t
        0x53t
        -0x64t
        -0x5at
        0x53t
        -0x6ct
        -0x61t
        -0x5bt
        -0x68t
        -0x6ct
        -0x69t
        -0x54t
        0x53t
        -0x64t
        -0x5ft
        0x53t
        -0x5dt
        -0x5bt
        -0x5et
        -0x66t
        -0x5bt
        -0x68t
        -0x5at
        -0x5at
        0x61t
        0x53t
        -0x74t
        -0x5et
        -0x58t
        0x53t
        -0x5at
        -0x65t
        -0x5et
        -0x58t
        -0x61t
        -0x69t
        0x53t
        -0x56t
        -0x6ct
        -0x64t
        -0x59t
        0x53t
        -0x67t
        -0x5et
        -0x5bt
        0x53t
        -0x6ct
        -0x69t
        0x7ft
        -0x5et
        -0x6ct
        -0x69t
        -0x68t
        -0x69t
        0x5bt
        0x5ct
        0x53t
        -0x59t
        -0x5et
        0x53t
        -0x6bt
        -0x68t
        0x53t
        -0x6at
        -0x6ct
        -0x61t
        -0x61t
        -0x68t
        -0x69t
        -0x3ct
        -0xft
        -0xft
        -0x12t
        -0xft
        -0x61t
        -0x15t
        -0x12t
        -0x20t
        -0x1dt
        -0x18t
        -0x13t
        -0x1at
        -0x61t
        -0xft
        -0x1ct
        -0xat
        -0x20t
        -0xft
        -0x1dt
        -0x1ct
        -0x1dt
        -0x61t
        -0xbt
        -0x18t
        -0x1dt
        -0x1ct
        -0x12t
        -0x61t
        -0x20t
        -0x1dt
        -0x13t
        -0x4t
        -0xbt
    .end array-data
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/bN;Z)V
    .locals 0

    .line 69457
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/bN;->A09(Z)V

    return-void
.end method

.method private A08(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/AdExperienceType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 69458
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bN;->A04:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bN;->A02:Lcom/facebook/ads/redexgen/X/Ex;

    if-eqz v0, :cond_0

    .line 69459
    sget-object v3, Lcom/facebook/ads/redexgen/X/bN;->A08:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x4e

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bN;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69460
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/bN;->A09(Z)V

    .line 69461
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bN;->A04:Z

    .line 69462
    new-instance v2, Lcom/facebook/ads/redexgen/X/1m;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bN;->A06:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/1z;->A0C:Ljava/lang/String;

    sget-object v4, Lcom/facebook/ads/redexgen/X/Jt;->A06:Lcom/facebook/ads/redexgen/X/Jt;

    sget-object v5, Lcom/facebook/ads/internal/protocol/AdPlacementType;->REWARDED_VIDEO:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    sget-object v6, Lcom/facebook/ads/redexgen/X/Js;->A08:Lcom/facebook/ads/redexgen/X/Js;

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/1m;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Jt;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/redexgen/X/Js;I)V

    .line 69463
    .local p0, "adControllerConfig":Lcom/facebook/ads/redexgen/X/1m;
    invoke-virtual {v2, p3}, Lcom/facebook/ads/redexgen/X/1m;->A07(Z)V

    .line 69464
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bN;->A06:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/1z;->A06:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/1m;->A05(Ljava/lang/String;)V

    .line 69465
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bN;->A06:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/1z;->A07:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/1m;->A06(Ljava/lang/String;)V

    .line 69466
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bN;->A06:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/1z;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ex;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Ex;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1m;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bN;->A02:Lcom/facebook/ads/redexgen/X/Ex;

    .line 69467
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bN;->A02:Lcom/facebook/ads/redexgen/X/Ex;

    new-instance v0, Lcom/facebook/ads/redexgen/X/bP;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bP;-><init>(Lcom/facebook/ads/redexgen/X/bN;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bh;->A0O(Lcom/facebook/ads/redexgen/X/0o;)V

    .line 69468
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bN;->A02:Lcom/facebook/ads/redexgen/X/Ex;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/bh;->A0S(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;)V

    .line 69469
    return-void
.end method

.method private A09(Z)V
    .locals 2

    .line 69470
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bN;->A02:Lcom/facebook/ads/redexgen/X/Ex;

    if-eqz v1, :cond_0

    .line 69471
    new-instance v0, Lcom/facebook/ads/redexgen/X/bO;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bO;-><init>(Lcom/facebook/ads/redexgen/X/bN;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bh;->A0O(Lcom/facebook/ads/redexgen/X/0o;)V

    .line 69472
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bN;->A02:Lcom/facebook/ads/redexgen/X/Ex;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/bh;->A0T(Z)V

    .line 69473
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bN;->A02:Lcom/facebook/ads/redexgen/X/Ex;

    .line 69474
    :cond_0
    return-void
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/bN;Z)Z
    .locals 0

    .line 69475
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/bN;->A04:Z

    return p1
.end method


# virtual methods
.method public final A0B()J
    .locals 2

    .line 69476
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bN;->A02:Lcom/facebook/ads/redexgen/X/Ex;

    if-eqz v0, :cond_0

    .line 69477
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bh;->A0D()J

    move-result-wide v0

    return-wide v0

    .line 69478
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final A0C()V
    .locals 1

    .line 69479
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/bN;->A09(Z)V

    .line 69480
    return-void
.end method

.method public final A0D(Lcom/facebook/ads/RewardData;)V
    .locals 1

    .line 69481
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bN;->A06:Lcom/facebook/ads/redexgen/X/1z;

    iput-object p1, v0, Lcom/facebook/ads/redexgen/X/1z;->A03:Lcom/facebook/ads/RewardData;

    .line 69482
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bN;->A04:Z

    if-eqz v0, :cond_0

    .line 69483
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bN;->A02:Lcom/facebook/ads/redexgen/X/Ex;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ex;->A0V(Lcom/facebook/ads/RewardData;)V

    .line 69484
    :cond_0
    return-void
.end method

.method public final A0E(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/AdExperienceType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 69485
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/bN;->A01:J

    .line 69486
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/bN;->A08(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69487
    :catch_0
    move-exception v6

    .line 69488
    .local p0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/facebook/ads/redexgen/X/bN;->A08:Ljava/lang/String;

    const/16 v2, 0x4e

    const/16 v1, 0x1f

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bN;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69489
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bN;->A06:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/1z;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    .line 69490
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A0Q:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v6}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 69491
    const/16 v2, 0x6d

    const/4 v1, 0x3

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bN;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 69492
    const/16 v0, 0x7d4

    invoke-static {v0}, Lcom/facebook/ads/AdError;->internalError(I)Lcom/facebook/ads/AdError;

    move-result-object v5

    .line 69493
    .local p1, "error":Lcom/facebook/ads/AdError;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bN;->A06:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/1z;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    .line 69494
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/bN;->A01:J

    .line 69495
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lb;->A01(J)J

    move-result-wide v2

    invoke-virtual {v5}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {v5}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 69496
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2b(JILjava/lang/String;)V

    .line 69497
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bN;->A05:Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bN;->A06:Lcom/facebook/ads/redexgen/X/1z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1z;->A00()Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    invoke-interface {v1, v0, v5}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 69498
    .end local p0    # "e":Ljava/lang/Exception;
    .end local p1    # "error":Lcom/facebook/ads/AdError;
    :goto_0
    return-void
.end method

.method public final A0F()Z
    .locals 1

    .line 69499
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bN;->A02:Lcom/facebook/ads/redexgen/X/Ex;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bh;->A0U()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0G()Z
    .locals 1

    .line 69500
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bN;->A04:Z

    return v0
.end method

.method public final A0H(I)Z
    .locals 4

    .line 69501
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bN;->A04:Z

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 69502
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/bN;->A05:Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bN;->A06:Lcom/facebook/ads/redexgen/X/1z;

    .line 69503
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1z;->A00()Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/AdError;->SHOW_CALLED_BEFORE_LOAD_ERROR:Lcom/facebook/ads/AdError;

    .line 69504
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 69505
    return v3

    .line 69506
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bN;->A02:Lcom/facebook/ads/redexgen/X/Ex;

    if-eqz v0, :cond_1

    .line 69507
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bh;->A07:Lcom/facebook/ads/redexgen/X/1m;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/1m;->A02(I)V

    .line 69508
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bN;->A02:Lcom/facebook/ads/redexgen/X/Ex;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bh;->A0I()V

    .line 69509
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/bN;->A04:Z

    .line 69510
    const/4 v0, 0x1

    return v0

    .line 69511
    :cond_1
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/bN;->A04:Z

    .line 69512
    return v3
.end method
