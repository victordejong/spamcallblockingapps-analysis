.class public final Lcom/facebook/ads/redexgen/X/5h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;,
        Lcom/facebook/ads/redexgen/X/5g;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 13648
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5h;->A06()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5h;->A05()V

    const-class v0, Lcom/facebook/ads/redexgen/X/5Z;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5h;->A02:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/5Z;
    .locals 5

    .line 13650
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq v1, v0, :cond_5

    .line 13651
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5h;->A01(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/5Z;

    move-result-object v4

    .line 13652
    .local p0, "info":Lcom/facebook/ads/redexgen/X/5Z;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/5Z;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/5h;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4c

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/5h;->A01:[Ljava/lang/String;

    const-string v1, "uy9l7RLQ2P1HyKRuXc5qKTdvpqbxTZwF"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 13653
    :cond_1
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5h;->A02(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/5Z;

    move-result-object v4

    .line 13654
    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/5Z;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13655
    :cond_3
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5h;->A03(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/5Z;

    move-result-object v4

    .line 13656
    :cond_4
    return-object v4

    .line 13657
    .end local p0    # "info":Lcom/facebook/ads/redexgen/X/5Z;
    :cond_5
    const/4 v2, 0x0

    const/16 v1, 0x2b

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5h;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/5Z;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 13658
    invoke-static {p0}, Lcom/facebook/ads/internal/bridge/gms/AdvertisingId;->getAdvertisingIdInfoDirectly(Landroid/content/Context;)Lcom/facebook/ads/internal/bridge/gms/AdvertisingId;

    move-result-object v0

    .line 13659
    .local p0, "adId":Lcom/facebook/ads/internal/bridge/gms/AdvertisingId;
    if-eqz v0, :cond_0

    .line 13660
    invoke-virtual {v0}, Lcom/facebook/ads/internal/bridge/gms/AdvertisingId;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/bridge/gms/AdvertisingId;->isLimitAdTracking()Z

    move-result v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/5Y;->A03:Lcom/facebook/ads/redexgen/X/5Y;

    new-instance v0, Lcom/facebook/ads/redexgen/X/5Z;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/5Z;-><init>(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/5Y;)V

    .line 13661
    return-object v0

    .line 13662
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/5Z;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 13663
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/Class;

    const-class v0, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v0, v4, v9

    .line 13664
    const/16 v2, 0xad

    const/16 v1, 0x34

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5h;->A04(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x101

    const/16 v1, 0x1d

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5h;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Lcom/facebook/ads/redexgen/X/5i;->A02(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 13665
    .local v5, "isGooglePlayServicesAvailable":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    if-nez v1, :cond_0

    .line 13666
    return-object v7

    .line 13667
    :cond_0
    new-array v0, v5, [Ljava/lang/Object;

    aput-object p0, v0, v9

    .line 13668
    invoke-static {v7, v1, v0}, Lcom/facebook/ads/redexgen/X/5i;->A00(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 13669
    .local v9, "connectionResult":Ljava/lang/Object;
    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    .line 13670
    .end local v2
    .end local v1
    .end local v0
    .end local v3
    :cond_1
    return-object v7

    .line 13671
    :cond_2
    new-array v4, v5, [Ljava/lang/Class;

    const-class v0, Landroid/content/Context;

    aput-object v0, v4, v9

    .line 13672
    const/16 v2, 0x41

    const/16 v1, 0x39

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5h;->A04(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xe8

    const/16 v1, 0x14

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5h;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Lcom/facebook/ads/redexgen/X/5i;->A02(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 13673
    .local v2, "getAdvertisingIdInfo":Ljava/lang/reflect/Method;
    if-nez v1, :cond_3

    .line 13674
    return-object v7

    .line 13675
    :cond_3
    new-array v0, v5, [Ljava/lang/Object;

    aput-object p0, v0, v9

    invoke-static {v7, v1, v0}, Lcom/facebook/ads/redexgen/X/5i;->A00(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 13676
    .local v1, "advertisingInfo":Ljava/lang/Object;
    if-nez v8, :cond_4

    .line 13677
    return-object v7

    .line 13678
    :cond_4
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-array v3, v9, [Ljava/lang/Class;

    const/16 v2, 0xfc

    const/4 v1, 0x5

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5h;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/5i;->A01(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 13679
    .local v0, "getId":Ljava/lang/reflect/Method;
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-array v3, v9, [Ljava/lang/Class;

    const/16 v2, 0x11e

    const/16 v1, 0x18

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5h;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/5i;->A01(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 13680
    .local v3, "isLimitAdTrackingEnabled":Ljava/lang/reflect/Method;
    if-eqz v6, :cond_5

    if-nez v1, :cond_6

    .line 13681
    .end local v2    # "getAdvertisingIdInfo":Ljava/lang/reflect/Method;
    .end local v1    # "advertisingInfo":Ljava/lang/Object;
    :cond_5
    return-object v7

    .line 13682
    :cond_6
    new-array v0, v9, [Ljava/lang/Object;

    invoke-static {v8, v6, v0}, Lcom/facebook/ads/redexgen/X/5i;->A00(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 13683
    .local v2, "id":Ljava/lang/String;
    new-array v0, v9, [Ljava/lang/Object;

    .line 13684
    invoke-static {v8, v1, v0}, Lcom/facebook/ads/redexgen/X/5i;->A00(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 13685
    .local v1, "limitAdTrackingEnabled":Ljava/lang/Boolean;
    if-eqz v2, :cond_8

    .line 13686
    if-eqz v0, :cond_7

    .line 13687
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/5Y;->A07:Lcom/facebook/ads/redexgen/X/5Y;

    new-instance v0, Lcom/facebook/ads/redexgen/X/5Z;

    invoke-direct {v0, v2, v5, v1}, Lcom/facebook/ads/redexgen/X/5Z;-><init>(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/5Y;)V

    .line 13688
    return-object v0

    .line 13689
    :cond_7
    const/4 v5, 0x0

    goto :goto_0

    .line 13690
    :cond_8
    return-object v7
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/5Z;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 13691
    const/4 v6, 0x0

    new-instance v5, Lcom/facebook/ads/redexgen/X/5g;

    invoke-direct {v5, v6}, Lcom/facebook/ads/redexgen/X/5g;-><init>(Lcom/facebook/ads/redexgen/X/5e;)V

    .line 13692
    .local p0, "connection":Lcom/facebook/ads/redexgen/X/5g;
    const/16 v2, 0x7a

    const/16 v1, 0x33

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5h;->A04(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13693
    .local v5, "intent":Landroid/content/Intent;
    const/16 v2, 0x2b

    const/16 v1, 0x16

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5h;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 13694
    const/4 v0, 0x1

    invoke-virtual {p0, v3, v5, v0}, Lcom/facebook/ads/redexgen/X/8D;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13695
    :try_start_0
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/5g;->A02()Landroid/os/IBinder;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;-><init>(Landroid/os/IBinder;)V

    .line 13696
    invoke-virtual {v0}, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;->A03()Ljava/lang/String;

    move-result-object v3

    .line 13697
    invoke-virtual {v0}, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;->A04()Z

    move-result v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/5Y;->A08:Lcom/facebook/ads/redexgen/X/5Y;

    new-instance v0, Lcom/facebook/ads/redexgen/X/5Z;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/5Z;-><init>(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/5Y;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13698
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/8D;->unbindService(Landroid/content/ServiceConnection;)V

    .line 13699
    return-object v0

    .line 13700
    .end local v2
    :catchall_0
    move-exception v4

    .line 13701
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v3

    const/16 v2, 0xe1

    const/4 v1, 0x7

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5h;->A04(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/8e;->A19:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 13702
    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    goto :goto_0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13703
    :catchall_1
    move-exception v0

    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/8D;->unbindService(Landroid/content/ServiceConnection;)V

    .line 13704
    throw v0

    .line 13705
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/8D;->unbindService(Landroid/content/ServiceConnection;)V

    .line 13706
    :cond_0
    return-object v6
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/5h;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05()V
    .locals 4

    const/16 v0, 0x136

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/5h;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4c

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/5h;->A01:[Ljava/lang/String;

    const-string v1, "5c2qL4dH8BvO0Uzn9h0t1hzuT"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "iopOujFX2mYmGwDZvEry"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/5h;->A00:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x70t
        0x52t
        0x5dt
        0x5dt
        0x5ct
        0x47t
        0x13t
        0x54t
        0x56t
        0x47t
        0x13t
        0x52t
        0x57t
        0x45t
        0x56t
        0x41t
        0x47t
        0x5at
        0x40t
        0x5at
        0x5dt
        0x54t
        0x13t
        0x5at
        0x5dt
        0x55t
        0x5ct
        0x13t
        0x5ct
        0x5dt
        0x13t
        0x5et
        0x52t
        0x5at
        0x5dt
        0x13t
        0x47t
        0x5bt
        0x41t
        0x56t
        0x52t
        0x57t
        0x1dt
        0x5bt
        0x57t
        0x55t
        0x16t
        0x5ft
        0x57t
        0x57t
        0x5ft
        0x54t
        0x5dt
        0x16t
        0x59t
        0x56t
        0x5ct
        0x4at
        0x57t
        0x51t
        0x5ct
        0x16t
        0x5ft
        0x55t
        0x4bt
        0x52t
        0x5et
        0x5ct
        0x1ft
        0x56t
        0x5et
        0x5et
        0x56t
        0x5dt
        0x54t
        0x1ft
        0x50t
        0x5ft
        0x55t
        0x43t
        0x5et
        0x58t
        0x55t
        0x1ft
        0x56t
        0x5ct
        0x42t
        0x1ft
        0x50t
        0x55t
        0x42t
        0x1ft
        0x58t
        0x55t
        0x54t
        0x5ft
        0x45t
        0x58t
        0x57t
        0x58t
        0x54t
        0x43t
        0x1ft
        0x70t
        0x55t
        0x47t
        0x54t
        0x43t
        0x45t
        0x58t
        0x42t
        0x58t
        0x5ft
        0x56t
        0x78t
        0x55t
        0x72t
        0x5dt
        0x58t
        0x54t
        0x5ft
        0x45t
        0x6dt
        0x61t
        0x63t
        0x20t
        0x69t
        0x61t
        0x61t
        0x69t
        0x62t
        0x6bt
        0x20t
        0x6ft
        0x60t
        0x6at
        0x7ct
        0x61t
        0x67t
        0x6at
        0x20t
        0x69t
        0x63t
        0x7dt
        0x20t
        0x6ft
        0x6at
        0x7dt
        0x20t
        0x67t
        0x6at
        0x6bt
        0x60t
        0x7at
        0x67t
        0x68t
        0x67t
        0x6bt
        0x7ct
        0x20t
        0x7dt
        0x6bt
        0x7ct
        0x78t
        0x67t
        0x6dt
        0x6bt
        0x20t
        0x5dt
        0x5at
        0x4ft
        0x5ct
        0x5at
        0x12t
        0x1et
        0x1ct
        0x5ft
        0x16t
        0x1et
        0x1et
        0x16t
        0x1dt
        0x14t
        0x5ft
        0x10t
        0x1ft
        0x15t
        0x3t
        0x1et
        0x18t
        0x15t
        0x5ft
        0x16t
        0x1ct
        0x2t
        0x5ft
        0x12t
        0x1et
        0x1ct
        0x1ct
        0x1et
        0x1ft
        0x5ft
        0x36t
        0x1et
        0x1et
        0x16t
        0x1dt
        0x14t
        0x21t
        0x1dt
        0x10t
        0x8t
        0x22t
        0x14t
        0x3t
        0x7t
        0x18t
        0x12t
        0x14t
        0x2t
        0x24t
        0x5t
        0x18t
        0x1dt
        0x43t
        0x41t
        0x4at
        0x41t
        0x56t
        0x4dt
        0x47t
        0x6at
        0x68t
        0x79t
        0x4ct
        0x69t
        0x7bt
        0x68t
        0x7ft
        0x79t
        0x64t
        0x7et
        0x64t
        0x63t
        0x6at
        0x44t
        0x69t
        0x44t
        0x63t
        0x6bt
        0x62t
        0x7bt
        0x79t
        0x68t
        0x55t
        0x78t
        0x21t
        0x3bt
        0xft
        0x27t
        0x27t
        0x2ft
        0x24t
        0x2dt
        0x18t
        0x24t
        0x29t
        0x31t
        0x1bt
        0x2dt
        0x3at
        0x3et
        0x21t
        0x2bt
        0x2dt
        0x3bt
        0x9t
        0x3et
        0x29t
        0x21t
        0x24t
        0x29t
        0x2at
        0x24t
        0x2dt
        0x2bt
        0x31t
        0xet
        0x2bt
        0x2ft
        0x2bt
        0x36t
        0x3t
        0x26t
        0x16t
        0x30t
        0x23t
        0x21t
        0x29t
        0x2bt
        0x2ct
        0x25t
        0x7t
        0x2ct
        0x23t
        0x20t
        0x2et
        0x27t
        0x26t
    .end array-data
.end method

.method public static A06()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "o8zuart55Bmx3Pw0EGryupigSLJoPiZx"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "bq35BXrVyo2MmN2pvK0AAoIbsBJXmHFn"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Ag4UQwTEuL9TJhKNxG6"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "PmxOul6ExA7xevKGmIJ7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "bJjslG0QPgIDYXjJzGe0RXJuWF5PAt6I"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "GLZoSVJacutm5kJ9CSmVpuybEaBnhneX"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "dIwLXajRtHFv7I4e8IdUhcaSFtkhp8vw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "TtnuuoV6cihzxwpt43jVepBLS"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5h;->A01:[Ljava/lang/String;

    return-void
.end method
