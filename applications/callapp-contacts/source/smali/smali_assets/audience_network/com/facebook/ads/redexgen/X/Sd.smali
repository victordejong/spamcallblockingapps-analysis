.class public final Lcom/facebook/ads/redexgen/X/Sd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/1u;


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;

.field public static final A09:Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/F2;

.field public A03:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Z

.field public final A05:Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

.field public final A06:Lcom/facebook/ads/redexgen/X/1z;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 52819
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Sd;->A07()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Sd;->A06()V

    const-class v0, Lcom/facebook/ads/redexgen/X/Sd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sd;->A09:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/1z;Lcom/facebook/ads/redexgen/X/22;Ljava/lang/String;)V
    .locals 2

    .line 52820
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52821
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Sd;->A00:I

    .line 52822
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sd;->A04:Z

    .line 52823
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sd;->A01:J

    .line 52824
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sd;->A06:Lcom/facebook/ads/redexgen/X/1z;

    .line 52825
    new-instance v0, Lcom/facebook/ads/redexgen/X/Sk;

    invoke-direct {v0, p3, p2, p0, p1}, Lcom/facebook/ads/redexgen/X/Sk;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/22;Lcom/facebook/ads/redexgen/X/Sd;Lcom/facebook/ads/redexgen/X/1z;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sd;->A05:Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    .line 52826
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Sd;)J
    .locals 1

    .line 52827
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sd;->A01:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Sd;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;
    .locals 0

    .line 52828
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sd;->A05:Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Sd;)Lcom/facebook/ads/redexgen/X/F2;
    .locals 0

    .line 52829
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sd;->A02:Lcom/facebook/ads/redexgen/X/F2;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Sd;)Lcom/facebook/ads/redexgen/X/1z;
    .locals 0

    .line 52830
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sd;->A06:Lcom/facebook/ads/redexgen/X/1z;

    return-object p0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sd;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Sd;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 52831
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sd;->A03:Ljava/lang/String;

    return-object p1
.end method

