.class public final Lcom/facebook/ads/redexgen/X/67;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Lcom/facebook/ads/redexgen/X/66;

.field public static A01:[B

.field public static final A02:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 14357
    invoke-static {}, Lcom/facebook/ads/redexgen/X/67;->A01()V

    const-class v0, Lcom/facebook/ads/redexgen/X/67;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/67;->A02:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/67;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1d

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

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/67;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x4dt
        -0x1at
        -0x2ft
        -0x2dt
        -0x22t
        -0x1et
        -0x29t
        -0x23t
        -0x24t
        -0x72t
        -0x2et
        -0x1dt
        -0x20t
        -0x29t
        -0x24t
        -0x2bt
        -0x72t
        -0x2dt
        -0x1at
        -0x2dt
        -0x2ft
        -0x1dt
        -0x1et
        -0x29t
        -0x23t
        -0x24t
        -0x64t
    .end array-data
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/66;)V
    .locals 0

    .line 14359
    sput-object p0, Lcom/facebook/ads/redexgen/X/67;->A00:Lcom/facebook/ads/redexgen/X/66;

    .line 14360
    return-void
.end method

.method public static A03(Ljava/lang/Throwable;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-android.util.Log.e"
        }
    .end annotation

    .line 14361
    sget-object v0, Lcom/facebook/ads/redexgen/X/67;->A00:Lcom/facebook/ads/redexgen/X/66;

    if-eqz v0, :cond_0

    .line 14362
    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/66;->ADG(Ljava/lang/Throwable;)V

    .line 14363
    :goto_0
    return-void

    .line 14364
    :cond_0
    sget-object v3, Lcom/facebook/ads/redexgen/X/67;->A02:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x1b

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/67;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
