.class public final Lcom/facebook/ads/redexgen/X/7A;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageData"
.end annotation


# static fields
.field public static A08:[B


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/7I;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Ljava/lang/String;

.field public A02:Z

.field public final A03:I

.field public final A04:I

.field public final A05:Ljava/lang/String;

.field public final A06:Ljava/lang/String;

.field public final A07:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/7A;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 16106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16107
    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7A;->A00(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A01:Ljava/lang/String;

    .line 16108
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7A;->A07:Ljava/lang/String;

    .line 16109
    iput p2, p0, Lcom/facebook/ads/redexgen/X/7A;->A03:I

    .line 16110
    iput p3, p0, Lcom/facebook/ads/redexgen/X/7A;->A04:I

    .line 16111
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/7A;->A06:Ljava/lang/String;

    .line 16112
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/7A;->A05:Ljava/lang/String;

    .line 16113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A02:Z

    .line 16114
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/7A;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x50

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

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7A;->A08:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x7t
        0xat
        -0x4t
        -0x1t
    .end array-data
.end method
