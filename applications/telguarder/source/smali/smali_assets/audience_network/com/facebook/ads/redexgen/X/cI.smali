.class public final Lcom/facebook/ads/redexgen/X/cI;
.super Lcom/facebook/ads/redexgen/X/0f;
.source ""


# static fields
.field public static A01:[B

.field public static final A02:Ljava/lang/String;


# instance fields
.field public final A00:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 71210
    invoke-static {}, Lcom/facebook/ads/redexgen/X/cI;->A01()V

    const-class v0, Lcom/facebook/ads/redexgen/X/cI;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/cI;->A02:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 71211
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/0f;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;)V

    .line 71212
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/cI;->A00:Landroid/net/Uri;

    .line 71213
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/cI;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x62

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

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/cI;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x10t
        0x2bt
        0x33t
        0x36t
        0x2ft
        0x2et
        -0x16t
        0x3et
        0x39t
        -0x16t
        0x39t
        0x3at
        0x2ft
        0x38t
        -0x16t
        0x36t
        0x33t
        0x38t
        0x35t
        -0x16t
        0x3ft
        0x3ct
        0x36t
        0x4t
        -0x16t
    .end array-data
.end method


# virtual methods
.method public final A0D()V
    .locals 4

    .line 71214
    :try_start_0
    new-instance v3, Lcom/facebook/ads/redexgen/X/L0;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/L0;-><init>()V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/0f;->A00:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cI;->A00:Landroid/net/Uri;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0f;->A02:Ljava/lang/String;

    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L0;->A09(Lcom/facebook/ads/redexgen/X/L0;Lcom/facebook/ads/redexgen/X/Wm;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71215
    .local p0, "ex":Ljava/lang/Exception;
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x19

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cI;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cI;->A00:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71216
    .end local p0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
