.class public final Lcom/facebook/ads/redexgen/X/D7;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Z

.field public final A03:Lcom/facebook/ads/redexgen/X/D8;

.field public final A04:Lcom/facebook/ads/redexgen/X/IM;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/D7;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 26159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26160
    new-instance v0, Lcom/facebook/ads/redexgen/X/D8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/D8;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A03:Lcom/facebook/ads/redexgen/X/D8;

    .line 26161
    const v0, 0xfe01

    new-array v2, v0, [B

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>([BI)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A04:Lcom/facebook/ads/redexgen/X/IM;

    .line 26162
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A00:I

    return-void
.end method

.method private A00(I)I
    .locals 4

    .line 26163
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A01:I

    .line 26164
    const/4 v3, 0x0

    .line 26165
    .local p0, "size":I
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/D7;->A01:I

    add-int/2addr v1, p1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A03:Lcom/facebook/ads/redexgen/X/D8;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/D8;->A02:I

    if-ge v1, v0, :cond_1

    .line 26166
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A03:Lcom/facebook/ads/redexgen/X/D8;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/D8;->A09:[I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/D7;->A01:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A01:I

    add-int/2addr v1, p1

    aget v1, v2, v1

    .line 26167
    .local p1, "segmentLength":I
    add-int/2addr v3, v1

    .line 26168
    const/16 v0, 0xff

    if-eq v1, v0, :cond_0

    .line 26169
    :cond_1
    return v3
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "YmqCfQGeJdZscNiSsRHgK8Xqwc4qCDQV"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "BEVC1cuwi5mxHrGOZ29iGldY3rFRULVC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "DSPc42zLHxXdWx97yn92wynUTyNm"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "qbq"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Vn6wbfa2hXyYQug1oukzP6oQFgTa"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "a4c"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "hss"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "EwoauNNUoRbyLKR"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/D7;->A05:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A02()Lcom/facebook/ads/redexgen/X/D8;
    .locals 1

    .line 26170
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A03:Lcom/facebook/ads/redexgen/X/D8;

    return-object v0
.end method

.method public final A03()Lcom/facebook/ads/redexgen/X/IM;
    .locals 1

    .line 26171
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A04:Lcom/facebook/ads/redexgen/X/IM;

    return-object v0
.end method

.method public final A04()V
    .locals 1

    .line 26172
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A03:Lcom/facebook/ads/redexgen/X/D8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/D8;->A03()V

    .line 26173
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A04:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0W()V

    .line 26174
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A00:I

    .line 26175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A02:Z

    .line 26176
    return-void
.end method

.method public final A05()V
    .locals 4

    .line 26177
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A04:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    array-length v0, v0

    const v3, 0xfe01

    if-ne v0, v3, :cond_0

    .line 26178
    return-void

    .line 26179
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/D7;->A04:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A04:Lcom/facebook/ads/redexgen/X/IM;

    .line 26180
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 26181
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    .line 26182
    return-void
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/CH;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 26183
    const/4 v5, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 26184
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A02:Z

    if-eqz v0, :cond_0

    .line 26185
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/D7;->A02:Z

    .line 26186
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A04:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0W()V

    .line 26187
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A02:Z

    if-nez v0, :cond_b

    .line 26188
    iget v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A00:I

    if-gez v0, :cond_3

    .line 26189
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A03:Lcom/facebook/ads/redexgen/X/D8;

    invoke-virtual {v0, p1, v4}, Lcom/facebook/ads/redexgen/X/D8;->A04(Lcom/facebook/ads/redexgen/X/CH;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 26190
    return v5

    .line 26191
    :cond_1
    const/4 v2, 0x0

    .line 26192
    .local v5, "segmentIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A03:Lcom/facebook/ads/redexgen/X/D8;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/D8;->A01:I

    .line 26193
    .local v4, "bytesToSkip":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A03:Lcom/facebook/ads/redexgen/X/D8;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/D8;->A04:I

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A04:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v0

    if-nez v0, :cond_2

    .line 26194
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/D7;->A00(I)I

    move-result v0

    add-int/2addr v1, v0

    .line 26195
    iget v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A01:I

    add-int/2addr v2, v0

    .line 26196
    :cond_2
    invoke-interface {p1, v1}, Lcom/facebook/ads/redexgen/X/CH;->AE3(I)V

    .line 26197
    iput v2, p0, Lcom/facebook/ads/redexgen/X/D7;->A00:I

    .line 26198
    .end local v5    # "segmentIndex":I
    .end local v4    # "bytesToSkip":I
    :cond_3
    iget v3, p0, Lcom/facebook/ads/redexgen/X/D7;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/D7;->A05:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/D7;->A05:[Ljava/lang/String;

    const-string v1, "i62czKk5b6JbVfHnToVx8x6tmuUA"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "gHUMWkXRCT33pqDj2b4VuW7lrrl9"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/D7;->A00(I)I

    move-result v2

    .line 26199
    .local v5, "size":I
    iget v3, p0, Lcom/facebook/ads/redexgen/X/D7;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A01:I

    add-int/2addr v3, v0

    .line 26200
    .local v4, "segmentIndex":I
    if-lez v2, :cond_6

    .line 26201
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A04:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A06()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A04:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v0

    add-int/2addr v0, v2

    if-ge v1, v0, :cond_5

    .line 26202
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/D7;->A04:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A04:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    .line 26203
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A04:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A04:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v0

    invoke-interface {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 26204
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D7;->A04:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Y(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/D7;->A05:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_8

    .line 26205
    sget-object v2, Lcom/facebook/ads/redexgen/X/D7;->A05:[Ljava/lang/String;

    const-string v1, "ogc4gOivxDxoGYi1qiTHirlKhDSt"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "iMeJYowIkxr6AoX4GnZCWjRmsKkg"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A03:Lcom/facebook/ads/redexgen/X/D8;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/D8;->A09:[I

    add-int/lit8 v0, v3, -0x1

    aget v1, v1, v0

    const/4 v0, 0x5

    if-eq v1, v0, :cond_9

    :goto_2
    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A02:Z

    .line 26206
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A03:Lcom/facebook/ads/redexgen/X/D8;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/D8;->A02:I

    if-ne v3, v0, :cond_7

    const/4 v3, -0x1

    :cond_7
    iput v3, p0, Lcom/facebook/ads/redexgen/X/D7;->A00:I

    .line 26207
    .end local v5    # "size":I
    .end local v4    # "segmentIndex":I
    goto/16 :goto_1

    .line 26208
    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/D7;->A05:[Ljava/lang/String;

    const-string v1, "SEVCovcizG8fdEER6D9whRMhw9TrSTFd"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "7kPCM5e4Jglfu9vPSMMLzLJaJJkFOiUF"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A03:Lcom/facebook/ads/redexgen/X/D8;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/D8;->A09:[I

    add-int/lit8 v0, v3, -0x1

    aget v1, v1, v0

    const/16 v0, 0xff

    if-eq v1, v0, :cond_9

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    goto :goto_3

    .line 26209
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 26210
    :cond_b
    return v4
.end method
