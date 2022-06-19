.class public final Lcom/facebook/ads/redexgen/X/YB;
.super Lcom/facebook/ads/redexgen/X/6V;
.source ""


# static fields
.field public static A01:[B


# instance fields
.field public final A00:Landroid/app/KeyguardManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/YB;->A03()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V
    .locals 3

    .line 65670
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/6V;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V

    .line 65671
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A00:Landroid/app/KeyguardManager;

    .line 65672
    return-void
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/YB;)Landroid/app/KeyguardManager;
    .locals 0

    .line 65673
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/YB;->A00:Landroid/app/KeyguardManager;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/YB;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/YB;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x62t
        0x6ct
        0x70t
        0x6et
        0x7ct
        0x68t
        0x7bt
        0x6dt
    .end array-data
.end method


# virtual methods
.method public final A0H()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 65674
    new-instance v0, Lcom/facebook/ads/redexgen/X/YF;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/YF;-><init>(Lcom/facebook/ads/redexgen/X/YB;)V

    .line 65675
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0I()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 65676
    new-instance v0, Lcom/facebook/ads/redexgen/X/YE;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/YE;-><init>(Lcom/facebook/ads/redexgen/X/YB;)V

    .line 65677
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0J()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 65678
    new-instance v0, Lcom/facebook/ads/redexgen/X/YD;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/YD;-><init>(Lcom/facebook/ads/redexgen/X/YB;)V

    .line 65679
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0K()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 65680
    new-instance v0, Lcom/facebook/ads/redexgen/X/YC;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/YC;-><init>(Lcom/facebook/ads/redexgen/X/YB;)V

    .line 65681
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method
