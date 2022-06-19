.class public final Lcom/facebook/ads/redexgen/X/Zx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/64;


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static final A03:Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Wl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 66584
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Zx;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Zx;->A01()V

    const-class v0, Lcom/facebook/ads/redexgen/X/Zx;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Zx;->A03:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wl;)V
    .locals 0

    .line 66585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66586
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zx;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 66587
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Zx;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4d

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
    .locals 4

    const/16 v3, 0x45

    sget-object v1, Lcom/facebook/ads/redexgen/X/Zx;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4a

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Zx;->A02:[Ljava/lang/String;

    const-string v1, "adcHrma4MWQL0zoREoGh7wXkXaIQp5Xy"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Zx;->A01:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x7t
        0x3at
        0x25t
        0x27t
        0x32t
        0x36t
        0x2bt
        0x31t
        0x30t
        -0x1et
        0x24t
        0x37t
        0x2bt
        0x2et
        0x26t
        0x2bt
        0x30t
        0x29t
        -0x1et
        0x8t
        0x3t
        0x10t
        -0x1et
        0x2et
        0x31t
        0x29t
        0x29t
        0x2bt
        0x30t
        0x29t
        -0x1et
        0xct
        0x15t
        0x11t
        0x10t
        0x16t
        0x2dt
        0x42t
        0x2dt
        -0x5t
        -0x3t
        -0x8t
        -0x3t
        -0x6t
        0xdt
        -0x6t
        -0x8t
        0x5t
        0x8t
        0x0t
        0x0t
        0x2t
        0x7t
        0x0t
        0x19t
        0x20t
        0x1bt
        -0x2dt
        0x25t
        0x2dt
        0x2et
        0x3ct
        0x3dt
        -0x2et
        -0x1ft
        -0x1bt
        -0x3at
        -0x3dt
        -0x43t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "UcrINQIJYZmCJIYfIWOPeAeLXq8OXjN8"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "8NGM6WCtT"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "mvf35hhYOryEB"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "UtHUaoGFwUsh8"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "pmvRY5B7PiEHxFBRqq4nR0uK9RQqJ1Jb"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "vOQkJMMT0wTavoZlHR3geyb10OzyiRCv"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "6VDprfaYS"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "xX4IoA1nS3LBHTodMRohguk2DFxZ5Rjm"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Zx;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A8h(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 66588
    .local v1, "operationInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 66589
    .local p0, "loggingData":Lorg/json/JSONObject;
    :try_start_0
    const/16 v2, 0x41

    const/4 v1, 0x1

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zx;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66590
    const/16 v2, 0x42

    const/4 v1, 0x1

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zx;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66591
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 66592
    .local p1, "operationInfoObject":Lorg/json/JSONObject;
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 66593
    .local p2, "entrySet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66594
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 66595
    .local p3, "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 66596
    :cond_0
    const/16 v2, 0x43

    const/4 v1, 0x2

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zx;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66597
    const/16 v2, 0x36

    const/4 v1, 0x3

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zx;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66598
    const/16 v2, 0x3a

    const/4 v1, 0x2

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zx;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66599
    const/16 v2, 0x3c

    const/4 v1, 0x3

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zx;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66600
    const/16 v2, 0x3f

    const/4 v1, 0x2

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zx;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66601
    const/16 v2, 0x39

    const/4 v1, 0x1

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zx;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x23

    const/4 v1, 0x4

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zx;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66602
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 66603
    .local p3, "bdOperationData":Lcom/facebook/ads/redexgen/X/8f;
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/8f;->A03(I)V

    .line 66604
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zx;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v3

    const/16 v2, 0x27

    const/16 v1, 0xf

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zx;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0xc82

    invoke-interface {v3, v1, v0, v4}, Lcom/facebook/ads/redexgen/X/8d;->A8Y(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    goto :goto_1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66605
    :catch_0
    move-exception v4

    .line 66606
    .local p1, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/facebook/ads/redexgen/X/Zx;->A03:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x23

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zx;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66607
    .end local p1    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method
