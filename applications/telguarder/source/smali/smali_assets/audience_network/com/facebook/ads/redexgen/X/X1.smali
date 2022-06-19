.class public final Lcom/facebook/ads/redexgen/X/X1;
.super Lcom/facebook/ads/redexgen/X/6t;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/6t<",
        "Lcom/facebook/ads/redexgen/X/6q;",
        ">;"
    }
.end annotation


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/X1;->A01()V

    return-void
.end method

.method public constructor <init>(JLcom/facebook/ads/redexgen/X/6r;Lcom/facebook/ads/redexgen/X/6q;)V
    .locals 6
    .param p3    # Lcom/facebook/ads/redexgen/X/6r;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 64882
    sget-object v5, Lcom/facebook/ads/redexgen/X/6s;->A05:Lcom/facebook/ads/redexgen/X/6s;

    move-object v0, p0

    move-object v4, p4

    move-object v3, p3

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/6t;-><init>(JLcom/facebook/ads/redexgen/X/6r;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/6s;)V

    .line 64883
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/X1;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x77

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

    const/4 v0, 0x1

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/X1;->A00:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x68t
    .end array-data
.end method


# virtual methods
.method public final A09()I
    .locals 1

    .line 64884
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6t;->A06()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6q;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6q;->A04()I

    move-result v0

    return v0
.end method

.method public final A0A(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 64885
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6t;->A06()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6q;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6q;->A09()Lorg/json/JSONObject;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X1;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64886
    return-object p1
.end method

.method public final A0B(Lcom/facebook/ads/redexgen/X/6t;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/6t<",
            "Lcom/facebook/ads/redexgen/X/6q;",
            ">;)Z"
        }
    .end annotation

    .line 64887
    .local v0, "newSignalValueTypeDef":Lcom/facebook/ads/redexgen/X/6t;, "Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef<Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalErrorValueTypeDef;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6t;->A06()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/6q;

    .line 64888
    .local p0, "oldSignalErrorValue":Lcom/facebook/ads/redexgen/X/6q;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6t;->A06()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/6q;

    .line 64889
    .local p1, "newSignalErrorValue":Lcom/facebook/ads/redexgen/X/6q;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/6q;->A05()Lcom/facebook/ads/redexgen/X/6p;

    move-result-object v1

    .line 64890
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6t;->A06()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6q;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6q;->A05()Lcom/facebook/ads/redexgen/X/6p;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6p;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    .line 64891
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/6q;->A03()I

    move-result v1

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/6q;->A03()I

    move-result v0

    if-ne v1, v0, :cond_2

    const/4 v2, 0x1

    .line 64892
    .local v4, "errorCodeComparison":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 64893
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/6q;->A05()Lcom/facebook/ads/redexgen/X/6p;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A08:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6p;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64894
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/6q;->A07()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 64895
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/6q;->A07()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/6q;->A07()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64896
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/6q;->A06()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 64897
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/6q;->A06()Ljava/lang/String;

    move-result-object v1

    .line 64898
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/6q;->A06()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64899
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/6q;->A08()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 64900
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/6q;->A08()Ljava/lang/String;

    move-result-object v1

    .line 64901
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/6q;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    and-int/2addr v2, v5

    .line 64902
    :cond_0
    return v2

    .line 64903
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 64904
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
