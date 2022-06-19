.class public abstract Lcom/facebook/ads/redexgen/X/bz;
.super Lcom/facebook/ads/redexgen/X/48;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/15;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/48<",
        "Lcom/facebook/ads/redexgen/X/SX;",
        ">;"
    }
.end annotation


# static fields
.field public static A05:[Ljava/lang/String;

.field public static final A06:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/15;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/T6;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:I

.field public final A03:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A04:Lcom/facebook/ads/redexgen/X/Q8;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 70472
    invoke-static {}, Lcom/facebook/ads/redexgen/X/bz;->A07()V

    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/bz;->A06:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/1W;Ljava/util/List;Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/1W;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/T6;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/Wm;",
            ")V"
        }
    .end annotation

    .line 70473
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/48;-><init>()V

    .line 70474
    new-instance v0, Lcom/facebook/ads/redexgen/X/c1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/c1;-><init>(Lcom/facebook/ads/redexgen/X/bz;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bz;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    .line 70475
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/bz;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    .line 70476
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1W;->getChildSpacing()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/bz;->A02:I

    .line 70477
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/bz;->A01:Ljava/util/List;

    .line 70478
    return-void
.end method

.method private A04(I)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 6

    .line 70479
    const/4 v1, -0x2

    const/4 v0, -0x1

    new-instance v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 70480
    .local p0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/facebook/ads/redexgen/X/bz;->A02:I

    if-nez p1, :cond_0

    mul-int/lit8 v3, v3, 0x2

    .line 70481
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bz;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/bz;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/bz;->A05:[Ljava/lang/String;

    const-string v1, "KlchvvVcsY9zV3e8wqzNtTZQscUuxnqD"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "gQBYn2ao1l5plthpQQ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-lt p1, v5, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/bz;->A02:I

    mul-int/lit8 v1, v0, 0x2

    .line 70482
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v4, v3, v0, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 70483
    return-object v4

    .line 70484
    :cond_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/bz;->A02:I

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/bz;)Lcom/facebook/ads/redexgen/X/15;
    .locals 0

    .line 70485
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bz;->A00:Lcom/facebook/ads/redexgen/X/15;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/bz;)Lcom/facebook/ads/redexgen/X/Q8;
    .locals 0

    .line 70486
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bz;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    return-object p0
.end method

.method public static A07()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "BofGdT"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Cb8B81bPHxSAbCDzy4"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "tLXqRIVVg6Ax3ByQPtTHAjuCLXMkMIv2"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Awqy8gsEnlsE3SarczMGKLCzZdtyeG5w"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "c95zYEegXXkMe1M4f4KrlDKZ96YYHdKl"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "dzB1VPy83al1mBxHBTo"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "7fXNgxpNBgLKECdM7L4CyN3WmxsqHAeT"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "HUwJOtf8ZOX36MmDYBkOhN0MiSikj2Pg"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/bz;->A05:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A0E()I
    .locals 1

    .line 70487
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bz;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic A0F(Lcom/facebook/ads/redexgen/X/4c;I)V
    .locals 0

    .line 70488
    check-cast p1, Lcom/facebook/ads/redexgen/X/SX;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/bz;->A0I(Lcom/facebook/ads/redexgen/X/SX;I)V

    return-void
.end method

.method public final A0G(Landroid/widget/ImageView;I)V
    .locals 4

    .line 70489
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bz;->A01:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/T6;

    .line 70490
    .local p0, "childAd":Lcom/facebook/ads/redexgen/X/T6;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/T6;->A12()Lcom/facebook/ads/redexgen/X/Ja;

    move-result-object v2

    .line 70491
    .local p1, "coverImage":Lcom/facebook/ads/redexgen/X/Ja;
    if-eqz v2, :cond_0

    .line 70492
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bz;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Rz;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Rz;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 70493
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rz;->A05()Lcom/facebook/ads/redexgen/X/Rz;

    move-result-object v1

    .line 70494
    .local p2, "downloadImageTask":Lcom/facebook/ads/redexgen/X/Rz;
    new-instance v0, Lcom/facebook/ads/redexgen/X/c0;

    invoke-direct {v0, p0, p2, v3}, Lcom/facebook/ads/redexgen/X/c0;-><init>(Lcom/facebook/ads/redexgen/X/bz;ILcom/facebook/ads/redexgen/X/T6;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Rz;->A07(Lcom/facebook/ads/redexgen/X/NW;)Lcom/facebook/ads/redexgen/X/Rz;

    .line 70495
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Ja;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Rz;->A08(Ljava/lang/String;)V

    .line 70496
    .end local p2    # "downloadImageTask":Lcom/facebook/ads/redexgen/X/Rz;
    :cond_0
    return-void
.end method

.method public final A0H(Lcom/facebook/ads/redexgen/X/15;)V
    .locals 0

    .line 70497
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bz;->A00:Lcom/facebook/ads/redexgen/X/15;

    .line 70498
    return-void
.end method

.method public A0I(Lcom/facebook/ads/redexgen/X/SX;I)V
    .locals 2

    .line 70499
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SX;->A0m()Lcom/facebook/ads/internal/api/AdNativeComponentView;

    move-result-object v1

    .line 70500
    .local p0, "cardView":Lcom/facebook/ads/internal/api/AdNativeComponentView;
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/bz;->A04(I)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/api/AdNativeComponentView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70501
    return-void
.end method
