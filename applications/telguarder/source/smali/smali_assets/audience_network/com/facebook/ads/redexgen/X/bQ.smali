.class public final Lcom/facebook/ads/redexgen/X/bQ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/1u;


# static fields
.field public static A07:[B

.field public static final A08:Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/F0;

.field public A02:Z

.field public A03:Z

.field public final A04:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A05:Lcom/facebook/ads/InterstitialAdExtendedListener;

.field public final A06:Lcom/facebook/ads/redexgen/X/1v;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 69548
    invoke-static {}, Lcom/facebook/ads/redexgen/X/bQ;->A06()V

    const-class v0, Lcom/facebook/ads/redexgen/X/bQ;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/bQ;->A08:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/1v;Lcom/facebook/ads/redexgen/X/22;Ljava/lang/String;)V
    .locals 2

    .line 69549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69550
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A00:J

    .line 69551
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bQ;->A06:Lcom/facebook/ads/redexgen/X/1v;

    .line 69552
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1v;->A05()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    .line 69553
    new-instance v0, Lcom/facebook/ads/redexgen/X/bH;

    invoke-direct {v0, p3, p2, p0}, Lcom/facebook/ads/redexgen/X/bH;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/22;Lcom/facebook/ads/redexgen/X/bQ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A05:Lcom/facebook/ads/InterstitialAdExtendedListener;

    .line 69554
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/bQ;)J
    .locals 1

    .line 69555
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A00:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/bQ;)Lcom/facebook/ads/InterstitialAdExtendedListener;
    .locals 0

    .line 69556
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A05:Lcom/facebook/ads/InterstitialAdExtendedListener;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/bQ;)Lcom/facebook/ads/redexgen/X/F0;
    .locals 0

    .line 69557
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A01:Lcom/facebook/ads/redexgen/X/F0;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/bQ;Lcom/facebook/ads/redexgen/X/F0;)Lcom/facebook/ads/redexgen/X/F0;
    .locals 0

    .line 69558
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bQ;->A01:Lcom/facebook/ads/redexgen/X/F0;

    return-object p1
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/bQ;)Lcom/facebook/ads/redexgen/X/1v;
    .locals 0

    .line 69559
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A06:Lcom/facebook/ads/redexgen/X/1v;

    return-object p0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/bQ;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x85

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/bQ;->A07:[B

    return-void

    :array_0
    .array-data 1
        -0x58t
        -0x2bt
        -0x79t
        -0x38t
        -0x35t
        -0x79t
        -0x2dt
        -0x2at
        -0x38t
        -0x35t
        -0x79t
        -0x30t
        -0x26t
        -0x79t
        -0x38t
        -0x2dt
        -0x27t
        -0x34t
        -0x38t
        -0x35t
        -0x20t
        -0x79t
        -0x30t
        -0x2bt
        -0x79t
        -0x29t
        -0x27t
        -0x2at
        -0x32t
        -0x27t
        -0x34t
        -0x26t
        -0x26t
        -0x6bt
        -0x79t
        -0x40t
        -0x2at
        -0x24t
        -0x79t
        -0x26t
        -0x31t
        -0x2at
        -0x24t
        -0x2dt
        -0x35t
        -0x79t
        -0x22t
        -0x38t
        -0x30t
        -0x25t
        -0x79t
        -0x33t
        -0x2at
        -0x27t
        -0x79t
        -0x38t
        -0x35t
        -0x4dt
        -0x2at
        -0x38t
        -0x35t
        -0x34t
        -0x35t
        -0x71t
        -0x70t
        -0x79t
        -0x25t
        -0x2at
        -0x79t
        -0x37t
        -0x34t
        -0x79t
        -0x36t
        -0x38t
        -0x2dt
        -0x2dt
        -0x34t
        -0x35t
        -0x67t
        -0x42t
        -0x3ct
        -0x4bt
        -0x3et
        -0x3dt
        -0x3ct
        -0x47t
        -0x3ct
        -0x47t
        -0x4ft
        -0x44t
        0x70t
        -0x44t
        -0x41t
        -0x4ft
        -0x4ct
        0x70t
        -0x4dt
        -0x4ft
        -0x44t
        -0x44t
        -0x4bt
        -0x4ct
        0x70t
        -0x39t
        -0x48t
        -0x47t
        -0x44t
        -0x4bt
        0x70t
        -0x3dt
        -0x48t
        -0x41t
        -0x39t
        -0x47t
        -0x42t
        -0x49t
        0x70t
        -0x47t
        -0x42t
        -0x3ct
        -0x4bt
        -0x3et
        -0x3dt
        -0x3ct
        -0x47t
        -0x3ct
        -0x47t
        -0x4ft
        -0x44t
        0x7et
        -0x21t
        -0x12t
        -0x19t
    .end array-data
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/bQ;Z)Z
    .locals 0

    .line 69560
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/bQ;->A03:Z

    return p1
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/bQ;Z)Z
    .locals 0

    .line 69561
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/bQ;->A02:Z

    return p1
