.class public final Lcom/facebook/ads/redexgen/X/CQ;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:Lcom/facebook/ads/redexgen/X/CQ;


# instance fields
.field public final A00:J

.field public final A01:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 24308
    invoke-static {}, Lcom/facebook/ads/redexgen/X/CQ;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/CQ;->A01()V

    const-wide/16 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/CQ;

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/facebook/ads/redexgen/X/CQ;-><init>(JJ)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/CQ;->A04:Lcom/facebook/ads/redexgen/X/CQ;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 24309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24310
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/CQ;->A01:J

    .line 24311
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/CQ;->A00:J

    .line 24312
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/CQ;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xe

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/CQ;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x47t
        -0x53t
        -0x3t
        -0x4t
        0x0t
        -0xat
        0x1t
        -0xat
        -0x4t
        -0x5t
        -0x36t
        -0x35t
        -0x1ct
        -0x27t
        -0x23t
        -0x2bt
        -0x3bt
        -0x1dt
        -0x53t
        -0x7ft
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "YWtNcqVHdkiXvaFYstbxBYIjMTQDvVWa"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vCfb8EVrQpOx4scILKhUKdSuPZPZ0D35"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "gmn0s4K1RFEJgUJcz6yuIbRO3VGRAtD"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "IGPtpoUbvKoAhsYpdrwZqtVuBrildMH4"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "3BNNeskXX7CCNhJIqS7C4ZQPQSzC3rmT"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "AwlfEZAXNI7PKFZUY2km"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "TrvakAb9qwlzAXYQCP5pqJDGvFBG1pWr"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ocNBZL"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/CQ;->A03:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 24313
    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    .line 24314
    return v5

    .line 24315
    :cond_0
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/CQ;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6d

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/CQ;->A03:[Ljava/lang/String;

    const-string v1, "7rn0hWOgwjIIXlKfd75fzBI4HCTcBeB"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "6DpJH9"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_3

    .line 24316
    .end local v5
    :cond_2
    return v3

    .line 24317
    :cond_3
    check-cast p1, Lcom/facebook/ads/redexgen/X/CQ;

    .line 24318
    .local v5, "other":Lcom/facebook/ads/redexgen/X/CQ;
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/CQ;->A01:J

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/CQ;->A01:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_4

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/CQ;->A00:J

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/CQ;->A00:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_4

    :goto_0
    return v5

    :cond_4
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .line 24319
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/CQ;->A01:J

    long-to-int v0, v1

    .line 24320
    .local v1, "result":I
    mul-int/lit8 v3, v0, 0x1f

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/CQ;->A00:J

    long-to-int v0, v1

    add-int/2addr v3, v0

    .line 24321
    .end local v1    # "result":I
    .local p0, "result":I
    return v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 24322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb

    const/16 v1, 0x8

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CQ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/CQ;->A01:J

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CQ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/CQ;->A00:J

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x13

    const/4 v1, 0x1

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CQ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
