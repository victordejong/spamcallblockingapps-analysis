.class public final Lcom/facebook/ads/redexgen/X/6N;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A01:[B

.field public static final A02:[Ljava/lang/String;


# instance fields
.field public final A00:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 14695
    invoke-static {}, Lcom/facebook/ads/redexgen/X/6N;->A01()V

    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6N;->A00(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v3, 0x1

    const/4 v2, 0x3

    const/4 v1, 0x1

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6N;->A00(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v3, 0x2

    const/4 v2, 0x4

    const/4 v1, 0x1

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6N;->A00(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6N;->A00(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    sput-object v4, Lcom/facebook/ads/redexgen/X/6N;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([F)V
    .locals 0

    .line 14696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14697
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6N;->A00:[F

    .line 14698
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/6N;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7

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

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/6N;->A01:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x6at
        0x3ft
        0xat
        0x10t
        0x21t
    .end array-data
.end method

.method private final A02()[F
    .locals 1

    .line 14699
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6N;->A00:[F

    return-object v0
.end method


# virtual methods
.method public final A03()I
    .locals 1

    .line 14700
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6N;->A00:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public final A04(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 14701
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 14702
    .local p0, "jsonObject":Lorg/json/JSONObject;
    const/4 v4, 0x0

    .local p1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/6N;->A00:[F

    array-length v0, v3

    if-ge v4, v0, :cond_1

    .line 14703
    sget-object v1, Lcom/facebook/ads/redexgen/X/6N;->A02:[Ljava/lang/String;

    array-length v0, v1

    if-ge v4, v0, :cond_0

    .line 14704
    aget-object v2, v1, v4

    aget v0, v3, v4

    float-to-double v0, v0

    invoke-virtual {v5, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 14705
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 14706
    .end local p1    # "i":I
    :cond_1
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6N;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14707
    return-object p1
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/6N;)Z
    .locals 5

    .line 14708
    invoke-direct {p1}, Lcom/facebook/ads/redexgen/X/6N;->A02()[F

    move-result-object v4

    .line 14709
    .local p0, "newSignalValue":[F
    array-length v1, v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6N;->A00:[F

    array-length v0, v0

    const/4 v3, 0x0

    if-eq v1, v0, :cond_0

    .line 14710
    return v3

    .line 14711
    :cond_0
    const/4 v2, 0x0

    .local p1, "i":I
    :goto_0
    array-length v0, v4

    if-ge v2, v0, :cond_2

    .line 14712
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6N;->A02()[F

    move-result-object v0

    aget v1, v0, v2

    aget v0, v4, v2

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 14713
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5v;->A01()F

    move-result v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    .line 14714
    return v3

    .line 14715
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14716
    .end local p1    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method
