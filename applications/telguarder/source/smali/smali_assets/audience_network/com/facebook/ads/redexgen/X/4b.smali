.class public final Lcom/facebook/ads/redexgen/X/4b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/El;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewFlinger"
.end annotation


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/view/animation/Interpolator;

.field public A01:Landroid/widget/OverScroller;

.field public A02:I

.field public A03:I

.field public A04:Z

.field public A05:Z

.field public final synthetic A06:Lcom/facebook/ads/redexgen/X/El;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4b;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4b;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/El;)V
    .locals 3

    .line 11740
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11741
    sget-object v0, Lcom/facebook/ads/redexgen/X/El;->A1A:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A00:Landroid/view/animation/Interpolator;

    .line 11742
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A04:Z

    .line 11743
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A05:Z

    .line 11744
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/El;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/El;->A1A:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, v2, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A01:Landroid/widget/OverScroller;

    .line 11745
    return-void
.end method

.method private A00(F)F
    .locals 3

    .line 11746
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 11747
    const v0, 0x3ef1463b

    mul-float/2addr p1, v0

    .line 11748
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v0, v1

    return v0
.end method

.method private A01(IIII)I
    .locals 10

    .line 11749
    move-object v7, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 11750
    .local p1, "absDx":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 11751
    .local p2, "absDy":I
    if-le v5, v4, :cond_3

    const/4 v9, 0x1

    .line 11752
    .local p3, "horizontal":Z
    :goto_0
    mul-int/2addr p3, p3

    mul-int/2addr p4, p4

    add-int/2addr p3, p4

    int-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v6, v0

    .line 11753
    .local p4, "velocity":I
    mul-int/2addr p1, p1

    mul-int/2addr p2, p2

    add-int/2addr p1, p2

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 11754
    .local v7, "delta":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    if-eqz v9, :cond_2

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->getWidth()I

    move-result v8

    .line 11755
    .local v5, "containerSize":I
    :goto_1
    div-int/lit8 v7, v8, 0x2

    .line 11756
    .local v4, "halfContainerSize":I
    int-to-float v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v1, v3

    int-to-float v0, v8

    div-float/2addr v1, v0

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 11757
    .local v9, "distanceRatio":F
    int-to-float v2, v7

    int-to-float v1, v7

    .line 11758
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/4b;->A00(F)F

    move-result v0

    mul-float/2addr v1, v0

    add-float/2addr v2, v1

    .line 11759
    .local p4, "distance":F
    if-lez v6, :cond_0

    .line 11760
    const/high16 v1, 0x447a0000    # 1000.0f

    int-to-float v0, v6

    div-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v1, v0, 0x4

    .line 11761
    .local p3, "duration":I
    .end local p3    # "duration":I
    .restart local p3    # "duration":I
    :goto_2
    const/16 v0, 0x7d0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 11762
    .end local p3    # "duration":I
    :cond_0
    if-eqz v9, :cond_1

    :goto_3
    int-to-float v1, v5

    .line 11763
    .local p3, "absDelta":F
    int-to-float v0, v8

    div-float/2addr v1, v0

    add-float/2addr v1, v3

    const/high16 v0, 0x43960000    # 300.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    goto :goto_2

    .line 11764
    :cond_1
    move v5, v4

    goto :goto_3

    .line 11765
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->getHeight()I

    move-result v8

    goto :goto_1

    .line 11766
    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    const-string v1, "0orcdyFTKXkoGK9yWPRw9CMcRo5SNB9j"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "sq5WBRFpbSiYOu42pzh1wsqhDGiHcevd"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/4b;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v3, p0, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    const-string v1, "lXzWc938MQZaj6BgS1Y9BEfSDAuAR6qF"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "B8zmNNge3ag7Hwi7A1PWi4fqxiL6HNqU"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    sub-int/2addr v3, p2

    add-int/lit8 v0, v3, -0x7b

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 4

    const/16 v0, 0x9

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    const-string v1, "TeOjcoFpg61NRcWtZ7RqEgvJb0vCzhPX"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "wzSzDJFWC0w6xe3VuPJPH24U0YXOvF2u"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/4b;->A07:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x40t
        0x44t
        0xet
        0x41t
        0x51t
        0x60t
        0x5dt
        0x5at
        0x5at
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "YAUr0vF6CX8YQIb3U2BTwiKsPx4egdml"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "mCzYZBoaiKXOzjUHkKBQEDESozpM1xd6"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "icS38dGHdjVFjizVfUSTymHnsbTrfSoO"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "cz24QPO5JMZmQB4F0QhCndjSq8meDVtx"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "FtYcbE5Uq8HUJyIzKb3J4QjvmALEd3tS"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "OczTw8YbFDCs0vVm57WwAmFlfg0gTpir"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "toWNn3QT1tQgvY3MKWHjSENw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "YozzgSFsuZbL3IkC1bDOEp8MFgumFV8x"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    return-void
.end method

