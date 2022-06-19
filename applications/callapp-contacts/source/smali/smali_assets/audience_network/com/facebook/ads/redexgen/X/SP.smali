.class public final Lcom/facebook/ads/redexgen/X/SP;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/KD;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/F3;,
        Lcom/facebook/ads/redexgen/X/1p;
    }
.end annotation


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/1p;

.field public A01:Lcom/facebook/ads/redexgen/X/8w;

.field public A02:Ljava/lang/String;

.field public A03:Z

.field public final A04:I

.field public final A05:Landroid/os/Handler;

.field public final A06:Lcom/facebook/ads/AdSize;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A07:Lcom/facebook/ads/redexgen/X/0s;

.field public final A08:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A09:Lcom/facebook/ads/redexgen/X/JC;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Jr;

.field public final A0B:Lcom/facebook/ads/redexgen/X/KE;

.field public final A0C:Ljava/lang/Runnable;

.field public final A0D:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 52429
    invoke-static {}, Lcom/facebook/ads/redexgen/X/SP;->A06()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/SP;->A05()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Lj;->A02()V

    .line 52430
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Jr;Lcom/facebook/ads/AdSize;I)V
    .locals 2
    .param p4    # Lcom/facebook/ads/AdSize;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 52431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52432
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SP;->A08:Lcom/facebook/ads/redexgen/X/XJ;

    .line 52433
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/SP;->A0D:Ljava/lang/String;

    .line 52434
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/SP;->A0A:Lcom/facebook/ads/redexgen/X/Jr;

    .line 52435
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/SP;->A06:Lcom/facebook/ads/AdSize;

    .line 52436
    iput p5, p0, Lcom/facebook/ads/redexgen/X/SP;->A04:I

    .line 52437
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SP;->A08:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/KE;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/KE;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SP;->A0B:Lcom/facebook/ads/redexgen/X/KE;

    .line 52438
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SP;->A0B:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/KE;->A0R(Lcom/facebook/ads/redexgen/X/KD;)V

    .line 52439
    new-instance v0, Lcom/facebook/ads/redexgen/X/0s;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/0s;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SP;->A07:Lcom/facebook/ads/redexgen/X/0s;

    .line 52440
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SP;->A03:Z

    .line 52441
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SP;->A05:Landroid/os/Handler;

    .line 52442
    new-instance v0, Lcom/facebook/ads/redexgen/X/F3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/F3;-><init>(Lcom/facebook/ads/redexgen/X/SP;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SP;->A0C:Ljava/lang/Runnable;

    .line 52443
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8D;->A06()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SP;->A09:Lcom/facebook/ads/redexgen/X/JC;

    .line 52444
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SP;->A08:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->getInitApi()Lcom/facebook/ads/internal/api/InitApi;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SP;->A08:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/InitApi;->onAdLoadInvoked(Landroid/content/Context;)V

    .line 52445
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/SP;)Landroid/os/Handler;
    .locals 0

    .line 52446
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SP;->A05:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/SP;)Lcom/facebook/ads/redexgen/X/XJ;
    .locals 0

    .line 52447
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SP;->A08:Lcom/facebook/ads/redexgen/X/XJ;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/SP;)Ljava/lang/Runnable;
    .locals 0

    .line 52448
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SP;->A0C:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/SP;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/SP;->A0F:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/SP;->A0F:[Ljava/lang/String;

    const-string v1, "uoxYJqIRleds8fPMMv"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge p0, v3, :cond_1

    aget-byte v0, p1, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x57

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Rp;",
            ">;"
        }
    .end annotation

    .line 52449
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/SP;->A01:Lcom/facebook/ads/redexgen/X/8w;

    .line 52450
    .local p0, "currentPlacement":Lcom/facebook/ads/redexgen/X/8w;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/8w;->A04()Lcom/facebook/ads/redexgen/X/8u;

    move-result-object v4

    .line 52451
    .local v2, "placementAd":Lcom/facebook/ads/redexgen/X/8u;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/8w;->A02()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 52452
    .local v4, "validAdapters":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/FacebookNativeAdapter;>;"
    :goto_0
    if-eqz v4, :cond_1

    .line 52453
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SP;->A07:Lcom/facebook/ads/redexgen/X/0s;

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/0s;->A00(Lcom/facebook/ads/internal/protocol/AdPlacementType;)Lcom/facebook/ads/redexgen/X/0n;

    move-result-object v5

    .line 52454
    .local v0, "adapter":Lcom/facebook/ads/redexgen/X/0n;
    if-eqz v5, :cond_0

    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/0n;->A6x()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v3

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    if-ne v3, v0, :cond_0

    .line 52455
    new-instance v9, Lcom/facebook/ads/redexgen/X/1n;

    .line 52456
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/8u;->A05()Lorg/json/JSONObject;

    move-result-object v10

    .line 52457
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/8w;->A05()Lcom/facebook/ads/redexgen/X/8x;

    move-result-object v11

    iget-object v12, p0, Lcom/facebook/ads/redexgen/X/SP;->A0D:Ljava/lang/String;

    .line 52458
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/8w;->A05()Lcom/facebook/ads/redexgen/X/8x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8x;->A0C()J

    move-result-wide v13

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/redexgen/X/1n;-><init>(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/8x;Ljava/lang/String;J)V

    .line 52459
    .local v9, "loadConfig":Lcom/facebook/ads/redexgen/X/1n;
    check-cast v5, Lcom/facebook/ads/redexgen/X/Rp;

    .line 52460
    .local v1, "nativeAdapter":Lcom/facebook/ads/redexgen/X/Rp;
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/SP;->A08:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v7, Lcom/facebook/ads/redexgen/X/SO;

    invoke-direct {v7, p0, v1, v5}, Lcom/facebook/ads/redexgen/X/SO;-><init>(Lcom/facebook/ads/redexgen/X/SP;Ljava/util/List;Lcom/facebook/ads/redexgen/X/Rp;)V

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/SP;->A09:Lcom/facebook/ads/redexgen/X/JC;

    .line 52461
    invoke-static {}, Lcom/facebook/ads/redexgen/X/cD;->A0I()Lcom/facebook/ads/redexgen/X/JX;

    move-result-object v10

    .line 52462
    invoke-virtual/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/Rp;->A0a(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/11;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/1n;Lcom/facebook/ads/redexgen/X/JX;)V

    .line 52463
    .end local v1    # "nativeAdapter":Lcom/facebook/ads/redexgen/X/Rp;
    .end local v9    # "loadConfig":Lcom/facebook/ads/redexgen/X/1n;
    :cond_0
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/8w;->A04()Lcom/facebook/ads/redexgen/X/8u;

    move-result-object v4

    .line 52464
    .end local v0    # "adapter":Lcom/facebook/ads/redexgen/X/0n;
    goto :goto_0

    .line 52465
    :cond_1
    return-object v1
