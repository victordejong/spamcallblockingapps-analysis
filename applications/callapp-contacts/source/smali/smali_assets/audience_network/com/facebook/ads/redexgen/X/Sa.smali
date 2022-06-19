.class public final Lcom/facebook/ads/redexgen/X/Sa;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/1u;


# static fields
.field public static A07:[B

.field public static final A08:Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/F5;

.field public A02:Z

.field public A03:Z

.field public final A04:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A05:Lcom/facebook/ads/InterstitialAdExtendedListener;

.field public final A06:Lcom/facebook/ads/redexgen/X/1v;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 52696
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Sa;->A06()V

    const-class v0, Lcom/facebook/ads/redexgen/X/Sa;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sa;->A08:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/1v;Lcom/facebook/ads/redexgen/X/22;Ljava/lang/String;)V
    .locals 2

    .line 52697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52698
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A00:J

    .line 52699
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sa;->A06:Lcom/facebook/ads/redexgen/X/1v;

    .line 52700
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1v;->A05()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    .line 52701
    new-instance v0, Lcom/facebook/ads/redexgen/X/Sj;

    invoke-direct {v0, p3, p2, p0}, Lcom/facebook/ads/redexgen/X/Sj;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/22;Lcom/facebook/ads/redexgen/X/Sa;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A05:Lcom/facebook/ads/InterstitialAdExtendedListener;

    .line 52702
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Sa;)J
    .locals 1

    .line 52703
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A00:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Sa;)Lcom/facebook/ads/InterstitialAdExtendedListener;
    .locals 0

    .line 52704
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A05:Lcom/facebook/ads/InterstitialAdExtendedListener;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Sa;)Lcom/facebook/ads/redexgen/X/F5;
    .locals 0

    .line 52705
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A01:Lcom/facebook/ads/redexgen/X/F5;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Sa;Lcom/facebook/ads/redexgen/X/F5;)Lcom/facebook/ads/redexgen/X/F5;
    .locals 0

    .line 52706
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sa;->A01:Lcom/facebook/ads/redexgen/X/F5;

    return-object p1
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Sa;)Lcom/facebook/ads/redexgen/X/1v;
    .locals 0

    .line 52707
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A06:Lcom/facebook/ads/redexgen/X/1v;

    return-object p0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sa;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6e

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

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sa;->A07:[B

    return-void

    :array_0
    .array-data 1
        -0x3bt
        -0xet
        -0x5ct
        -0x1bt
        -0x18t
        -0x5ct
        -0x10t
        -0xdt
        -0x1bt
        -0x18t
        -0x5ct
        -0x13t
        -0x9t
        -0x5ct
        -0x1bt
        -0x10t
        -0xat
        -0x17t
        -0x1bt
        -0x18t
        -0x3t
        -0x5ct
        -0x13t
        -0xet
        -0x5ct
        -0xct
        -0xat
        -0xdt
        -0x15t
        -0xat
        -0x17t
        -0x9t
        -0x9t
        -0x4et
        -0x5ct
        -0x23t
        -0xdt
        -0x7t
        -0x5ct
        -0x9t
        -0x14t
        -0xdt
        -0x7t
        -0x10t
        -0x18t
        -0x5ct
        -0x5t
        -0x1bt
        -0x13t
        -0x8t
        -0x5ct
        -0x16t
        -0xdt
        -0xat
        -0x5ct
        -0x1bt
        -0x18t
        -0x30t
        -0xdt
        -0x1bt
        -0x18t
        -0x17t
        -0x18t
        -0x54t
        -0x53t
        -0x5ct
        -0x8t
        -0xdt
        -0x5ct
        -0x1at
        -0x17t
        -0x5ct
        -0x19t
        -0x1bt
        -0x10t
        -0x10t
        -0x17t
        -0x18t
        -0x4t
        0x21t
        0x27t
        0x18t
        0x25t
        0x26t
        0x27t
        0x1ct
        0x27t
        0x1ct
        0x14t
        0x1ft
        -0x2dt
        0x1ft
        0x22t
        0x14t
        0x17t
        -0x2dt
        0x16t
        0x14t
        0x1ft
        0x1ft
        0x18t
        0x17t
        -0x2dt
        0x2at
        0x1bt
        0x1ct
        0x1ft
        0x18t
        -0x2dt
        0x26t
        0x1bt
        0x22t
        0x2at
        0x1ct
        0x21t
        0x1at
        -0x2dt
        0x1ct
        0x21t
        0x27t
        0x18t
        0x25t
        0x26t
        0x27t
        0x1ct
        0x27t
        0x1ct
        0x14t
        0x1ft
        -0x1ft
        0xdt
        0x1ct
        0x15t
    .end array-data
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Sa;Z)Z
    .locals 0

    .line 52708
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Sa;->A03:Z

    return p1
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Sa;Z)Z
    .locals 0

    .line 52709
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Sa;->A02:Z

    return p1
