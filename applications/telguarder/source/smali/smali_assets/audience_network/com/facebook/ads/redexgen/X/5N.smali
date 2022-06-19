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

.field public final A02:Lcom/facebook/ads/redexgen/X/Ev;

.field public final A03:Lcom/facebook/ads/redexgen/X/Wm;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5N;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5N;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/RewardedVideoAd;)V
    .locals 3

    .line 13480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13481
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/5N;->A00:Lcom/facebook/ads/RewardedVideoAd;

    .line 13482
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/56;->A05(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    .line 13483
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    .line 13484
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->REWARDED_VIDEO:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 13485
    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p2}, Lcom/facebook/ads/redexgen/X/0R;->A2h(Ljava/lang/String;Ljava/lang/String;)V

    .line 13486
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5N;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5N;->A00:Lcom/facebook/ads/RewardedVideoAd;

    new-instance v0, Lcom/facebook/ads/redexgen/X/1z;

    invoke-direct {v0, v2, p2, v1}, Lcom/facebook/ads/redexgen/X/1z;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/String;Lcom/facebook/ads/RewardedVideoAd;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A01:Lcom/facebook/ads/redexgen/X/1z;

    .line 13487
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Wm;->A0D(Lcom/facebook/ads/internal/api/Repairable;)V

    .line 13488
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5N;->A01:Lcom/facebook/ads/redexgen/X/1z;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ev;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Ev;-><init>(Lcom/facebook/ads/redexgen/X/1z;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A02:Lcom/facebook/ads/redexgen/X/Ev;

    .line 13489
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

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x9

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
        0x78t
        0x70t
        0x78t
        0x7ft
        0x78t
        0x7dt
        0x7et
        0x2dt
        0x1dt
        0x16t
        0x4at
        0x49t
        0x4ct
        0x19t
        0x1ft
        0x1et
        0x64t
        0x69t
        0x34t
        0x37t
        0x66t
        0x65t
        0x63t
        0x68t
        0x21t
        0x76t
        0x26t
        0x74t
        0x26t
        0x2ft
        0x72t
        0x72t
        0x34t
        0x13t
        0x9t
        0x18t
        0xft
        0x13t
        0x1ct
        0x11t
        0x5dt
        0x18t
        0xft
        0xft
        0x12t
        0xft
        0x53t
        0x77t
        0x69t
        0x5et
        0x4ct
        0x5at
        0x49t
        0x5ft
        0x5et
        0x5ft
        0x1bt
        0x4dt
        0x52t
        0x5ft
        0x5et
        0x54t
        0x1bt
        0x5at
        0x5ft
        0x1bt
        0x5ft
        0x5et
        0x48t
        0x4ft
        0x49t
        0x54t
        0x42t
        0x5et
        0x5ft
        0x3bt
        0xct
        0x1et
        0x8t
        0x1bt
        0xdt
        0xct
        0xdt
        0x49t
        0x1ft
        0x0t
        0xdt
        0xct
        0x6t
        0x49t
        0x8t
        0xdt
        0x49t
        0x5t
        0x6t
        0x8t
        0xdt
        0x49t
        0x1bt
        0xct
        0x18t
        0x1ct
        0xct
        0x1at
        0x1dt
        0xct
        0xdt
        0x21t
        0x16t
        0x4t
        0x12t
        0x1t
        0x17t
        0x16t
        0x17t
        0x53t
        0x5t
        0x1at
        0x17t
        0x16t
        0x1ct
        0x53t
        0x12t
        0x17t
        0x53t
        0x0t
        0x1bt
        0x1ct
        0x4t
        0x53t
        0x10t
        0x12t
        0x1ft
        0x1ft
        0x16t
        0x17t
        0x42t
        0x43t
        0x55t
        0x52t
        0x54t
        0x49t
        0x5ft
        0x49t
        0x4at
        0x44t
        0x41t
        0x64t
        0x41t
        0x16t
        0xdt
        0xat
        0x12t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "k8yEFjaDDmJNEMKVrce3vEWkKDhb9GrD"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "5HJZEEaowyWiZ6x5JcW91LnqKILZK9iv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "JCdbC5zohUOjfclxz"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "cbOkRGwJ0he66t85Zev39Ck1DLyP"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "QnWh1EoQaEskbAIVlUx7Y0ywxM6b"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "GMmjAnpO"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "8CCIVLGxcMAoQXrfALv1hDyohO9DfryR"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "UYxyoZ6BjjTfNK3ar4eEie7WMpDsFwCV"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5N;->A05:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A03(Lcom/facebook/ads/RewardData;)V
    .locals 1

    .line 13490
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A02:Lcom/facebook/ads/redexgen/X/Ev;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ev;->A09(Lcom/facebook/ads/RewardData;)V

    .line 13491
    return-void
.end method

.method public final A04(Lcom/facebook/ads/RewardedVideoAdListener;)V
    .locals 3

    .line 13492
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A01:Lcom/facebook/ads/redexgen/X/1z;

    iput-object p1, v0, Lcom/facebook/ads/redexgen/X/1z;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    .line 13493
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2a(Z)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/5N;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 13494
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/5N;->A05:[Ljava/lang/String;

    const-string v1, "1SRpemADNZd8xb9i9fuLSYNF0AwY2Tu2"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-void
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

    .line 13495
    if-nez p1, :cond_0

    .line 13496
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2e()V

    .line 13497
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5N;->A02:Lcom/facebook/ads/redexgen/X/Ev;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A00:Lcom/facebook/ads/RewardedVideoAd;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Ev;->A0A(Lcom/facebook/ads/RewardedVideoAd;Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V

    .line 13498
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2c()V

    .line 13499
    return-void

    .line 13500
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5N;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    sget-object v1, Lcom/facebook/ads/redexgen/X/5N;->A05:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x48

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/5N;->A05:[Ljava/lang/String;

    const-string v1, "67CWYk6q7caxeYWX3cgidRuGJDEH"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "JzT9b8y5FiDfchRrDecE58hhFV9F"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2d()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final bridge synthetic buildLoadAdConfig()Lcom/facebook/ads/Ad$LoadConfigBuilder;
    .locals 1

    .line 13501
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5N;->buildLoadAdConfig()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final buildLoadAdConfig()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;
    .locals 1

    .line 13502
    new-instance v0, Lcom/facebook/ads/redexgen/X/5O;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/5O;-><init>(Lcom/facebook/ads/redexgen/X/5N;)V

    return-object v0
.end method

.method public final bridge synthetic buildShowAdConfig()Lcom/facebook/ads/FullScreenAd$ShowConfigBuilder;
    .locals 1

    .line 13503
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5N;->buildShowAdConfig()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdShowConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final buildShowAdConfig()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdShowConfigBuilder;
    .locals 1

    .line 13504
    new-instance v0, Lcom/facebook/ads/redexgen/X/5P;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/5P;-><init>()V

    return-object v0
.end method

.method public final destroy()V
    .locals 5

    const/16 v2, 0x88

    const/4 v1, 0x7

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5N;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x30

    const/16 v1, 0x1b

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5N;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x8

    const/16 v1, 0x8

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5N;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/K1;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13505
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1P(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13506
    return-void

    .line 13507
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A02:Lcom/facebook/ads/redexgen/X/Ev;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ev;->A06()V

    .line 13508
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2i()V

    .line 13509
    return-void
.end method

.method public final finalize()V
    .locals 1

    .line 13510
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A02:Lcom/facebook/ads/redexgen/X/Ev;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bV;->A05()V

    .line 13511
    return-void
.end method

.method public final getPlacementId()Ljava/lang/String;
    .locals 1

    .line 13512
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A01:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/1z;->A0C:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoDuration()I
    .locals 1

    .line 13513
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A01:Lcom/facebook/ads/redexgen/X/1z;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/1z;->A00:I

    return v0
.end method

.method public final isAdInvalidated()Z
    .locals 2

    .line 13514
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A02:Lcom/facebook/ads/redexgen/X/Ev;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ev;->A0B()Z

    move-result v1

    .line 13515
    .local p0, "isInvalidated":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A4V(Z)V

    .line 13516
    return v1
.end method

.method public final isAdLoaded()Z
    .locals 1

    .line 13517
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A02:Lcom/facebook/ads/redexgen/X/Ev;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ev;->A0C()Z

    move-result v0

    return v0
.end method

.method public final loadAd()V
    .locals 5

    const/16 v2, 0x8f

    const/4 v1, 0x6

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5N;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x4b

    const/16 v1, 0x20

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5N;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5N;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/K1;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13518
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v1, v0}, Lcom/facebook/ads/redexgen/X/5N;->A05(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V

    .line 13519
    return-void
.end method

.method public final loadAd(Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;)V
    .locals 0

    .line 13520
    check-cast p1, Lcom/facebook/ads/redexgen/X/5O;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/5O;->A00()V

    .line 13521
    return-void
.end method

.method public final repair(Ljava/lang/Throwable;)V
    .locals 7

    .line 13522
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A01:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/1z;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    if-eqz v0, :cond_0

    .line 13523
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A01:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/1z;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/5N;->A00:Lcom/facebook/ads/RewardedVideoAd;

    const/16 v4, 0x7d1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x20

    const/16 v1, 0x10

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5N;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A01:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/1z;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    .line 13524
    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/LS;->A03(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/AdError;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    .line 13525
    invoke-interface {v6, v5, v0}, Lcom/facebook/ads/RewardedVideoAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 13526
    :cond_0
    return-void
.end method

.method public final setExtraHints(Lcom/facebook/ads/ExtraHints;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13527
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5N;->A01:Lcom/facebook/ads/redexgen/X/1z;

    invoke-virtual {p1}, Lcom/facebook/ads/ExtraHints;->getHints()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/1z;->A06:Ljava/lang/String;

    .line 13528
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5N;->A01:Lcom/facebook/ads/redexgen/X/1z;

    invoke-virtual {p1}, Lcom/facebook/ads/ExtraHints;->getMediationData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/1z;->A07:Ljava/lang/String;

    .line 13529
    return-void
.end method

.method public final show()Z
    .locals 5

    const/16 v2, 0x95

    const/4 v1, 0x4

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5N;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x6b

    const/16 v1, 0x1d

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5N;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x10

    const/16 v1, 0x8

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5N;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/K1;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13530
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2n()V

    .line 13531
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5N;->A02:Lcom/facebook/ads/redexgen/X/Ev;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5N;->A00:Lcom/facebook/ads/RewardedVideoAd;

    new-instance v1, Lcom/facebook/ads/redexgen/X/5P;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/5P;-><init>()V

    .line 13532
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5P;->withAppOrientation(I)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdShowConfigBuilder;

    move-result-object v0

    .line 13533
    invoke-interface {v0}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdShowConfigBuilder;->build()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;

    move-result-object v0

    .line 13534
    invoke-virtual {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Ev;->A0D(Lcom/facebook/ads/RewardedVideoAd;Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;)Z

    move-result v1

    .line 13535
    .local p0, "result":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A2m(Z)V

    .line 13536
    return v1
.end method

.method public final show(Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;)Z
    .locals 5

    const/16 v2, 0x95

    const/4 v1, 0x4

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5N;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x6b

    const/16 v1, 0x1d

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5N;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x18

    const/16 v1, 0x8

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5N;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/K1;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13537
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2n()V

    .line 13538
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5N;->A02:Lcom/facebook/ads/redexgen/X/Ev;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A00:Lcom/facebook/ads/RewardedVideoAd;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/Ev;->A0D(Lcom/facebook/ads/RewardedVideoAd;Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;)Z

    move-result v1

    .line 13539
    .local p0, "result":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A2m(Z)V

    .line 13540
    return v1
.end method