.method public static A06()V
    .locals 3

    const/16 v0, 0x70

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sd;->A07:[B

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sd;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Sd;->A08:[Ljava/lang/String;

    const-string v1, "OGOVhUIoezz1oHK"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "xl2MkcRK0CWEWUY"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-void

    nop

    :array_0
    .array-data 1
        0x78t
        0x57t
        0x19t
        0x58t
        0x5dt
        0x19t
        0x55t
        0x56t
        0x58t
        0x5dt
        0x19t
        0x50t
        0x4at
        0x19t
        0x58t
        0x55t
        0x4bt
        0x5ct
        0x58t
        0x5dt
        0x40t
        0x19t
        0x50t
        0x57t
        0x19t
        0x49t
        0x4bt
        0x56t
        0x5et
        0x4bt
        0x5ct
        0x4at
        0x4at
        0x17t
        0x19t
        0x60t
        0x56t
        0x4ct
        0x19t
        0x4at
        0x51t
        0x56t
        0x4ct
        0x55t
        0x5dt
        0x19t
        0x4et
        0x58t
        0x50t
        0x4dt
        0x19t
        0x5ft
        0x56t
        0x4bt
        0x19t
        0x58t
        0x5dt
        0x75t
        0x56t
        0x58t
        0x5dt
        0x5ct
        0x5dt
        0x11t
        0x10t
        0x19t
        0x4dt
        0x56t
        0x19t
        0x5bt
        0x5ct
        0x19t
        0x5at
        0x58t
        0x55t
        0x55t
        0x5ct
        0x5dt
        0x2ft
        0x18t
        0x18t
        0x5t
        0x18t
        0x4at
        0x6t
        0x5t
        0xbt
        0xet
        0x3t
        0x4t
        0xdt
        0x4at
        0x18t
        0xft
        0x1dt
        0xbt
        0x18t
        0xet
        0xft
        0xet
        0x4at
        0x1ct
        0x3t
        0xet
        0xft
        0x5t
        0x4at
        0xbt
        0xet
        0x5ct
        0x4dt
        0x54t
    .end array-data
.end method

.method public static A07()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "gd6Snq8TqC5qGLc"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "5Vo8FrFWo5Fl4YG5W1yHT6ZfMsOXSACT"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "HYpFHiAeuVvng5d4eXQK0awgijL0SEef"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "zgL9OdntC9Jt"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "c4pha1QVXZPHNWU"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "oPtBq8V8zceab2K03f0YSkruz1vfGvQp"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "tGZii7gSURWSZ1CI0FSKqsks"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "YmWpveYB3lCv"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Sd;->A08:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Sd;Z)V
    .locals 0

    .line 52832
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Sd;->A0A(Z)V

    return-void
.end method

.method private A09(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/AdExperienceType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 52833
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sd;->A04:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sd;->A02:Lcom/facebook/ads/redexgen/X/F2;

    if-eqz v0, :cond_0

    .line 52834
    sget-object v3, Lcom/facebook/ads/redexgen/X/Sd;->A09:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x4e

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sd;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52835
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Sd;->A0A(Z)V

    .line 52836
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sd;->A04:Z

    .line 52837
    new-instance v2, Lcom/facebook/ads/redexgen/X/1m;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sd;->A06:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/1z;->A0C:Ljava/lang/String;

    sget-object v4, Lcom/facebook/ads/redexgen/X/Jr;->A06:Lcom/facebook/ads/redexgen/X/Jr;

    sget-object v5, Lcom/facebook/ads/internal/protocol/AdPlacementType;->REWARDED_VIDEO:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    sget-object v6, Lcom/facebook/ads/redexgen/X/Jq;->A08:Lcom/facebook/ads/redexgen/X/Jq;

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/1m;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Jr;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/redexgen/X/Jq;I)V

    .line 52838
    .local p0, "adControllerConfig":Lcom/facebook/ads/redexgen/X/1m;
    invoke-virtual {v2, p3}, Lcom/facebook/ads/redexgen/X/1m;->A07(Z)V

    .line 52839
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sd;->A06:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/1z;->A06:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/1m;->A05(Ljava/lang/String;)V

    .line 52840
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sd;->A06:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/1z;->A07:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/1m;->A06(Ljava/lang/String;)V

    .line 52841
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sd;->A06:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/1z;->A0B:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/F2;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/F2;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/1m;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sd;->A02:Lcom/facebook/ads/redexgen/X/F2;

    .line 52842
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sd;->A02:Lcom/facebook/ads/redexgen/X/F2;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sb;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Sb;-><init>(Lcom/facebook/ads/redexgen/X/Sd;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0R(Lcom/facebook/ads/redexgen/X/0o;)V

    .line 52843
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sd;->A02:Lcom/facebook/ads/redexgen/X/F2;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/SJ;->A0V(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;)V

    .line 52844
    return-void
.end method

.method private A0A(Z)V
    .locals 2

    .line 52845
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sd;->A02:Lcom/facebook/ads/redexgen/X/F2;

    if-eqz v1, :cond_0

    .line 52846
    new-instance v0, Lcom/facebook/ads/redexgen/X/Sc;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Sc;-><init>(Lcom/facebook/ads/redexgen/X/Sd;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0R(Lcom/facebook/ads/redexgen/X/0o;)V

    .line 52847
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sd;->A02:Lcom/facebook/ads/redexgen/X/F2;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/SJ;->A0W(Z)V

    .line 52848
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sd;->A02:Lcom/facebook/ads/redexgen/X/F2;

    .line 52849
    :cond_0
    return-void
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/Sd;Z)Z
    .locals 0

    .line 52850
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Sd;->A04:Z

    return p1
.end method


# virtual methods
.method public final A0C()J
    .locals 2

    .line 52851
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sd;->A02:Lcom/facebook/ads/redexgen/X/F2;

    if-eqz v0, :cond_0

    .line 52852
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0F()J

    move-result-wide v0

    return-wide v0

    .line 52853
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final A0D()V
    .locals 1

    .line 52854
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Sd;->A0A(Z)V

    .line 52855
    return-void
.end method

.method public final A0E(Lcom/facebook/ads/RewardData;)V
    .locals 1

    .line 52856
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sd;->A06:Lcom/facebook/ads/redexgen/X/1z;

    iput-object p1, v0, Lcom/facebook/ads/redexgen/X/1z;->A03:Lcom/facebook/ads/RewardData;

    .line 52857
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sd;->A04:Z

    if-eqz v0, :cond_0

    .line 52858
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sd;->A02:Lcom/facebook/ads/redexgen/X/F2;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/F2;->A0Y(Lcom/facebook/ads/RewardData;)V

    .line 52859
    :cond_0
    return-void
.end method

.method public final A0F(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/AdExperienceType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 52860
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sd;->A01:J

    .line 52861
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Sd;->A09(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52862
    :catch_0
    move-exception v6

    .line 52863
    .local p0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/facebook/ads/redexgen/X/Sd;->A09:Ljava/lang/String;

    const/16 v2, 0x4e

    const/16 v1, 0x1f

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sd;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52864
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sd;->A06:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/1z;->A0B:Lcom/facebook/ads/redexgen/X/XJ;

    .line 52865
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A0Q:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v6}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 52866
    const/16 v2, 0x6d

    const/4 v1, 0x3

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sd;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 52867
    const/16 v0, 0x7d4

    invoke-static {v0}, Lcom/facebook/ads/AdError;->internalError(I)Lcom/facebook/ads/AdError;

    move-result-object v5

    .line 52868
    .local p1, "error":Lcom/facebook/ads/AdError;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sd;->A06:Lcom/facebook/ads/redexgen/X/1z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/1z;->A0B:Lcom/facebook/ads/redexgen/X/XJ;

    .line 52869
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sd;->A01:J

    .line 52870
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LZ;->A01(J)J

    move-result-wide v2

    invoke-virtual {v5}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {v5}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 52871
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2d(JILjava/lang/String;)V

    .line 52872
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sd;->A05:Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sd;->A06:Lcom/facebook/ads/redexgen/X/1z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1z;->A01()Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    invoke-interface {v1, v0, v5}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 52873
    .end local p0    # "e":Ljava/lang/Exception;
    .end local p1    # "error":Lcom/facebook/ads/AdError;
    :goto_0
    return-void
.end method

.method public final A0G()Z
    .locals 1

    .line 52874
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sd;->A02:Lcom/facebook/ads/redexgen/X/F2;

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

.method public final A0H()Z
    .locals 1

    .line 52875
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sd;->A04:Z

    return v0
.end method

.method public final A0I(I)Z
    .locals 4

    .line 52876
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sd;->A04:Z

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 52877
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Sd;->A05:Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sd;->A06:Lcom/facebook/ads/redexgen/X/1z;

    .line 52878
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1z;->A01()Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/AdError;->SHOW_CALLED_BEFORE_LOAD_ERROR:Lcom/facebook/ads/AdError;

    .line 52879
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sd;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 52880
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Sd;->A08:[Ljava/lang/String;

    const-string v1, "i4TgsteijYTgF3ZXWgh52CAoLdUIST6S"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "KfQZimx5EO3wO5BoFkpX8kIEmrokSzla"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return v3

    .line 52881
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sd;->A02:Lcom/facebook/ads/redexgen/X/F2;

    if-eqz v0, :cond_2

    .line 52882
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SJ;->A08:Lcom/facebook/ads/redexgen/X/1m;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/1m;->A02(I)V

    .line 52883
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sd;->A02:Lcom/facebook/ads/redexgen/X/F2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0K()V

    .line 52884
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Sd;->A04:Z

    .line 52885
    const/4 v0, 0x1

    return v0

    .line 52886
    :cond_2
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Sd;->A04:Z

    .line 52887
    return v3
.end method