.end method


# virtual methods
.method public final A09()J
    .locals 2

    .line 52710
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A01:Lcom/facebook/ads/redexgen/X/F5;

    if-eqz v0, :cond_0

    .line 52711
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0F()J

    move-result-wide v0

    return-wide v0

    .line 52712
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final A0A()V
    .locals 2

    .line 52713
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sa;->A01:Lcom/facebook/ads/redexgen/X/F5;

    if-eqz v1, :cond_0

    .line 52714
    new-instance v0, Lcom/facebook/ads/redexgen/X/SZ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/SZ;-><init>(Lcom/facebook/ads/redexgen/X/Sa;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0R(Lcom/facebook/ads/redexgen/X/0o;)V

    .line 52715
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sa;->A01:Lcom/facebook/ads/redexgen/X/F5;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0W(Z)V

    .line 52716
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A01:Lcom/facebook/ads/redexgen/X/F5;

    .line 52717
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A03:Z

    .line 52718
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A02:Z

    .line 52719
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

    .line 52720
    .local v0, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A00:J

    .line 52721
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A03:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A01:Lcom/facebook/ads/redexgen/X/F5;

    if-eqz v0, :cond_0

    .line 52722
    sget-object v3, Lcom/facebook/ads/redexgen/X/Sa;->A08:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x4e

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sa;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52723
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A03:Z

    .line 52724
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A02:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52725
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    .line 52726
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A0B:I

    const/16 v2, 0x4e

    const/16 v1, 0x34

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sa;->A05(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 52727
    const/16 v2, 0x82

    const/4 v1, 0x3

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sa;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 52728
    sget-object v5, Lcom/facebook/ads/internal/protocol/AdErrorType;->LOAD_CALLED_WHILE_SHOWING_AD:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 52729
    .local p0, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    .line 52730
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A00:J

    .line 52731
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LZ;->A01(J)J

    move-result-wide v2

    .line 52732
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    .line 52733
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 52734
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2d(JILjava/lang/String;)V

    .line 52735
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Sa;->A05:Lcom/facebook/ads/InterstitialAdExtendedListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A06:Lcom/facebook/ads/redexgen/X/1v;

    .line 52736
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v3

    .line 52737
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v2

    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/AdError;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    .line 52738
    invoke-interface {v4, v3, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 52739
    return-void

    .line 52740
    .end local p0    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sa;->A01:Lcom/facebook/ads/redexgen/X/F5;

    if-eqz v1, :cond_2

    .line 52741
    new-instance v0, Lcom/facebook/ads/redexgen/X/SW;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/SW;-><init>(Lcom/facebook/ads/redexgen/X/Sa;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0R(Lcom/facebook/ads/redexgen/X/0o;)V

    .line 52742
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A01:Lcom/facebook/ads/redexgen/X/F5;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0L()V

    .line 52743
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A01:Lcom/facebook/ads/redexgen/X/F5;

    .line 52744
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 52745
    .local p0, "metrics":Landroid/util/DisplayMetrics;
    new-instance v2, Lcom/facebook/ads/redexgen/X/1m;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A06:Lcom/facebook/ads/redexgen/X/1v;

    .line 52746
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A09()Ljava/lang/String;

    move-result-object v3

    .line 52747
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Jt;->A01(Landroid/util/DisplayMetrics;)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v4

    sget-object v5, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    sget-object v6, Lcom/facebook/ads/redexgen/X/Jq;->A08:Lcom/facebook/ads/redexgen/X/Jq;

    const/4 v7, 0x1

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/1m;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Jr;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/redexgen/X/Jq;ILjava/util/EnumSet;)V

    .line 52748
    .local v8, "adControllerConfig":Lcom/facebook/ads/redexgen/X/1m;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A06:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A07()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/1m;->A05(Ljava/lang/String;)V

    .line 52749
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A06:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/1m;->A06(Ljava/lang/String;)V

    .line 52750
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A06:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A03()Lcom/facebook/ads/RewardData;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/1m;->A03(Lcom/facebook/ads/RewardData;)V

    .line 52751
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sa;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/F5;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/F5;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/1m;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A01:Lcom/facebook/ads/redexgen/X/F5;

    .line 52752
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sa;->A01:Lcom/facebook/ads/redexgen/X/F5;

    new-instance v0, Lcom/facebook/ads/redexgen/X/SY;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/SY;-><init>(Lcom/facebook/ads/redexgen/X/Sa;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0R(Lcom/facebook/ads/redexgen/X/0o;)V

    .line 52753
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A01:Lcom/facebook/ads/redexgen/X/F5;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/SJ;->A0U(Ljava/lang/String;)V

    .line 52754
    return-void
.end method

.method public final A0C()Z
    .locals 1

    .line 52755
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A01:Lcom/facebook/ads/redexgen/X/F5;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0X()Z

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

    .line 52756
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A03:Z

    return v0
.end method

.method public final A0E()Z
    .locals 8

    .line 52757
    sget-object v6, Lcom/facebook/ads/AdError;->SHOW_CALLED_BEFORE_LOAD_ERROR:Lcom/facebook/ads/AdError;

    .line 52758
    .local p0, "showError":Lcom/facebook/ads/AdError;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A03:Z

    const/4 v5, 0x0

    if-nez v0, :cond_0

    .line 52759
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    .line 52760
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A00:J

    .line 52761
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LZ;->A01(J)J

    move-result-wide v1

    .line 52762
    invoke-virtual {v6}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v3

    .line 52763
    invoke-virtual {v6}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 52764
    invoke-interface {v4, v1, v2, v3, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2d(JILjava/lang/String;)V

    .line 52765
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sa;->A05:Lcom/facebook/ads/InterstitialAdExtendedListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A06:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0, v6}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 52766
    return v5

    .line 52767
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A01:Lcom/facebook/ads/redexgen/X/F5;

    if-nez v0, :cond_1

    .line 52768
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    .line 52769
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v7

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A0H:I

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERSTITIAL_CONTROLLER_IS_NULL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 52770
    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 52771
    const/16 v2, 0x82

    const/4 v1, 0x3

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sa;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 52772
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    .line 52773
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A00:J

    .line 52774
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LZ;->A01(J)J

    move-result-wide v2

    .line 52775
    invoke-virtual {v6}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    .line 52776
    invoke-virtual {v6}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 52777
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2d(JILjava/lang/String;)V

    .line 52778
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sa;->A05:Lcom/facebook/ads/InterstitialAdExtendedListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A06:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0, v6}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 52779
    return v5

    .line 52780
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0K()V

    .line 52781
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sa;->A02:Z

    .line 52782
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/Sa;->A03:Z

    .line 52783
    return v0
.end method
