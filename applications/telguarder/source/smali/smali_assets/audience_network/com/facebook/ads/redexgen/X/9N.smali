.class public final Lcom/facebook/ads/redexgen/X/9N;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A02:[B


# instance fields
.field public final A00:I

.field public final A01:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/9N;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19763
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Lcom/facebook/ads/redexgen/X/9N;-><init>(II)V

    .line 19764
    return-void
.end method

.method public constructor <init>(II)V
    .locals 5

    .line 19765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19766
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    if-lt p1, v0, :cond_4

    .line 19767
    if-ltz p1, :cond_0

    if-ltz p2, :cond_3

    .line 19768
    :cond_0
    if-ne p1, v0, :cond_1

    if-ne p2, v0, :cond_2

    .line 19769
    :cond_1
    iput p1, p0, Lcom/facebook/ads/redexgen/X/9N;->A00:I

    .line 19770
    iput p2, p0, Lcom/facebook/ads/redexgen/X/9N;->A01:I

    .line 19771
    return-void

    .line 19772
    :cond_2
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v1, [Ljava/lang/Object;

    .line 19773
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    const/16 v2, 0x48

    const/16 v1, 0x18

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9N;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19774
    :cond_3
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    .line 19775
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const/16 v2, 0x31

    const/16 v1, 0x17

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9N;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19776
    :cond_4
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    const/16 v2, 0x23

    const/16 v1, 0xe

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9N;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/9N;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x22

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

    const/16 v0, 0x60

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9N;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x55t
        -0x30t
        -0x28t
        -0x3dt
        -0x32t
        -0x35t
        -0x3at
        -0x7et
        -0x35t
        -0x30t
        -0x3at
        -0x39t
        -0x26t
        -0x5at
        -0x39t
        -0x32t
        -0x2at
        -0x3dt
        -0x7et
        -0x76t
        -0x79t
        -0x3at
        -0x72t
        -0x7et
        -0x35t
        -0x30t
        -0x3at
        -0x39t
        -0x26t
        -0x7et
        -0x61t
        -0x7et
        -0x79t
        -0x3at
        -0x75t
        -0x38t
        -0x35t
        -0x32t
        -0x39t
        -0x7et
        -0x76t
        -0x79t
        -0x3at
        -0x75t
        -0x7et
        -0x62t
        -0x7et
        -0x71t
        -0x6dt
        -0xct
        -0x9t
        -0x6t
        -0xdt
        -0x52t
        -0x35t
        -0x52t
        -0x4dt
        -0xet
        -0x52t
        -0x4ct
        -0x4ct
        -0x52t
        -0x9t
        -0x4t
        -0xet
        -0xdt
        0x6t
        -0x52t
        -0x35t
        -0x52t
        -0x4dt
        -0xet
        -0x2ft
        -0x2ct
        -0x29t
        -0x30t
        -0x75t
        -0x58t
        -0x58t
        -0x75t
        -0x68t
        -0x64t
        -0x75t
        -0x6ft
        -0x6ft
        -0x75t
        -0x2ct
        -0x27t
        -0x31t
        -0x30t
        -0x1dt
        -0x75t
        -0x58t
        -0x75t
        -0x70t
        -0x31t
    .end array-data
.end method


# virtual methods
.method public final A02()I
    .locals 1

    .line 19777
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9N;->A00:I

    return v0
.end method

.method public final A03()I
    .locals 1

    .line 19778
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9N;->A01:I

    return v0
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/9N;)I
    .locals 2

    .line 19779
    iget v1, p0, Lcom/facebook/ads/redexgen/X/9N;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/9N;->A00:I

    if-eq v1, v0, :cond_0

    .line 19780
    sub-int/2addr v1, v0

    return v1

    .line 19781
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/9N;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/9N;->A01:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A05(I)Lcom/facebook/ads/redexgen/X/9N;
    .locals 5

    .line 19782
    iget v2, p0, Lcom/facebook/ads/redexgen/X/9N;->A01:I

    add-int v0, p1, v2

    if-ltz v0, :cond_0

    .line 19783
    iget v1, p0, Lcom/facebook/ads/redexgen/X/9N;->A00:I

    add-int/2addr v2, p1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9N;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/9N;-><init>(II)V

    return-object v0

    .line 19784
    :cond_0
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 19785
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v1, 0x1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9N;->A01:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v2, 0x0

    const/16 v1, 0x23

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9N;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 19786
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/9N;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 19787
    return v2

    .line 19788
    :cond_0
    check-cast p1, Lcom/facebook/ads/redexgen/X/9N;

    .line 19789
    .local p0, "other":Lcom/facebook/ads/redexgen/X/9N;
    iget v1, p1, Lcom/facebook/ads/redexgen/X/9N;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9N;->A00:I

    if-ne v1, v0, :cond_1

    iget v1, p1, Lcom/facebook/ads/redexgen/X/9N;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9N;->A01:I

    if-ne v1, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 19790
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9N;->A00:I

    mul-int/lit8 v1, v0, 0x2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9N;->A01:I

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v1, v0

    return v1
.end method
