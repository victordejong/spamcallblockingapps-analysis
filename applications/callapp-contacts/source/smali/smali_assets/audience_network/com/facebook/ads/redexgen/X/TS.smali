.class public abstract Lcom/facebook/ads/redexgen/X/TS;
.super Lcom/facebook/ads/redexgen/X/4N;
.source ""


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Eq;

.field public A01:Landroid/widget/Scroller;

.field public final A02:Lcom/facebook/ads/redexgen/X/4P;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/TS;->A0B()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/TS;->A0A()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54818
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4N;-><init>()V

    .line 54819
    new-instance v0, Lcom/facebook/ads/redexgen/X/TR;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/TR;-><init>(Lcom/facebook/ads/redexgen/X/TS;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TS;->A02:Lcom/facebook/ads/redexgen/X/4P;

    return-void
.end method

.method private final A06(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/4X;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 54820
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/TS;->A0G(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/TC;

    move-result-object v0

    return-object v0
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/TS;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x35

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

    .line 54821
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TS;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TS;->A02:Lcom/facebook/ads/redexgen/X/4P;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Eq;->A1l(Lcom/facebook/ads/redexgen/X/4P;)V

    .line 54822
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TS;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Eq;->setOnFlingListener(Lcom/facebook/ads/redexgen/X/4N;)V

    .line 54823
    return-void
.end method

.method private A09()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 54824
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TS;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->getOnFlingListener()Lcom/facebook/ads/redexgen/X/4N;

    move-result-object v0

    if-nez v0, :cond_0

    .line 54825
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TS;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TS;->A02:Lcom/facebook/ads/redexgen/X/4P;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Eq;->A1k(Lcom/facebook/ads/redexgen/X/4P;)V

    .line 54826
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TS;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Eq;->setOnFlingListener(Lcom/facebook/ads/redexgen/X/4N;)V

    .line 54827
    return-void

    .line 54828
    :cond_0
    const/4 v2, 0x0

    const/16 v1, 0x2b

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TS;->A07(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A0A()V
    .locals 4

    const/16 v0, 0x2b

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v1, Lcom/facebook/ads/redexgen/X/TS;->A04:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/TS;->A04:[Ljava/lang/String;

    const-string v1, "Gfsvb5V6ZkZ1EjPhJmDEOg0wCX37AMGK"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "BogmwpJuEiSgKohE6B9VLJKkNQC2pxlX"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/TS;->A03:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x23t
        0xat
        -0x44t
        0x5t
        0xat
        0xft
        0x10t
        -0x3t
        0xat
        -0x1t
        0x1t
        -0x44t
        0xbt
        0x2t
        -0x44t
        -0x15t
        0xat
        -0x1et
        0x8t
        0x5t
        0xat
        0x3t
        -0x18t
        0x5t
        0xft
        0x10t
        0x1t
        0xat
        0x1t
        0xet
        -0x44t
        -0x3t
        0x8t
        0xet
        0x1t
        -0x3t
        0x0t
        0x15t
        -0x44t
        0xft
        0x1t
        0x10t
        -0x36t
    .end array-data
.end method

.method public static A0B()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "WP5CpU5dCfM1vj2iCgRczyLeS833jqA7"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "f0t6mABNpir4NiI1IJBR"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "VMSqLwjWc3fXvu7D9B7JwatTJSWiKmSt"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "2kGOlvpEajHcc9JJ5BV7kSrV8Uhb9VDh"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "BGGgbgkg4NpzKA2XjpG6Q8iHB2GG9zH0"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ziOTckvigWpUqNYWulExTvMWDfbzI1Sq"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "WkLWBkQ13lLgYVln8HDaQ7gYbGPRUWfj"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "hZJ2tRP2pGaevCKAXmW2Fr9GhnOGACBf"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/TS;->A04:[Ljava/lang/String;

    return-void
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/4K;II)Z
    .locals 7
    .param p1    # Lcom/facebook/ads/redexgen/X/4K;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 54829
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/4W;

    const/4 v6, 0x0

    if-nez v0, :cond_0

    .line 54830
    return v6

    .line 54831
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/TS;->A06(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/4X;

    move-result-object v3

    .line 54832
    .local p0, "smoothScroller":Lcom/facebook/ads/redexgen/X/4X;
    if-nez v3, :cond_1

    .line 54833
    return v6

    .line 54834
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/TS;->A0E(Lcom/facebook/ads/redexgen/X/4K;II)I

    move-result v5

    .line 54835
    .local p2, "targetPosition":I
    const/4 v4, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/TS;->A04:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/TS;->A04:[Ljava/lang/String;

    const-string v1, "3QNQgzU1MIdfo8xP0zEWa1SfaSPVi8u7"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "BhxrOivCOMjMD1hwED78TbVHZR3oyoMb"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ne v5, v4, :cond_2

    .line 54836
    return v6

    .line 54837
    :cond_2
    invoke-virtual {v3, v5}, Lcom/facebook/ads/redexgen/X/4X;->A0B(I)V

    .line 54838
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/4K;->A1M(Lcom/facebook/ads/redexgen/X/4X;)V

    .line 54839
    const/4 v0, 0x1

    return v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A0D(II)Z
    .locals 4

    .line 54840
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TS;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->getLayoutManager()Lcom/facebook/ads/redexgen/X/4K;

    move-result-object v3

    .line 54841
    .local p0, "layoutManager":Lcom/facebook/ads/redexgen/X/4K;
    const/4 v2, 0x0

    if-nez v3, :cond_0

    .line 54842
    return v2

    .line 54843
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TS;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->getAdapter()Lcom/facebook/ads/redexgen/X/48;

    move-result-object v0

    .line 54844
    .local p2, "adapter":Lcom/facebook/ads/redexgen/X/48;
    if-nez v0, :cond_1

    .line 54845
    return v2

    .line 54846
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TS;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->getMinFlingVelocity()I

    move-result v1

    .line 54847
    .local v0, "minFlingVelocity":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v1, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v1, :cond_3

    .line 54848
    :cond_2
    invoke-direct {p0, v3, p1, p2}, Lcom/facebook/ads/redexgen/X/TS;->A0C(Lcom/facebook/ads/redexgen/X/4K;II)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    .line 54849
    :cond_3
    return v2
.end method

.method public abstract A0E(Lcom/facebook/ads/redexgen/X/4K;II)I
.end method

.method public abstract A0F(Lcom/facebook/ads/redexgen/X/4K;)Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public A0G(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/TC;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 54850
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/4W;

    if-nez v0, :cond_0

    .line 54851
    const/4 v0, 0x0

    return-object v0

    .line 54852
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TS;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ep;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Ep;-><init>(Lcom/facebook/ads/redexgen/X/TS;Landroid/content/Context;)V

    return-object v0
.end method

.method public final A0H()V
    .locals 5

    .line 54853
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TS;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    if-nez v0, :cond_0

    .line 54854
    return-void

    .line 54855
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->getLayoutManager()Lcom/facebook/ads/redexgen/X/4K;

    move-result-object v1

    .line 54856
    .local p0, "layoutManager":Lcom/facebook/ads/redexgen/X/4K;
    if-nez v1, :cond_1

    .line 54857
    return-void

    .line 54858
    :cond_1
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/TS;->A0F(Lcom/facebook/ads/redexgen/X/4K;)Landroid/view/View;

    move-result-object v0

    .line 54859
    .local v0, "snapView":Landroid/view/View;
    if-nez v0, :cond_2

    .line 54860
    return-void

    .line 54861
    :cond_2
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/TS;->A0J(Lcom/facebook/ads/redexgen/X/4K;Landroid/view/View;)[I

    move-result-object v4

    .line 54862
    .local v1, "snapDistance":[I
    const/4 v1, 0x0

    aget v0, v4, v1

    const/4 v3, 0x1

    if-nez v0, :cond_3

    aget v0, v4, v3

    if-eqz v0, :cond_4

    .line 54863
    :cond_3
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/TS;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    aget v1, v4, v1

    aget v0, v4, v3

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Eq;->A1f(II)V

    .line 54864
    :cond_4
    return-void
.end method

.method public final A0I(Lcom/facebook/ads/redexgen/X/Eq;)V
    .locals 3
    .param p1    # Lcom/facebook/ads/redexgen/X/Eq;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 54865
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TS;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    if-ne v0, p1, :cond_0

    .line 54866
    return-void

    .line 54867
    :cond_0
    if-eqz v0, :cond_1

    .line 54868
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TS;->A08()V

    .line 54869
    :cond_1
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TS;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    .line 54870
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TS;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    if-eqz v0, :cond_2

    .line 54871
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TS;->A09()V

    .line 54872
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TS;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, v2, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TS;->A01:Landroid/widget/Scroller;

    .line 54873
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TS;->A0H()V

    .line 54874
    :cond_2
    return-void
.end method

.method public abstract A0J(Lcom/facebook/ads/redexgen/X/4K;Landroid/view/View;)[I
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
