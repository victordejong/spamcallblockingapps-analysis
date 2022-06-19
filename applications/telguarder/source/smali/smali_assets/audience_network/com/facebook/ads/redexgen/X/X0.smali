.class public final Lcom/facebook/ads/redexgen/X/X0;
.super Lcom/facebook/ads/redexgen/X/6t;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/6t<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/X0;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/X0;->A01()V

    return-void
.end method

.method public constructor <init>(JLcom/facebook/ads/redexgen/X/6r;F)V
    .locals 6
    .param p3    # Lcom/facebook/ads/redexgen/X/6r;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 64873
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    sget-object v5, Lcom/facebook/ads/redexgen/X/6s;->A06:Lcom/facebook/ads/redexgen/X/6s;

    move-object v0, p0

    move-object v3, p3

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/6t;-><init>(JLcom/facebook/ads/redexgen/X/6r;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/6s;)V

    .line 64874
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/X0;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/X0;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/X0;->A01:[Ljava/lang/String;

    const-string v1, "gS6"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "1rE"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x75

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 4

    const/4 v0, 0x1

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v1, Lcom/facebook/ads/redexgen/X/X0;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/X0;->A01:[Ljava/lang/String;

    const-string v1, "I5r4DSccwYGvQH1CLSBW5"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/X0;->A00:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x5at
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "h8hOS4SBjUdyZxlQbhjUJ37UmmPJBUSh"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "KHTvaAd2h9saPfRaV7tue"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "iubw3rNGio8Yfy16w00TlyX0crn"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "YZBHWJQumCVLBsxRiPGNF4h3G"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "hlnoRiH2fbbMKdCpscZQnijTLEg"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "REh"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "wd7"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Xhm5OeYj9WxFbPaUt7l6r6U6tqTzHklF"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/X0;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A09()I
    .locals 1

    .line 64875
    const/4 v0, 0x4

    return v0
.end method

.method public final A0A(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 64876
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6t;->A06()Ljava/lang/Object;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64877
    return-object p1
.end method

.method public final A0B(Lcom/facebook/ads/redexgen/X/6t;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/6t<",
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation

    .line 64878
    .local v0, "newSignalValueTypeDef":Lcom/facebook/ads/redexgen/X/6t;, "Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef<Ljava/lang/Float;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6t;->A06()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6t;->A06()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 64879
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5v;->A01()F

    move-result v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 64880
    :goto_0
    return v0

    .line 64881
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