.method private final A05()V
    .locals 1

    .line 11767
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A05:Z

    .line 11768
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A04:Z

    .line 11769
    return-void
.end method

.method private final A06()V
    .locals 1

    .line 11770
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A04:Z

    .line 11771
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A05:Z

    if-eqz v0, :cond_0

    .line 11772
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4b;->A08()V

    .line 11773
    :cond_0
    return-void
.end method

.method private final A07(IIII)V
    .locals 1

    .line 11774
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/4b;->A01(IIII)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/4b;->A0C(III)V

    .line 11775
    return-void
.end method


# virtual methods
.method public final A08()V
    .locals 1

    .line 11776
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A04:Z

    if-eqz v0, :cond_0

    .line 11777
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A05:Z

    .line 11778
    :goto_0
    return-void

    .line 11779
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/El;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11780
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/2z;->A0C(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final A09()V
    .locals 1

    .line 11781
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/El;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11782
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A01:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 11783
    return-void
.end method

.method public final A0A(II)V
    .locals 9

    .line 11784
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/El;->setScrollState(I)V

    .line 11785
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A03:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A02:I

    .line 11786
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A01:Landroid/widget/OverScroller;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    move v4, p2

    move v3, p1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 11787
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4b;->A08()V

    .line 11788
    return-void
.end method

.method public final A0B(II)V
    .locals 1

    .line 11789
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/facebook/ads/redexgen/X/4b;->A07(IIII)V

    .line 11790
    return-void
.end method

.method public final A0C(III)V
    .locals 1

    .line 11791
    sget-object v0, Lcom/facebook/ads/redexgen/X/El;->A1A:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/4b;->A0D(IIILandroid/view/animation/Interpolator;)V

    .line 11792
    return-void
.end method

.method public final A0D(IIILandroid/view/animation/Interpolator;)V
    .locals 6

    .line 11793
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A00:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_0

    .line 11794
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/4b;->A00:Landroid/view/animation/Interpolator;

    .line 11795
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, v1, p4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A01:Landroid/widget/OverScroller;

    .line 11796
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/El;->setScrollState(I)V

    .line 11797
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A03:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A02:I

    .line 11798
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A01:Landroid/widget/OverScroller;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v5, p3

    move v4, p2

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 11799
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge v1, v0, :cond_2

    .line 11800
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4b;->A01:Landroid/widget/OverScroller;

    sget-object v1, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    const-string v1, "88zIldbbkktihn9hTQ4sgRWvKPoy0Har"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "wazVAycqzf9kUc8ZZnvbPZ6jaLgaodB2"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v3}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 11801
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4b;->A08()V

    .line 11802
    return-void
.end method

