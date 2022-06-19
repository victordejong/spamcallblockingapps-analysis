.class public final Lcom/facebook/ads/redexgen/X/8t;
.super Lcom/facebook/ads/redexgen/X/KZ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/OH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/OH;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8t;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/OH;)V
    .locals 0

    .line 19138
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8t;->A00:Lcom/facebook/ads/redexgen/X/OH;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KZ;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/8t;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x8

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

    sput-object v0, Lcom/facebook/ads/redexgen/X/8t;->A01:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x13t
        0x4t
        0x4t
        0x19t
        0x4t
    .end array-data
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/Kl;)V
    .locals 5

    .line 19139
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/OF;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/OF;-><init>(Lcom/facebook/ads/redexgen/X/8t;)V

    .line 19140
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19141
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8t;->A00:Lcom/facebook/ads/redexgen/X/OH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/OH;->A00(Lcom/facebook/ads/redexgen/X/OH;)Lcom/facebook/ads/redexgen/X/OG;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8t;->A00:Lcom/facebook/ads/redexgen/X/OH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/OH;->A05(Lcom/facebook/ads/redexgen/X/OH;)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8t;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/OG;->AC0(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 19142
    return-void
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 19143
    check-cast p1, Lcom/facebook/ads/redexgen/X/Kl;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/8t;->A02(Lcom/facebook/ads/redexgen/X/Kl;)V

    return-void
.end method
