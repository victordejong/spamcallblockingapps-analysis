.class public final Lcom/facebook/ads/redexgen/X/9z;
.super Lcom/facebook/ads/redexgen/X/KW;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/af;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/9z;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/af;)V
    .locals 0

    .line 20686
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9z;->A00:Lcom/facebook/ads/redexgen/X/af;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KW;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/9z;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3f

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

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9z;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x48t
        0x57t
        0x5at
        0x5bt
        0x51t
        0x77t
        0x50t
        0x4at
        0x5bt
        0x4ct
        0x4dt
        0x4at
        0x57t
        0x4at
        0x5ft
        0x52t
        0x7bt
        0x48t
        0x5bt
        0x50t
        0x4at
    .end array-data
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/7v;)V
    .locals 4

    .line 20687
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9z;->A00:Lcom/facebook/ads/redexgen/X/af;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/af;->A00(Lcom/facebook/ads/redexgen/X/af;)Lcom/facebook/ads/redexgen/X/M9;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x15

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9z;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, p1}, Lcom/facebook/ads/redexgen/X/M9;->A3u(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/9E;)V

    .line 20688
    return-void
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 20689
    check-cast p1, Lcom/facebook/ads/redexgen/X/7v;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9z;->A02(Lcom/facebook/ads/redexgen/X/7v;)V

    return-void
.end method
