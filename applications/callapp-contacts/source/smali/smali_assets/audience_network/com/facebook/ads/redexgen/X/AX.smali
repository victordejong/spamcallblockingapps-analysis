.class public final Lcom/facebook/ads/redexgen/X/AX;
.super Lcom/facebook/ads/redexgen/X/L4;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ah;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/AX;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ah;)V
    .locals 0

    .line 21372
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AX;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/L4;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/AX;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4

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

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/AX;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x6ct
        -0x59t
        -0x5et
        -0x5dt
        -0x53t
        -0x72t
        -0x56t
        -0x61t
        -0x49t
        -0x80t
        -0x61t
        -0x5ft
        -0x57t
        -0x7dt
        -0x50t
        -0x50t
        -0x53t
        -0x50t
    .end array-data
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/Lb;)V
    .locals 4

    .line 21373
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/AX;->A00:Lcom/facebook/ads/redexgen/X/ah;

    const/4 v2, 0x0

    const/16 v1, 0x12

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AX;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/ah;->A0d(Lcom/facebook/ads/redexgen/X/ah;Ljava/lang/String;)V

    .line 21374
    return-void
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 21375
    check-cast p1, Lcom/facebook/ads/redexgen/X/Lb;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/AX;->A02(Lcom/facebook/ads/redexgen/X/Lb;)V

    return-void
.end method
