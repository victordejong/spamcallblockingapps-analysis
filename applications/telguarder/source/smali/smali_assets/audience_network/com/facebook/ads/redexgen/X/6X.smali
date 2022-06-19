.class public final Lcom/facebook/ads/redexgen/X/6X;
.super Ljava/util/HashMap;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/YR;->A5D()Lcom/facebook/ads/redexgen/X/6t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/YR;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/6X;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YR;)V
    .locals 4

    .line 15481
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6X;->A00:Lcom/facebook/ads/redexgen/X/YR;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 15482
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6X;->A00:Lcom/facebook/ads/redexgen/X/YR;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/YR;->A00:Lcom/facebook/ads/redexgen/X/YM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/YM;->A01:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6X;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/6X;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15483
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6X;->A00:Lcom/facebook/ads/redexgen/X/YR;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/YR;->A00:Lcom/facebook/ads/redexgen/X/YM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/YM;->A01:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6X;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/6X;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15484
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/6X;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x26

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

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/6X;->A01:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x8t
        -0x1ct
    .end array-data
.end method