.end method


# virtual methods
.method public final A09()J
    .locals 2

    .line 69562
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A01:Lcom/facebook/ads/redexgen/X/F0;

    if-eqz v0, :cond_0

    .line 69563
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bh;->A0D()J

    move-result-wide v0

    return-wide v0

    .line 69564
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final A0A()V
    .locals 2

    .line 69565
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bQ;->A01:Lcom/facebook/ads/redexgen/X/F0;

    if-eqz v1, :cond_0

    .line 69566
    new-instance v0, Lcom/facebook/ads/redexgen/X/bR;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bR;-><init>(Lcom/facebook/ads/redexgen/X/bQ;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bh;->A0O(Lcom/facebook/ads/redexgen/X/0o;)V

    .line 69567
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bQ;->A01:Lcom/facebook/ads/redexgen/X/F0;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bh;->A0T(Z)V

    .line 69568
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A01:Lcom/facebook/ads/redexgen/X/F0;

    .line 69569
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A03:Z

    .line 69570
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A02:Z

    .line 69571
    :cond_0
    return-void
.end method

.method public final A0B(Ljava/util/EnumSet;Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 69572
    .local v0, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A00:J

    .line 69573
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A03:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A01:Lcom/facebook/ads/redexgen/X/F0;

    if-eqz v0, :cond_0

    .line 69574
    sget-object v3, Lcom/facebook/ads/redexgen/X/bQ;->A08:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x4e

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bQ;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69575
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A03:Z

    .line 69576
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A02:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69577
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    .line 69578
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A0B:I

    const/16 v2, 0x4e

    const/16 v1, 0x34

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bQ;->A05(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 69579
    const/16 v2, 0x82

    const/4 v1, 0x3

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bQ;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 69580
    sget-object v5, Lcom/facebook/ads/internal/protocol/AdErrorType;->LOAD_CALLED_WHILE_SHOWING_AD:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 69581
    .local p0, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    .line 69582
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A00:J

    .line 69583
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lb;->A01(J)J

    move-result-wide v2

    .line 69584
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    .line 69585
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 69586
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2b(JILjava/lang/String;)V

    .line 69587
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/bQ;->A05:Lcom/facebook/ads/InterstitialAdExtendedListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A06:Lcom/facebook/ads/redexgen/X/1v;

    .line 69588
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v3

    .line 69589
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v2

    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/AdError;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    .line 69590
    invoke-interface {v4, v3, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 69591
    return-void

    .line 69592
    .end local p0    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bQ;->A01:Lcom/facebook/ads/redexgen/X/F0;

    if-eqz v1, :cond_2

    .line 69593
    new-instance v0, Lcom/facebook/ads/redexgen/X/bU;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bU;-><init>(Lcom/facebook/ads/redexgen/X/bQ;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bh;->A0O(Lcom/facebook/ads/redexgen/X/0o;)V

    .line 69594
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A01:Lcom/facebook/ads/redexgen/X/F0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bh;->A0J()V

    .line 69595
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A01:Lcom/facebook/ads/redexgen/X/F0;

    .line 69596
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 69597
    .local p0, "metrics":Landroid/util/DisplayMetrics;
    new-instance v2, Lcom/facebook/ads/redexgen/X/1m;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A06:Lcom/facebook/ads/redexgen/X/1v;

    .line 69598
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A09()Ljava/lang/String;

    move-result-object v3

    .line 69599
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Jv;->A01(Landroid/util/DisplayMetrics;)Lcom/facebook/ads/redexgen/X/Jt;

    move-result-object v4

    sget-object v5, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    sget-object v6, Lcom/facebook/ads/redexgen/X/Js;->A08:Lcom/facebook/ads/redexgen/X/Js;

    const/4 v7, 0x1

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/1m;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Jt;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/redexgen/X/Js;ILjava/util/EnumSet;)V

    .line 69600
    .local v8, "adControllerConfig":Lcom/facebook/ads/redexgen/X/1m;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A06:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A07()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/1m;->A05(Ljava/lang/String;)V

    .line 69601
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A06:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/1m;->A06(Ljava/lang/String;)V

    .line 69602
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A06:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A03()Lcom/facebook/ads/RewardData;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/1m;->A03(Lcom/facebook/ads/RewardData;)V

    .line 69603
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bQ;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v0, Lcom/facebook/ads/redexgen/X/F0;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/F0;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1m;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A01:Lcom/facebook/ads/redexgen/X/F0;

    .line 69604
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bQ;->A01:Lcom/facebook/ads/redexgen/X/F0;

    new-instance v0, Lcom/facebook/ads/redexgen/X/bS;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bS;-><init>(Lcom/facebook/ads/redexgen/X/bQ;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bh;->A0O(Lcom/facebook/ads/redexgen/X/0o;)V

    .line 69605
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A01:Lcom/facebook/ads/redexgen/X/F0;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/bh;->A0R(Ljava/lang/String;)V

    .line 69606
    return-void
.end method

.method public final A0C()Z
    .locals 1

    .line 69607
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A01:Lcom/facebook/ads/redexgen/X/F0;

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

.method public final A0D()Z
    .locals 1

    .line 69608
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A03:Z

    return v0
.end method

.method public final A0E()Z
    .locals 8

    .line 69609
    sget-object v6, Lcom/facebook/ads/AdError;->SHOW_CALLED_BEFORE_LOAD_ERROR:Lcom/facebook/ads/AdError;

    .line 69610
    .local p0, "showError":Lcom/facebook/ads/AdError;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A03:Z

    const/4 v5, 0x0

    if-nez v0, :cond_0

    .line 69611
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    .line 69612
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A00:J

    .line 69613
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lb;->A01(J)J

    move-result-wide v1

    .line 69614
    invoke-virtual {v6}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v3

    .line 69615
    invoke-virtual {v6}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 69616
    invoke-interface {v4, v1, v2, v3, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2b(JILjava/lang/String;)V

    .line 69617
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bQ;->A05:Lcom/facebook/ads/InterstitialAdExtendedListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A06:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0, v6}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 69618
    return v5

    .line 69619
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A01:Lcom/facebook/ads/redexgen/X/F0;

    if-nez v0, :cond_1

    .line 69620
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    .line 69621
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v7

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A0H:I

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERSTITIAL_CONTROLLER_IS_NULL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 69622
    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 69623
    const/16 v2, 0x82

    const/4 v1, 0x3

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bQ;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 69624
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    .line 69625
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A00:J

    .line 69626
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lb;->A01(J)J

    move-result-wide v2

    .line 69627
    invoke-virtual {v6}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    .line 69628
    invoke-virtual {v6}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 69629
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2b(JILjava/lang/String;)V

    .line 69630
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bQ;->A05:Lcom/facebook/ads/InterstitialAdExtendedListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A06:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0, v6}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 69631
    return v5

    .line 69632
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bh;->A0I()V

    .line 69633
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A02:Z

    .line 69634
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/bQ;->A03:Z

    .line 69635
    return v0
.end method
