.class public final Lcom/facebook/ads/redexgen/X/91;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/90;
    }
.end annotation


# static fields
.field public static A00:Z

.field public static A01:Z

.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final A05:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final A06:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 19330
    invoke-static {}, Lcom/facebook/ads/redexgen/X/91;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/91;->A03()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/91;->A06:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19331
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/91;->A04:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19332
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/91;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/KT;
    .locals 1

    .line 19334
    new-instance v0, Lcom/facebook/ads/redexgen/X/WY;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/WY;-><init>()V

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/Wl;)Lcom/facebook/ads/redexgen/X/Kj;
    .locals 1

    .line 19335
    new-instance v0, Lcom/facebook/ads/redexgen/X/WX;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/WX;-><init>(Lcom/facebook/ads/redexgen/X/Wl;)V

    return-object v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/91;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x21

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0xde

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/91;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x59t
        -0x2at
        -0x58t
        -0x57t
        -0x5dt
        -0x28t
        -0x58t
        -0x5dt
        -0x36t
        -0x3at
        -0x3bt
        -0x7t
        -0x18t
        -0x13t
        -0x17t
        -0xet
        -0x19t
        -0x17t
        -0x2et
        -0x17t
        -0x8t
        -0x5t
        -0xdt
        -0xat
        -0x11t
        -0x58t
        -0x67t
        -0x60t
        0x75t
        -0x42t
        -0x3dt
        -0x42t
        -0x37t
        -0x42t
        -0x4at
        -0x3ft
        -0x42t
        -0x31t
        -0x4at
        -0x37t
        -0x42t
        -0x3ct
        -0x3dt
        0x75t
        -0x38t
        -0x37t
        -0x4at
        -0x39t
        -0x37t
        -0x46t
        -0x47t
        -0x54t
        -0x43t
        -0x3ct
        0x79t
        -0x30t
        -0x46t
        -0x34t
        0x79t
        -0x46t
        -0x3bt
        -0x35t
        -0x42t
        -0x46t
        -0x43t
        -0x2et
        0x79t
        -0x3et
        -0x39t
        -0x3et
        -0x33t
        -0x3et
        -0x46t
        -0x3bt
        -0x3et
        -0x2dt
        -0x42t
        -0x43t
        0x7at
        0x79t
        -0x54t
        -0x3ct
        -0x3et
        -0x37t
        -0x37t
        -0x3et
        -0x39t
        -0x40t
        -0x79t
        -0x5at
        -0x44t
        -0x3et
        0x6dt
        -0x4ft
        -0x44t
        -0x45t
        0x74t
        -0x3ft
        0x6dt
        -0x50t
        -0x52t
        -0x47t
        -0x47t
        0x6dt
        -0x72t
        -0x3et
        -0x4ft
        -0x4at
        -0x4et
        -0x45t
        -0x50t
        -0x4et
        -0x65t
        -0x4et
        -0x3ft
        -0x3ct
        -0x44t
        -0x41t
        -0x48t
        -0x72t
        -0x4ft
        -0x40t
        0x7bt
        -0x4at
        -0x45t
        -0x4at
        -0x3ft
        -0x4at
        -0x52t
        -0x47t
        -0x4at
        -0x39t
        -0x4et
        0x75t
        0x76t
        0x7bt
        0x6dt
        -0x60t
        -0x44t
        -0x46t
        -0x4et
        0x6dt
        -0x4dt
        -0x3et
        -0x45t
        -0x50t
        -0x3ft
        -0x4at
        -0x44t
        -0x45t
        -0x52t
        -0x47t
        -0x4at
        -0x3ft
        -0x3at
        0x6dt
        -0x46t
        -0x52t
        -0x3at
        0x6dt
        -0x45t
        -0x44t
        -0x3ft
        0x6dt
        -0x3ct
        -0x44t
        -0x41t
        -0x48t
        0x6dt
        -0x43t
        -0x41t
        -0x44t
        -0x43t
        -0x4et
        -0x41t
        -0x47t
        -0x3at
        0x7bt
        -0x78t
        -0x69t
        -0x70t
        -0x39t
        -0x3bt
        -0x32t
        -0x3bt
        -0x2et
        -0x37t
        -0x3dt
        0x3t
        0x8t
        0x3t
        0xet
        0x3t
        -0x5t
        0x6t
        0x3t
        0x14t
        -0x1t
        -0x28t
        -0x23t
        -0x28t
        -0x1dt
        -0x28t
        -0x30t
        -0x25t
        -0x28t
        -0x17t
        -0x2ct
        -0x69t
        -0x68t
        -0x71t
        -0x23t
        -0x22t
        -0x1dt
        -0x71t
        -0x2et
        -0x30t
        -0x25t
        -0x25t
        -0x2ct
        -0x2dt
        -0x63t
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "i0FOsf0o9fpBvAlaEaGgnCYFRbNnwBKJ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ZsBa2nEfyhltTo"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ZG6g5nWnUhxh"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "6zjosiDwJWE47kuMvKAUCDrCWUeR8P3q"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Gh89HIHHDqfPtiuASbXLVil627eRz"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Lsbp3nhJR34oAmuvtJAouWbaxC4Ny9OM"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "s0Y"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "C"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/91;->A03:[Ljava/lang/String;

    return-void
