.class public final Lcom/facebook/ads/redexgen/X/X2;
.super Lcom/facebook/ads/redexgen/X/6t;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/ads/redexgen/X/6t<",
        "Lcom/facebook/ads/redexgen/X/6k;",
        ">;"
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/X2;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/X2;->A01()V

    return-void
.end method

.method public constructor <init>(JLcom/facebook/ads/redexgen/X/6r;Lcom/facebook/ads/redexgen/X/6k;)V
    .locals 6
    .param p3    # Lcom/facebook/ads/redexgen/X/6r;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 64905
    .local v0, "this":Lcom/facebook/ads/redexgen/X/X2;, "Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/CustomObjectSignalValueType<TT;>;"
    sget-object v5, Lcom/facebook/ads/redexgen/X/6s;->A04:Lcom/facebook/ads/redexgen/X/6s;

    move-object v0, p0

    move-object v4, p4

    move-object v3, p3

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/6t;-><init>(JLcom/facebook/ads/redexgen/X/6r;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/6s;)V

    .line 64906
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/X2;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/X2;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/X2;->A01:[Ljava/lang/String;

    const-string v1, "sYJdl2"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x49

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
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/X2;->A00:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "vxYwolIUNPga"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "a7oCPZxAjSjIafV4gdwSoTcD5CnYTj6c"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "4Oal9OZnPbq6mo9hzNqtUkj0jRtn55HB"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "59n5kUpGx2LBH0f90GFdA3kMWCN8SY7s"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "IYdGTJ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "nYPsHTpl7AysbLMhCCVkYw1QtfGeLTKG"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "VLSg0JxGadnvkW0dji5AyC0fRPZLS4F7"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/X2;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A09()I
    .locals 1

    .line 64907
    .local v0, "this":Lcom/facebook/ads/redexgen/X/X2;, "Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/CustomObjectSignalValueType<TT;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6t;->A06()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6k;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/6k;->AE0()I

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

    .line 64908
    .local v0, "this":Lcom/facebook/ads/redexgen/X/X2;, "Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/CustomObjectSignalValueType<TT;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6t;->A06()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6k;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/6k;->AEL()Lorg/json/JSONObject;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X2;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final A0B(Lcom/facebook/ads/redexgen/X/6t;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/6t<",
            "Lcom/facebook/ads/redexgen/X/6k;",
            ">;)Z"
        }
    .end annotation

    .line 64909
    .local v0, "this":Lcom/facebook/ads/redexgen/X/X2;, "Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/CustomObjectSignalValueType<TT;>;"
    .local v0, "signalValueTypeDef":Lcom/facebook/ads/redexgen/X/6t;, "Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef<Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/ICustomObjectSignalValueDef;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6t;->A06()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6t;->A06()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 64910
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6t;->A06()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6t;->A06()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 64911
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6t;->A06()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/6k;

    sget-object v2, Lcom/facebook/ads/redexgen/X/X2;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/X2;->A01:[Ljava/lang/String;

    const-string v1, "t2DLN6"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6t;->A06()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/6k;->A82(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
