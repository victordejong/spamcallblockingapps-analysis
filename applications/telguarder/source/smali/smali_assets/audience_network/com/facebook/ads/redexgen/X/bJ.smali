.class public final Lcom/facebook/ads/redexgen/X/bJ;
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

.field public final A02:Lcom/facebook/ads/redexgen/X/1z;

.field public final A03:Lcom/facebook/ads/redexgen/X/Wm;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bJ;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bJ;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1z;Lcom/facebook/ads/redexgen/X/1s;Lcom/facebook/ads/redexgen/X/bV;)V
    .locals 0

    .line 69309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69310
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bJ;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    .line 69311
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/bJ;->A02:Lcom/facebook/ads/redexgen/X/1z;

    .line 69312
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/bJ;->A01:Lcom/facebook/ads/redexgen/X/1s;

    .line 69313
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/bJ;->A00:Lcom/facebook/ads/redexgen/X/bV;

    .line 69314
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/bJ;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x42

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

    const/16 v0, 0xce

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/bJ;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x57t
        0x72t
        0x36t
        0x79t
        0x74t
        0x7ct
        0x73t
        0x75t
        0x62t
        0x36t
        0x7ft
        0x65t
        0x36t
        0x78t
        0x63t
        0x7at
        0x7at
        0x3t
        0x14t
        0xft
        0x5t
        0xdt
        0x4t
        0x1et
        0x4t
        0x19t
        0x15t
        0x13t
        0x0t
        0x12t
        0x1et
        0xat
        0x4t
        0x18t
        0x41t
        0x45t
        0x46t
        0x72t
        0x63t
        0x6et
        0x62t
        0x69t
        0x64t
        0x62t
        0x49t
        0x62t
        0x73t
        0x70t
        0x68t
        0x75t
        0x6ct
        0x5et
        0x59t
        0x43t
        0x48t
        0x52t
        0x45t
        0x45t
        0x58t
        0x45t
        0x48t
        0x54t
        0x58t
        0x53t
        0x52t
        0x48t
        0x5ct
        0x52t
        0x4et
        0x60t
        0x67t
        0x7dt
        0x76t
        0x7bt
        0x7ft
        0x76t
        0x7ft
        0x60t
        0x6dt
        0x6ct
        0x66t
        0x76t
        0x6dt
        0x7ct
        0x7bt
        0x68t
        0x7dt
        0x60t
        0x66t
        0x67t
        0x76t
        0x62t
        0x6ct
        0x70t
        0x43t
        0x40t
        0x41t
        0x48t
        0x50t
        0x46t
        0x41t
        0x59t
        0x4et
        0x43t
        0x46t
        0x4bt
        0x4et
        0x5bt
        0x46t
        0x40t
        0x41t
        0x50t
        0x5bt
        0x46t
        0x42t
        0x4at
        0x50t
        0x44t
        0x4at
        0x56t
        0x22t
        0xat
        0x1ct
        0x1ct
        0xet
        0x8t
        0xat
        0x55t
        0x4ft
        0x7ft
        0x5bt
        0x41t
        0x41t
        0x5bt
        0x5ct
        0x55t
        0x12t
        0x50t
        0x47t
        0x5ct
        0x56t
        0x5et
        0x57t
        0x12t
        0x54t
        0x5dt
        0x40t
        0x12t
        0x5ft
        0x57t
        0x41t
        0x41t
        0x53t
        0x55t
        0x57t
        0x9t
        0x2dt
        0x37t
        0x37t
        0x2dt
        0x2at
        0x23t
        0x64t
        0x26t
        0x31t
        0x2at
        0x20t
        0x28t
        0x21t
        0x64t
        0x22t
        0x2bt
        0x36t
        0x64t
        0x29t
        0x21t
        0x37t
        0x37t
        0x25t
        0x23t
        0x21t
        0x6at
        0x36t
        0x31t
        0x37t
        0x3at
        0x20t
        0x37t
        0x37t
        0x2at
        0x37t
        0x3at
        0x28t
        0x20t
        0x36t
        0x36t
        0x24t
        0x22t
        0x20t
        0x3at
        0x2et
        0x20t
        0x3ct
        0x5t
        0x14t
        0xdt
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "hwQkg6wydYZbPmHd9ra1rendlmZDH9o"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "EZChF1CYxmcTUt5XULmCX0u1P"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "cTSi58RkvxQZRZutX5Kpp639urCcNivT"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ILotitRaBN9o4fzRERLTj8sSXBTWlTTb"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "JZvxvLc"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "wZ48NZZ1KfL4Szkg73ZSFlGgbHtYLjcz"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "R8pWvTFrbs0CFqCxyNRNjvJ5bjwX3"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "qzEf3MAjBvJJtqQXUiJPrqpPaexFktRV"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/bJ;->A05:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A7b(Landroid/os/Message;)V
    .locals 11

    .line 69315
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A02:Lcom/facebook/ads/redexgen/X/1z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1z;->A00()Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v4

    .line 69316
    .local p0, "ad":Lcom/facebook/ads/Ad;
    const/16 v2, 0xcb

    const/4 v1, 0x3

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bJ;->A00(III)Ljava/lang/String;

    move-result-object v7

    if-nez v4, :cond_0

    .line 69317
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    .line 69318
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v4

    sget v3, Lcom/facebook/ads/redexgen/X/8e;->A0A:I

    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bJ;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 69319
    invoke-interface {v4, v7, v3, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 69320
    return-void

    .line 69321
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v8, 0xa

    const/16 v2, 0x78

    const/16 v1, 0x9

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bJ;->A00(III)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x11

    const/16 v1, 0x11

    const/4 v0, 0x3

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/bJ;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    if-eq v3, v8, :cond_e

    const/16 v8, 0x83e

    const/16 v5, 0x834

    if-eq v3, v5, :cond_4

    const/16 v0, 0x837

    if-eq v3, v0, :cond_e

    const/16 v0, 0x83a

    if-eq v3, v0, :cond_3

    if-eq v3, v8, :cond_2

    const/16 v0, 0x7da

    if-eq v3, v0, :cond_1

    const/16 v0, 0x7db

    .line 69322
    .end local v0
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A02:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/1z;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    sget-object v1, Lcom/facebook/ads/redexgen/X/bJ;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_d

    sget-object v2, Lcom/facebook/ads/redexgen/X/bJ;->A05:[Ljava/lang/String;

    const-string v1, "nZDiJI4iz"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v3, :cond_6

    .line 69323
    return-void

    .line 69324
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A01:Lcom/facebook/ads/redexgen/X/1s;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1s;->ADu()V

    .line 69325
    goto :goto_0

    .line 69326
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A02:Lcom/facebook/ads/redexgen/X/1z;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/1z;->A01(Lcom/facebook/ads/RewardedVideoAd;)V

    .line 69327
    goto :goto_0

    .line 69328
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A01:Lcom/facebook/ads/redexgen/X/1s;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1s;->ADo()V

    .line 69329
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 69330
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v9, :cond_5

    .line 69331
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/bJ;->A02:Lcom/facebook/ads/redexgen/X/1z;

    const/16 v2, 0x5e

    const/16 v1, 0x1a

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bJ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/facebook/ads/redexgen/X/1z;->A01:J

    .line 69332
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/bJ;->A02:Lcom/facebook/ads/redexgen/X/1z;

    const/16 v2, 0x45

    const/16 v1, 0x19

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bJ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/facebook/ads/redexgen/X/1z;->A00:I

    .line 69333
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A02:Lcom/facebook/ads/redexgen/X/1z;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/1z;->A01(Lcom/facebook/ads/RewardedVideoAd;)V

    .line 69334
    goto :goto_0

    .line 69335
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    .line 69336
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v10

    sget v9, Lcom/facebook/ads/redexgen/X/8e;->A0K:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x81

    const/16 v1, 0x1a

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bJ;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69337
    invoke-interface {v10, v7, v9, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    goto :goto_1

    .line 69338
    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v5, :cond_c

    if-eq v0, v8, :cond_b

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 69339
    :goto_2
    return-void

    .line 69340
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A02:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/1z;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    invoke-interface {v0}, Lcom/facebook/ads/RewardedVideoAdListener;->onRewardedVideoCompleted()V

    goto :goto_2

    .line 69341
    :pswitch_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/bJ;->A02:Lcom/facebook/ads/redexgen/X/1z;

    sget-object v1, Lcom/facebook/ads/redexgen/X/bJ;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/bJ;->A05:[Ljava/lang/String;

    const-string v1, "0IooEpc5XoMFwfovHEQu"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/1z;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    instance-of v0, v0, Lcom/facebook/ads/S2SRewardedVideoAdListener;

    if-eqz v0, :cond_7

    .line 69342
    :goto_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A02:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/1z;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    check-cast v0, Lcom/facebook/ads/S2SRewardedVideoAdListener;

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdListener;->onRewardServerSuccess()V

    .line 69343
    :cond_7
    return-void

    :cond_8
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/1z;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    instance-of v0, v0, Lcom/facebook/ads/S2SRewardedVideoAdListener;

    if-eqz v0, :cond_7

    goto :goto_3

    .line 69344
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A02:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/1z;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    instance-of v0, v0, Lcom/facebook/ads/S2SRewardedVideoAdListener;

    if-eqz v0, :cond_9

    .line 69345
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A02:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/1z;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    check-cast v0, Lcom/facebook/ads/S2SRewardedVideoAdListener;

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdListener;->onRewardServerFailed()V

    .line 69346
    :cond_9
    return-void

    .line 69347
    :pswitch_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A02:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/1z;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    invoke-interface {v0, v4}, Lcom/facebook/ads/RewardedVideoAdListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    .line 69348
    return-void

    .line 69349
    :pswitch_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A02:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/1z;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    invoke-interface {v0, v4}, Lcom/facebook/ads/RewardedVideoAdListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    .line 69350
    return-void

    .line 69351
    :pswitch_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A02:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/1z;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    instance-of v0, v0, Lcom/facebook/ads/RewardedVideoAdExtendedListener;

    if-eqz v0, :cond_a

    .line 69352
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A02:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/1z;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    check-cast v0, Lcom/facebook/ads/RewardedVideoAdExtendedListener;

    .line 69353
    invoke-interface {v0}, Lcom/facebook/ads/RewardedVideoAdExtendedListener;->onRewardedVideoActivityDestroyed()V

    .line 69354
    :cond_a
    return-void

    .line 69355
    :cond_b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A02:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/1z;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    invoke-interface {v0}, Lcom/facebook/ads/RewardedVideoAdListener;->onRewardedVideoClosed()V

    .line 69356
    return-void

    .line 69357
    :cond_c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A02:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/1z;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    invoke-interface {v0, v4}, Lcom/facebook/ads/RewardedVideoAdListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    .line 69358
    return-void

    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 69359
    :cond_e
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 69360
    .local v0, "errorBundle":Landroid/os/Bundle;
    if-eqz v3, :cond_10

    .line 69361
    const/16 v2, 0x33

    const/16 v1, 0x12

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bJ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 69362
    .local p1, "errorCode":I
    const/16 v2, 0xb6

    const/16 v1, 0x15

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bJ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69363
    .local v4, "errorMessage":Ljava/lang/String;
    new-instance v1, Lcom/facebook/ads/AdError;

    invoke-direct {v1, v5, v3}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    .line 69364
    .local v2, "error":Lcom/facebook/ads/AdError;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A01:Lcom/facebook/ads/redexgen/X/1s;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/1s;->ADk(Lcom/facebook/ads/AdError;)V

    .line 69365
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A02:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/1z;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    if-eqz v0, :cond_f

    .line 69366
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A02:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/1z;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    invoke-interface {v0, v4, v1}, Lcom/facebook/ads/RewardedVideoAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 69367
    :goto_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A02:Lcom/facebook/ads/redexgen/X/1z;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/1z;->A01(Lcom/facebook/ads/RewardedVideoAd;)V

    .line 69368
    return-void

    .line 69369
    :cond_f
    const/16 v2, 0x22

    const/16 v1, 0x11

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bJ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 69370
    :cond_10
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bJ;->A01:Lcom/facebook/ads/redexgen/X/1s;

    sget-object v0, Lcom/facebook/ads/redexgen/X/1r;->A04:Lcom/facebook/ads/redexgen/X/1r;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/1s;->ADh(Lcom/facebook/ads/redexgen/X/1r;)V

    .line 69371
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    .line 69372
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A0K:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x9b

    const/16 v1, 0x1b

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bJ;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69373
    invoke-interface {v5, v7, v4, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x838
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xbb8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
