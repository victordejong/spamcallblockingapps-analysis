.class public final Lcom/facebook/ads/redexgen/X/F2;
.super Lcom/facebook/ads/redexgen/X/SJ;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/F2;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/F2;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/1m;)V
    .locals 0

    .line 32105
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/SJ;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/1m;)V

    .line 32106
    return-void
.end method

.method private A00(Ljava/lang/Runnable;)Lcom/facebook/ads/redexgen/X/12;
    .locals 1

    .line 32107
    new-instance v0, Lcom/facebook/ads/redexgen/X/SR;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/SR;-><init>(Lcom/facebook/ads/redexgen/X/F2;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/F2;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/F2;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/F2;->A01:[Ljava/lang/String;

    const-string v1, "Dg0tZg7IxBj4D2AEunqK4FRxjbaI0pzK"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "5sVR5Q40j80Tm4EH72ZLdFDAQDj0jOHn"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x70

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x43

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/F2;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0xbt
        -0xdt
        0x0t
        -0x4et
        0x1t
        0x0t
        -0x2t
        0xbt
        -0x4et
        0x5t
        -0x9t
        0x6t
        -0x4et
        0x1t
        0x0t
        -0x4et
        0x4t
        -0x9t
        0x9t
        -0xdt
        0x4t
        -0xat
        -0x9t
        -0xat
        -0x4et
        0x8t
        -0x5t
        -0xat
        -0x9t
        0x1t
        -0x4et
        -0xdt
        -0xat
        0x5t
        -0xft
        -0xet
        -0x5dt
        -0x1ct
        -0x19t
        -0x1ct
        -0xdt
        -0x9t
        -0x18t
        -0xbt
        -0x5dt
        -0xbt
        -0x18t
        -0x1ct
        -0x19t
        -0x4t
        -0x5dt
        -0x9t
        -0xet
        -0x5dt
        -0xat
        -0x18t
        -0x9t
        -0x5dt
        -0xbt
        -0x18t
        -0x6t
        -0x1ct
        -0xbt
        -0x19t
        -0x5dt
        -0xet
        -0xft
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "QPajxPBXawZguZvIACdyFqOYUKJhGG1P"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "5fhxQ1wmDDZwcYW6vVZtBFGAbpCppeaF"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "0C8PIOmzvjBgpmOh8JUWA"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "4kKOVZ4CcWBKVljagfvAN2XyBryastSO"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Oy7EzKzQwTS7e9udIDBq4FtqglrDvqBF"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "BZaaKRqUw"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "6zOS7wuF6dlGz7u6SsHniaRnv53e8kon"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "jwUp8OtoUlvjJY1bP74aKb8UsU7a0Ko9"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/F2;->A01:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/F2;)V
    .locals 0

    .line 32108
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SJ;->A0J()V

    return-void
.end method


# virtual methods
.method public final A0N()V
    .locals 2

    .line 32109
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SJ;->A02:Lcom/facebook/ads/redexgen/X/0n;

    check-cast v1, Lcom/facebook/ads/redexgen/X/Rw;

    .line 32110
    .local p0, "rewardedVideoAdapter":Lcom/facebook/ads/redexgen/X/Rw;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A08:Lcom/facebook/ads/redexgen/X/1m;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/1m;->A00:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Rw;->A00(I)V

    .line 32111
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Rw;->A0E()Z

    .line 32112
    return-void
.end method

.method public final A0Q(Lcom/facebook/ads/redexgen/X/0n;Lcom/facebook/ads/redexgen/X/8w;Lcom/facebook/ads/redexgen/X/8u;Lcom/facebook/ads/redexgen/X/1n;)V
    .locals 11

    move-object v4, p1

    .line 32113
    check-cast v4, Lcom/facebook/ads/redexgen/X/FU;

    .line 32114
    .local v3, "adapter":Lcom/facebook/ads/redexgen/X/FU;
    new-instance v3, Lcom/facebook/ads/redexgen/X/SQ;

    move-object v7, p4

    invoke-direct {v3, p0, v7, v4}, Lcom/facebook/ads/redexgen/X/SQ;-><init>(Lcom/facebook/ads/redexgen/X/F2;Lcom/facebook/ads/redexgen/X/1n;Lcom/facebook/ads/redexgen/X/FU;)V

    .line 32115
    .local v3, "rewardedVideoTimeout":Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1X(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32116
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SJ;->A0G()Landroid/os/Handler;

    move-result-object v2

    .line 32117
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/8w;->A05()Lcom/facebook/ads/redexgen/X/8x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8x;->A05()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32118
    :cond_0
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/SJ;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    .line 32119
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/F2;->A00(Ljava/lang/Runnable;)Lcom/facebook/ads/redexgen/X/12;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A08:Lcom/facebook/ads/redexgen/X/1m;

    iget-boolean v8, v0, Lcom/facebook/ads/redexgen/X/1m;->A05:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A08:Lcom/facebook/ads/redexgen/X/1m;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/1m;->A03:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SJ;->A08:Lcom/facebook/ads/redexgen/X/1m;

    sget-object v2, Lcom/facebook/ads/redexgen/X/F2;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/F2;->A01:[Ljava/lang/String;

    const-string v1, "qv162d7nxdmOCgZ5HSNnY6lM4lD0tO4m"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "JwvltbAvbK0MQjlZGmmyrgC4vpl52SAH"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v10, v3, Lcom/facebook/ads/redexgen/X/1m;->A04:Ljava/lang/String;

    .line 32120
    invoke-virtual/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/FU;->A0F(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/12;Lcom/facebook/ads/redexgen/X/1n;ZLjava/lang/String;Ljava/lang/String;)V

    .line 32121
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0Y(Lcom/facebook/ads/RewardData;)V
    .locals 3

    .line 32122
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A02:Lcom/facebook/ads/redexgen/X/0n;

    if-eqz v0, :cond_1

    .line 32123
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A02:Lcom/facebook/ads/redexgen/X/0n;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0n;->A6x()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->REWARDED_VIDEO:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    if-ne v1, v0, :cond_0

    .line 32124
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A02:Lcom/facebook/ads/redexgen/X/0n;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Rw;

    .line 32125
    .local p0, "rewardedVideoAdapter":Lcom/facebook/ads/redexgen/X/Rw;
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Rw;->A01(Lcom/facebook/ads/RewardData;)V

    .line 32126
    return-void

    .line 32127
    .end local p0    # "rewardedVideoAdapter":Lcom/facebook/ads/redexgen/X/Rw;
    :cond_0
    const/4 v2, 0x0

    const/16 v1, 0x22

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F2;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32128
    :cond_1
    const/16 v2, 0x22

    const/16 v1, 0x21

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F2;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