.end method

.method public static A05()V
    .locals 4

    const/16 v0, 0x18

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v1, Lcom/facebook/ads/redexgen/X/SP;->A0F:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/SP;->A0F:[Ljava/lang/String;

    const-string v1, "dKV76OJFyRmVPWeRzZ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/SP;->A0E:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x40t
        0x41t
        -0xet
        0x42t
        0x3et
        0x33t
        0x35t
        0x37t
        0x3ft
        0x37t
        0x40t
        0x46t
        -0xet
        0x3bt
        0x40t
        -0xet
        0x44t
        0x37t
        0x45t
        0x42t
        0x41t
        0x40t
        0x45t
        0x37t
    .end array-data
.end method

.method public static A06()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Um"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "5O6Pi5UhekEiJBNtL2"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ByBiFstlzS"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "VNZICTTmM6bBZ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "I3ykA2cHAONkN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "xnUs6VMzToWHuFoC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Qkjm3fg24P6DD7pmZ7L4neN1zLjqdukp"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "LFB8Dcv49A6aPeUL"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/SP;->A0F:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 52466
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SP;->A03:Z

    .line 52467
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SP;->A05:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SP;->A0C:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 52468
    return-void
.end method

.method public final A08()V
    .locals 15

    .line 52469
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SP;->A08:Lcom/facebook/ads/redexgen/X/XJ;

    const/4 v5, 0x0

    new-instance v11, Lcom/facebook/ads/redexgen/X/Jw;

    invoke-direct {v11, v0, v5, v5, v5}, Lcom/facebook/ads/redexgen/X/Jw;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Jr;)V
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/Jm; {:try_start_0 .. :try_end_0} :catch_0

    .line 52470
    .local v0, "bidPayload":Lcom/facebook/ads/redexgen/X/Jw;
    new-instance v2, Lcom/facebook/ads/redexgen/X/KB;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SP;->A08:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/SP;->A0D:Ljava/lang/String;

    .line 52471
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SP;->A06:Lcom/facebook/ads/AdSize;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/AdSize;->getHeight()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SP;->A06:Lcom/facebook/ads/AdSize;

    invoke-virtual {v0}, Lcom/facebook/ads/AdSize;->getWidth()I

    move-result v0

    new-instance v5, Lcom/facebook/ads/redexgen/X/LK;

    invoke-direct {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/LK;-><init>(II)V

    :cond_0
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/SP;->A0A:Lcom/facebook/ads/redexgen/X/Jr;

    const/4 v7, 0x0

    iget v8, p0, Lcom/facebook/ads/redexgen/X/SP;->A04:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SP;->A08:Lcom/facebook/ads/redexgen/X/XJ;

    .line 52472
    invoke-static {v0}, Lcom/facebook/ads/AdSettings;->isTestMode(Landroid/content/Context;)Z

    move-result v9

    .line 52473
    invoke-static {}, Lcom/facebook/ads/AdSettings;->isMixedAudience()Z

    move-result v10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SP;->A08:Lcom/facebook/ads/redexgen/X/XJ;

    .line 52474
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0H(Landroid/content/Context;)I

    move-result v0

    .line 52475
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LQ;->A01(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/facebook/ads/redexgen/X/SP;->A02:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct/range {v2 .. v14}, Lcom/facebook/ads/redexgen/X/KB;-><init>(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/LK;Lcom/facebook/ads/redexgen/X/Jr;Ljava/lang/String;IZZLcom/facebook/ads/redexgen/X/Jw;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;)V

    .line 52476
    .local p0, "adEnvironmentData":Lcom/facebook/ads/redexgen/X/KB;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SP;->A0B:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/KE;->A0Q(Lcom/facebook/ads/redexgen/X/KB;)V

    .line 52477
    return-void

    .line 52478
    .end local p0    # "adEnvironmentData":Lcom/facebook/ads/redexgen/X/KB;
    .end local v0    # "bidPayload":Lcom/facebook/ads/redexgen/X/Jw;
    :catch_0
    move-exception v0

    .line 52479
    .local p0, "e":Lcom/facebook/ads/redexgen/X/Jm;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jl;->A03(Lcom/facebook/ads/redexgen/X/Jm;)Lcom/facebook/ads/redexgen/X/Jl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/SP;->AA7(Lcom/facebook/ads/redexgen/X/Jl;)V

    .line 52480
    return-void
.end method

.method public final A09(Lcom/facebook/ads/redexgen/X/1p;)V
    .locals 0

    .line 52481
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SP;->A00:Lcom/facebook/ads/redexgen/X/1p;

    .line 52482
    return-void
.end method

.method public final A0A(Ljava/lang/String;)V
    .locals 0

    .line 52483
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SP;->A02:Ljava/lang/String;

    .line 52484
    return-void
.end method

.method public final A0B()Z
    .locals 1

    .line 52485
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SP;->A01:Lcom/facebook/ads/redexgen/X/8w;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8w;->A0A()Z

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

.method public final AA7(Lcom/facebook/ads/redexgen/X/Jl;)V
    .locals 4

    .line 52486
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SP;->A03:Z

    if-eqz v0, :cond_0

    .line 52487
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SP;->A05:Landroid/os/Handler;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/SP;->A0C:Ljava/lang/Runnable;

    const-wide/32 v0, 0x1b7740

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52488
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SP;->A00:Lcom/facebook/ads/redexgen/X/1p;

    sget-object v1, Lcom/facebook/ads/redexgen/X/SP;->A0F:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/SP;->A0F:[Ljava/lang/String;

    const-string v1, "yGn7NPCZVX"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 52489
    invoke-interface {v3, p1}, Lcom/facebook/ads/redexgen/X/1p;->AA7(Lcom/facebook/ads/redexgen/X/Jl;)V

    .line 52490
    :cond_2
    return-void
.end method

.method public final ABk(Lcom/facebook/ads/redexgen/X/cP;)V
    .locals 7

    .line 52491
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/cP;->A00()Lcom/facebook/ads/redexgen/X/8w;

    move-result-object v6

    .line 52492
    .local p0, "placement":Lcom/facebook/ads/redexgen/X/8w;
    if-eqz v6, :cond_4

    .line 52493
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SP;->A03:Z

    if-eqz v0, :cond_1

    .line 52494
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/8w;->A05()Lcom/facebook/ads/redexgen/X/8x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8x;->A0A()J

    move-result-wide v2

    .line 52495
    .local p1, "refreshInterval":J
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 52496
    const-wide/32 v2, 0x1b7740

    .line 52497
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SP;->A05:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SP;->A0C:Ljava/lang/Runnable;

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52498
    .end local p1    # "refreshInterval":J
    :cond_1
    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/SP;->A01:Lcom/facebook/ads/redexgen/X/8w;

    .line 52499
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SP;->A04()Ljava/util/List;

    move-result-object v1

    .line 52500
    .local p1, "adapters":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/FacebookNativeAdapter;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SP;->A00:Lcom/facebook/ads/redexgen/X/1p;

    if-eqz v0, :cond_3

    .line 52501
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52502
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/SP;->A00:Lcom/facebook/ads/redexgen/X/1p;

    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SP;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Jl;->A02(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jl;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/1p;->AA7(Lcom/facebook/ads/redexgen/X/Jl;)V

    .line 52503
    return-void

    .line 52504
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SP;->A00:Lcom/facebook/ads/redexgen/X/1p;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/1p;->AAw(Ljava/util/List;)V

    .line 52505
    :cond_3
    return-void

    .line 52506
    .end local p1    # "adapters":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/FacebookNativeAdapter;>;"
    :cond_4
    const/4 v2, 0x0

    const/16 v1, 0x18

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SP;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
