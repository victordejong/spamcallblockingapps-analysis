.class public final Lcom/facebook/ads/redexgen/X/bK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/1x;


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/bV;

.field public final A01:Lcom/facebook/ads/redexgen/X/1s;

.field public final A02:Lcom/facebook/ads/redexgen/X/1v;

.field public final A03:Lcom/facebook/ads/redexgen/X/Wm;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bK;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bK;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1v;Lcom/facebook/ads/redexgen/X/1s;Lcom/facebook/ads/redexgen/X/bV;)V
    .locals 0

    .line 69374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69375
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bK;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    .line 69376
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/bK;->A02:Lcom/facebook/ads/redexgen/X/1v;

    .line 69377
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/bK;->A01:Lcom/facebook/ads/redexgen/X/1s;

    .line 69378
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/bK;->A00:Lcom/facebook/ads/redexgen/X/bV;

    .line 69379
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/bK;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x70

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

    const/16 v0, 0x9b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/bK;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x6et
        0x4bt
        0xft
        0x40t
        0x4dt
        0x45t
        0x4at
        0x4ct
        0x5bt
        0xft
        0x46t
        0x5ct
        0xft
        0x41t
        0x5at
        0x43t
        0x43t
        0x9t
        0x1et
        0x5t
        0xft
        0x7t
        0xet
        0x14t
        0xet
        0x13t
        0x1ft
        0x19t
        0xat
        0x18t
        0x14t
        0x0t
        0xet
        0x12t
        0x2ft
        0x2bt
        0x28t
        0x1ct
        0xdt
        0x0t
        0xct
        0x7t
        0xat
        0xct
        0x27t
        0xct
        0x1dt
        0x1et
        0x6t
        0x1bt
        0x2t
        0x57t
        0x50t
        0x4at
        0x41t
        0x5bt
        0x4ct
        0x4ct
        0x51t
        0x4ct
        0x41t
        0x5dt
        0x51t
        0x5at
        0x5bt
        0x41t
        0x55t
        0x5bt
        0x47t
        0xet
        0xdt
        0xct
        0x5t
        0x1dt
        0xbt
        0xct
        0x14t
        0x3t
        0xet
        0xbt
        0x6t
        0x3t
        0x16t
        0xbt
        0xdt
        0xct
        0x1dt
        0x16t
        0xbt
        0xft
        0x7t
        0x1dt
        0x9t
        0x7t
        0x1bt
        0x27t
        0xft
        0x19t
        0x19t
        0xbt
        0xdt
        0xft
        0x50t
        0x4at
        0x76t
        0x52t
        0x48t
        0x48t
        0x52t
        0x55t
        0x5ct
        0x1bt
        0x59t
        0x4et
        0x55t
        0x5ft
        0x57t
        0x5et
        0x1bt
        0x5dt
        0x54t
        0x49t
        0x1bt
        0x56t
        0x5et
        0x48t
        0x48t
        0x5at
        0x5ct
        0x5et
        0x15t
        0x23t
        0x24t
        0x22t
        0x2ft
        0x35t
        0x22t
        0x22t
        0x3ft
        0x22t
        0x2ft
        0x3dt
        0x35t
        0x23t
        0x23t
        0x31t
        0x37t
        0x35t
        0x2ft
        0x3bt
        0x35t
        0x29t
        0x48t
        0x59t
        0x40t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "41kFMkgYcMqjBdEAHWyZzQ9Q1YQDMkZo"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "a1qrqbdzoLKte5dp2TdqsHV2Btmo8HIO"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "VlRnhGghZyM7Xz"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "WVmrs7jRPAo6ieNv"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "abQhu9SgesOIRxLkCU6L7yAdrfeNFYXV"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "iVqBhi5IkesALAcr"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "e6wMTa30i0R6i9"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "GTVyj1NjpD4uWxM1mBTnBnh1LH0X6W6g"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/bK;->A05:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A7b(Landroid/os/Message;)V
    .locals 10

    .line 69380
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bK;->A02:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v6

    .line 69381
    .local p0, "ad":Lcom/facebook/ads/Ad;
    const/16 v2, 0x98

    const/4 v1, 0x3

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bK;->A00(III)Ljava/lang/String;

    move-result-object v7

    if-nez v6, :cond_0

    .line 69382
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bK;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    .line 69383
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v4

    sget v3, Lcom/facebook/ads/redexgen/X/8e;->A0A:I

    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bK;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 69384
    invoke-interface {v4, v7, v3, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 69385
    return-void

    .line 69386
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v9, 0xa

    const/4 v4, 0x0

    const/16 v2, 0x5f

    const/16 v1, 0x9

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bK;->A00(III)Ljava/lang/String;

    move-result-object v8

    const/16 v2, 0x68

    const/16 v1, 0x1b

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bK;->A00(III)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x11

    const/16 v1, 0x11

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bK;->A00(III)Ljava/lang/String;

    move-result-object v1

    if-eq v3, v9, :cond_9

    const/16 v0, 0x3fc

    if-eq v3, v0, :cond_2

    const/16 v0, 0x3fe

    if-eq v3, v0, :cond_1

    const/16 v0, 0x3ff

    if-eq v3, v0, :cond_9

    packed-switch v3, :pswitch_data_0

    .line 69387
    .end local v0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bK;->A02:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    if-nez v0, :cond_5

    .line 69388
    return-void

    .line 69389
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bK;->A01:Lcom/facebook/ads/redexgen/X/1s;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1s;->ADu()V

    .line 69390
    goto :goto_0

    .line 69391
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bK;->A01:Lcom/facebook/ads/redexgen/X/1s;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1s;->ADo()V

    .line 69392
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    sget-object v2, Lcom/facebook/ads/redexgen/X/bK;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 69393
    .local v0, "bundle":Landroid/os/Bundle;
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/bK;->A05:[Ljava/lang/String;

    const-string v1, "w1XYum1gU07qOxRQ11S6l3eVKorNtDz9"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "lxN7y0ETPjwD6xsGrgnzhnoOTtOTKl3j"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v9, :cond_4

    .line 69394
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/bK;->A02:Lcom/facebook/ads/redexgen/X/1v;

    const/16 v2, 0x45

    const/16 v1, 0x1a

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bK;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/1v;->A0B(J)V

    .line 69395
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bK;->A02:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/1v;->A0C(Lcom/facebook/ads/InterstitialAd;)V

    .line 69396
    goto :goto_0

    .line 69397
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bK;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    .line 69398
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v3

    sget v2, Lcom/facebook/ads/redexgen/X/8e;->A0K:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v5, v1}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69399
    invoke-interface {v3, v7, v2, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    goto :goto_1

    .line 69400
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1

    .line 69401
    :cond_6
    :goto_2
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bK;->A02:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A04()Lcom/facebook/ads/RewardedAdListener;

    move-result-object v0

    if-nez v0, :cond_8

    .line 69402
    return-void

    .line 69403
    :pswitch_2
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/bK;->A02:Lcom/facebook/ads/redexgen/X/1v;

    sget-object v2, Lcom/facebook/ads/redexgen/X/bK;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/bK;->A05:[Ljava/lang/String;

    const-string v1, "bwjLJsV5SavG50"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "yIXF82kNs5jami"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/1v;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/InterstitialAdExtendedListener;

    if-eqz v0, :cond_6

    .line 69404
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bK;->A02:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/InterstitialAdExtendedListener;

    .line 69405
    invoke-interface {v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onInterstitialActivityDestroyed()V

    goto :goto_2

    .line 69406
    :cond_8
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2

    .line 69407
    :goto_3
    return-void

    .line 69408
    :pswitch_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bK;->A02:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A04()Lcom/facebook/ads/RewardedAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/RewardedAdListener;->onRewardedAdServerFailed()V

    goto :goto_3

    .line 69409
    :pswitch_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bK;->A02:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A04()Lcom/facebook/ads/RewardedAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/RewardedAdListener;->onRewardedAdCompleted()V

    .line 69410
    return-void

    .line 69411
    :pswitch_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bK;->A02:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A04()Lcom/facebook/ads/RewardedAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/RewardedAdListener;->onRewardedAdServerSucceeded()V

    .line 69412
    return-void

    .line 69413
    :pswitch_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bK;->A02:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/facebook/ads/InterstitialAdListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    .line 69414
    return-void

    .line 69415
    :pswitch_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bK;->A02:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/facebook/ads/InterstitialAdListener;->onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V

    .line 69416
    return-void

    .line 69417
    :pswitch_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bK;->A02:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/facebook/ads/InterstitialAdListener;->onInterstitialDismissed(Lcom/facebook/ads/Ad;)V

    .line 69418
    return-void

    .line 69419
    :pswitch_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bK;->A02:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/facebook/ads/InterstitialAdListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    .line 69420
    return-void

    .line 69421
    :pswitch_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bK;->A02:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/facebook/ads/InterstitialAdListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    .line 69422
    return-void

    .line 69423
    :cond_9
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 69424
    .local v0, "errorBundle":Landroid/os/Bundle;
    if-eqz v3, :cond_b

    .line 69425
    const/16 v2, 0x33

    const/16 v1, 0x12

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bK;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 69426
    .local p1, "errorCode":I
    const/16 v2, 0x83

    const/16 v1, 0x15

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bK;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69427
    .local v6, "errorMessage":Ljava/lang/String;
    new-instance v1, Lcom/facebook/ads/AdError;

    invoke-direct {v1, v5, v3}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    .line 69428
    .local v1, "error":Lcom/facebook/ads/AdError;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bK;->A01:Lcom/facebook/ads/redexgen/X/1s;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/1s;->ADk(Lcom/facebook/ads/AdError;)V

    .line 69429
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bK;->A02:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 69430
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bK;->A02:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1v;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    invoke-interface {v0, v6, v1}, Lcom/facebook/ads/InterstitialAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 69431
    :goto_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bK;->A02:Lcom/facebook/ads/redexgen/X/1v;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/1v;->A0C(Lcom/facebook/ads/InterstitialAd;)V

    .line 69432
    return-void

    .line 69433
    :cond_a
    const/16 v2, 0x22

    const/16 v1, 0x11

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bK;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 69434
    :cond_b
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bK;->A01:Lcom/facebook/ads/redexgen/X/1s;

    sget-object v0, Lcom/facebook/ads/redexgen/X/1r;->A04:Lcom/facebook/ads/redexgen/X/1r;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/1s;->ADh(Lcom/facebook/ads/redexgen/X/1r;)V

    .line 69435
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bK;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    .line 69436
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v3

    sget v2, Lcom/facebook/ads/redexgen/X/8e;->A0K:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v5, v1}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69437
    invoke-interface {v3, v7, v2, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x3f7
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3fc
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_9
        :pswitch_a
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xbb8
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method
