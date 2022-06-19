.class public final Lcom/facebook/ads/redexgen/X/bH;
.super Lcom/facebook/ads/redexgen/X/20;
.source ""

# interfaces
.implements Lcom/facebook/ads/InterstitialAdExtendedListener;


# static fields
.field public static A01:[B


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/bQ;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bH;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/22;Lcom/facebook/ads/redexgen/X/bQ;)V
    .locals 0

    .line 69277
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/20;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/22;)V

    .line 69278
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/bH;->A00:Lcom/facebook/ads/redexgen/X/bQ;

    .line 69279
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/bH;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1b

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x41

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/bH;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x3et
        -0x39t
        -0x33t
        -0x28t
        -0x42t
        -0x35t
        -0x35t
        -0x38t
        -0x35t
        -0x28t
        -0x44t
        -0x38t
        -0x43t
        -0x42t
        -0x28t
        -0x3ct
        -0x42t
        -0x2et
        0x75t
        0x78t
        0x77t
        0x70t
        -0x78t
        0x72t
        0x77t
        0x7ft
        0x6at
        0x75t
        0x72t
        0x6dt
        0x6at
        0x7dt
        0x72t
        0x78t
        0x77t
        -0x78t
        0x7dt
        0x72t
        0x76t
        0x6et
        -0x78t
        0x74t
        0x6et
        -0x7et
        -0x42t
        -0x41t
        -0x43t
        -0x36t
        -0x50t
        -0x43t
        -0x43t
        -0x46t
        -0x43t
        -0x36t
        -0x48t
        -0x50t
        -0x42t
        -0x42t
        -0x54t
        -0x4et
        -0x50t
        -0x36t
        -0x4at
        -0x50t
        -0x3ct
    .end array-data
.end method


# virtual methods
.method public final onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 4

    .line 69280
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/20;->A00:Lcom/facebook/ads/redexgen/X/22;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/20;->A01:Ljava/lang/String;

    const/16 v1, 0x400

    const/4 v0, 0x0

    invoke-interface {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/22;->AAq(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 69281
    return-void
.end method

.method public final onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 6

    .line 69282
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 69283
    .local p0, "extraData":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bH;->A00:Lcom/facebook/ads/redexgen/X/bQ;

    .line 69284
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bQ;->A09()J

    move-result-wide v2

    .line 69285
    const/16 v4, 0x12

    const/16 v1, 0x1a

    const/16 v0, 0xe

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/bH;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 69286
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/20;->A00:Lcom/facebook/ads/redexgen/X/22;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/20;->A01:Ljava/lang/String;

    const/16 v0, 0x3fc

    invoke-interface {v2, v0, v1, v5}, Lcom/facebook/ads/redexgen/X/22;->AAq(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 69287
    return-void
.end method

.method public final onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 5

    .line 69288
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 69289
    .local p0, "extraData":Landroid/os/Bundle;
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x2c

    const/16 v1, 0x15

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bH;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69290
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v3

    const/4 v2, 0x0

    const/16 v1, 0x12

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bH;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69291
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/20;->A00:Lcom/facebook/ads/redexgen/X/22;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/20;->A01:Ljava/lang/String;

    const/16 v0, 0x3ff

    invoke-interface {v2, v0, v1, v4}, Lcom/facebook/ads/redexgen/X/22;->AAq(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 69292
    return-void
.end method

.method public final onInterstitialActivityDestroyed()V
    .locals 4

    .line 69293
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/20;->A00:Lcom/facebook/ads/redexgen/X/22;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/20;->A01:Ljava/lang/String;

    const/16 v1, 0x402

    const/4 v0, 0x0

    invoke-interface {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/22;->AAq(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 69294
    return-void
.end method

.method public final onInterstitialDismissed(Lcom/facebook/ads/Ad;)V
    .locals 4

    .line 69295
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/20;->A00:Lcom/facebook/ads/redexgen/X/22;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/20;->A01:Ljava/lang/String;

    const/16 v1, 0x3fe

    const/4 v0, 0x0

    invoke-interface {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/22;->AAq(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 69296
    return-void
.end method

.method public final onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V
    .locals 4

    .line 69297
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/20;->A00:Lcom/facebook/ads/redexgen/X/22;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/20;->A01:Ljava/lang/String;

    const/16 v1, 0x3fd

    const/4 v0, 0x0

    invoke-interface {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/22;->AAq(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 69298
    return-void
.end method

.method public final onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 4

    .line 69299
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/20;->A00:Lcom/facebook/ads/redexgen/X/22;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/20;->A01:Ljava/lang/String;

    const/16 v1, 0x401

    const/4 v0, 0x0

    invoke-interface {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/22;->AAq(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 69300
    return-void
.end method

.method public final onRewardedAdCompleted()V
    .locals 4

    .line 69301
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/20;->A00:Lcom/facebook/ads/redexgen/X/22;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/20;->A01:Ljava/lang/String;

    const/16 v1, 0xbb8

    const/4 v0, 0x0

    invoke-interface {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/22;->AAq(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 69302
    return-void
.end method

.method public final onRewardedAdServerFailed()V
    .locals 4

    .line 69303
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/20;->A00:Lcom/facebook/ads/redexgen/X/22;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/20;->A01:Ljava/lang/String;

    const/16 v1, 0xbba

    const/4 v0, 0x0

    invoke-interface {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/22;->AAq(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 69304
    return-void
.end method

.method public final onRewardedAdServerSucceeded()V
    .locals 4

    .line 69305
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/20;->A00:Lcom/facebook/ads/redexgen/X/22;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/20;->A01:Ljava/lang/String;

    const/16 v1, 0xbb9

    const/4 v0, 0x0

    invoke-interface {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/22;->AAq(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 69306
    return-void
.end method
