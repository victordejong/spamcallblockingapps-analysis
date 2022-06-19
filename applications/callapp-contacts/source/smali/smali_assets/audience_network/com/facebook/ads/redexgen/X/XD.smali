.class public final Lcom/facebook/ads/redexgen/X/XD;
.super Lcom/facebook/ads/redexgen/X/6t;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/6t<",
        "Lcom/facebook/ads/redexgen/X/6P;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(JLcom/facebook/ads/redexgen/X/6r;Lcom/facebook/ads/redexgen/X/6P;)V
    .locals 6
    .param p3    # Lcom/facebook/ads/redexgen/X/6r;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 57646
    sget-object v5, Lcom/facebook/ads/redexgen/X/6s;->A0D:Lcom/facebook/ads/redexgen/X/6s;

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/6t;-><init>(JLcom/facebook/ads/redexgen/X/6r;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/6s;)V

    .line 57647
    return-void
.end method


# virtual methods
.method public final A07()I
    .locals 1

    .line 57648
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6t;->A08()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6P;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6P;->A0A()I

    move-result v0

    return v0
.end method

.method public final A09(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 57649
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6t;->A08()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6P;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/6P;->A0B(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final A0B(Lcom/facebook/ads/redexgen/X/6t;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/6t<",
            "Lcom/facebook/ads/redexgen/X/6P;",
            ">;)Z"
        }
    .end annotation

    .line 57650
    .local v1, "newSignalValueTypeDef":Lcom/facebook/ads/redexgen/X/6t;, "Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef<Lcom/facebook/ads/internal/botdetection/signals/biometric/model/TouchSignalRawValue;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6t;->A08()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/6P;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6t;->A08()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6P;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6P;->A0C(Lcom/facebook/ads/redexgen/X/6P;)Z

    move-result v0

    return v0
.end method
