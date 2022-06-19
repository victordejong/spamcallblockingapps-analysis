.class public final Lcom/facebook/ads/redexgen/X/5N;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/RewardedVideoAdApi;
.implements Lcom/facebook/ads/internal/api/Repairable;


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/RewardedVideoAd;

.field public final A01:Lcom/facebook/ads/redexgen/X/1z;

.field public final A02:Lcom/facebook/ads/redexgen/X/F0;

.field public final A03:Lcom/facebook/ads/redexgen/X/XJ;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5N;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5N;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/RewardedVideoAd;)V
    .locals 3

    .line 13388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13389
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/5N;->A00:Lcom/facebook/ads/RewardedVideoAd;

    .line 13390
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/56;->A05(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    .line 13391
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    .line 13392
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->REWARDED_VIDEO:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 13393
    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p2}, Lcom/facebook/ads/redexgen/X/0R;->A2j(Ljava/lang/String;Ljava/lang/String;)V

    .line 13394
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5N;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5N;->A00:Lcom/facebook/ads/RewardedVideoAd;

    new-instance v0, Lcom/facebook/ads/redexgen/X/1z;

    invoke-direct {v0, v2, p2, v1}, Lcom/facebook/ads/redexgen/X/1z;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Ljava/lang/String;Lcom/facebook/ads/RewardedVideoAd;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A01:Lcom/facebook/ads/redexgen/X/1z;

    .line 13395
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/XJ;->A0C(Lcom/facebook/ads/internal/api/Repairable;)V

    .line 13396
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5N;->A01:Lcom/facebook/ads/redexgen/X/1z;

    new-instance v0, Lcom/facebook/ads/redexgen/X/F0;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/F0;-><init>(Lcom/facebook/ads/redexgen/X/1z;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A02:Lcom/facebook/ads/redexgen/X/F0;

    .line 13397
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/5N;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4

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

    const/16 v0, 0x99

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5N;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x74t
        0x76t
        0x7bt
        0x75t
        0x7bt
        0x7bt
        -0x5dt
        0x75t
        -0x5dt
        -0x59t
        -0x58t
        -0x5et
        -0x2ct
        -0x5ft
        -0x2bt
        -0x5at
        -0x7ft
        -0x7at
        0x7ft
        -0x7bt
        0x7ft
        0x7ft
        -0x4ft
        -0x4et
        0x4at
        0x46t
        0x77t
        0x4ct
        0x4at
        0x45t
        0x4et
        0x4ct
        0x52t
        0x77t
        0x7dt
        0x6et
        0x7bt
        0x77t
        0x6at
        0x75t
        0x29t
        0x6et
        0x7bt
        0x7bt
        0x78t
        0x7bt
        0x37t
        0x13t
        -0x33t
        -0x20t
        -0xet
        -0x24t
        -0x13t
        -0x21t
        -0x20t
        -0x21t
        -0x65t
        -0xft
        -0x1ct
        -0x21t
        -0x20t
        -0x16t
        -0x65t
        -0x24t
        -0x21t
        -0x65t
        -0x21t
        -0x20t
        -0x12t
        -0x11t
        -0x13t
        -0x16t
        -0xct
        -0x20t
        -0x21t
        -0x51t
        -0x3et
        -0x2ct
        -0x42t
        -0x31t
        -0x3ft
        -0x3et
        -0x3ft
        0x7dt
        -0x2dt
        -0x3at
        -0x3ft
        -0x3et
        -0x34t
        0x7dt
        -0x42t
        -0x3ft
        0x7dt
        -0x37t
        -0x34t
        -0x42t
        -0x3ft
        0x7dt
        -0x31t
        -0x3et
        -0x32t
        -0x2et
        -0x3et
        -0x30t
        -0x2ft
        -0x3et
        -0x3ft
        -0x3ft
        -0x2ct
        -0x1at
        -0x30t
        -0x1ft
        -0x2dt
        -0x2ct
        -0x2dt
        -0x71t
        -0x1bt
        -0x28t
        -0x2dt
        -0x2ct
        -0x22t
        -0x71t
        -0x30t
        -0x2dt
        -0x71t
        -0x1et
        -0x29t
        -0x22t
        -0x1at
        -0x71t
        -0x2et
        -0x30t
        -0x25t
        -0x25t
        -0x2ct
        -0x2dt
        -0x56t
        -0x55t
        -0x47t
        -0x46t
        -0x48t
        -0x4bt
        -0x41t
        -0x54t
        -0x51t
        -0x5ft
        -0x5ct
        -0x7ft
        -0x5ct
        -0x2bt
        -0x36t
        -0x2ft
        -0x27t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "q8F3UYcndC8Ej6EzPObAfC2CDIoe743"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "WHSSbjkejcnDJnmz9i28DmVQ7s5doV"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "7Ae3C11G9ZnRQnjC1YEsbkjNlyvjMOhJ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "xIErM25UzhDXOZX5lXVK71ghnZu2uIsx"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "TpWxEHvEZyAqJcOvGEooXr2tQ3t7MLKT"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "CpjtrdZmrEbCE1OZgZlStH8uGVShpb"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "AnU5GMoet7ZaRK4jG6aRRqRoHnPXG1EV"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "P"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5N;->A05:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A03(Lcom/facebook/ads/RewardData;)V
    .locals 1

    .line 13398
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A02:Lcom/facebook/ads/redexgen/X/F0;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/F0;->A08(Lcom/facebook/ads/RewardData;)V

    .line 13399
    return-void
.end method

.method public final A04(Lcom/facebook/ads/RewardedVideoAdListener;)V
    .locals 2

    .line 13400
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A01:Lcom/facebook/ads/redexgen/X/1z;

    iput-object p1, v0, Lcom/facebook/ads/redexgen/X/1z;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    .line 13401
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2c(Z)V

    .line 13402
    return-void

    .line 13403
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A05(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/AdExperienceType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 13404
    if-nez p1, :cond_0

    .line 13405
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2g()V

    .line 13406
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5N;->A02:Lcom/facebook/ads/redexgen/X/F0;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A00:Lcom/facebook/ads/RewardedVideoAd;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/F0;->A09(Lcom/facebook/ads/RewardedVideoAd;Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V

    .line 13407
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2e()V

    .line 13408
    return-void

    .line 13409
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5N;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    sget-object v1, Lcom/facebook/ads/redexgen/X/5N;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/5N;->A05:[Ljava/lang/String;

    const-string v1, "VbNMcinO8suVZXvBDeNnaTURWjAwCx"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2f()V

    goto :goto_0
.end method

.method public final bridge synthetic buildLoadAdConfig()Lcom/facebook/ads/Ad$LoadConfigBuilder;
    .locals 1

    .line 13410
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5N;->buildLoadAdConfig()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final buildLoadAdConfig()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;
    .locals 1

    .line 13411
    new-instance v0, Lcom/facebook/ads/redexgen/X/5O;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/5O;-><init>(Lcom/facebook/ads/redexgen/X/5N;)V

    return-object v0
.end method

.method public final bridge synthetic buildShowAdConfig()Lcom/facebook/ads/FullScreenAd$ShowConfigBuilder;
    .locals 1

    .line 13412
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5N;->buildShowAdConfig()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdShowConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final buildShowAdConfig()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdShowConfigBuilder;
    .locals 1

    .line 13413
    new-instance v0, Lcom/facebook/ads/redexgen/X/5P;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/5P;-><init>()V

    return-object v0
.end method

.method public final destroy()V
    .locals 5

    const/16 v2, 0x88

    const/4 v1, 0x7

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5N;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x30

    const/16 v1, 0x1b

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5N;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x18

    const/16 v1, 0x8

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5N;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Jz;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13414
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1L(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13415
    return-void

    .line 13416
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A02:Lcom/facebook/ads/redexgen/X/F0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F0;->A05()V

    .line 13417
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2k()V

    .line 13418
    return-void
.end method

.method public final finalize()V
    .locals 1

    .line 13419
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A02:Lcom/facebook/ads/redexgen/X/F0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SV;->A04()V

    .line 13420
    return-void
.end method

.method public final getPlacementId()Ljava/lang/String;
    .locals 1

    .line 13421
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A01:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/1z;->A0C:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoDuration()I
    .locals 1

    .line 13422
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A01:Lcom/facebook/ads/redexgen/X/1z;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/1z;->A00:I

    return v0
.end method

.method public final isAdInvalidated()Z
    .locals 2

    .line 13423
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A02:Lcom/facebook/ads/redexgen/X/F0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F0;->A0A()Z

    move-result v1

    .line 13424
    .local p0, "isInvalidated":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A4Y(Z)V

    .line 13425
    return v1
.end method

.method public final isAdLoaded()Z
    .locals 1

    .line 13426
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A02:Lcom/facebook/ads/redexgen/X/F0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F0;->A0B()Z

    move-result v0

    return v0
.end method

.method public final loadAd()V
    .locals 5

    const/16 v2, 0x8f

    const/4 v1, 0x6

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5N;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x4b

    const/16 v1, 0x20

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5N;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x8

    const/16 v1, 0x8

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5N;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Jz;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13427
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v1, v0}, Lcom/facebook/ads/redexgen/X/5N;->A05(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V

    .line 13428
    return-void
.end method

.method public final loadAd(Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;)V
    .locals 0

    .line 13429
    check-cast p1, Lcom/facebook/ads/redexgen/X/5O;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/5O;->A00()V

    .line 13430
    return-void
.end method

.method public final repair(Ljava/lang/Throwable;)V
    .locals 7

    .line 13431
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A01:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/1z;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    if-eqz v0, :cond_0

    .line 13432
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A01:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/1z;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/5N;->A00:Lcom/facebook/ads/RewardedVideoAd;

    const/16 v4, 0x7d1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x20

    const/16 v1, 0x10

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5N;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A01:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/1z;->A0B:Lcom/facebook/ads/redexgen/X/XJ;

    .line 13433
    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/LQ;->A03(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/AdError;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    .line 13434
    invoke-interface {v6, v5, v0}, Lcom/facebook/ads/RewardedVideoAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 13435
    :cond_0
    return-void
.end method

.method public final setExtraHints(Lcom/facebook/ads/ExtraHints;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13436
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5N;->A01:Lcom/facebook/ads/redexgen/X/1z;

    invoke-virtual {p1}, Lcom/facebook/ads/ExtraHints;->getHints()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/1z;->A06:Ljava/lang/String;

    .line 13437
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5N;->A01:Lcom/facebook/ads/redexgen/X/1z;

    invoke-virtual {p1}, Lcom/facebook/ads/ExtraHints;->getMediationData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/1z;->A07:Ljava/lang/String;

    .line 13438
    return-void
.end method

.method public final show()Z
    .locals 5

    const/16 v2, 0x95

    const/4 v1, 0x4

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5N;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x6b

    const/16 v1, 0x1d

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5N;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x10

    const/16 v1, 0x8

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5N;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Jz;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13439
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2p()V

    .line 13440
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5N;->A02:Lcom/facebook/ads/redexgen/X/F0;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5N;->A00:Lcom/facebook/ads/RewardedVideoAd;

    new-instance v1, Lcom/facebook/ads/redexgen/X/5P;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/5P;-><init>()V

    .line 13441
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5P;->withAppOrientation(I)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdShowConfigBuilder;

    move-result-object v0

    .line 13442
    invoke-interface {v0}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdShowConfigBuilder;->build()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;

    move-result-object v0

    .line 13443
    invoke-virtual {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/F0;->A0C(Lcom/facebook/ads/RewardedVideoAd;Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;)Z

    move-result v1

    .line 13444
    .local p0, "result":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A2o(Z)V

    .line 13445
    return v1
.end method

.method public final show(Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;)Z
    .locals 5

    const/16 v2, 0x95

    const/4 v1, 0x4

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5N;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x6b

    const/16 v1, 0x1d

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5N;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5N;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Jz;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13446
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2p()V

    .line 13447
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5N;->A02:Lcom/facebook/ads/redexgen/X/F0;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A00:Lcom/facebook/ads/RewardedVideoAd;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/F0;->A0C(Lcom/facebook/ads/RewardedVideoAd;Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;)Z

    move-result v1

    .line 13448
    .local p0, "result":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A2o(Z)V

    .line 13449
    return v1
.end method