.end method

.method public static A05(Lcom/facebook/ads/AudienceNetworkAds$InitListener;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V
    .locals 2

    .line 19336
    sget-object v1, Lcom/facebook/ads/redexgen/X/Le;->A01:Lcom/facebook/ads/redexgen/X/Le;

    new-instance v0, Lcom/facebook/ads/redexgen/X/WZ;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/WZ;-><init>(Lcom/facebook/ads/AudienceNetworkAds$InitListener;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Le;->execute(Ljava/lang/Runnable;)V

    .line 19337
    return-void
.end method

.method public static synthetic A06(Lcom/facebook/ads/AudienceNetworkAds$InitListener;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V
    .locals 0

    .line 19338
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/91;->A05(Lcom/facebook/ads/AudienceNetworkAds$InitListener;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V

    return-void
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/Wl;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 19339
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J6;->A0Q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/facebook/ads/redexgen/X/91;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    .line 19340
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19341
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    .line 19342
    .local p0, "defaultUncaughtExceptionHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    new-instance v1, Lcom/facebook/ads/redexgen/X/WV;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/WV;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/8U;

    invoke-direct {v0, v2, p0, v1}, Lcom/facebook/ads/redexgen/X/8U;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/facebook/ads/redexgen/X/Wl;Lcom/facebook/ads/redexgen/X/8T;)V

    .line 19343
    .local v0, "reportHandler":Lcom/facebook/ads/redexgen/X/8U;
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19344
    :catch_0
    move-exception v0

    .line 19345
    .local p0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object p0

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A1H:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 19346
    const/16 v2, 0xb5

    const/4 v1, 0x7

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/91;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 19347
    .end local p0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/Wl;)V
    .locals 2

    .line 19348
    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-static {p0, v1, v1, v0}, Lcom/facebook/ads/redexgen/X/91;->A0G(Lcom/facebook/ads/redexgen/X/Wl;Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V

    .line 19349
    return-void
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/Wl;)V
    .locals 2

    .line 19350
    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-static {p0, v1, v1, v0}, Lcom/facebook/ads/redexgen/X/91;->A0G(Lcom/facebook/ads/redexgen/X/Wl;Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V

    .line 19351
    return-void
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/Wl;)V
    .locals 1

    .line 19352
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A1R(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19353
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/91;->A0F(Lcom/facebook/ads/redexgen/X/Wl;I)V

    .line 19354
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A1V(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19355
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/91;->A0C(Lcom/facebook/ads/redexgen/X/Wl;)V

    .line 19356
    :cond_1
    return-void
.end method

.method public static A0B(Lcom/facebook/ads/redexgen/X/Wl;)V
    .locals 5

    .line 19357
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A1S(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19358
    const/4 v4, 0x3

    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/91;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/91;->A03:[Ljava/lang/String;

    const-string v1, "XjvPwbQrSqkAxC"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "skO"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {p0, v3, v3, v4}, Lcom/facebook/ads/redexgen/X/91;->A0H(Lcom/facebook/ads/redexgen/X/Wl;Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V

    .line 19359
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0C(Lcom/facebook/ads/redexgen/X/Wl;)V
    .locals 2

    .line 19360
    sget-object v1, Lcom/facebook/ads/redexgen/X/Lo;->A06:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Wa;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Wa;-><init>(Lcom/facebook/ads/redexgen/X/Wl;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 19361
    return-void
.end method

.method public static A0D(Lcom/facebook/ads/redexgen/X/Wl;)V
    .locals 3

    .line 19362
    new-instance v2, Lcom/facebook/ads/redexgen/X/WU;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/WU;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    new-instance v1, Lcom/facebook/ads/redexgen/X/WT;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/WT;-><init>()V

    .line 19363
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    .line 19364
    invoke-static {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A0D(Lcom/facebook/ads/redexgen/X/Wl;Lcom/facebook/ads/redexgen/X/8X;Lcom/facebook/ads/redexgen/X/8W;Z)V

    .line 19365
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A06()Lcom/facebook/ads/redexgen/X/JC;

    .line 19366
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/5r;->A05(Lcom/facebook/ads/redexgen/X/Wl;Ljava/lang/String;)V

    .line 19367
    return-void
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/Wl;)V
    .locals 0

    .line 19368
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/91;->A0D(Lcom/facebook/ads/redexgen/X/Wl;)V

    return-void
.end method

.method public static A0F(Lcom/facebook/ads/redexgen/X/Wl;I)V
    .locals 6

    .line 19369
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/8C;->A02(Lcom/facebook/ads/redexgen/X/Wl;)V

    .line 19370
    sget-object v1, Lcom/facebook/ads/redexgen/X/91;->A04:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19371
    return-void

    .line 19372
    :cond_0
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebuggerOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19373
    :cond_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/K1;->A02()V

    .line 19374
    :cond_2
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/91;->A07(Lcom/facebook/ads/redexgen/X/Wl;)V

    .line 19375
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A0l(Landroid/content/Context;)Z

    move-result v3

    .line 19376
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v2

    .line 19377
    invoke-static {}, Lcom/facebook/ads/redexgen/X/91;->A00()Lcom/facebook/ads/redexgen/X/KT;

    move-result-object v1

    .line 19378
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/91;->A01(Lcom/facebook/ads/redexgen/X/Wl;)Lcom/facebook/ads/redexgen/X/Kj;

    move-result-object v0

    .line 19379
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kg;->A00(ZZLcom/facebook/ads/redexgen/X/KT;Lcom/facebook/ads/redexgen/X/Kj;)V

    .line 19380
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A02(Landroid/content/Context;)I

    move-result v0

    int-to-long v0, v0

    .line 19381
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/5k;->A03(J)V

    .line 19382
    new-instance v0, Lcom/facebook/ads/redexgen/X/WW;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/WW;-><init>(Lcom/facebook/ads/redexgen/X/Wl;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/QX;->A0A(Lcom/facebook/ads/redexgen/X/QD;)V

    .line 19383
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 19384
    const/16 v2, 0x8

    const/16 v1, 0x11

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/91;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x59

    const/16 v1, 0x59

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/91;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19385
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A0G:I

    const/16 v2, 0xc6

    const/16 v1, 0x18

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/91;->A02(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 19386
    const/16 v2, 0xb2

    const/4 v1, 0x3

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/91;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8n(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 19387
    :cond_3
    invoke-static {p0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A05(Lcom/facebook/ads/redexgen/X/Wl;)V

    .line 19388
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lo;->A06(Landroid/content/Context;)V

    .line 19389
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/JN;->A03(Lcom/facebook/ads/redexgen/X/8D;)V

    .line 19390
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/0u;->A0C(Lcom/facebook/ads/redexgen/X/8D;)V

    .line 19391
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A0s(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19392
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/4p;->A00(Landroid/content/Context;)V

    .line 19393
    :cond_4
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A1D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 19394
    invoke-static {}, Lcom/facebook/ads/redexgen/X/WN;->A02()Lcom/facebook/ads/redexgen/X/WN;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/WN;->A78(Lcom/facebook/ads/redexgen/X/Wl;)Lcom/facebook/ads/redexgen/X/JO;

    .line 19395
    :cond_5
    return-void
.end method

.method public static A0G(Lcom/facebook/ads/redexgen/X/Wl;Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V
    .locals 5
    .param p1    # Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/AudienceNetworkAds$InitListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v2, 0xbc

    const/16 v1, 0xa

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/91;->A02(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x19

    const/16 v1, 0x1a

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/91;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/91;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/K1;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19396
    invoke-static {}, Lcom/facebook/ads/redexgen/X/QX;->A06()V

    .line 19397
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/91;->A0H(Lcom/facebook/ads/redexgen/X/Wl;Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V

    .line 19398
    return-void
.end method

.method public static A0H(Lcom/facebook/ads/redexgen/X/Wl;Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V
    .locals 7
    .param p1    # Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/AudienceNetworkAds$InitListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 19399
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/8C;->A02(Lcom/facebook/ads/redexgen/X/Wl;)V

    .line 19400
    const/4 v6, 0x0

    .line 19401
    .local p0, "execute":Z
    const-class v5, Lcom/facebook/ads/redexgen/X/91;

    monitor-enter v5

    .line 19402
    :try_start_0
    sget-boolean v3, Lcom/facebook/ads/redexgen/X/91;->A00:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/91;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    .line 19403
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 19404
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/91;->A03:[Ljava/lang/String;

    const-string v1, "NCBP0zgwc09Hnf"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "b9u"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v3, :cond_4

    .line 19405
    if-eq p3, v4, :cond_3

    const/4 v3, 0x2

    sget-object v1, Lcom/facebook/ads/redexgen/X/91;->A03:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x42

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/91;->A03:[Ljava/lang/String;

    const-string v1, "LcAqICEp6srBiN"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "2E3"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ne p3, v3, :cond_2

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/91;->A03:[Ljava/lang/String;

    const-string v1, "9BNQu6viwQo9my"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "ONa"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ne p3, v3, :cond_2

    goto :goto_0

    .line 19406
    :cond_2
    const/4 v0, 0x3

    if-ne p3, v0, :cond_4

    .line 19407
    :try_start_1
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/91;->A01:Z

    if-nez v0, :cond_4

    .line 19408
    sput-boolean v4, Lcom/facebook/ads/redexgen/X/91;->A01:Z

    .line 19409
    const/4 v6, 0x1

    goto :goto_1

    .line 19410
    :cond_3
    :goto_0
    sput-boolean v4, Lcom/facebook/ads/redexgen/X/91;->A00:Z

    .line 19411
    const/4 v6, 0x1

    .line 19412
    :cond_4
    :goto_1
    monitor-exit v5

    .line 19413
    if-eqz v6, :cond_6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19414
    invoke-static {p0, p3}, Lcom/facebook/ads/redexgen/X/91;->A0F(Lcom/facebook/ads/redexgen/X/Wl;I)V

    .line 19415
    sget-object v1, Lcom/facebook/ads/redexgen/X/Lo;->A08:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Wb;

    invoke-direct {v0, p0, p2}, Lcom/facebook/ads/redexgen/X/Wb;-><init>(Lcom/facebook/ads/redexgen/X/Wl;Lcom/facebook/ads/AudienceNetworkAds$InitListener;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 19416
    .end local p1    # null:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;
    :cond_5
    :goto_2
    return-void

    .line 19417
    :cond_6
    if-ne p3, v4, :cond_5

    .line 19418
    const/16 v2, 0x33

    const/16 v1, 0x26

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/91;->A02(III)Ljava/lang/String;

    move-result-object v3

    .line 19419
    .local p1, "alreadyInitializedMessage":Ljava/lang/String;
    if-eqz p2, :cond_7

    .line 19420
    new-instance v0, Lcom/facebook/ads/redexgen/X/90;

    invoke-direct {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/90;-><init>(ZLjava/lang/String;)V

    invoke-static {p2, v0}, Lcom/facebook/ads/redexgen/X/91;->A05(Lcom/facebook/ads/AudienceNetworkAds$InitListener;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V

    goto :goto_2

    .line 19421
    :cond_7
    const/16 v2, 0x8

    const/16 v1, 0x11

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/91;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 19422
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static declared-synchronized A0I()Z
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/91;

    monitor-enter v1

    .line 19423
    :try_start_0
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/91;->A00:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
