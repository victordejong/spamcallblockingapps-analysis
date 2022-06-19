.class public final Lcom/facebook/ads/redexgen/X/6P;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public final A00:F

.field public final A01:F

.field public final A02:F

.field public final A03:I

.field public final A04:I

.field public final A05:I

.field public final A06:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/6P;->A08()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/6P;->A07()V

    return-void
.end method

.method public constructor <init>(III[FFFF)V
    .locals 0

    .line 14736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14737
    iput p1, p0, Lcom/facebook/ads/redexgen/X/6P;->A05:I

    .line 14738
    iput p2, p0, Lcom/facebook/ads/redexgen/X/6P;->A03:I

    .line 14739
    iput p3, p0, Lcom/facebook/ads/redexgen/X/6P;->A04:I

    .line 14740
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/6P;->A06:[F

    .line 14741
    iput p5, p0, Lcom/facebook/ads/redexgen/X/6P;->A02:F

    .line 14742
    iput p6, p0, Lcom/facebook/ads/redexgen/X/6P;->A01:F

    .line 14743
    iput p7, p0, Lcom/facebook/ads/redexgen/X/6P;->A00:F

    .line 14744
    return-void
.end method

.method private final A00()F
    .locals 1

    .line 14745
    iget v0, p0, Lcom/facebook/ads/redexgen/X/6P;->A00:F

    return v0
.end method

.method private final A01()F
    .locals 1

    .line 14746
    iget v0, p0, Lcom/facebook/ads/redexgen/X/6P;->A01:F

    return v0
.end method

.method private final A02()F
    .locals 1

    .line 14747
    iget v0, p0, Lcom/facebook/ads/redexgen/X/6P;->A02:F

    return v0
.end method

.method private final A03()I
    .locals 1

    .line 14748
    iget v0, p0, Lcom/facebook/ads/redexgen/X/6P;->A03:I

    return v0
.end method

.method private final A04()I
    .locals 1

    .line 14749
    iget v0, p0, Lcom/facebook/ads/redexgen/X/6P;->A04:I

    return v0
.end method

.method private final A05()I
    .locals 1

    .line 14750
    iget v0, p0, Lcom/facebook/ads/redexgen/X/6P;->A05:I

    return v0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/6P;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/6P;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x3at
        0x2bt
        0x2ft
        0x12t
        0xft
        0x1ft
        0x7t
        0x59t
        0x42t
        0x17t
        0x13t
        0x2bt
        0x2ct
        0x40t
        0x40t
        0x62t
        0x7at
        0x7et
    .end array-data
.end method

.method public static A08()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "uknoasC9zhFDrFgPtYlqFdqteg907uL8"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "IgWbkZIqa8QILwmp8irsUbf72UV5lrhU"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "YBrt22tBhrwOddfbwLalgMvUeYaOwjMy"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "64HVm19dxBFG4pmauxkrfB9MhO8Yf1SY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "4cQAM2WNblmaocc5zwqvWCd3DHyngoa8"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "aKuYAY0pP3n4pSq5Hj3zMw1WwuZ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "4tgWgDUkfSgqYbygUhJwQU6Rzn0oB"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "W"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6P;->A08:[Ljava/lang/String;

    return-void
.end method

.method private final A09()[F
    .locals 1

    .line 14751
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6P;->A06:[F

    return-object v0
.end method


# virtual methods
.method public final A0A()I
    .locals 1

    .line 14752
    const/16 v0, 0x20

    return v0
.end method

.method public final A0B(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 14753
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 14754
    .local p0, "jsonObject":Lorg/json/JSONObject;
    iget v3, p0, Lcom/facebook/ads/redexgen/X/6P;->A05:I

    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6P;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 14755
    iget v3, p0, Lcom/facebook/ads/redexgen/X/6P;->A03:I

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6P;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 14756
    iget v3, p0, Lcom/facebook/ads/redexgen/X/6P;->A04:I

    const/16 v2, 0xd

    const/4 v1, 0x2

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6P;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 14757
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 14758
    .local p1, "pointerLocObject":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6P;->A06:[F

    const/4 v0, 0x0

    aget v0, v1, v0

    .line 14759
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/72;->A00(F)F

    move-result v0

    float-to-double v0, v0

    .line 14760
    const/16 v4, 0x10

    const/4 v3, 0x1

    const/4 v2, 0x7

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/6P;->A06(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 14761
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6P;->A06:[F

    const/4 v0, 0x1

    aget v0, v1, v0

    .line 14762
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/72;->A00(F)F

    move-result v0

    float-to-double v1, v0

    .line 14763
    const/16 v4, 0x11

    const/4 v3, 0x1

    const/4 v0, 0x2

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/6P;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 14764
    const/4 v2, 0x5

    const/4 v1, 0x2

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6P;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14765
    iget v0, p0, Lcom/facebook/ads/redexgen/X/6P;->A02:F

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/72;->A00(F)F

    move-result v0

    float-to-double v1, v0

    const/16 v4, 0xb

    const/4 v3, 0x2

    const/16 v0, 0x5a

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/6P;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 14766
    iget v0, p0, Lcom/facebook/ads/redexgen/X/6P;->A01:F

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/72;->A00(F)F

    move-result v0

    float-to-double v1, v0

    const/16 v4, 0x9

    const/4 v3, 0x2

    const/16 v0, 0x66

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/6P;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 14767
    iget v0, p0, Lcom/facebook/ads/redexgen/X/6P;->A00:F

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/72;->A00(F)F

    move-result v0

    float-to-double v1, v0

    const/4 v4, 0x7

    const/4 v3, 0x2

    const/16 v0, 0x28

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/6P;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 14768
    const/16 v2, 0xf

    const/4 v1, 0x1

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6P;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14769
    return-object p1
.end method

.method public final A0C(Lcom/facebook/ads/redexgen/X/6P;)Z
    .locals 7

    .line 14770
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6P;->A05()I

    move-result v1

    invoke-direct {p1}, Lcom/facebook/ads/redexgen/X/6P;->A05()I

    move-result v0

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-ne v1, v0, :cond_0

    .line 14771
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6P;->A03()I

    move-result v1

    invoke-direct {p1}, Lcom/facebook/ads/redexgen/X/6P;->A03()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 14772
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6P;->A04()I

    move-result v1

    invoke-direct {p1}, Lcom/facebook/ads/redexgen/X/6P;->A04()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 14773
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6P;->A09()[F

    move-result-object v0

    aget v4, v0, v5

    invoke-direct {p1}, Lcom/facebook/ads/redexgen/X/6P;->A09()[F

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/6P;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/6P;->A08:[Ljava/lang/String;

    const-string v1, "W8IxEkJbz6fWM8TXp45JfwCLdZlaxmO8"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "3DiGKeFKDqOh0KofY4Sr0bez5rwgzRU8"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    aget v0, v3, v5

    sub-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 14774
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5v;->A01()F

    move-result v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    .line 14775
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6P;->A09()[F

    move-result-object v0

    aget v1, v0, v6

    invoke-direct {p1}, Lcom/facebook/ads/redexgen/X/6P;->A09()[F

    move-result-object v0

    aget v0, v0, v6

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 14776
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5v;->A01()F

    move-result v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    .line 14777
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6P;->A02()F

    move-result v1

    invoke-direct {p1}, Lcom/facebook/ads/redexgen/X/6P;->A02()F

    move-result v0

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 14778
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5v;->A01()F

    move-result v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    .line 14779
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6P;->A01()F

    move-result v1

    invoke-direct {p1}, Lcom/facebook/ads/redexgen/X/6P;->A01()F

    move-result v0

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 14780
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5v;->A01()F

    move-result v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    .line 14781
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6P;->A00()F

    move-result v1

    invoke-direct {p1}, Lcom/facebook/ads/redexgen/X/6P;->A00()F

    move-result v0

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 14782
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5v;->A01()F

    move-result v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    .line 14783
    :goto_0
    return v6

    .line 14784
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
