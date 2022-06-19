.class public final Lcom/facebook/ads/redexgen/X/D4;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A0J:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:J

.field public A04:J

.field public A05:J

.field public A06:J

.field public A07:Lcom/facebook/ads/redexgen/X/Cn;

.field public A08:Lcom/facebook/ads/redexgen/X/D3;

.field public A09:Lcom/facebook/ads/redexgen/X/IM;

.field public A0A:Z

.field public A0B:Z

.field public A0C:[I

.field public A0D:[I

.field public A0E:[I

.field public A0F:[J

.field public A0G:[J

.field public A0H:[Z

.field public A0I:[Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/D4;->A00()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26096
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "0EwfBQL8WgkraFIT5"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "yqBIkqshgk6o8aGC7JXOfAcvQBpSEoIE"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Pb3yD9oBE"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Sy7y64hwk"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "hrTCG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "uTsL"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "1ofsGt0E1HxH4l7d5"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "0"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/D4;->A0J:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A01(I)J
    .locals 4

    .line 26097
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A0F:[J

    aget-wide v2, v0, p1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A0C:[I

    aget v0, v0, p1

    int-to-long v0, v0

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public final A02()V
    .locals 3

    .line 26098
    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/ads/redexgen/X/D4;->A02:I

    .line 26099
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A06:J

    .line 26100
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/D4;->A0A:Z

    .line 26101
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/D4;->A0B:Z

    .line 26102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A08:Lcom/facebook/ads/redexgen/X/D3;

    .line 26103
    return-void
.end method

.method public final A03(I)V
    .locals 4

    .line 26104
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A09:Lcom/facebook/ads/redexgen/X/IM;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/D4;->A0J:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/D4;->A0J:[Ljava/lang/String;

    const-string v1, "O7sbivaH"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ge v3, p1, :cond_1

    .line 26105
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A09:Lcom/facebook/ads/redexgen/X/IM;

    .line 26106
    :cond_1
    iput p1, p0, Lcom/facebook/ads/redexgen/X/D4;->A01:I

    .line 26107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A0A:Z

    .line 26108
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A0B:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/D4;->A0J:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_2

    .line 26109
    sget-object v2, Lcom/facebook/ads/redexgen/X/D4;->A0J:[Ljava/lang/String;

    const-string v1, "ZqBRFK04oxBzllTVeb4xO6w8kHwYHjDg"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-void

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A04(II)V
    .locals 2

    .line 26110
    iput p1, p0, Lcom/facebook/ads/redexgen/X/D4;->A02:I

    .line 26111
    iput p2, p0, Lcom/facebook/ads/redexgen/X/D4;->A00:I

    .line 26112
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A0E:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 26113
    :cond_0
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A0G:[J

    .line 26114
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A0E:[I

    .line 26115
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A0D:[I

    if-eqz v0, :cond_2

    array-length v0, v0

    if-ge v0, p2, :cond_3

    .line 26116
    :cond_2
    mul-int/lit8 v0, p2, 0x7d

    div-int/lit8 v1, v0, 0x64

    .line 26117
    .local p0, "tableSize":I
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A0D:[I

    .line 26118
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A0C:[I

    .line 26119
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A0F:[J

    .line 26120
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A0I:[Z

    .line 26121
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A0H:[Z

    .line 26122
    .end local p0    # "tableSize":I
    :cond_3
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/CH;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 26123
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A09:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A01:I

    const/4 v1, 0x0

    invoke-interface {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 26124
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A09:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 26125
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/D4;->A0B:Z

    .line 26126
    return-void
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/IM;)V
    .locals 3

    .line 26127
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A09:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A01:I

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 26128
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A09:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 26129
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/D4;->A0B:Z

    .line 26130
    return-void
.end method
