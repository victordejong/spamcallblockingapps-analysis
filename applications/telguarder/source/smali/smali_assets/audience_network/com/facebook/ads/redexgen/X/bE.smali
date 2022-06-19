.class public final Lcom/facebook/ads/redexgen/X/bE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/LT;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/LT<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# static fields
.field public static A06:[B

.field public static A07:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/27;

.field public A01:Z

.field public A02:Z

.field public A03:Z

.field public final A04:Lcom/facebook/ads/redexgen/X/25;

.field public final A05:Lcom/facebook/ads/redexgen/X/27;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bE;->A05()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bE;->A04()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/25;)V
    .locals 3

    .line 69148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bE;->A02:Z

    .line 69150
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bE;->A03:Z

    .line 69151
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bE;->A01:Z

    .line 69152
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bE;->A04:Lcom/facebook/ads/redexgen/X/25;

    .line 69153
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/25;->A01:D

    new-instance v0, Lcom/facebook/ads/redexgen/X/27;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/27;-><init>(D)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bE;->A05:Lcom/facebook/ads/redexgen/X/27;

    .line 69154
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/25;->A01:D

    new-instance v0, Lcom/facebook/ads/redexgen/X/27;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/27;-><init>(D)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bE;->A00:Lcom/facebook/ads/redexgen/X/27;

    .line 69155
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/25;Landroid/os/Bundle;)V
    .locals 3

    .line 69156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bE;->A02:Z

    .line 69158
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bE;->A03:Z

    .line 69159
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bE;->A01:Z

    .line 69160
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bE;->A04:Lcom/facebook/ads/redexgen/X/25;

    .line 69161
    const/16 v2, 0x13

    const/16 v1, 0x9

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LN;->A00([B)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/27;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bE;->A05:Lcom/facebook/ads/redexgen/X/27;

    .line 69162
    const/16 v2, 0x1c

    const/16 v1, 0xd

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LN;->A00([B)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/27;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bE;->A00:Lcom/facebook/ads/redexgen/X/27;

    .line 69163
    const/16 v2, 0x8

    const/4 v1, 0x5

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bE;->A02:Z

    .line 69164
    const/16 v2, 0xd

    const/4 v1, 0x6

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bE;->A03:Z

    .line 69165
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bE;->A01:Z

    .line 69166
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/bE;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x33

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .locals 1

    .line 69167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bE;->A01:Z

    .line 69168
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bE;->A02()V

    .line 69169
    return-void
.end method

.method private A02()V
    .locals 4

    .line 69170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bE;->A02:Z

    .line 69171
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bE;->A03:Z

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/bE;->A00:Lcom/facebook/ads/redexgen/X/27;

    .line 69172
    .local p0, "endStatistics":Lcom/facebook/ads/redexgen/X/27;
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/bE;->A04:Lcom/facebook/ads/redexgen/X/25;

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/bE;->A01:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bE;->A03:Z

    invoke-virtual {v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/25;->A00(ZZLcom/facebook/ads/redexgen/X/27;)V

    .line 69173
    return-void

    .line 69174
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/bE;->A05:Lcom/facebook/ads/redexgen/X/27;

    goto :goto_0
.end method

.method private A03()V
    .locals 1

    .line 69175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bE;->A03:Z

    .line 69176
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bE;->A01()V

    .line 69177
    return-void
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x29

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/bE;->A06:[B

    return-void

    :array_0
    .array-data 1
        -0x2at
        -0x1et
        -0x20t
        -0x1dt
        -0x21t
        -0x28t
        -0x19t
        -0x28t
        -0x26t
        -0x1dt
        -0x27t
        -0x26t
        -0x27t
        -0x48t
        -0x57t
        -0x45t
        -0x45t
        -0x53t
        -0x54t
        -0x42t
        -0x51t
        -0x43t
        -0x42t
        -0x63t
        -0x42t
        -0x55t
        -0x42t
        -0x43t
        -0x4et
        -0x5bt
        -0x5ft
        -0x4dt
        -0x63t
        -0x62t
        -0x58t
        -0x5ft
        -0x71t
        -0x50t
        -0x63t
        -0x50t
        -0x51t
    .end array-data
.end method

.method public static A05()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "1rXfVnNZRCMKSBmKvXBkqyIampQHuBTT"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "2bLZXAk3pl72OxsXhKzzangZVfhmAhBr"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "LE0trkh5BaXy0JUPm"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "MtA6uT6DKVcUBVmop0u"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "GFOlAA7vgdvYkzDNo5MadPPE0QeXaZAF"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "iEcBvH9q7CiihZ6SUT8L1eAmSvCZtCKk"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "3wBrZQLKvBQ6cLhc0qq"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ySHp1IuW6hVExgFmQZh21v0rDd75pKs8"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/bE;->A07:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A06()Landroid/os/Bundle;
    .locals 5

    .line 69178
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 69179
    .local p0, "bundle":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bE;->A00:Lcom/facebook/ads/redexgen/X/27;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LN;->A02(Ljava/io/Serializable;)[B

    move-result-object v3

    const/16 v2, 0x1c

    const/16 v1, 0xd

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 69180
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bE;->A05:Lcom/facebook/ads/redexgen/X/27;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LN;->A02(Ljava/io/Serializable;)[B

    move-result-object v3

    const/16 v2, 0x13

    const/16 v1, 0x9

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 69181
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/bE;->A02:Z

    const/16 v2, 0x8

    const/4 v1, 0x5

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 69182
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/bE;->A03:Z

    const/16 v2, 0xd

    const/4 v1, 0x6

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 69183
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/bE;->A01:Z

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 69184
    return-object v4
.end method

.method public final A07()V
    .locals 1

    .line 69185
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bE;->A02:Z

    if-nez v0, :cond_0

    .line 69186
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bE;->A00:Lcom/facebook/ads/redexgen/X/27;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/27;->A03()V

    .line 69187
    :cond_0
    return-void
.end method

.method public final A08(DD)V
    .locals 10

    .line 69188
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bE;->A02:Z

    if-eqz v0, :cond_0

    .line 69189
    return-void

    .line 69190
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bE;->A05:Lcom/facebook/ads/redexgen/X/27;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/27;->A04(DD)V

    .line 69191
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bE;->A00:Lcom/facebook/ads/redexgen/X/27;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/27;->A04(DD)V

    .line 69192
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bE;->A04:Lcom/facebook/ads/redexgen/X/25;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/25;->A03:Z

    if-eqz v0, :cond_2

    .line 69193
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bE;->A00:Lcom/facebook/ads/redexgen/X/27;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/27;->A00()Lcom/facebook/ads/redexgen/X/26;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/26;->A03()D

    move-result-wide v8

    .line 69194
    .local p0, "viewableSeconds":D
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bE;->A04:Lcom/facebook/ads/redexgen/X/25;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/25;->A00:D

    const-wide/16 v6, 0x0

    cmpl-double v0, v1, v6

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bE;->A05:Lcom/facebook/ads/redexgen/X/27;

    .line 69195
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/27;->A00()Lcom/facebook/ads/redexgen/X/26;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/26;->A04()D

    move-result-wide v4

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/bE;->A04:Lcom/facebook/ads/redexgen/X/25;

    sget-object v2, Lcom/facebook/ads/redexgen/X/bE;->A07:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/bE;->A07:[Ljava/lang/String;

    const-string v1, "T6gjK2QSsLcLO7czUZGr1vXDcxJirDTU"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "hs34X0zFUnqhorBqOe1x1e05IcUuJ424"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-wide v1, v3, Lcom/facebook/ads/redexgen/X/25;->A00:D

    cmpl-double v0, v4, v1

    if-lez v0, :cond_5

    cmpl-double v3, v8, v6

    sget-object v2, Lcom/facebook/ads/redexgen/X/bE;->A07:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/bE;->A07:[Ljava/lang/String;

    const-string v1, "F30RTtpMpumHuhVQJj2Sxrc5BnRJWEU6"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v3, :cond_5

    .line 69196
    :goto_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bE;->A01()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/bE;->A07:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 69197
    sget-object v2, Lcom/facebook/ads/redexgen/X/bE;->A07:[Ljava/lang/String;

    const-string v1, "tDZlaAUjytzZ2vtOC"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-void

    :cond_1
    if-nez v3, :cond_5

    goto :goto_1

    .line 69198
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bE;->A00:Lcom/facebook/ads/redexgen/X/27;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/27;->A00()Lcom/facebook/ads/redexgen/X/26;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/26;->A01()D

    move-result-wide v8

    goto/16 :goto_0

    .line 69199
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/bE;->A07:[Ljava/lang/String;

    const-string v1, "PWt3UCdLmacUDAaKa7qG1WjHdRUwYQML"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "nsPDOGo5haoHqx4MxUvN1JuyDQrM6Fdb"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-void

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 69200
    :cond_5
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/bE;->A04:Lcom/facebook/ads/redexgen/X/25;

    sget-object v1, Lcom/facebook/ads/redexgen/X/bE;->A07:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6a

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/bE;->A07:[Ljava/lang/String;

    const-string v1, "fX9sFZGj0U97M4kLDXLqIJ6maPl5udls"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-wide v1, v3, Lcom/facebook/ads/redexgen/X/25;->A02:D

    cmpl-double v0, v8, v1

    if-ltz v0, :cond_6

    .line 69201
    :goto_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bE;->A03()V

    .line 69202
    :cond_6
    return-void

    :cond_7
    iget-wide v1, v3, Lcom/facebook/ads/redexgen/X/25;->A02:D

    cmpl-double v0, v8, v1

    if-ltz v0, :cond_6

    goto :goto_2
.end method
