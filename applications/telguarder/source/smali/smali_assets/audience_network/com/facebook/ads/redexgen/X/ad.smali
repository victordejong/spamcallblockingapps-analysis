.class public abstract Lcom/facebook/ads/redexgen/X/ad;
.super Lcom/facebook/ads/redexgen/X/4N;
.source ""


# static fields
.field public static A03:[B


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/El;

.field public A01:Landroid/widget/Scroller;

.field public final A02:Lcom/facebook/ads/redexgen/X/4P;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ad;->A0A()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 67483
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4N;-><init>()V

    .line 67484
    new-instance v0, Lcom/facebook/ads/redexgen/X/ae;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ae;-><init>(Lcom/facebook/ads/redexgen/X/ad;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ad;->A02:Lcom/facebook/ads/redexgen/X/4P;

    return-void
.end method

.method private final A06(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/4X;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 67485
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/ad;->A0F(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/as;

    move-result-object v0

    return-object v0
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/ad;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xf

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A08()V
    .locals 2

    .line 67486
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ad;->A00:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ad;->A02:Lcom/facebook/ads/redexgen/X/4P;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/El;->A1l(Lcom/facebook/ads/redexgen/X/4P;)V

    .line 67487
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ad;->A00:Lcom/facebook/ads/redexgen/X/El;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/El;->setOnFlingListener(Lcom/facebook/ads/redexgen/X/4N;)V

    .line 67488
    return-void
.end method

.method private A09()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 67489
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ad;->A00:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->getOnFlingListener()Lcom/facebook/ads/redexgen/X/4N;

    move-result-object v0

    if-nez v0, :cond_0

    .line 67490
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ad;->A00:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ad;->A02:Lcom/facebook/ads/redexgen/X/4P;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/El;->A1k(Lcom/facebook/ads/redexgen/X/4P;)V

    .line 67491
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ad;->A00:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/El;->setOnFlingListener(Lcom/facebook/ads/redexgen/X/4N;)V

    .line 67492
    return-void

    .line 67493
    :cond_0
    const/4 v2, 0x0

    const/16 v1, 0x2b

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ad;->A07(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A0A()V
    .locals 1

    const/16 v0, 0x2b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ad;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x78t
        -0x4bt
        0x67t
        -0x50t
        -0x4bt
        -0x46t
        -0x45t
        -0x58t
        -0x4bt
        -0x56t
        -0x54t
        0x67t
        -0x4at
        -0x53t
        0x67t
        -0x6at
        -0x4bt
        -0x73t
        -0x4dt
        -0x50t
        -0x4bt
        -0x52t
        -0x6dt
        -0x50t
        -0x46t
        -0x45t
        -0x54t
        -0x4bt
        -0x54t
        -0x47t
        0x67t
        -0x58t
        -0x4dt
        -0x47t
        -0x54t
        -0x58t
        -0x55t
        -0x40t
        0x67t
        -0x46t
        -0x54t
        -0x45t
        0x75t
    .end array-data
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/4K;II)Z
    .locals 4
    .param p1    # Lcom/facebook/ads/redexgen/X/4K;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 67494
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/4W;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 67495
    return v3

    .line 67496
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ad;->A06(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/4X;

    move-result-object v2

    .line 67497
    .local p0, "smoothScroller":Lcom/facebook/ads/redexgen/X/4X;
    if-nez v2, :cond_1

    .line 67498
    return v3

    .line 67499
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/ad;->A0D(Lcom/facebook/ads/redexgen/X/4K;II)I

    move-result v1

    .line 67500
    .local p2, "targetPosition":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_2

    .line 67501
    return v3

    .line 67502
    :cond_2
    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/4X;->A0A(I)V

    .line 67503
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/4K;->A1M(Lcom/facebook/ads/redexgen/X/4X;)V

    .line 67504
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final A0C(II)Z
    .locals 4

    .line 67505
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ad;->A00:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->getLayoutManager()Lcom/facebook/ads/redexgen/X/4K;

    move-result-object v3

    .line 67506
    .local p0, "layoutManager":Lcom/facebook/ads/redexgen/X/4K;
    const/4 v2, 0x0

    if-nez v3, :cond_0

    .line 67507
    return v2

    .line 67508
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ad;->A00:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->getAdapter()Lcom/facebook/ads/redexgen/X/48;

    move-result-object v0

    .line 67509
    .local p2, "adapter":Lcom/facebook/ads/redexgen/X/48;
    if-nez v0, :cond_1

    .line 67510
    return v2

    .line 67511
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ad;->A00:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->getMinFlingVelocity()I

    move-result v1

    .line 67512
    .local v0, "minFlingVelocity":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v1, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v1, :cond_3

    .line 67513
    :cond_2
    invoke-direct {p0, v3, p1, p2}, Lcom/facebook/ads/redexgen/X/ad;->A0B(Lcom/facebook/ads/redexgen/X/4K;II)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    .line 67514
    :cond_3
    return v2
.end method

.method public abstract A0D(Lcom/facebook/ads/redexgen/X/4K;II)I
.end method

.method public abstract A0E(Lcom/facebook/ads/redexgen/X/4K;)Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public A0F(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/as;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 67515
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/4W;

    if-nez v0, :cond_0

    .line 67516
    const/4 v0, 0x0

    return-object v0

    .line 67517
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ad;->A00:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ek;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Ek;-><init>(Lcom/facebook/ads/redexgen/X/ad;Landroid/content/Context;)V

    return-object v0
.end method

.method public final A0G()V
    .locals 5

    .line 67518
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ad;->A00:Lcom/facebook/ads/redexgen/X/El;

    if-nez v0, :cond_0

    .line 67519
    return-void

    .line 67520
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->getLayoutManager()Lcom/facebook/ads/redexgen/X/4K;

    move-result-object v1

    .line 67521
    .local p0, "layoutManager":Lcom/facebook/ads/redexgen/X/4K;
    if-nez v1, :cond_1

    .line 67522
    return-void

    .line 67523
    :cond_1
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/ad;->A0E(Lcom/facebook/ads/redexgen/X/4K;)Landroid/view/View;

    move-result-object v0

    .line 67524
    .local v0, "snapView":Landroid/view/View;
    if-nez v0, :cond_2

    .line 67525
    return-void

    .line 67526
    :cond_2
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/ad;->A0I(Lcom/facebook/ads/redexgen/X/4K;Landroid/view/View;)[I

    move-result-object v4

    .line 67527
    .local v1, "snapDistance":[I
    const/4 v1, 0x0

    aget v0, v4, v1

    const/4 v3, 0x1

    if-nez v0, :cond_3

    aget v0, v4, v3

    if-eqz v0, :cond_4

    .line 67528
    :cond_3
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ad;->A00:Lcom/facebook/ads/redexgen/X/El;

    aget v1, v4, v1

    aget v0, v4, v3

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/El;->A1f(II)V

    .line 67529
    :cond_4
    return-void
.end method

.method public final A0H(Lcom/facebook/ads/redexgen/X/El;)V
    .locals 3
    .param p1    # Lcom/facebook/ads/redexgen/X/El;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 67530
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ad;->A00:Lcom/facebook/ads/redexgen/X/El;

    if-ne v0, p1, :cond_0

    .line 67531
    return-void

    .line 67532
    :cond_0
    if-eqz v0, :cond_1

    .line 67533
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ad;->A08()V

    .line 67534
    :cond_1
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ad;->A00:Lcom/facebook/ads/redexgen/X/El;

    .line 67535
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ad;->A00:Lcom/facebook/ads/redexgen/X/El;

    if-eqz v0, :cond_2

    .line 67536
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ad;->A09()V

    .line 67537
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ad;->A00:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, v2, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ad;->A01:Landroid/widget/Scroller;

    .line 67538
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ad;->A0G()V

    .line 67539
    :cond_2
    return-void
.end method

.method public abstract A0I(Lcom/facebook/ads/redexgen/X/4K;Landroid/view/View;)[I
    .param p1    # Lcom/facebook/ads/redexgen/X/4K;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
