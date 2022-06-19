.class public final Lcom/facebook/ads/redexgen/X/NX;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A01:[B


# instance fields
.field public final A00:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/NX;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45485
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NX;->A00:Ljava/util/Map;

    .line 45486
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 45487
    .local p1, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45488
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NX;->A00:Ljava/util/Map;

    .line 45489
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/NX;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x37

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

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/NX;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x19t
        -0x6t
        -0xat
        -0xct
        -0x1dt
        -0x1ft
        -0x16t
        -0x15t
        -0x10t
        -0xat
        -0xbt
        -0x25t
        -0x2at
        -0x24t
        -0x36t
        -0x31t
    .end array-data
.end method


# virtual methods
.method public final A02(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/NX;
    .locals 5
    .param p1    # Lcom/facebook/ads/redexgen/X/Lc;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 45490
    if-eqz p1, :cond_0

    .line 45491
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/NX;->A00:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Lc;->A05()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LI;->A01(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xb

    const/4 v1, 0x5

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NX;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45492
    :cond_0
    return-object p0
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/Q9;)Lcom/facebook/ads/redexgen/X/NX;
    .locals 2
    .param p1    # Lcom/facebook/ads/redexgen/X/Q9;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 45493
    if-eqz p1, :cond_0

    .line 45494
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NX;->A00:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Q9;->A0T()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 45495
    :cond_0
    return-object p0
.end method

.method public final A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/NX;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 45496
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45497
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/NX;->A00:Ljava/util/Map;

    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NX;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45498
    :cond_0
    return-object p0
.end method

.method public final A05()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45499
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NX;->A00:Ljava/util/Map;

    return-object v0
.end method