.method public final A0E(IILandroid/view/animation/Interpolator;)V
    .locals 3

    .line 11803
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/facebook/ads/redexgen/X/4b;->A01(IIII)I

    move-result v0

    .line 11804
    if-nez p3, :cond_0

    sget-object p3, Lcom/facebook/ads/redexgen/X/El;->A1A:Landroid/view/animation/Interpolator;

    .line 11805
    :cond_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/facebook/ads/redexgen/X/4b;->A0D(IIILandroid/view/animation/Interpolator;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_1

    .line 11806
    sget-object v2, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    const-string v1, "4ylqCkbib8Hqjgb9G4JU7JWl2ANwoVnp"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    .line 11807
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final run()V
    .locals 22

    .line 11808
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A06:Lcom/facebook/ads/redexgen/X/4K;

    if-nez v0, :cond_0

    .line 11809
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/4b;->A09()V

    .line 11810
    return-void

    .line 11811
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/4b;->A05()V

    .line 11812
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->A1K()V

    .line 11813
    iget-object v8, v7, Lcom/facebook/ads/redexgen/X/4b;->A01:Landroid/widget/OverScroller;

    .line 11814
    .local v7, "scroller":Landroid/widget/OverScroller;
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A06:Lcom/facebook/ads/redexgen/X/4K;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/4K;->A02:Lcom/facebook/ads/redexgen/X/4X;

    .line 11815
    .local v0, "smoothScroller":Lcom/facebook/ads/redexgen/X/4X;
    invoke-virtual {v8}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_1b

    .line 11816
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/El;->A1C(Lcom/facebook/ads/redexgen/X/El;)[I

    move-result-object v19

    .line 11817
    .local v0, "scrollConsumed":[I
    invoke-virtual {v8}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v5

    .line 11818
    .local v0, "x":I
    invoke-virtual {v8}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v4

    .line 11819
    .local v19, "y":I
    iget v0, v7, Lcom/facebook/ads/redexgen/X/4b;->A02:I

    sub-int v3, v5, v0

    .line 11820
    .local v5, "dx":I
    iget v0, v7, Lcom/facebook/ads/redexgen/X/4b;->A03:I

    sub-int v2, v4, v0

    .line 11821
    .local v4, "dy":I
    const/4 v14, 0x0

    .line 11822
    .local v0, "hresult":I
    const/4 v15, 0x0

    .line 11823
    .local v3, "vresult":I
    iput v5, v7, Lcom/facebook/ads/redexgen/X/4b;->A02:I

    .line 11824
    iput v4, v7, Lcom/facebook/ads/redexgen/X/4b;->A03:I

    .line 11825
    const/4 v1, 0x0

    .local v0, "overscrollX":I
    const/4 v0, 0x0

    .line 11826
    .local v2, "overscrollY":I
    iget-object v10, v7, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v16, v10

    move/from16 v17, v3

    move/from16 v18, v2

    invoke-virtual/range {v16 .. v21}, Lcom/facebook/ads/redexgen/X/El;->A1z(II[I[II)Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_1

    .line 11827
    aget v10, v19, v9

    sub-int/2addr v3, v10

    .line 11828
    aget v10, v19, v11

    sub-int/2addr v2, v10

    .line 11829
    :cond_1
    iget-object v10, v7, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    iget-object v10, v10, Lcom/facebook/ads/redexgen/X/El;->A04:Lcom/facebook/ads/redexgen/X/48;

    if-eqz v10, :cond_5

    .line 11830
    iget-object v10, v7, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/El;->A1L()V

    .line 11831
    iget-object v10, v7, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/El;->A1M()V

    .line 11832
    const/4 v12, 0x0

    const/16 v11, 0x9

    const/16 v10, 0x73

    invoke-static {v12, v11, v10}, Lcom/facebook/ads/redexgen/X/4b;->A02(III)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/facebook/ads/redexgen/X/2M;->A01(Ljava/lang/String;)V

    .line 11833
    iget-object v11, v7, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    iget-object v10, v11, Lcom/facebook/ads/redexgen/X/El;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v11, v10}, Lcom/facebook/ads/redexgen/X/El;->A1m(Lcom/facebook/ads/redexgen/X/4Z;)V

    sget-object v12, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    const/4 v10, 0x7

    aget-object v11, v12, v10

    const/4 v10, 0x0

    aget-object v12, v12, v10

    const/4 v10, 0x6

    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v11, v10, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 11834
    :cond_2
    sget-object v12, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    const-string v11, "nozOsXlmQMzJhvkopjwZaheFFVNTeY58"

    const/4 v10, 0x1

    aput-object v11, v12, v10

    const-string v11, "LtzfvJebeScyRtmgs1USyUey2pVvSmq5"

    const/4 v10, 0x5

    aput-object v11, v12, v10

    if-eqz v3, :cond_3

    .line 11835
    iget-object v1, v7, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    iget-object v12, v1, Lcom/facebook/ads/redexgen/X/El;->A06:Lcom/facebook/ads/redexgen/X/4K;

    iget-object v1, v7, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    iget-object v11, v1, Lcom/facebook/ads/redexgen/X/El;->A0r:Lcom/facebook/ads/redexgen/X/4S;

    iget-object v14, v7, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    sget-object v10, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v10, v10, v1

    const/16 v1, 0x13

    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v1, 0x39

    if-eq v10, v1, :cond_b

    sget-object v13, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    const-string v10, "aF9lT9JucYAVgVWisB0rNkK4be7J2iGb"

    const/4 v1, 0x4

    aput-object v10, v13, v1

    iget-object v1, v14, Lcom/facebook/ads/redexgen/X/El;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v12, v3, v11, v1}, Lcom/facebook/ads/redexgen/X/4K;->A1i(ILcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)I

    move-result v14

    .line 11836
    sub-int v1, v3, v14

    .line 11837
    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    .line 11838
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/El;->A06:Lcom/facebook/ads/redexgen/X/4K;

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    iget-object v10, v0, Lcom/facebook/ads/redexgen/X/El;->A0r:Lcom/facebook/ads/redexgen/X/4S;

    sget-object v12, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v12, v12, v0

    const/16 v0, 0x13

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v0, 0x39

    if-eq v12, v0, :cond_a

    sget-object v13, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    const-string v12, "UcFH7yF8zZNprQitZtXhkmlCMHIdnioP"

    const/4 v0, 0x7

    aput-object v12, v13, v0

    const-string v12, "hCBROqFKcvdbLIHuO2wEis8Nwj1iktft"

    const/4 v0, 0x0

    aput-object v12, v13, v0

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v11, v2, v10, v0}, Lcom/facebook/ads/redexgen/X/4K;->A1j(ILcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)I

    move-result v15

    .line 11839
    sub-int v0, v2, v15

    .line 11840
    :cond_4
    :goto_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/2M;->A00()V

    .line 11841
    iget-object v10, v7, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/El;->A1Q()V

    .line 11842
    iget-object v10, v7, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/El;->A1N()V

    .line 11843
    iget-object v10, v7, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v10, v9}, Lcom/facebook/ads/redexgen/X/El;->A1s(Z)V

    .line 11844
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4X;->A0E()Z

    move-result v9

    if-nez v9, :cond_5

    .line 11845
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4X;->A0F()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 11846
    iget-object v9, v7, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    iget-object v9, v9, Lcom/facebook/ads/redexgen/X/El;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/4Z;->A03()I

    move-result v10

    .line 11847
    .local v8, "adapterSize":I
    if-nez v10, :cond_7

    .line 11848
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4X;->A09()V

    .line 11849
    .end local v3    # "vresult":I
    .end local v0    # "overscrollX":I
    .end local v2    # "overscrollY":I
    .local v8, "vresult":I
    .local v0, "overscrollX":I
    .local v6, "overscrollY":I
    :cond_5
    :goto_2
    iget-object v9, v7, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    iget-object v9, v9, Lcom/facebook/ads/redexgen/X/El;->A0v:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    .line 11850
    iget-object v9, v7, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/El;->invalidate()V

    .line 11851
    :cond_6
    iget-object v9, v7, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/El;->getOverScrollMode()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_d

    .line 11852
    iget-object v13, v7, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    sget-object v12, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    const/4 v9, 0x7

    aget-object v11, v12, v9

    const/4 v9, 0x0

    aget-object v12, v12, v9

    const/4 v9, 0x6

    invoke-virtual {v11, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v12, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v11, v9, :cond_c

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 11853
    :cond_7
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4X;->A07()I

    move-result v9

    if-lt v9, v10, :cond_8

    .line 11854
    add-int/lit8 v9, v10, -0x1

    invoke-virtual {v6, v9}, Lcom/facebook/ads/redexgen/X/4X;->A0A(I)V

    .line 11855
    sub-int v10, v3, v1

    sub-int v9, v2, v0

    invoke-static {v6, v10, v9}, Lcom/facebook/ads/redexgen/X/4X;->A05(Lcom/facebook/ads/redexgen/X/4X;II)V

    goto :goto_2

    .line 11856
    :cond_8
    sub-int v11, v3, v1

    sget-object v10, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    const/4 v9, 0x4

    aget-object v10, v10, v9

    const/16 v9, 0x13

    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v9, 0x39

    if-eq v10, v9, :cond_9

    sget-object v12, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    const-string v10, "2vzJUgZGYJyf60lr7OoRSSfYHAbPRQwN"

    const/4 v9, 0x1

    aput-object v10, v12, v9

    const-string v10, "FZzkKBCO3vggmWhfitA4hZZwekV7eOzC"

    const/4 v9, 0x5

    aput-object v10, v12, v9

    sub-int v9, v2, v0

    invoke-static {v6, v11, v9}, Lcom/facebook/ads/redexgen/X/4X;->A05(Lcom/facebook/ads/redexgen/X/4X;II)V

    goto :goto_2

    :cond_9
    sub-int v9, v2, v0

    invoke-static {v6, v11, v9}, Lcom/facebook/ads/redexgen/X/4X;->A05(Lcom/facebook/ads/redexgen/X/4X;II)V

    goto :goto_2

    :cond_a
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v11, v2, v10, v0}, Lcom/facebook/ads/redexgen/X/4K;->A1j(ILcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)I

    move-result v15

    .line 11857
    sub-int v0, v2, v15

    goto/16 :goto_1

    :cond_b
    iget-object v1, v14, Lcom/facebook/ads/redexgen/X/El;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v12, v3, v11, v1}, Lcom/facebook/ads/redexgen/X/4K;->A1i(ILcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)I

    move-result v14

    .line 11858
    sub-int v1, v3, v14

    goto/16 :goto_0

    :cond_c
    sget-object v12, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    const-string v11, "k"

    const/4 v9, 0x6

    aput-object v11, v12, v9

    invoke-virtual {v13, v3, v2}, Lcom/facebook/ads/redexgen/X/El;->A1a(II)V

    .line 11859
    :cond_d
    iget-object v13, v7, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v17, v0

    move/from16 v16, v1

    invoke-virtual/range {v13 .. v19}, Lcom/facebook/ads/redexgen/X/El;->A1y(IIII[II)Z

    move-result v9

    if-nez v9, :cond_13

    if-nez v1, :cond_e

    if-eqz v0, :cond_13

    .line 11860
    :cond_e
    invoke-virtual {v8}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v9

    float-to-int v11, v9

    .line 11861
    .local v0, "vel":I
    const/4 v12, 0x0

    .line 11862
    .local v3, "velX":I
    if-eq v1, v5, :cond_f

    .line 11863
    if-gez v1, :cond_26

    neg-int v12, v11

    .line 11864
    .end local v3    # "velX":I
    .local v0, "velX":I
    :cond_f
    :goto_3
    const/4 v9, 0x0

    .line 11865
    .local v3, "velY":I
    if-eq v0, v4, :cond_25

    .line 11866
    if-gez v0, :cond_23

    neg-int v11, v11

    .line 11867
    .end local v3    # "velY":I
    .local v0, "velY":I
    .end local v0    # "velY":I
    .local v3, "scrollConsumed":[I
    :goto_4
    iget-object v9, v7, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/El;->getOverScrollMode()I

    move-result v9

    if-eq v9, v10, :cond_10

    .line 11868
    iget-object v9, v7, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v9, v12, v11}, Lcom/facebook/ads/redexgen/X/El;->A1Z(II)V

    .line 11869
    :cond_10
    if-nez v12, :cond_11

    if-eq v1, v5, :cond_11

    invoke-virtual {v8}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v1

    if-nez v1, :cond_13

    :cond_11
    if-nez v11, :cond_12

    if-eq v0, v4, :cond_12

    .line 11870
    invoke-virtual {v8}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    if-nez v0, :cond_13

    .line 11871
    :cond_12
    invoke-virtual {v8}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 11872
    .end local v0
    .restart local v3    # "scrollConsumed":[I
    :cond_13
    if-nez v14, :cond_14

    if-eqz v15, :cond_15

    .line 11873
    :cond_14
    iget-object v5, v7, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    sget-object v1, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_22

    sget-object v4, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    const-string v1, "MhQkdHLAPY6K0mrvY0I8ZqPtgRA1J8Gx"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    invoke-virtual {v5, v14, v15}, Lcom/facebook/ads/redexgen/X/El;->A1c(II)V

    .line 11874
    :cond_15
    :goto_5
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/El;->A1B(Lcom/facebook/ads/redexgen/X/El;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 11875
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->invalidate()V

    .line 11876
    :cond_16
    if-eqz v2, :cond_21

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A06:Lcom/facebook/ads/redexgen/X/4K;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4K;->A26()Z

    move-result v0

    if-eqz v0, :cond_21

    if-ne v15, v2, :cond_21

    const/4 v1, 0x1

    .line 11877
    .local v0, "fullyConsumedVertical":Z
    :goto_6
    if-eqz v3, :cond_20

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A06:Lcom/facebook/ads/redexgen/X/4K;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4K;->A25()Z

    move-result v0

    if-eqz v0, :cond_20

    if-ne v14, v3, :cond_20

    const/4 v0, 0x1

    .line 11878
    .local v0, "fullyConsumedHorizontal":Z
    :goto_7
    if-nez v3, :cond_17

    if-eqz v2, :cond_18

    :cond_17
    if-nez v0, :cond_18

    if-eqz v1, :cond_1f

    :cond_18
    const/4 v1, 0x1

    .line 11879
    .local v0, "fullyConsumedAny":Z
    :goto_8
    invoke-virtual {v8}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_19

    if-nez v1, :cond_1e

    iget-object v1, v7, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    .line 11880
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/El;->A1w(I)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 11881
    :cond_19
    iget-object v1, v7, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/El;->setScrollState(I)V

    .line 11882
    invoke-static {}, Lcom/facebook/ads/redexgen/X/El;->A12()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 11883
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A02:Lcom/facebook/ads/redexgen/X/au;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/au;->A02()V

    .line 11884
    :cond_1a
    iget-object v1, v7, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/El;->A1Y(I)V

    .line 11885
    .end local v0    # "fullyConsumedAny":Z
    .end local v0
    .end local v8    # "vresult":I
    .end local v0
    .end local v0
    .end local v6    # "overscrollY":I
    .end local v0
    .end local v19    # "y":I
    .end local v5    # "dx":I
    .end local v4    # "dy":I
    .end local v0
    .end local v3    # "scrollConsumed":[I
    :cond_1b
    :goto_9
    if-eqz v6, :cond_1d

    .line 11886
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4X;->A0E()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 11887
    const/4 v0, 0x0

    invoke-static {v6, v0, v0}, Lcom/facebook/ads/redexgen/X/4X;->A05(Lcom/facebook/ads/redexgen/X/4X;II)V

    .line 11888
    :cond_1c
    iget-boolean v0, v7, Lcom/facebook/ads/redexgen/X/4b;->A05:Z

    if-nez v0, :cond_1d

    .line 11889
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4X;->A09()V

    .line 11890
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/4b;->A06()V

    .line 11891
    return-void

    .line 11892
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/4b;->A08()V

    .line 11893
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A03:Lcom/facebook/ads/redexgen/X/3v;

    if-eqz v0, :cond_1b

    .line 11894
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/El;->A03:Lcom/facebook/ads/redexgen/X/3v;

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v1, v0, v3, v2}, Lcom/facebook/ads/redexgen/X/3v;->A0C(Lcom/facebook/ads/redexgen/X/El;II)V

    goto :goto_9

    .line 11895
    :cond_1f
    const/4 v1, 0x0

    goto :goto_8

    .line 11896
    :cond_20
    const/4 v0, 0x0

    goto :goto_7

    .line 11897
    :cond_21
    const/4 v1, 0x0

    goto :goto_6

    :cond_22
    sget-object v4, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    const-string v1, "5ZFiatMajPEhKsDar8BqfzNMKoQTJ"

    const/4 v0, 0x6

    aput-object v1, v4, v0

    invoke-virtual {v5, v14, v15}, Lcom/facebook/ads/redexgen/X/El;->A1c(II)V

    goto/16 :goto_5

    .line 11898
    :cond_23
    if-lez v0, :cond_24

    goto/16 :goto_4

    :cond_24
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 11899
    :cond_25
    move v11, v9

    goto/16 :goto_4

    .line 11900
    :cond_26
    if-lez v1, :cond_27

    move v12, v11

    goto/16 :goto_3

    :cond_27
    const/4 v12, 0x0

    goto/16 :goto_3
.end method
