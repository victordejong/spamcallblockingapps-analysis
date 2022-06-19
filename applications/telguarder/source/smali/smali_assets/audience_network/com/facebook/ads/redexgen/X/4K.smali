.class public abstract Lcom/facebook/ads/redexgen/X/4K;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/El;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LayoutManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/androidx/support/v7/widget/RecyclerView$LayoutManager$Properties;,
        Lcom/facebook/ads/redexgen/X/4I;
    }
.end annotation


# static fields
.field public static A0I:[B

.field public static A0J:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/3i;

.field public A02:Lcom/facebook/ads/redexgen/X/4X;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Lcom/facebook/ads/redexgen/X/El;

.field public A04:Lcom/facebook/ads/redexgen/X/4h;

.field public A05:Lcom/facebook/ads/redexgen/X/4h;

.field public A06:Z

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public A0A:I

.field public A0B:I

.field public A0C:I

.field public A0D:I

.field public A0E:Z

.field public A0F:Z

.field public final A0G:Lcom/facebook/ads/redexgen/X/4f;

.field public final A0H:Lcom/facebook/ads/redexgen/X/4f;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4K;->A09()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4K;->A08()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 10533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10534
    new-instance v0, Lcom/facebook/ads/redexgen/X/al;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/al;-><init>(Lcom/facebook/ads/redexgen/X/4K;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0G:Lcom/facebook/ads/redexgen/X/4f;

    .line 10535
    new-instance v0, Lcom/facebook/ads/redexgen/X/ak;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ak;-><init>(Lcom/facebook/ads/redexgen/X/4K;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0H:Lcom/facebook/ads/redexgen/X/4f;

    .line 10536
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4K;->A0G:Lcom/facebook/ads/redexgen/X/4f;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4h;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4h;-><init>(Lcom/facebook/ads/redexgen/X/4f;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A04:Lcom/facebook/ads/redexgen/X/4h;

    .line 10537
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4K;->A0H:Lcom/facebook/ads/redexgen/X/4f;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4h;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4h;-><init>(Lcom/facebook/ads/redexgen/X/4f;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A05:Lcom/facebook/ads/redexgen/X/4h;

    .line 10538
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A09:Z

    .line 10539
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A07:Z

    .line 10540
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A06:Z

    .line 10541
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0F:Z

    .line 10542
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0E:Z

    return-void
.end method

.method public static A00(III)I
    .locals 3

    .line 10543
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 10544
    .local p0, "mode":I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 10545
    .local p1, "size":I
    const/high16 v0, -0x80000000

    if-eq v2, v0, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v2, v0, :cond_1

    .line 10546
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const-string v1, "7ZlRW1fJ2ceKknMHrmqZHpvOqnCflQ3Z"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "lCDLGsr9M7ne5iZg5nTPG99O9we9UTox"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 10547
    :cond_1
    return v1

    .line 10548
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static A01(IIIIZ)I
    .locals 6

    .line 10549
    sub-int/2addr p0, p2

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 10550
    .local p0, "size":I
    const/4 v5, 0x0

    .line 10551
    .local p1, "resultSize":I
    const/4 v4, 0x0

    .line 10552
    .local p2, "resultMode":I
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, -0x80000000

    const/4 v1, -0x2

    const/4 v0, -0x1

    if-eqz p4, :cond_5

    .line 10553
    if-ltz p3, :cond_1

    .line 10554
    move v5, p3

    .line 10555
    const/high16 v4, 0x40000000    # 2.0f

    .line 10556
    :cond_0
    :goto_0
    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0

    .line 10557
    :cond_1
    if-ne p3, v0, :cond_4

    .line 10558
    if-eq p1, v2, :cond_3

    if-eqz p1, :cond_2

    if-eq p1, v3, :cond_3

    goto :goto_0

    .line 10559
    :cond_2
    const/4 v5, 0x0

    .line 10560
    const/4 v4, 0x0

    goto :goto_0

    .line 10561
    :cond_3
    move v5, p0

    .line 10562
    move v4, p1

    .line 10563
    goto :goto_0

    .line 10564
    :cond_4
    if-ne p3, v1, :cond_0

    .line 10565
    const/4 v5, 0x0

    .line 10566
    const/4 v4, 0x0

    goto :goto_0

    .line 10567
    :cond_5
    if-ltz p3, :cond_6

    .line 10568
    move v5, p3

    .line 10569
    const/high16 v4, 0x40000000    # 2.0f

    goto :goto_0

    .line 10570
    :cond_6
    if-ne p3, v0, :cond_7

    .line 10571
    move v5, p0

    .line 10572
    move v4, p1

    goto :goto_0

    .line 10573
    :cond_7
    if-ne p3, v1, :cond_0

    .line 10574
    move v5, p0

    .line 10575
    if-eq p1, v2, :cond_8

    if-ne p1, v3, :cond_9

    .line 10576
    :cond_8
    const/high16 v4, -0x80000000

    goto :goto_0

    .line 10577
    :cond_9
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private final A02(Landroid/view/View;)I
    .locals 1

    .line 10578
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4L;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4L;->A03:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method private final A03(Landroid/view/View;)I
    .locals 1

    .line 10579
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4L;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4L;->A03:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method private final A04(Landroid/view/View;)I
    .locals 1

    .line 10580
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4L;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4L;->A03:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method private final A05(Landroid/view/View;)I
    .locals 1

    .line 10581
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4L;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4L;->A03:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method private final A06(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 1

    .line 10582
    const/4 v0, 0x0

    return v0
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/4K;->A0I:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x14

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0x114

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/4K;->A0I:[B

    return-void

    :array_0
    .array-data 1
        0x63t
        -0x7at
        -0x7at
        -0x79t
        -0x7at
        0x42t
        0x78t
        -0x75t
        -0x79t
        -0x67t
        0x42t
        -0x76t
        -0x7dt
        -0x6bt
        0x42t
        0x74t
        -0x79t
        -0x7bt
        -0x65t
        -0x7bt
        -0x72t
        -0x79t
        -0x6ct
        0x78t
        -0x75t
        -0x79t
        -0x67t
        0x42t
        -0x7dt
        -0x6bt
        0x42t
        -0x6et
        -0x7dt
        -0x6ct
        -0x79t
        -0x70t
        -0x6at
        0x42t
        -0x7ct
        -0x69t
        -0x6at
        0x42t
        -0x68t
        -0x75t
        -0x79t
        -0x67t
        0x42t
        -0x75t
        -0x6bt
        0x42t
        -0x70t
        -0x6ft
        -0x6at
        0x42t
        -0x7dt
        0x42t
        -0x6ct
        -0x79t
        -0x7dt
        -0x72t
        0x42t
        -0x7bt
        -0x76t
        -0x75t
        -0x72t
        -0x7at
        0x50t
        0x42t
        0x77t
        -0x70t
        -0x78t
        -0x75t
        -0x72t
        -0x6at
        -0x79t
        -0x6ct
        -0x79t
        -0x7at
        0x42t
        -0x75t
        -0x70t
        -0x7at
        -0x79t
        -0x66t
        0x5ct
        -0x58t
        -0x3at
        -0x2dt
        -0x2dt
        -0x2ct
        -0x27t
        -0x7bt
        -0x2et
        -0x2ct
        -0x25t
        -0x36t
        -0x7bt
        -0x3at
        -0x7bt
        -0x38t
        -0x33t
        -0x32t
        -0x2ft
        -0x37t
        -0x7bt
        -0x35t
        -0x29t
        -0x2ct
        -0x2et
        -0x7bt
        -0x2dt
        -0x2ct
        -0x2dt
        -0x6et
        -0x36t
        -0x23t
        -0x32t
        -0x28t
        -0x27t
        -0x32t
        -0x2dt
        -0x34t
        -0x7bt
        -0x32t
        -0x2dt
        -0x37t
        -0x36t
        -0x23t
        -0x61t
        -0x4et
        -0x3bt
        -0x3dt
        -0x27t
        -0x3dt
        -0x34t
        -0x3bt
        -0x2et
        -0x4at
        -0x37t
        -0x3bt
        -0x29t
        -0x65t
        -0x4ft
        -0x49t
        0x62t
        -0x51t
        -0x49t
        -0x4bt
        -0x4at
        0x62t
        -0x4ft
        -0x48t
        -0x59t
        -0x4ct
        -0x4ct
        -0x55t
        -0x5at
        -0x59t
        0x62t
        -0x4ft
        -0x50t
        -0x72t
        -0x5dt
        -0x45t
        -0x4ft
        -0x49t
        -0x4at
        -0x7bt
        -0x56t
        -0x55t
        -0x52t
        -0x5at
        -0x4ct
        -0x59t
        -0x50t
        0x6at
        -0x6ct
        -0x59t
        -0x5bt
        -0x45t
        -0x5bt
        -0x52t
        -0x59t
        -0x4ct
        0x62t
        -0x4ct
        -0x59t
        -0x5bt
        -0x45t
        -0x5bt
        -0x52t
        -0x59t
        -0x4ct
        0x6et
        0x62t
        -0x6bt
        -0x4at
        -0x5dt
        -0x4at
        -0x59t
        0x62t
        -0x4bt
        -0x4at
        -0x5dt
        -0x4at
        -0x59t
        0x6bt
        0x62t
        -0x5ft
        -0x49t
        -0x43t
        0x68t
        -0x4bt
        -0x43t
        -0x45t
        -0x44t
        0x68t
        -0x49t
        -0x42t
        -0x53t
        -0x46t
        -0x46t
        -0x4ft
        -0x54t
        -0x53t
        0x68t
        -0x45t
        -0x4bt
        -0x49t
        -0x49t
        -0x44t
        -0x50t
        -0x65t
        -0x55t
        -0x46t
        -0x49t
        -0x4ct
        -0x4ct
        -0x64t
        -0x49t
        -0x68t
        -0x49t
        -0x45t
        -0x4ft
        -0x44t
        -0x4ft
        -0x49t
        -0x4at
        0x68t
        -0x44t
        -0x49t
        0x68t
        -0x45t
        -0x43t
        -0x48t
        -0x48t
        -0x49t
        -0x46t
        -0x44t
        0x68t
        -0x45t
        -0x4bt
        -0x49t
        -0x49t
        -0x44t
        -0x50t
        0x68t
        -0x45t
        -0x55t
        -0x46t
        -0x49t
        -0x4ct
        -0x4ct
        -0x4ft
        -0x4at
        -0x51t
    .end array-data
.end method

.method public static A09()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "xyZ8yvYzp3wrHAf7Yx6bEToOMuLBTkeJ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "zRc0P2oS"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "sxpemPSbJ0zjH5L170Fpc8WIJnMfTOYM"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "JLvxwq6R3Maitb0M5MelMbaPMbiMlz5H"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "qno0WD9sdyP92Tf9SwtsGsNlEh6m7cws"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "isTf1gingqqcw8OSNjwv80foOygzMJYI"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "cYtNYfyLYrQzxoivZChv"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "OeXF3cqFYKXlQ2ABbzPAkdUOYZHirWRh"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    return-void
.end method

.method private final A0A(I)V
    .locals 1

    .line 10583
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0D(ILandroid/view/View;)V

    .line 10584
    return-void
.end method

.method private final A0B(I)V
    .locals 1

    .line 10585
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v0

    .line 10586
    .local p0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 10587
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A01:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/3i;->A0E(I)V

    .line 10588
    :cond_0
    return-void
.end method

.method private final A0C(II)V
    .locals 4

    .line 10589
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v0

    .line 10590
    .local p0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 10591
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A0A(I)V

    .line 10592
    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/4K;->A0F(Landroid/view/View;I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 10593
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const-string v1, "fev5lwy8caKDFGGcVLFTWETO5UF90dOq"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "EDoCIrgXqzBYQTf4WlngJinORtzJmrfl"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-void

    .line 10594
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x55

    const/16 v1, 0x2c

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    .line 10595
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A0D(ILandroid/view/View;)V
    .locals 1

    .line 10596
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A01:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/3i;->A0D(I)V

    .line 10597
    return-void
.end method

.method private final A0E(Landroid/view/View;)V
    .locals 1

    .line 10598
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A01:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/3i;->A0G(Landroid/view/View;)V

    .line 10599
    return-void
.end method

.method private final A0F(Landroid/view/View;I)V
    .locals 1

    .line 10600
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4L;

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0G(Landroid/view/View;ILcom/facebook/ads/redexgen/X/4L;)V

    .line 10601
    return-void
.end method

.method private final A0G(Landroid/view/View;ILcom/facebook/ads/redexgen/X/4L;)V
    .locals 3

    .line 10602
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/El;->A0G(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v2

    .line 10603
    .local p0, "vh":Lcom/facebook/ads/redexgen/X/4c;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4c;->A0d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10604
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A0t:Lcom/facebook/ads/redexgen/X/4k;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4k;->A0A(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 10605
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4K;->A01:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4c;->A0d()Z

    move-result v0

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/3i;->A0I(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 10606
    return-void

    .line 10607
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A0t:Lcom/facebook/ads/redexgen/X/4k;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4k;->A0B(Lcom/facebook/ads/redexgen/X/4c;)V

    goto :goto_0
.end method

.method private A0H(Landroid/view/View;IZ)V
    .locals 8

    .line 10608
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/El;->A0G(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v5

    .line 10609
    .local p0, "holder":Lcom/facebook/ads/redexgen/X/4c;
    if-nez p3, :cond_0

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4c;->A0d()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 10610
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A0t:Lcom/facebook/ads/redexgen/X/4k;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4k;->A0A(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 10611
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/4L;

    .line 10612
    .local p1, "lp":Lcom/facebook/ads/redexgen/X/4L;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4c;->A0j()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4c;->A0e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10613
    :cond_1
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4c;->A0e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10614
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4c;->A0T()V

    .line 10615
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4K;->A01:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, p1, p2, v0, v3}, Lcom/facebook/ads/redexgen/X/3i;->A0I(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 10616
    :cond_2
    :goto_2
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/4L;->A02:Z

    if-eqz v0, :cond_9

    .line 10617
    iget-object v5, v5, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    sget-object v1, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_8

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 10618
    :cond_3
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4c;->A0P()V

    goto :goto_1

    .line 10619
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    sget-object v1, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_c

    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const-string v1, "uqKRxBtg59XPGVJDkfwEUsBOgdJYSppJ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ne v7, v6, :cond_6

    .line 10620
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A01:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/3i;->A08(Landroid/view/View;)I

    move-result v2

    .line 10621
    .local p2, "currentIndex":I
    const/4 v1, -0x1

    if-ne p2, v1, :cond_5

    .line 10622
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A01:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3i;->A06()I

    move-result p2

    .line 10623
    :cond_5
    if-eq v2, v1, :cond_a

    .line 10624
    if-eq v2, p2, :cond_2

    .line 10625
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A06:Lcom/facebook/ads/redexgen/X/4K;

    invoke-direct {v0, v2, p2}, Lcom/facebook/ads/redexgen/X/4K;->A0C(II)V

    goto :goto_2

    .line 10626
    .end local p2    # "currentIndex":I
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A01:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {v0, p1, p2, v3}, Lcom/facebook/ads/redexgen/X/3i;->A0J(Landroid/view/View;IZ)V

    .line 10627
    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/4L;->A01:Z

    .line 10628
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/4K;->A02:Lcom/facebook/ads/redexgen/X/4X;

    sget-object v1, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x76

    if-eq v1, v0, :cond_b

    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const-string v1, "si9YLNjLFs"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4X;->A0F()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10629
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A02:Lcom/facebook/ads/redexgen/X/4X;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4X;->A0C(Landroid/view/View;)V

    goto/16 :goto_2

    .line 10630
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A0t:Lcom/facebook/ads/redexgen/X/4k;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4k;->A0B(Lcom/facebook/ads/redexgen/X/4c;)V

    goto/16 :goto_0

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const-string v1, "bg493IDm"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 10631
    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/4L;->A02:Z

    .line 10632
    :cond_9
    return-void

    .line 10633
    .restart local p2    # "currentIndex":I
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x55

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    .line 10634
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/El;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A0I(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .line 10635
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/El;->A0q(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 10636
    return-void
.end method

.method public static synthetic A0J(Lcom/facebook/ads/redexgen/X/4K;Lcom/facebook/ads/redexgen/X/4X;)V
    .locals 0

    .line 10637
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A0N(Lcom/facebook/ads/redexgen/X/4X;)V

    return-void
.end method

.method private A0K(Lcom/facebook/ads/redexgen/X/4S;ILandroid/view/View;)V
    .locals 5

    .line 10638
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/El;->A0G(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v3

    .line 10639
    .local p0, "viewHolder":Lcom/facebook/ads/redexgen/X/4c;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4c;->A0i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10640
    return-void

    .line 10641
    :cond_0
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4c;->A0c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4c;->A0d()Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const-string v1, "wfzQKDpvqCerNRZHLtQvgaB031c5C1YU"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "KgFz3HBRwd8cETJWtdM1PF8pjKUjBKYl"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v4, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A04:Lcom/facebook/ads/redexgen/X/48;

    .line 10642
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A0C()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10643
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/4K;->A0B(I)V

    .line 10644
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/4S;->A0c(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 10645
    :goto_0
    return-void

    .line 10646
    :cond_1
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/4K;->A0A(I)V

    .line 10647
    invoke-virtual {p1, p3}, Lcom/facebook/ads/redexgen/X/4S;->A0X(Landroid/view/View;)V

    .line 10648
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A0t:Lcom/facebook/ads/redexgen/X/4k;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4k;->A0D(Lcom/facebook/ads/redexgen/X/4c;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A0L(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .line 10649
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    if-eqz v0, :cond_0

    if-nez p3, :cond_1

    .line 10650
    :cond_0
    return-void

    .line 10651
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/El;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    .line 10652
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/El;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    .line 10653
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/El;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    .line 10654
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/El;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10655
    :cond_2
    :goto_0
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 10656
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A04:Lcom/facebook/ads/redexgen/X/48;

    if-eqz v0, :cond_3

    .line 10657
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A0E()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 10658
    :cond_3
    return-void

    .line 10659
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private final A0M(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/3O;)V
    .locals 5

    .line 10660
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/El;->canScrollVertically(I)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/El;->canScrollHorizontally(I)Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const-string v1, "KDPDh71uiY9dw6lSrmH00w2HuhKAvOYl"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "F84YzGx02ov8ufnexIEGkhiaGhnINbYS"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v4, :cond_1

    .line 10661
    :cond_0
    const/16 v0, 0x2000

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/3O;->A0O(I)V

    .line 10662
    invoke-virtual {p3, v3}, Lcom/facebook/ads/redexgen/X/3O;->A0S(Z)V

    .line 10663
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/El;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    sget-object v1, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const-string v1, "8s5rDkFpP"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/El;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10664
    :cond_2
    :goto_0
    const/16 v0, 0x1000

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/3O;->A0O(I)V

    .line 10665
    invoke-virtual {p3, v3}, Lcom/facebook/ads/redexgen/X/3O;->A0S(Z)V

    .line 10666
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4K;->A0s(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)I

    move-result v3

    .line 10667
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4K;->A0r(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)I

    move-result v2

    .line 10668
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4K;->A0Q(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Z

    move-result v1

    .line 10669
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4K;->A06(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)I

    move-result v0

    .line 10670
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3L;->A00(IIZI)Lcom/facebook/ads/redexgen/X/3L;

    move-result-object v0

    .line 10671
    .local p0, "collectionInfo":Lcom/facebook/ads/redexgen/X/3L;
    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/3O;->A0Q(Ljava/lang/Object;)V

    .line 10672
    return-void

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const-string v1, "3WqpoC752q4h2Wya5fT3BPHdY3ZkhgYP"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "HauWKBzmz4VUJQZuXSWVI1MWGOc6zBYt"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/El;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0N(Lcom/facebook/ads/redexgen/X/4X;)V
    .locals 1

    .line 10673
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A02:Lcom/facebook/ads/redexgen/X/4X;

    if-ne v0, p1, :cond_0

    .line 10674
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A02:Lcom/facebook/ads/redexgen/X/4X;

    .line 10675
    :cond_0
    return-void
.end method

.method private final A0O()Z
    .locals 1

    .line 10676
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A02:Lcom/facebook/ads/redexgen/X/4X;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4X;->A0F()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0P(III)Z
    .locals 5

    .line 10677
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 10678
    .local p0, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 10679
    .local p1, "specSize":I
    const/4 v2, 0x0

    if-lez p2, :cond_0

    if-eq p0, p2, :cond_0

    .line 10680
    return v2

    .line 10681
    :cond_0
    const/high16 v1, -0x80000000

    const/4 v0, 0x1

    if-eq v4, v1, :cond_4

    if-eqz v4, :cond_3

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v4, v0, :cond_1

    .line 10682
    return v2

    .line 10683
    :cond_1
    if-ne v3, p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    .line 10684
    :cond_3
    return v0

    .line 10685
    :cond_4
    if-lt v3, p0, :cond_5

    const/4 v2, 0x1

    :cond_5
    return v2
.end method

.method private final A0Q(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Z
    .locals 1

    .line 10686
    const/4 v0, 0x0

    return v0
.end method

.method private final A0R(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;ILandroid/os/Bundle;)Z
    .locals 7

    .line 10687
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    const/4 v5, 0x0

    if-nez v6, :cond_0

    .line 10688
    return v5

    .line 10689
    :cond_0
    const/4 v2, 0x0

    .local p2, "vScroll":I
    const/4 v1, 0x0

    .line 10690
    .local p3, "hScroll":I
    const/16 v0, 0x1000

    const/4 v3, 0x1

    if-eq p3, v0, :cond_4

    const/16 v0, 0x2000

    if-eq p3, v0, :cond_2

    .line 10691
    :cond_1
    :goto_0
    if-nez v2, :cond_6

    if-nez v1, :cond_6

    .line 10692
    return v5

    .line 10693
    :cond_2
    const/4 v4, -0x1

    invoke-virtual {v6, v4}, Lcom/facebook/ads/redexgen/X/El;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10694
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0Y()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0h()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0e()I

    move-result v0

    sub-int/2addr v2, v0

    neg-int v2, v2

    .line 10695
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/El;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10696
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0i()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0f()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0g()I

    move-result v0

    sub-int/2addr v1, v0

    neg-int v1, v1

    goto :goto_0

    .line 10697
    :cond_4
    invoke-virtual {v6, v3}, Lcom/facebook/ads/redexgen/X/El;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10698
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0Y()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0h()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0e()I

    move-result v0

    sub-int/2addr v2, v0

    .line 10699
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/El;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10700
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0i()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0f()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0g()I

    move-result v0

    sub-int/2addr v1, v0

    goto :goto_0

    .line 10701
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/El;->scrollBy(II)V

    .line 10702
    return v3
.end method

.method private final A0S(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 10703
    const/4 v0, 0x0

    return v0
.end method

.method private A0T(Lcom/facebook/ads/redexgen/X/El;II)Z
    .locals 8

    .line 10704
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/El;->getFocusedChild()Landroid/view/View;

    move-result-object v7

    .line 10705
    .local p0, "focusedChild":Landroid/view/View;
    const/4 v6, 0x0

    if-nez v7, :cond_0

    .line 10706
    return v6

    .line 10707
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0f()I

    move-result v5

    .line 10708
    .local p2, "parentLeft":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0h()I

    move-result v4

    .line 10709
    .local p3, "parentTop":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0i()I

    move-result v3

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0g()I

    move-result v0

    sub-int/2addr v3, v0

    .line 10710
    .local v7, "parentRight":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0Y()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0e()I

    move-result v0

    sub-int/2addr v2, v0

    .line 10711
    .local v6, "parentBottom":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/El;->A0p:Landroid/graphics/Rect;

    .line 10712
    .local v5, "bounds":Landroid/graphics/Rect;
    invoke-direct {p0, v7, v1}, Lcom/facebook/ads/redexgen/X/4K;->A0I(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 10713
    iget v0, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    if-ge v0, v3, :cond_1

    iget v0, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p2

    if-le v0, v5, :cond_1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p3

    if-ge v0, v2, :cond_1

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p3

    if-gt v0, v4, :cond_2

    .line 10714
    :cond_1
    return v6

    .line 10715
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private final A0U(Lcom/facebook/ads/redexgen/X/El;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10716
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0O()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/El;->A1v()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0V(Lcom/facebook/ads/redexgen/X/El;Landroid/view/View;Landroid/graphics/Rect;Z)[I
    .locals 14

    .line 10717
    const/4 v0, 0x2

    new-array v5, v0, [I

    .line 10718
    .local p1, "out":[I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0f()I

    move-result v13

    .line 10719
    .local p2, "parentLeft":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0h()I

    move-result v12

    .line 10720
    .local v1, "parentTop":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0i()I

    move-result v11

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0g()I

    move-result v0

    sub-int/2addr v11, v0

    .line 10721
    .local p4, "parentRight":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0Y()I

    move-result v10

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0e()I

    move-result v0

    sub-int/2addr v10, v0

    .line 10722
    .local v1, "parentBottom":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v9

    move-object/from16 v1, p3

    iget v0, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollX()I

    move-result v0

    sub-int/2addr v9, v0

    .line 10723
    .local v0, "childLeft":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v8

    iget v0, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollY()I

    move-result v0

    sub-int/2addr v8, v0

    .line 10724
    .local v5, "childTop":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    add-int/2addr v7, v9

    .line 10725
    .local v13, "childRight":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v2, v8

    .line 10726
    .local v12, "childBottom":I
    sub-int v0, v9, v13

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 10727
    .local v11, "offScreenLeft":I
    sub-int v0, v8, v12

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 10728
    .local v11, "offScreenTop":I
    sub-int v0, v7, v11

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 10729
    .local v10, "offScreenRight":I
    sub-int/2addr v2, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 10730
    .local v0, "offScreenBottom":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0b()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    .line 10731
    if-eqz v4, :cond_1

    .line 10732
    .restart local v10    # "offScreenRight":I
    :goto_0
    if-eqz v6, :cond_0

    .line 10733
    .local v0, "dy":I
    :goto_1
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x76

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const-string v1, "Isv8yfzH9onY6i3DZn5W8CWEpwXMl03K"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    aput v4, v5, v3

    .line 10734
    const/4 v0, 0x1

    aput v6, v5, v0

    .line 10735
    return-object v5

    .line 10736
    :cond_0
    sub-int/2addr v8, v12

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_1

    .line 10737
    :cond_1
    sub-int/2addr v7, v11

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_0

    .line 10738
    .end local v10    # "offScreenRight":I
    :cond_2
    if-eqz v3, :cond_3

    move v4, v3

    goto :goto_0

    .line 10739
    :cond_3
    sub-int/2addr v9, v13

    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A0W()I
    .locals 1

    .line 10740
    const/4 v0, -0x1

    return v0
.end method

.method public final A0X()I
    .locals 1

    .line 10741
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A01:Lcom/facebook/ads/redexgen/X/3i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3i;->A06()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0Y()I
    .locals 1

    .line 10742
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0A:I

    return v0
.end method

.method public final A0Z()I
    .locals 1

    .line 10743
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0B:I

    return v0
.end method

.method public final A0a()I
    .locals 1

    .line 10744
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->getAdapter()Lcom/facebook/ads/redexgen/X/48;

    move-result-object v0

    .line 10745
    .local p0, "a":Lcom/facebook/ads/redexgen/X/48;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A0E()I

    move-result v0

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 10746
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0b()I
    .locals 1

    .line 10747
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2z;->A01(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final A0c()I
    .locals 1

    .line 10748
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2z;->A02(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final A0d()I
    .locals 1

    .line 10749
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2z;->A03(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final A0e()I
    .locals 1

    .line 10750
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->getPaddingBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0f()I
    .locals 1

    .line 10751
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->getPaddingLeft()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0g()I
    .locals 1

    .line 10752
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->getPaddingRight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0h()I
    .locals 1

    .line 10753
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->getPaddingTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0i()I
    .locals 1

    .line 10754
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0C:I

    return v0
.end method

.method public final A0j()I
    .locals 1

    .line 10755
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0D:I

    return v0
.end method

.method public final A0k(Landroid/view/View;)I
    .locals 2

    .line 10756
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A02(Landroid/view/View;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0l(Landroid/view/View;)I
    .locals 2

    .line 10757
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A03(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A0m(Landroid/view/View;)I
    .locals 3

    .line 10758
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4L;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/4L;->A03:Landroid/graphics/Rect;

    .line 10759
    .local p0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v0, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0n(Landroid/view/View;)I
    .locals 3

    .line 10760
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4L;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/4L;->A03:Landroid/graphics/Rect;

    .line 10761
    .local p0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v0, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iget v0, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0o(Landroid/view/View;)I
    .locals 2

    .line 10762
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A04(Landroid/view/View;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0p(Landroid/view/View;)I
    .locals 2

    .line 10763
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A05(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A0q(Landroid/view/View;)I
    .locals 1

    .line 10764
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4L;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4L;->A00()I

    move-result v0

    return v0
.end method

.method public A0r(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 2

    .line 10765
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A04:Lcom/facebook/ads/redexgen/X/48;

    if-nez v0, :cond_1

    .line 10766
    :cond_0
    return v1

    .line 10767
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A25()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A0E()I

    move-result v1

    :cond_2
    return v1
.end method

.method public A0s(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 2

    .line 10768
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A04:Lcom/facebook/ads/redexgen/X/48;

    if-nez v0, :cond_1

    .line 10769
    :cond_0
    return v1

    .line 10770
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A26()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A0E()I

    move-result v1

    :cond_2
    return v1
.end method

.method public final A0t()Landroid/view/View;
    .locals 3

    .line 10771
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 10772
    return-object v2

    .line 10773
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 10774
    .local p0, "focused":Landroid/view/View;
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A01:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3i;->A0L(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10775
    :cond_1
    return-object v2

    .line 10776
    :cond_2
    return-object v1
.end method

.method public final A0u(I)Landroid/view/View;
    .locals 1

    .line 10777
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A01:Lcom/facebook/ads/redexgen/X/3i;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/3i;->A0A(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0v(Landroid/view/View;I)Landroid/view/View;
    .locals 1

    .line 10778
    const/4 v0, 0x0

    return-object v0
.end method

.method public A0w(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/facebook/ads/redexgen/X/4L;
    .locals 1

    .line 10779
    new-instance v0, Lcom/facebook/ads/redexgen/X/4L;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/4L;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public A0x(Landroid/view/ViewGroup$LayoutParams;)Lcom/facebook/ads/redexgen/X/4L;
    .locals 1

    .line 10780
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/4L;

    if-eqz v0, :cond_0

    .line 10781
    check-cast p1, Lcom/facebook/ads/redexgen/X/4L;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4L;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/4L;-><init>(Lcom/facebook/ads/redexgen/X/4L;)V

    return-object v0

    .line 10782
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 10783
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4L;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/4L;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 10784
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/4L;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/4L;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final A0y()V
    .locals 1

    .line 10785
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A02:Lcom/facebook/ads/redexgen/X/4X;

    if-eqz v0, :cond_0

    .line 10786
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4X;->A09()V

    .line 10787
    :cond_0
    return-void
.end method

.method public final A0z()V
    .locals 1

    .line 10788
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    if-eqz v0, :cond_0

    .line 10789
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->requestLayout()V

    .line 10790
    :cond_0
    return-void
.end method

.method public final A10(I)V
    .locals 1

    .line 10791
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    if-eqz v0, :cond_0

    .line 10792
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/El;->A1U(I)V

    .line 10793
    :cond_0
    return-void
.end method

.method public final A11(I)V
    .locals 1

    .line 10794
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    if-eqz v0, :cond_0

    .line 10795
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/El;->A1V(I)V

    .line 10796
    :cond_0
    return-void
.end method

.method public final A12(II)V
    .locals 2

    .line 10797
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0C:I

    .line 10798
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0D:I

    .line 10799
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0D:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/facebook/ads/redexgen/X/El;->A1B:Z

    if-nez v0, :cond_0

    .line 10800
    iput v1, p0, Lcom/facebook/ads/redexgen/X/4K;->A0C:I

    .line 10801
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0A:I

    .line 10802
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0B:I

    .line 10803
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0B:I

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/facebook/ads/redexgen/X/El;->A1B:Z

    if-nez v0, :cond_1

    .line 10804
    iput v1, p0, Lcom/facebook/ads/redexgen/X/4K;->A0A:I

    .line 10805
    :cond_1
    return-void
.end method

.method public final A13(II)V
    .locals 9

    .line 10806
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v8

    .line 10807
    .local p0, "count":I
    if-nez v8, :cond_1

    .line 10808
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/El;->A1b(II)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 10809
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const-string v1, "XwkGDyjU"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-void

    .line 10810
    :cond_1
    const v6, 0x7fffffff

    .line 10811
    .local p1, "minX":I
    const v5, 0x7fffffff

    .line 10812
    .local p2, "minY":I
    const/high16 v4, -0x80000000

    .line 10813
    .local v8, "maxX":I
    const/high16 v3, -0x80000000

    .line 10814
    .local v0, "maxY":I
    const/4 v7, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v7, v8, :cond_6

    .line 10815
    invoke-virtual {p0, v7}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v2

    .line 10816
    .local v0, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/El;->A0p:Landroid/graphics/Rect;

    .line 10817
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-direct {p0, v2, v1}, Lcom/facebook/ads/redexgen/X/4K;->A0I(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 10818
    iget v0, v1, Landroid/graphics/Rect;->left:I

    if-ge v0, v6, :cond_2

    .line 10819
    iget v6, v1, Landroid/graphics/Rect;->left:I

    .line 10820
    :cond_2
    iget v0, v1, Landroid/graphics/Rect;->right:I

    if-le v0, v4, :cond_3

    .line 10821
    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 10822
    :cond_3
    iget v0, v1, Landroid/graphics/Rect;->top:I

    if-ge v0, v5, :cond_4

    .line 10823
    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 10824
    :cond_4
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v3, :cond_5

    .line 10825
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 10826
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "bounds":Landroid/graphics/Rect;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 10827
    .end local v2    # "i":I
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A0p:Landroid/graphics/Rect;

    invoke-virtual {v0, v6, v5, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 10828
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A0p:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/4K;->A16(Landroid/graphics/Rect;II)V

    .line 10829
    return-void
.end method

.method public final A14(II)V
    .locals 1

    .line 10830
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    invoke-static {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/El;->A0x(Lcom/facebook/ads/redexgen/X/El;II)V

    .line 10831
    return-void
.end method

.method public final A15(ILcom/facebook/ads/redexgen/X/4S;)V
    .locals 1

    .line 10832
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v0

    .line 10833
    .local p0, "view":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A0B(I)V

    .line 10834
    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/4S;->A0Y(Landroid/view/View;)V

    .line 10835
    return-void
.end method

.method public A16(Landroid/graphics/Rect;II)V
    .locals 3

    .line 10836
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0f()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0g()I

    move-result v0

    add-int/2addr v1, v0

    .line 10837
    .local p0, "usedWidth":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0h()I

    move-result v0

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0e()I

    move-result v0

    add-int/2addr v2, v0

    .line 10838
    .local p1, "usedHeight":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0d()I

    move-result v0

    invoke-static {p2, v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A00(III)I

    move-result v1

    .line 10839
    .local p2, "width":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0c()I

    move-result v0

    invoke-static {p3, v2, v0}, Lcom/facebook/ads/redexgen/X/4K;->A00(III)I

    move-result v0

    .line 10840
    .local p3, "height":I
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A14(II)V

    .line 10841
    return-void
.end method

.method public final A17(Landroid/view/View;)V
    .locals 1

    .line 10842
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A19(Landroid/view/View;I)V

    .line 10843
    return-void
.end method

.method public final A18(Landroid/view/View;)V
    .locals 1

    .line 10844
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A1A(Landroid/view/View;I)V

    .line 10845
    return-void
.end method

.method public final A19(Landroid/view/View;I)V
    .locals 1

    .line 10846
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0H(Landroid/view/View;IZ)V

    .line 10847
    return-void
.end method

.method public final A1A(Landroid/view/View;I)V
    .locals 1

    .line 10848
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0H(Landroid/view/View;IZ)V

    .line 10849
    return-void
.end method

.method public final A1B(Landroid/view/View;II)V
    .locals 7

    .line 10850
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/4L;

    .line 10851
    .local p0, "lp":Lcom/facebook/ads/redexgen/X/4L;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/El;->A1F(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 10852
    .local p1, "insets":Landroid/graphics/Rect;
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v0, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    add-int/2addr p2, v1

    .line 10853
    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    add-int/2addr p3, v1

    .line 10854
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0i()I

    move-result v4

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0j()I

    move-result v3

    .line 10855
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0f()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0g()I

    move-result v0

    add-int/2addr v2, v0

    iget v0, v6, Lcom/facebook/ads/redexgen/X/4L;->leftMargin:I

    add-int/2addr v2, v0

    iget v0, v6, Lcom/facebook/ads/redexgen/X/4L;->rightMargin:I

    add-int/2addr v2, v0

    add-int/2addr v2, p2

    iget v1, v6, Lcom/facebook/ads/redexgen/X/4L;->width:I

    .line 10856
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A25()Z

    move-result v0

    .line 10857
    invoke-static {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A01(IIIIZ)I

    move-result v5

    .line 10858
    .local p2, "widthSpec":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0Y()I

    move-result v4

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0Z()I

    move-result v3

    .line 10859
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0h()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0e()I

    move-result v0

    add-int/2addr v2, v0

    iget v0, v6, Lcom/facebook/ads/redexgen/X/4L;->topMargin:I

    add-int/2addr v2, v0

    iget v0, v6, Lcom/facebook/ads/redexgen/X/4L;->bottomMargin:I

    add-int/2addr v2, v0

    add-int/2addr v2, p3

    iget v1, v6, Lcom/facebook/ads/redexgen/X/4L;->height:I

    .line 10860
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A26()Z

    move-result v0

    .line 10861
    invoke-static {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A01(IIIIZ)I

    move-result v1

    .line 10862
    .local p3, "heightSpec":I
    invoke-virtual {p0, p1, v5, v1, v6}, Lcom/facebook/ads/redexgen/X/4K;->A1b(Landroid/view/View;IILcom/facebook/ads/redexgen/X/4L;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10863
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 10864
    :cond_0
    return-void
.end method

.method public final A1C(Landroid/view/View;IIII)V
    .locals 5

    .line 10865
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/4L;

    .line 10866
    .local p0, "lp":Lcom/facebook/ads/redexgen/X/4L;
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/4L;->A03:Landroid/graphics/Rect;

    .line 10867
    .local p1, "insets":Landroid/graphics/Rect;
    iget v2, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p2

    iget v0, v4, Lcom/facebook/ads/redexgen/X/4L;->leftMargin:I

    add-int/2addr v2, v0

    iget v1, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p3

    iget v0, v4, Lcom/facebook/ads/redexgen/X/4L;->topMargin:I

    add-int/2addr v1, v0

    iget v0, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, v0

    iget v0, v4, Lcom/facebook/ads/redexgen/X/4L;->rightMargin:I

    sub-int/2addr p4, v0

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, v0

    iget v0, v4, Lcom/facebook/ads/redexgen/X/4L;->bottomMargin:I

    sub-int/2addr p5, v0

    invoke-virtual {p1, v2, v1, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 10868
    return-void
.end method

.method public final A1D(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3O;)V
    .locals 5

    .line 10869
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/El;->A0G(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v4

    .line 10870
    .local p0, "vh":Lcom/facebook/ads/redexgen/X/4c;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4c;->A0d()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x76

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const-string v1, "uJMRqraa"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v3, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4K;->A01:Lcom/facebook/ads/redexgen/X/3i;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3i;->A0L(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10871
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/El;->A0r:Lcom/facebook/ads/redexgen/X/4S;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/4K;->A1L(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Landroid/view/View;Lcom/facebook/ads/redexgen/X/3O;)V

    .line 10872
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A1E(Landroid/view/View;Lcom/facebook/ads/redexgen/X/4S;)V
    .locals 0

    .line 10873
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A0E(Landroid/view/View;)V

    .line 10874
    invoke-virtual {p2, p1}, Lcom/facebook/ads/redexgen/X/4S;->A0Y(Landroid/view/View;)V

    .line 10875
    return-void
.end method

.method public final A1F(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 8

    .line 10876
    if-eqz p2, :cond_0

    .line 10877
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4L;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/4L;->A03:Landroid/graphics/Rect;

    .line 10878
    .local p0, "insets":Landroid/graphics/Rect;
    iget v0, v5, Landroid/graphics/Rect;->left:I

    neg-int v4, v0

    iget v0, v5, Landroid/graphics/Rect;->top:I

    neg-int v3, v0

    .line 10879
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v0, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    .line 10880
    invoke-virtual {p3, v4, v3, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 10881
    .end local p0    # "insets":Landroid/graphics/Rect;
    :goto_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 10882
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v0, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const-string v1, "0LJ8GvUexdNG1AG11Ii0XfPOyD5lBlCr"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "NwYNIOYDHD2wNBVOHxFlNgVOQtOI4Jp5"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 10883
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 10884
    .local p0, "childMatrix":Landroid/graphics/Matrix;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10885
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/El;->A0q:Landroid/graphics/RectF;

    .line 10886
    .local p1, "tempRectF":Landroid/graphics/RectF;
    invoke-virtual {v7, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 10887
    invoke-virtual {v1, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 10888
    iget v0, v7, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    .line 10889
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v5, v0

    iget v0, v7, Landroid/graphics/RectF;->top:F

    float-to-double v0, v0

    .line 10890
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v4, v0

    iget v0, v7, Landroid/graphics/RectF;->right:F

    float-to-double v1, v0

    sget-object v3, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v0, 0xf

    if-eq v3, v0, :cond_3

    .line 10891
    sget-object v6, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const-string v3, "AxZOVdXnwoPa2hByvRQIxFpOdsFmpigD"

    const/4 v0, 0x0

    aput-object v3, v6, v0

    const-string v3, "eNbgBcin3tlOsNhY3b3xdMmObUbY1NrP"

    const/4 v0, 0x7

    aput-object v3, v6, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v3, v0

    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    float-to-double v0, v0

    .line 10892
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    .line 10893
    invoke-virtual {p3, v5, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 10894
    .end local p0    # "childMatrix":Landroid/graphics/Matrix;
    .end local p1    # "tempRectF":Landroid/graphics/RectF;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 10895
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A1G(Lcom/facebook/ads/redexgen/X/3O;)V
    .locals 2

    .line 10896
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/El;->A0r:Lcom/facebook/ads/redexgen/X/4S;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-direct {p0, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A0M(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/3O;)V

    .line 10897
    return-void
.end method

.method public final A1H(Lcom/facebook/ads/redexgen/X/4S;)V
    .locals 6

    .line 10898
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4S;->A0F()I

    move-result v5

    .line 10899
    .local p0, "scrapCount":I
    add-int/lit8 v4, v5, -0x1

    .local p1, "i":I
    :goto_0
    if-ltz v4, :cond_3

    .line 10900
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/4S;->A0G(I)Landroid/view/View;

    move-result-object v3

    .line 10901
    .local v5, "scrap":Landroid/view/View;
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/El;->A0G(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v2

    .line 10902
    .local v4, "vh":Lcom/facebook/ads/redexgen/X/4c;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4c;->A0i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10903
    .end local v5    # "scrap":Landroid/view/View;
    .end local v4    # "vh":Lcom/facebook/ads/redexgen/X/4c;
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 10904
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/4c;->A0a(Z)V

    .line 10905
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4c;->A0f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10906
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/El;->removeDetachedView(Landroid/view/View;Z)V

    .line 10907
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A05:Lcom/facebook/ads/redexgen/X/4G;

    if-eqz v0, :cond_2

    .line 10908
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A05:Lcom/facebook/ads/redexgen/X/4G;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4G;->A0E(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 10909
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0a(Z)V

    .line 10910
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/4S;->A0W(Landroid/view/View;)V

    goto :goto_1

    .line 10911
    .end local p1    # "i":I
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4S;->A0M()V

    .line 10912
    if-lez v5, :cond_4

    .line 10913
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->invalidate()V

    .line 10914
    :cond_4
    return-void
.end method

.method public final A1I(Lcom/facebook/ads/redexgen/X/4S;)V
    .locals 2

    .line 10915
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    .line 10916
    .local p0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local p1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 10917
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v0

    .line 10918
    .local v0, "v":Landroid/view/View;
    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0K(Lcom/facebook/ads/redexgen/X/4S;ILandroid/view/View;)V

    .line 10919
    .end local v0    # "v":Landroid/view/View;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 10920
    .end local p1    # "i":I
    :cond_0
    return-void
.end method

.method public final A1J(Lcom/facebook/ads/redexgen/X/4S;)V
    .locals 2

    .line 10921
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .local p0, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 10922
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v0

    .line 10923
    .local p1, "view":Landroid/view/View;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/El;->A0G(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4c;->A0i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10924
    invoke-virtual {p0, v1, p1}, Lcom/facebook/ads/redexgen/X/4K;->A15(ILcom/facebook/ads/redexgen/X/4S;)V

    .line 10925
    .end local p1    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 10926
    .end local p0    # "i":I
    :cond_1
    return-void
.end method

.method public A1K(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;II)V
    .locals 1

    .line 10927
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0, p3, p4}, Lcom/facebook/ads/redexgen/X/El;->A1b(II)V

    .line 10928
    return-void
.end method

.method public A1L(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Landroid/view/View;Lcom/facebook/ads/redexgen/X/3O;)V
    .locals 7

    .line 10929
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A26()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v1

    .line 10930
    .local p2, "rowIndexGuess":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A25()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v3

    .line 10931
    .local p4, "columnIndexGuess":I
    :goto_1
    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 10932
    invoke-static/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/3M;->A00(IIIIZZ)Lcom/facebook/ads/redexgen/X/3M;

    move-result-object v0

    .line 10933
    .local p0, "itemInfo":Lcom/facebook/ads/redexgen/X/3M;
    invoke-virtual {p4, v0}, Lcom/facebook/ads/redexgen/X/3O;->A0R(Ljava/lang/Object;)V

    .line 10934
    return-void

    .line 10935
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 10936
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final A1M(Lcom/facebook/ads/redexgen/X/4X;)V
    .locals 2

    .line 10937
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A02:Lcom/facebook/ads/redexgen/X/4X;

    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_0

    .line 10938
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4X;->A0F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10939
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A02:Lcom/facebook/ads/redexgen/X/4X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4X;->A09()V

    .line 10940
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4K;->A02:Lcom/facebook/ads/redexgen/X/4X;

    .line 10941
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4K;->A02:Lcom/facebook/ads/redexgen/X/4X;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v1, v0, p0}, Lcom/facebook/ads/redexgen/X/4X;->A0D(Lcom/facebook/ads/redexgen/X/El;Lcom/facebook/ads/redexgen/X/4K;)V

    .line 10942
    return-void
.end method

.method public A1N(Lcom/facebook/ads/redexgen/X/El;)V
    .locals 0

    .line 10943
    return-void
.end method

.method public final A1O(Lcom/facebook/ads/redexgen/X/El;)V
    .locals 1

    .line 10944
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A07:Z

    .line 10945
    return-void
.end method

.method public final A1P(Lcom/facebook/ads/redexgen/X/El;)V
    .locals 3

    .line 10946
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/El;->getWidth()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 10947
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/El;->getHeight()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 10948
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A12(II)V

    .line 10949
    return-void
.end method

.method public final A1Q(Lcom/facebook/ads/redexgen/X/El;)V
    .locals 1

    .line 10950
    if-nez p1, :cond_0

    .line 10951
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    .line 10952
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A01:Lcom/facebook/ads/redexgen/X/3i;

    .line 10953
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0C:I

    .line 10954
    iput v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0A:I

    .line 10955
    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0D:I

    .line 10956
    iput v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0B:I

    .line 10957
    return-void

    .line 10958
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    .line 10959
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/El;->A01:Lcom/facebook/ads/redexgen/X/3i;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A01:Lcom/facebook/ads/redexgen/X/3i;

    .line 10960
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/El;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0C:I

    .line 10961
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/El;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0A:I

    goto :goto_0
.end method

.method public A1R(Lcom/facebook/ads/redexgen/X/El;II)V
    .locals 0

    .line 10962
    return-void
.end method

.method public A1S(Lcom/facebook/ads/redexgen/X/El;II)V
    .locals 0

    .line 10963
    return-void
.end method

.method public A1T(Lcom/facebook/ads/redexgen/X/El;III)V
    .locals 0

    .line 10964
    return-void
.end method

.method public A1U(Lcom/facebook/ads/redexgen/X/El;IILjava/lang/Object;)V
    .locals 0

    .line 10965
    return-void
.end method

.method public final A1V(Lcom/facebook/ads/redexgen/X/El;Lcom/facebook/ads/redexgen/X/4S;)V
    .locals 1

    .line 10966
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A07:Z

    .line 10967
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4K;->A21(Lcom/facebook/ads/redexgen/X/El;Lcom/facebook/ads/redexgen/X/4S;)V

    .line 10968
    return-void
.end method

.method public final A1W(Z)V
    .locals 0

    .line 10969
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/4K;->A06:Z

    .line 10970
    return-void
.end method

.method public final A1X()Z
    .locals 4

    .line 10971
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v3

    .line 10972
    .local p0, "childCount":I
    const/4 v2, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 10973
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v0

    .line 10974
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 10975
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v0, :cond_0

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v0, :cond_0

    .line 10976
    const/4 v0, 0x1

    return v0

    .line 10977
    .end local v2    # "child":Landroid/view/View;
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10978
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x76

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const-string v1, "WAOKNqtGQ8ovYE750tJA7vys4k4qcWl2"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A1Y()Z
    .locals 1

    .line 10979
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/El;->A0B:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A1Z()Z
    .locals 1

    .line 10980
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0E:Z

    return v0
.end method

.method public final A1a(ILandroid/os/Bundle;)Z
    .locals 2

    .line 10981
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/El;->A0r:Lcom/facebook/ads/redexgen/X/4S;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/4K;->A0R(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public final A1b(Landroid/view/View;IILcom/facebook/ads/redexgen/X/4L;)Z
    .locals 4

    .line 10982
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/4K;->A0F:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const-string v1, "WuiXnf3Uz62WBJXd3E4QIRzbwyGUV3fL"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 10983
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v0, p4, Lcom/facebook/ads/redexgen/X/4L;->width:I

    invoke-static {v1, p2, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0P(III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10984
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v0, p4, Lcom/facebook/ads/redexgen/X/4L;->height:I

    invoke-static {v1, p3, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0P(III)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 10985
    :goto_0
    return v0

    .line 10986
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A1c(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6

    .line 10987
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/El;->A0r:Lcom/facebook/ads/redexgen/X/4S;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/El;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    move-object v0, p0

    move-object v5, p3

    move v4, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/4K;->A0S(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public A1d(Lcom/facebook/ads/redexgen/X/4L;)Z
    .locals 1

    .line 10988
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A1e(Lcom/facebook/ads/redexgen/X/El;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6

    .line 10989
    const/4 v5, 0x0

    move-object v0, p0

    move v4, p4

    move-object v3, p3

    move-object v2, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/4K;->A1f(Lcom/facebook/ads/redexgen/X/El;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    move-result v0

    return v0
.end method

.method public final A1f(Lcom/facebook/ads/redexgen/X/El;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 5

    .line 10990
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/4K;->A0V(Lcom/facebook/ads/redexgen/X/El;Landroid/view/View;Landroid/graphics/Rect;Z)[I

    move-result-object v0

    .line 10991
    .local p0, "scrollAmount":[I
    const/4 v4, 0x0

    aget v3, v0, v4

    .line 10992
    .local p2, "dx":I
    const/4 v2, 0x1

    aget v1, v0, v2

    .line 10993
    .local p4, "dy":I
    if-eqz p5, :cond_0

    invoke-direct {p0, p1, v3, v1}, Lcom/facebook/ads/redexgen/X/4K;->A0T(Lcom/facebook/ads/redexgen/X/El;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10994
    :cond_0
    if-nez v3, :cond_1

    if-eqz v1, :cond_3

    .line 10995
    :cond_1
    if-eqz p4, :cond_2

    .line 10996
    invoke-virtual {p1, v3, v1}, Lcom/facebook/ads/redexgen/X/El;->scrollBy(II)V

    .line 10997
    :goto_0
    return v2

    .line 10998
    :cond_2
    invoke-virtual {p1, v3, v1}, Lcom/facebook/ads/redexgen/X/El;->A1f(II)V

    goto :goto_0

    .line 10999
    :cond_3
    return v4
.end method

.method public final A1g(Lcom/facebook/ads/redexgen/X/El;Lcom/facebook/ads/redexgen/X/4Z;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 11000
    invoke-direct {p0, p1, p3, p4}, Lcom/facebook/ads/redexgen/X/4K;->A0U(Lcom/facebook/ads/redexgen/X/El;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public final A1h(Lcom/facebook/ads/redexgen/X/El;Ljava/util/ArrayList;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/El;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    .line 11001
    .local p3, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public A1i(ILcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 1

    .line 11002
    const/4 v0, 0x0

    return v0
.end method

.method public A1j(ILcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 1

    .line 11003
    const/4 v0, 0x0

    return v0
.end method

.method public A1k(Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 1

    .line 11004
    const/4 v0, 0x0

    return v0
.end method

.method public A1l(Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 1

    .line 11005
    const/4 v0, 0x0

    return v0
.end method

.method public A1m(Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 1

    .line 11006
    const/4 v0, 0x0

    return v0
.end method

.method public A1n(Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 1

    .line 11007
    const/4 v0, 0x0

    return v0
.end method

.method public A1o(Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 1

    .line 11008
    const/4 v0, 0x0

    return v0
.end method

.method public A1p(Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 1

    .line 11009
    const/4 v0, 0x0

    return v0
.end method

.method public A1q()Landroid/os/Parcelable;
    .locals 1

    .line 11010
    const/4 v0, 0x0

    return-object v0
.end method

.method public A1r(I)Landroid/view/View;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 11011
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v4

    .line 11012
    .local p0, "childCount":I
    const/4 v3, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 11013
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v2

    .line 11014
    .local v4, "child":Landroid/view/View;
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/El;->A0G(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v1

    .line 11015
    .local v3, "vh":Lcom/facebook/ads/redexgen/X/4c;
    if-nez v1, :cond_1

    .line 11016
    .end local v4    # "child":Landroid/view/View;
    .end local v3    # "vh":Lcom/facebook/ads/redexgen/X/4c;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11017
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0J()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    .line 11018
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A07()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11019
    :cond_2
    return-object v2

    .line 11020
    .end local p1    # "i":I
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public A1s(Landroid/view/View;ILcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 11021
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract A1t()Lcom/facebook/ads/redexgen/X/4L;
.end method

.method public A1u(I)V
    .locals 0

    .line 11022
    return-void
.end method

.method public A1v(IILcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/4I;)V
    .locals 0

    .line 11023
    return-void
.end method

.method public A1w(ILcom/facebook/ads/redexgen/X/4I;)V
    .locals 0

    .line 11024
    return-void
.end method

.method public A1x(Landroid/os/Parcelable;)V
    .locals 0

    .line 11025
    return-void
.end method

.method public A1y(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 11026
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/El;->A0r:Lcom/facebook/ads/redexgen/X/4S;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-direct {p0, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A0L(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 11027
    return-void
.end method

.method public A1z(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)V
    .locals 4

    .line 11028
    const/16 v2, 0x81

    const/16 v1, 0xc

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A07(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x8d

    const/16 v1, 0x43

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11029
    return-void
.end method

.method public A20(Lcom/facebook/ads/redexgen/X/4Z;)V
    .locals 0

    .line 11030
    return-void
.end method

.method public A21(Lcom/facebook/ads/redexgen/X/El;Lcom/facebook/ads/redexgen/X/4S;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 11031
    return-void
.end method

.method public A22(Lcom/facebook/ads/redexgen/X/El;Lcom/facebook/ads/redexgen/X/4Z;I)V
    .locals 4

    .line 11032
    const/16 v2, 0x81

    const/16 v1, 0xc

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A07(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xd0

    const/16 v1, 0x44

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11033
    return-void
.end method

.method public A23(Ljava/lang/String;)V
    .locals 1

    .line 11034
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/El;

    if-eqz v0, :cond_0

    .line 11035
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/El;->A1q(Ljava/lang/String;)V

    .line 11036
    :cond_0
    return-void
.end method

.method public A24()Z
    .locals 1

    .line 11037
    const/4 v0, 0x0

    return v0
.end method

.method public A25()Z
    .locals 1

    .line 11038
    const/4 v0, 0x0

    return v0
.end method

.method public A26()Z
    .locals 1

    .line 11039
    const/4 v0, 0x0

    return v0
.end method

.method public A27()Z
    .locals 1

    .line 11040
    const/4 v0, 0x0

    return v0
.end method
