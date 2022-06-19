.class public final Lcom/facebook/ads/redexgen/X/XU;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/XT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/6l<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static A02:[B

.field public static final A03:Ljava/lang/String;


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 65129
    invoke-static {}, Lcom/facebook/ads/redexgen/X/XU;->A03()V

    const-class v0, Lcom/facebook/ads/redexgen/X/XU;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/XU;->A03:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 65130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65131
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/XU;->A00:Ljava/lang/String;

    .line 65132
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/XU;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XU;->A01:Ljava/lang/String;

    .line 65133
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/XU;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x55

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-android.util.Log.e",
            "CatchGeneralException"
        }
    .end annotation

    .line 65134
    const/16 v2, 0x1e

    const/16 v1, 0x9

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XU;->A00(III)Ljava/lang/String;

    move-result-object v5

    .line 65135
    .local p0, "ret":Ljava/lang/String;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/Object;

    .line 65136
    .local v2, "params":[Ljava/lang/Object;
    const/4 v0, 0x0

    aput-object p0, v2, v0

    .line 65137
    invoke-static {}, Lcom/facebook/ads/redexgen/X/XT;->A03()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/XT;->A07()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65138
    invoke-static {}, Lcom/facebook/ads/redexgen/X/XT;->A07()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/XT;->A03()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65139
    :catch_0
    move-exception v4

    .line 65140
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/facebook/ads/redexgen/X/XU;->A03:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x1e

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XU;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65141
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-object v5
.end method

.method private final A02(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 65142
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XU;->A00:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XU;->A01:Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65143
    return-object p2
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/XU;->A02:[B

    return-void

    :array_0
    .array-data 1
        0xft
        0x38t
        0x38t
        0x25t
        0x38t
        0x6at
        0x2ct
        0x2ft
        0x3et
        0x29t
        0x22t
        0x23t
        0x24t
        0x2dt
        0x6at
        0x19t
        0x33t
        0x39t
        0x3et
        0x2ft
        0x27t
        0x6at
        0x1at
        0x38t
        0x25t
        0x3at
        0x2ft
        0x38t
        0x3et
        0x33t
        0x69t
        0x68t
        0x73t
        0x78t
        0x61t
        0x68t
        0x72t
        0x69t
        0x63t
    .end array-data
.end method


# virtual methods
.method public final A82(Ljava/lang/Object;)Z
    .locals 2

    .line 65144
    check-cast p1, Lcom/facebook/ads/redexgen/X/XU;

    .line 65145
    .local p0, "newSystemProperty":Lcom/facebook/ads/redexgen/X/XU;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XU;->A00:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/XU;->A00:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XU;->A01:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/XU;->A01:Ljava/lang/String;

    .line 65146
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 65147
    :goto_0
    return v0

    .line 65148
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AE0()I
    .locals 2

    .line 65149
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XU;->A00:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XU;->A01:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final bridge synthetic AEM(Ljava/lang/Object;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 65150
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/XU;->A02(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
