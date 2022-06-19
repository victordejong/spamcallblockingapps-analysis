.class public final Lcom/facebook/ads/redexgen/X/IL;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:[B

.field public A01:I

.field public A02:I

.field public A03:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/IL;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 38156
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/IL;-><init>([BI)V

    .line 38157
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 38158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38159
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/IL;->A00:[B

    .line 38160
    iput p2, p0, Lcom/facebook/ads/redexgen/X/IL;->A02:I

    .line 38161
    return-void
.end method

.method private A00()V
    .locals 4

    .line 38162
    iget v1, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    if-ltz v1, :cond_2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A02:I

    if-lt v1, v0, :cond_1

    if-ne v1, v0, :cond_2

    iget v3, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/IL;->A04:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x44

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/IL;->A04:[Ljava/lang/String;

    const-string v1, "cPo"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "k8r"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v3, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 38163
    return-void
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "jvo"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Znm17mIDWWljYvtZ3pfOvGIJogBbLkbm"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "f2suMzbxc3JKrY1oCCycb94yDQZqcca2"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "OEhzwo85ANqKqDmuKpxtUA7FNDirUsgl"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "249eVPgNEUM7D1giDtjdPuhKeDOScXnw"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "LZS"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "y8KMahZpFAFADZ1rii8L7TjVZK1UkEJP"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ZmlxhPda9DAMFXBwqXl7iThvAKsXpYD5"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/IL;->A04:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A02()I
    .locals 2

    .line 38164
    iget v1, p0, Lcom/facebook/ads/redexgen/X/IL;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    sub-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x8

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A03()I
    .locals 1

    .line 38165
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 38166
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    return v0

    .line 38167
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A04()I
    .locals 2

    .line 38168
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    mul-int/lit8 v1, v0, 0x8

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A05(I)I
    .locals 7

    .line 38169
    const/4 v3, 0x0

    if-nez p1, :cond_0

    .line 38170
    return v3

    .line 38171
    :cond_0
    const/4 v6, 0x0

    .line 38172
    .local p1, "returnValue":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    .line 38173
    :goto_0
    iget v5, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    const/16 v4, 0x8

    if-le v5, v4, :cond_1

    .line 38174
    add-int/lit8 v0, v5, -0x8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    .line 38175
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/IL;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    aget-byte v0, v2, v1

    and-int/lit16 v1, v0, 0xff

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    shl-int/2addr v1, v0

    or-int/2addr v6, v1

    goto :goto_0

    .line 38176
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A00:[B

    iget v2, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    aget-byte v0, v0, v2

    and-int/lit16 v1, v0, 0xff

    rsub-int/lit8 v0, v5, 0x8

    shr-int/2addr v1, v0

    or-int/2addr v6, v1

    .line 38177
    const/4 v1, -0x1

    rsub-int/lit8 v0, p1, 0x20

    ushr-int/2addr v1, v0

    and-int/2addr v6, v1

    .line 38178
    if-ne v5, v4, :cond_2

    .line 38179
    iput v3, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    .line 38180
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    .line 38181
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IL;->A00()V

    .line 38182
    return v6
.end method

.method public final A06()V
    .locals 1

    .line 38183
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    if-nez v0, :cond_0

    .line 38184
    return-void

    .line 38185
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    .line 38186
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    .line 38187
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IL;->A00()V

    .line 38188
    return-void
.end method

.method public final A07()V
    .locals 2

    .line 38189
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    const/16 v0, 0x8

    if-ne v1, v0, :cond_0

    .line 38190
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    .line 38191
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    .line 38192
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IL;->A00()V

    .line 38193
    return-void
.end method

.method public final A08(I)V
    .locals 1

    .line 38194
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    .line 38195
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    .line 38196
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IL;->A00()V

    .line 38197
    return-void
.end method

.method public final A09(I)V
    .locals 3

    .line 38198
    div-int/lit8 v2, p1, 0x8

    .line 38199
    .local p0, "numBytes":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    .line 38200
    iget v1, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    mul-int/lit8 v0, v2, 0x8

    sub-int/2addr p1, v0

    add-int/2addr v1, p1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    .line 38201
    iget v1, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    const/4 v0, 0x7

    if-le v1, v0, :cond_0

    .line 38202
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    .line 38203
    add-int/lit8 v0, v1, -0x8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    .line 38204
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IL;->A00()V

    .line 38205
    return-void
.end method

.method public final A0A(I)V
    .locals 3

    .line 38206
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 38207
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/IL;->A04:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x44

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 38208
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 38209
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/IL;->A04:[Ljava/lang/String;

    const-string v1, "sQ8EWX8XdcvmTIH4LDZhuTK5xarzLDwD"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "piiSu5y2lhop6YenAnkVyTIhi8TmylyB"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IL;->A00()V

    .line 38210
    return-void
.end method

.method public final A0B(II)V
    .locals 10

    .line 38211
    .local p0, "remainingBitsToRead":I
    const/4 v9, 0x1

    const/16 v0, 0x20

    if-ge p2, v0, :cond_0

    .line 38212
    shl-int v0, v9, p2

    sub-int/2addr v0, v9

    and-int/2addr p1, v0

    .line 38213
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    const/16 v5, 0x8

    rsub-int/lit8 v0, v0, 0x8

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 38214
    .local p2, "firstByteReadSize":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    rsub-int/lit8 v3, v0, 0x8

    sub-int/2addr v3, v6

    .line 38215
    .local v0, "firstByteRightPaddingSize":I
    const v1, 0xff00

    shr-int/2addr v1, v0

    shl-int v0, v9, v3

    sub-int/2addr v0, v9

    or-int/2addr v1, v0

    .line 38216
    .local v9, "firstByteBitmask":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/IL;->A00:[B

    iget v4, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    aget-byte v0, v2, v4

    and-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v2, v4

    .line 38217
    sub-int v0, p2, v6

    ushr-int v1, p1, v0

    .line 38218
    .local v0, "firstByteInputBits":I
    aget-byte v0, v2, v4

    shl-int/2addr v1, v3

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v2, v4

    .line 38219
    sub-int v6, p2, v6

    .line 38220
    add-int/2addr v4, v9

    .line 38221
    .local v0, "currentByteIndex":I
    :goto_0
    if-le v6, v5, :cond_1

    .line 38222
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/IL;->A00:[B

    add-int/lit8 v1, v4, 0x1

    .end local v0    # "currentByteIndex":I
    .local v5, "currentByteIndex":I
    add-int/lit8 v0, v6, -0x8

    ushr-int v0, p1, v0

    int-to-byte v0, v0

    aput-byte v0, v2, v4

    .line 38223
    add-int/lit8 v6, v6, -0x8

    move v4, v1

    goto :goto_0

    .line 38224
    .end local v5    # "currentByteIndex":I
    .restart local v0    # "currentByteIndex":I
    :cond_1
    sub-int/2addr v5, v6

    .line 38225
    .local p2, "lastByteRightPaddingSize":I
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/IL;->A00:[B

    aget-byte v7, v3, v4

    shl-int v8, v9, v5

    sub-int/2addr v8, v9

    sget-object v2, Lcom/facebook/ads/redexgen/X/IL;->A04:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/IL;->A04:[Ljava/lang/String;

    const-string v1, "N6SjRNhvnOszDRNnNIwcYYCEAK1tlY0C"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    and-int/2addr v7, v8

    int-to-byte v0, v7

    aput-byte v0, v3, v4

    .line 38226
    shl-int v0, v9, v6

    sub-int/2addr v0, v9

    and-int/2addr p1, v0

    .line 38227
    .local p1, "lastByteInput":I
    aget-byte v0, v3, v4

    shl-int/2addr p1, v5

    or-int/2addr v0, p1

    int-to-byte v0, v0

    aput-byte v0, v3, v4

    .line 38228
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 38229
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IL;->A00()V

    .line 38230
    return-void
.end method

.method public final A0C([B)V
    .locals 1

    .line 38231
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A0D([BI)V

    .line 38232
    return-void
.end method

.method public final A0D([BI)V
    .locals 1

    .line 38233
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/IL;->A00:[B

    .line 38234
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    .line 38235
    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    .line 38236
    iput p2, p0, Lcom/facebook/ads/redexgen/X/IL;->A02:I

    .line 38237
    return-void
.end method

.method public final A0E([BII)V
    .locals 10

    .line 38238
    shr-int/lit8 v5, p3, 0x3

    add-int/2addr v5, p2

    .line 38239
    .local p0, "to":I
    .local p1, "i":I
    :goto_0
    const/16 v6, 0xff

    const/16 v4, 0x8

    if-ge p2, v5, :cond_0

    .line 38240
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/IL;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    aget-byte v0, v3, v1

    iget v2, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    shl-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 38241
    aget-byte v1, p1, p2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    aget-byte v0, v3, v0

    and-int/2addr v6, v0

    sub-int/2addr v4, v2

    shr-int/2addr v6, v4

    or-int/2addr v6, v1

    int-to-byte v0, v6

    aput-byte v0, p1, p2

    .line 38242
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 38243
    .end local p1    # "i":I
    :cond_0
    and-int/lit8 v9, p3, 0x7

    .line 38244
    .local p1, "bitsLeft":I
    if-nez v9, :cond_1

    .line 38245
    return-void

    .line 38246
    :cond_1
    aget-byte v1, p1, v5

    shr-int v0, v6, v9

    and-int/2addr v1, v0

    int-to-byte v0, v1

    aput-byte v0, p1, v5

    .line 38247
    iget v3, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    add-int v0, v3, v9

    if-le v0, v4, :cond_3

    .line 38248
    aget-byte v7, p1, v5

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/IL;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    aget-byte v8, v2, v1

    sget-object v2, Lcom/facebook/ads/redexgen/X/IL;->A04:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/IL;->A04:[Ljava/lang/String;

    const-string v1, "aeAk571GaKBzDyS1gSp2o3S60uaBspbo"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    and-int/2addr v8, v6

    shl-int/2addr v8, v3

    or-int/2addr v7, v8

    int-to-byte v0, v7

    aput-byte v0, p1, v5

    .line 38249
    sub-int/2addr v3, v4

    iput v3, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    .line 38250
    :cond_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    add-int/2addr v0, v9

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    .line 38251
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A00:[B

    iget v3, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    aget-byte v0, v0, v3

    and-int/2addr v6, v0

    iget v2, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    rsub-int/lit8 v0, v2, 0x8

    shr-int/2addr v6, v0

    .line 38252
    .local p2, "lastDataByteTrailingBits":I
    aget-byte v1, p1, v5

    rsub-int/lit8 v0, v9, 0x8

    shl-int/2addr v6, v0

    int-to-byte v0, v6

    or-int/2addr v1, v0

    int-to-byte v0, v1

    aput-byte v0, p1, v5

    .line 38253
    if-ne v2, v4, :cond_4

    .line 38254
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    .line 38255
    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    .line 38256
    :cond_4
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IL;->A00()V

    .line 38257
    return-void
.end method

.method public final A0F([BII)V
    .locals 2

    .line 38258
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 38259
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IL;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38260
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    .line 38261
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IL;->A00()V

    .line 38262
    return-void

    .line 38263
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0G()Z
    .locals 3

    .line 38264
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IL;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IL;->A03:I

    aget-byte v2, v1, v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IL;->A01:I

    const/16 v0, 0x80

    shr-int/2addr v0, v1

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 38265
    .local p0, "returnValue":Z
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IL;->A07()V

    .line 38266
    return v0

    .line 38267
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
