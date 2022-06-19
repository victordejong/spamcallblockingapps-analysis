.class public abstract Lcom/facebook/ads/redexgen/X/0p;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A04:[B


# instance fields
.field public A00:Z

.field public final A01:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A02:Lcom/facebook/ads/redexgen/X/0q;

.field public final A03:Lcom/facebook/ads/redexgen/X/Q9;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/0p;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/0q;Lcom/facebook/ads/redexgen/X/Q9;)V
    .locals 0

    .line 2339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2340
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/0p;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    .line 2341
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/0p;->A02:Lcom/facebook/ads/redexgen/X/0q;

    .line 2342
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/0p;->A03:Lcom/facebook/ads/redexgen/X/Q9;

    .line 2343
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/0p;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x79

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

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/0p;->A04:[B

    return-void

    :array_0
    .array-data 1
        -0x2t
        0x22t
        0x25t
        0x27t
        0x1at
        0x28t
        0x28t
        0x1et
        0x24t
        0x23t
        -0x2bt
        0x21t
        0x24t
        0x1ct
        0x1ct
        0x1at
        0x19t
    .end array-data
.end method


# virtual methods
.method public final A02()V
    .locals 4

    .line 2344
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0p;->A00:Z

    if-eqz v0, :cond_0

    .line 2345
    return-void

    .line 2346
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0p;->A02:Lcom/facebook/ads/redexgen/X/0q;

    if-eqz v0, :cond_1

    .line 2347
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0q;->A00()V

    .line 2348
    :cond_1
    new-instance v1, Lcom/facebook/ads/redexgen/X/NX;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/NX;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0p;->A03:Lcom/facebook/ads/redexgen/X/Q9;

    .line 2349
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NX;->A03(Lcom/facebook/ads/redexgen/X/Q9;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NX;->A05()Ljava/util/Map;

    move-result-object v0

    .line 2350
    .local p0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/0p;->A07(Ljava/util/Map;)V

    .line 2351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0p;->A00:Z

    .line 2352
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/0p;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0p;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/L3;->A02(Landroid/content/Context;Ljava/lang/String;)V

    .line 2353
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0p;->A02:Lcom/facebook/ads/redexgen/X/0q;

    .line 2354
    return-void
.end method

.method public abstract A07(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
