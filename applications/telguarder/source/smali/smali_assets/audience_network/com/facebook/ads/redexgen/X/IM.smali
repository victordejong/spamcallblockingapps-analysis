.class public final Lcom/facebook/ads/redexgen/X/IM;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:[B

.field public A01:I

.field public A02:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/IM;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/IM;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 38269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38270
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    .line 38271
    iput p1, p0, Lcom/facebook/ads/redexgen/X/IM;->A01:I

    .line 38272
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 38273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38274
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    .line 38275
    array-length v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A01:I

    .line 38276
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 38277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38278
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    .line 38279
    iput p2, p0, Lcom/facebook/ads/redexgen/X/IM;->A01:I

    .line 38280
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/IM;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v3, p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/IM;->A04:[Ljava/lang/String;

    const/4 v0, 0x2

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

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/IM;->A04:[Ljava/lang/String;

    const-string v1, "9T9DlcV00vuoC2p76q6qdTNDli349mVL"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge p1, v3, :cond_2

    aget-byte v0, p0, p1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x6a

    int-to-byte v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/IM;->A04:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x49

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/IM;->A04:[Ljava/lang/String;

    const-string v1, "o"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    aput-byte v3, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x64

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/IM;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x49t
        0x6et
        0x76t
        0x61t
        0x6ct
        0x69t
        0x64t
        0x20t
        0x55t
        0x54t
        0x46t
        0x2dt
        0x38t
        0x20t
        0x73t
        0x65t
        0x71t
        0x75t
        0x65t
        0x6et
        0x63t
        0x65t
        0x20t
        0x63t
        0x6ft
        0x6et
        0x74t
        0x69t
        0x6et
        0x75t
        0x61t
        0x74t
        0x69t
        0x6ft
        0x6et
        0x20t
        0x62t
        0x79t
        0x74t
        0x65t
        0x3at
        0x20t
        0x49t
        0x6et
        0x76t
        0x61t
        0x6ct
        0x69t
        0x64t
        0x20t
        0x55t
        0x54t
        0x46t
        0x2dt
        0x38t
        0x20t
        0x73t
        0x65t
        0x71t
        0x75t
        0x65t
        0x6et
        0x63t
        0x65t
        0x20t
        0x66t
        0x69t
        0x72t
        0x73t
        0x74t
        0x20t
        0x62t
        0x79t
        0x74t
        0x65t
        0x3at
        0x20t
        0x4dt
        0x76t
        0x69t
        0x39t
        0x7bt
        0x70t
        0x6dt
        0x39t
        0x77t
        0x76t
        0x6dt
        0x39t
        0x63t
        0x7ct
        0x6bt
        0x76t
        0x23t
        0x39t
        0x66t
        0x67t
        0x75t
        0x1et
        0xbt
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "pnYa7x4B7QJftLxM7"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "6PIK47YsLZTeHRCAs1Pfo4elZqVKB1FT"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "vkxzKh960q6AbY4Sm"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "EBxfwfWEn2ETY9rY5qish0AAHakP4ZSu"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ILiyrAa63q2Ee"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "2dupHV9ooBhYL1pRY73lyowoxfo"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Rm50qtKgwNr8LBhum"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "zV6x27F6lcEB9UKNa9T6D5EDAP5bAhYB"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/IM;->A04:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A03()C
    .locals 4

    .line 38281
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v2, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v3, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x8

    add-int/lit8 v0, v2, 0x1

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public final A04()D
    .locals 2

    .line 38282
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0M()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final A05()I
    .locals 2

    .line 38283
    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A06()I
    .locals 1

    .line 38284
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    array-length v0, v0

    goto :goto_0
.end method

.method public final A07()I
    .locals 1

    .line 38285
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    return v0
.end method

.method public final A08()I
    .locals 1

    .line 38286
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A01:I

    return v0
.end method

.method public final A09()I
    .locals 4

    .line 38287
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v2, v0, 0x18

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v2, v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v2, v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    return v0
.end method

.method public final A0A()I
    .locals 4

    .line 38288
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    shr-int/lit8 v2, v0, 0x8

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v2, v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    return v0
.end method

.method public final A0B()I
    .locals 4

    .line 38289
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v2, v0, 0xff

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v2, v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v2, v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method public final A0C()I
    .locals 5

    .line 38290
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0B()I

    move-result v4

    .line 38291
    .local p0, "result":I
    if-ltz v4, :cond_0

    .line 38292
    return v4

    .line 38293
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x4d

    const/16 v1, 0x12

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0D()I
    .locals 4

    .line 38294
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v2, v0, 0xff

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v2

    return v0
.end method

.method public final A0E()I
    .locals 4

    .line 38295
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v1

    .line 38296
    .local p0, "b1":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    .line 38297
    .local v1, "b2":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v3

    .line 38298
    .local v0, "b3":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v2

    .line 38299
    .local v3, "b4":I
    shl-int/lit8 v1, v1, 0x15

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr v1, v0

    shl-int/lit8 v0, v3, 0x7

    or-int/2addr v1, v0

    or-int/2addr v1, v2

    return v1
.end method

.method public final A0F()I
    .locals 3

    .line 38300
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final A0G()I
    .locals 4

    .line 38301
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v2, v0, 0x8

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v1, v0, 0xff

    or-int/2addr v1, v2

    .line 38302
    .local p0, "result":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    .line 38303
    return v1
.end method

.method public final A0H()I
    .locals 4

    .line 38304
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v2, v0, 0x10

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v2, v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    return v0
.end method

.method public final A0I()I
    .locals 5

    .line 38305
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v4

    .line 38306
    .local p0, "result":I
    if-ltz v4, :cond_0

    .line 38307
    return v4

    .line 38308
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x4d

    const/16 v1, 0x12

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0J()I
    .locals 4

    .line 38309
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v2, v0, 0x8

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    return v0
.end method

.method public final A0K()J
    .locals 9

    .line 38310
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v6, v1

    int-to-long v2, v0

    const-wide/16 v7, 0xff

    and-long/2addr v2, v7

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v6, v1

    int-to-long v4, v0

    and-long/2addr v4, v7

    const/16 v0, 0x8

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v6, v1

    int-to-long v4, v0

    and-long/2addr v4, v7

    const/16 v0, 0x10

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v6, v1

    int-to-long v4, v0

    and-long/2addr v4, v7

    const/16 v0, 0x18

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v6, v1

    int-to-long v4, v0

    and-long/2addr v4, v7

    const/16 v0, 0x20

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v6, v1

    int-to-long v4, v0

    and-long/2addr v4, v7

    const/16 v0, 0x28

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v6, v1

    int-to-long v4, v0

    and-long/2addr v4, v7

    const/16 v0, 0x30

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v6, v1

    int-to-long v0, v0

    and-long/2addr v7, v0

    const/16 v0, 0x38

    shl-long/2addr v7, v0

    or-long/2addr v2, v7

    return-wide v2
.end method

.method public final A0L()J
    .locals 9

    .line 38311
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v6, v1

    int-to-long v2, v0

    const-wide/16 v7, 0xff

    and-long/2addr v2, v7

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v6, v1

    int-to-long v4, v0

    and-long/2addr v4, v7

    const/16 v0, 0x8

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v6, v1

    int-to-long v4, v0

    and-long/2addr v4, v7

    const/16 v0, 0x10

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v6, v1

    int-to-long v0, v0

    and-long/2addr v7, v0

    const/16 v0, 0x18

    shl-long/2addr v7, v0

    or-long/2addr v2, v7

    return-wide v2
.end method

.method public final A0M()J
    .locals 9

    .line 38312
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v6, v1

    int-to-long v2, v0

    const-wide/16 v7, 0xff

    and-long/2addr v2, v7

    const/16 v0, 0x38

    shl-long/2addr v2, v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v6, v1

    int-to-long v4, v0

    and-long/2addr v4, v7

    const/16 v0, 0x30

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v6, v1

    int-to-long v4, v0

    and-long/2addr v4, v7

    const/16 v0, 0x28

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v6, v1

    int-to-long v4, v0

    and-long/2addr v4, v7

    const/16 v0, 0x20

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v6, v1

    int-to-long v4, v0

    and-long/2addr v4, v7

    const/16 v0, 0x18

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v6, v1

    int-to-long v4, v0

    and-long/2addr v4, v7

    const/16 v0, 0x10

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v6, v1

    int-to-long v4, v0

    and-long/2addr v4, v7

    const/16 v0, 0x8

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v6, v1

    int-to-long v0, v0

    and-long/2addr v7, v0

    or-long/2addr v2, v7

    return-wide v2
.end method

.method public final A0N()J
    .locals 9

    .line 38313
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v6, v1

    int-to-long v2, v0

    const-wide/16 v7, 0xff

    and-long/2addr v2, v7

    const/16 v0, 0x18

    shl-long/2addr v2, v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v6, v1

    int-to-long v4, v0

    and-long/2addr v4, v7

    const/16 v0, 0x10

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v6, v1

    int-to-long v4, v0

    and-long/2addr v4, v7

    const/16 v0, 0x8

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v6, v1

    int-to-long v0, v0

    and-long/2addr v7, v0

    or-long/2addr v2, v7

    return-wide v2
.end method

.method public final A0O()J
    .locals 6

    .line 38314
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0M()J

    move-result-wide v3

    .line 38315
    .local p0, "result":J
    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-ltz v0, :cond_0

    .line 38316
    return-wide v3

    .line 38317
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x4d

    const/16 v1, 0x12

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0P()J
    .locals 11

    .line 38318
    const/4 v7, 0x0

    .line 38319
    .local p0, "length":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v1, v0

    int-to-long v2, v0

    .line 38320
    .local v7, "value":J
    const/4 v10, 0x7

    .local v0, "j":I
    :goto_0
    const/4 v6, 0x6

    if-ltz v10, :cond_0

    .line 38321
    const/4 v1, 0x1

    shl-int v0, v1, v10

    int-to-long v4, v0

    and-long/2addr v4, v2

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-nez v0, :cond_2

    .line 38322
    const/4 v0, 0x7

    if-ge v10, v6, :cond_1

    .line 38323
    shl-int v0, v1, v10

    sub-int/2addr v0, v1

    int-to-long v0, v0

    and-long/2addr v2, v0

    .line 38324
    rsub-int/lit8 v7, v10, 0x7

    .line 38325
    .end local v0    # "j":I
    :cond_0
    :goto_1
    if-eqz v7, :cond_5

    .line 38326
    const/4 v5, 0x1

    .local v0, "i":I
    :goto_2
    if-ge v5, v7, :cond_4

    .line 38327
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/2addr v0, v5

    aget-byte v4, v1, v0

    .line 38328
    .local v2, "x":I
    and-int/lit16 v1, v4, 0xc0

    const/16 v0, 0x80

    if-ne v1, v0, :cond_3

    .line 38329
    shl-long/2addr v2, v6

    and-int/lit8 v0, v4, 0x3f

    int-to-long v0, v0

    or-long/2addr v2, v0

    .line 38330
    .end local v2    # "x":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 38331
    :cond_1
    if-ne v10, v0, :cond_0

    .line 38332
    const/4 v7, 0x1

    goto :goto_1

    .line 38333
    :cond_2
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 38334
    .restart local v2    # "x":I
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const/16 v1, 0x2a

    const/16 v0, 0x6a

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38335
    .end local v0    # "i":I
    .end local v2    # "x":I
    :cond_4
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    .line 38336
    return-wide v2

    .line 38337
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x2a

    const/16 v1, 0x23

    const/16 v0, 0x6a

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0Q()Ljava/lang/String;
    .locals 8

    .line 38338
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    if-nez v0, :cond_0

    .line 38339
    const/4 v0, 0x0

    return-object v0

    .line 38340
    :cond_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    .line 38341
    .local p0, "lineLimit":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A01:I

    if-ge v3, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    aget-byte v0, v0, v3

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0e(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 38342
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 38343
    :cond_1
    iget v5, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/IM;->A04:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/IM;->A04:[Ljava/lang/String;

    const-string v1, "L1tysAOAVHUW"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    sub-int v0, v3, v5

    const/4 v4, 0x3

    if-lt v0, v4, :cond_3

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    aget-byte v7, v6, v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/IM;->A04:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x44

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/IM;->A04:[Ljava/lang/String;

    const-string v1, "8VrCu7QHl4UryzgRlyKZobumdBK"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "5lGwQT74e0UyQ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/16 v0, -0x11

    if-ne v7, v0, :cond_3

    add-int/lit8 v0, v5, 0x1

    aget-byte v1, v6, v0

    const/16 v0, -0x45

    if-ne v1, v0, :cond_3

    add-int/lit8 v0, v5, 0x2

    aget-byte v1, v6, v0

    const/16 v0, -0x41

    if-ne v1, v0, :cond_3

    .line 38344
    add-int/2addr v5, v4

    iput v5, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    .line 38345
    :cond_3
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    sub-int v0, v3, v1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0R([BII)Ljava/lang/String;

    move-result-object v4

    .line 38346
    .local v0, "line":Ljava/lang/String;
    iput v3, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    .line 38347
    iget v3, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/IM;->A01:I

    if-ne v3, v2, :cond_4

    .line 38348
    return-object v4

    .line 38349
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    aget-byte v1, v0, v3

    const/16 v0, 0xd

    if-ne v1, v0, :cond_5

    .line 38350
    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    .line 38351
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    if-ne v0, v2, :cond_5

    .line 38352
    return-object v4

    .line 38353
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v2, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v1, v0, v2

    const/16 v0, 0xa

    if-ne v1, v0, :cond_6

    .line 38354
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    .line 38355
    :cond_6
    return-object v4

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0R()Ljava/lang/String;
    .locals 5

    .line 38356
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    if-nez v0, :cond_0

    .line 38357
    const/4 v0, 0x0

    return-object v0

    .line 38358
    :cond_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    .line 38359
    .local p0, "stringLimit":I
    :goto_0
    iget v4, p0, Lcom/facebook/ads/redexgen/X/IM;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/IM;->A04:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x49

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/IM;->A04:[Ljava/lang/String;

    const-string v1, "sOtjm2zDPerDTQ4AJwADLkw7PWxk"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ge v3, v4, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    aget-byte v0, v0, v3

    if-eqz v0, :cond_2

    .line 38360
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 38361
    :cond_2
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    sub-int v0, v3, v1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0R([BII)Ljava/lang/String;

    move-result-object v2

    .line 38362
    .local v0, "string":Ljava/lang/String;
    iput v3, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    .line 38363
    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A01:I

    if-ge v1, v0, :cond_3

    .line 38364
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    .line 38365
    :cond_3
    return-object v2
.end method

.method public final A0S(I)Ljava/lang/String;
    .locals 3

    .line 38366
    if-nez p1, :cond_0

    .line 38367
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A00(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 38368
    :cond_0
    move v2, p1

    .line 38369
    .local p0, "stringLength":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/2addr v0, p1

    add-int/lit8 v1, v0, -0x1

    .line 38370
    .local p1, "lastIndex":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A01:I

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    aget-byte v0, v0, v1

    if-nez v0, :cond_1

    .line 38371
    add-int/lit8 v2, v2, -0x1

    .line 38372
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    invoke-static {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Ic;->A0R([BII)Ljava/lang/String;

    move-result-object v1

    .line 38373
    .local v2, "result":Ljava/lang/String;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    .line 38374
    return-object v1
.end method

.method public final A0T(I)Ljava/lang/String;
    .locals 3

    .line 38375
    const/16 v2, 0x5f

    const/4 v1, 0x5

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0U(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0U(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    .line 38376
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2, v0, p1, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 38377
    .local p0, "result":Ljava/lang/String;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    .line 38378
    return-object v1
.end method

.method public final A0V()S
    .locals 4

    .line 38379
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v2, v0, 0x8

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    aget-byte v0, v3, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    int-to-short v0, v0

    return v0
.end method

.method public final A0W()V
    .locals 1

    .line 38380
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    .line 38381
    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A01:I

    .line 38382
    return-void
.end method

.method public final A0X(I)V
    .locals 1

    .line 38383
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A06()I

    move-result v0

    if-ge v0, p1, :cond_0

    new-array v0, p1, [B

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/IM;->A0c([BI)V

    .line 38384
    return-void

    .line 38385
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    goto :goto_0
.end method

.method public final A0Y(I)V
    .locals 1

    .line 38386
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    array-length v0, v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 38387
    iput p1, p0, Lcom/facebook/ads/redexgen/X/IM;->A01:I

    .line 38388
    return-void

    .line 38389
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0Z(I)V
    .locals 1

    .line 38390
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A01:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 38391
    iput p1, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    .line 38392
    return-void

    .line 38393
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0a(I)V
    .locals 1

    .line 38394
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 38395
    return-void
.end method

.method public final A0b(Lcom/facebook/ads/redexgen/X/IL;I)V
    .locals 2

    .line 38396
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/IL;->A00:[B

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, p2}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 38397
    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A08(I)V

    .line 38398
    return-void
.end method

.method public final A0c([BI)V
    .locals 1

    .line 38399
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    .line 38400
    iput p2, p0, Lcom/facebook/ads/redexgen/X/IM;->A01:I

    .line 38401
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    .line 38402
    return-void
.end method

.method public final A0d([BII)V
    .locals 2

    .line 38403
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38404
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A02:I

    .line 38405
    return-void
.end method
