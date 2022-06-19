.class public final Lcom/facebook/ads/redexgen/X/c5;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/c4;->A08()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/c4;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/c5;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/c4;)V
    .locals 0

    .line 70653
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/c5;->A00:Lcom/facebook/ads/redexgen/X/c4;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/c5;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xe

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

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/c5;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x6bt
        -0x74t
        -0x5ft
        -0x74t
        -0x62t
        -0x72t
        -0x63t
        -0x6ct
        -0x65t
        -0x61t
        0x65t
    .end array-data
.end method


# virtual methods
.method public final A07()V
    .locals 5

    .line 70654
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c5;->A00:Lcom/facebook/ads/redexgen/X/c4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/c4;->A02(Lcom/facebook/ads/redexgen/X/c4;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->AEe()V

    .line 70655
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c5;->A00:Lcom/facebook/ads/redexgen/X/c4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/c4;->A03(Lcom/facebook/ads/redexgen/X/c4;)Lcom/facebook/ads/redexgen/X/NN;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c5;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c5;->A00:Lcom/facebook/ads/redexgen/X/c4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/c4;->A01(Lcom/facebook/ads/redexgen/X/c4;)Lcom/facebook/ads/redexgen/X/c6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c6;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/NN;->loadUrl(Ljava/lang/String;)V

    .line 70656
    return-void
.end method
