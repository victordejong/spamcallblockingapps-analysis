.class public final Lcom/facebook/ads/redexgen/X/4V;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/4X;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:Landroid/view/animation/Interpolator;

.field public A06:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4V;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4V;->A02()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 11586
    const/high16 v1, -0x80000000

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/4V;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 11587
    return-void
.end method

.method public constructor <init>(IIILandroid/view/animation/Interpolator;)V
    .locals 1

    .line 11588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11589
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4V;->A04:I

    .line 11590
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4V;->A06:Z

    .line 11591
    iput v0, p0, Lcom/facebook/ads/redexgen/X/4V;->A00:I

    .line 11592
    iput p1, p0, Lcom/facebook/ads/redexgen/X/4V;->A02:I

    .line 11593
    iput p2, p0, Lcom/facebook/ads/redexgen/X/4V;->A03:I

    .line 11594
    iput p3, p0, Lcom/facebook/ads/redexgen/X/4V;->A01:I

    .line 11595
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/4V;->A05:Landroid/view/animation/Interpolator;

    .line 11596
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/4V;->A07:[B

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

.method private A01()V
    .locals 3

    .line 11597
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4V;->A05:Landroid/view/animation/Interpolator;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4V;->A01:I

    if-lt v0, v1, :cond_2

    .line 11598
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4V;->A01:I

    if-lt v0, v1, :cond_1

    .line 11599
    return-void

    .line 11600
    :cond_1
    const/16 v2, 0x4c

    const/16 v1, 0x29

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4V;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11601
    :cond_2
    const/4 v2, 0x0

    const/16 v1, 0x40

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4V;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A02()V
    .locals 4

    const/16 v3, 0xdd

    sget-object v2, Lcom/facebook/ads/redexgen/X/4V;->A08:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/4V;->A08:[Ljava/lang/String;

    const-string v1, "xuBDHwCCeJFwoWJXOKQP0R9"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/4V;->A07:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        -0x60t
        -0x43t
        0x77t
        -0x30t
        -0x3at
        -0x34t
        0x77t
        -0x39t
        -0x37t
        -0x3at
        -0x33t
        -0x40t
        -0x45t
        -0x44t
        0x77t
        -0x48t
        -0x3bt
        0x77t
        -0x40t
        -0x3bt
        -0x35t
        -0x44t
        -0x37t
        -0x39t
        -0x3at
        -0x3dt
        -0x48t
        -0x35t
        -0x3at
        -0x37t
        -0x7dt
        0x77t
        -0x30t
        -0x3at
        -0x34t
        0x77t
        -0x3ct
        -0x34t
        -0x36t
        -0x35t
        0x77t
        -0x36t
        -0x44t
        -0x35t
        0x77t
        -0x48t
        0x77t
        -0x39t
        -0x3at
        -0x36t
        -0x40t
        -0x35t
        -0x40t
        -0x33t
        -0x44t
        0x77t
        -0x45t
        -0x34t
        -0x37t
        -0x48t
        -0x35t
        -0x40t
        -0x3at
        -0x3bt
        0x5dt
        0x70t
        0x6et
        -0x7ct
        0x6et
        0x77t
        0x70t
        0x7dt
        0x61t
        0x74t
        0x70t
        -0x7et
        0x76t
        -0x7at
        -0x6bt
        -0x6et
        -0x71t
        -0x71t
        0x43t
        -0x79t
        -0x68t
        -0x6bt
        -0x7ct
        -0x69t
        -0x74t
        -0x6et
        -0x6ft
        0x43t
        -0x70t
        -0x68t
        -0x6at
        -0x69t
        0x43t
        -0x7bt
        -0x78t
        0x43t
        -0x7ct
        0x43t
        -0x6dt
        -0x6et
        -0x6at
        -0x74t
        -0x69t
        -0x74t
        -0x67t
        -0x78t
        0x43t
        -0x6ft
        -0x68t
        -0x70t
        -0x7bt
        -0x78t
        -0x6bt
        -0x58t
        -0x3et
        -0x3ct
        -0x3ct
        -0x37t
        -0x43t
        0x75t
        -0x58t
        -0x48t
        -0x39t
        -0x3ct
        -0x3ft
        -0x3ft
        0x75t
        -0x4at
        -0x48t
        -0x37t
        -0x42t
        -0x3ct
        -0x3dt
        0x75t
        -0x42t
        -0x38t
        0x75t
        -0x49t
        -0x46t
        -0x42t
        -0x3dt
        -0x44t
        0x75t
        -0x36t
        -0x3bt
        -0x47t
        -0x4at
        -0x37t
        -0x46t
        -0x47t
        0x75t
        -0x37t
        -0x3ct
        -0x3ct
        0x75t
        -0x45t
        -0x39t
        -0x46t
        -0x3at
        -0x36t
        -0x46t
        -0x3dt
        -0x37t
        -0x3ft
        -0x32t
        -0x7dt
        0x75t
        -0x5et
        -0x4at
        -0x40t
        -0x46t
        0x75t
        -0x38t
        -0x36t
        -0x39t
        -0x46t
        0x75t
        -0x32t
        -0x3ct
        -0x36t
        0x75t
        -0x4at
        -0x39t
        -0x46t
        0x75t
        -0x3dt
        -0x3ct
        -0x37t
        0x75t
        -0x48t
        -0x43t
        -0x4at
        -0x3dt
        -0x44t
        -0x42t
        -0x3dt
        -0x44t
        0x75t
        -0x42t
        -0x37t
        0x75t
        -0x36t
        -0x3dt
        -0x3ft
        -0x46t
        -0x38t
        -0x38t
        0x75t
        -0x3dt
        -0x46t
        -0x48t
        -0x46t
        -0x38t
        -0x38t
        -0x4at
        -0x39t
        -0x32t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Pvnt"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Nt2K241MgRq22KzubAG1E2apF"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Vdgual6oAXALnhRQ4thM2YMw"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "OMMTDpWLjpz6jtrYJbYN7s1"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "W2dFPnHzaLwituG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "4j3XDogoyZgqzsm2DW15mEco0CAT7CGw"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "eQqq"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "jFkfoBffmcshIEwi45Rbk0NXRUENoMTZ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4V;->A08:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A04(I)V
    .locals 0

    .line 11602
    iput p1, p0, Lcom/facebook/ads/redexgen/X/4V;->A04:I

    .line 11603
    return-void
.end method

.method public final A05(IIILandroid/view/animation/Interpolator;)V
    .locals 1

    .line 11604
    iput p1, p0, Lcom/facebook/ads/redexgen/X/4V;->A02:I

    .line 11605
    iput p2, p0, Lcom/facebook/ads/redexgen/X/4V;->A03:I

    .line 11606
    iput p3, p0, Lcom/facebook/ads/redexgen/X/4V;->A01:I

    .line 11607
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/4V;->A05:Landroid/view/animation/Interpolator;

    .line 11608
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4V;->A06:Z

    .line 11609
    return-void
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/El;)V
    .locals 7

    .line 11610
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4V;->A04:I

    const/4 v5, 0x0

    if-ltz v0, :cond_0

    .line 11611
    iget v1, p0, Lcom/facebook/ads/redexgen/X/4V;->A04:I

    .line 11612
    .local p0, "position":I
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4V;->A04:I

    .line 11613
    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/El;->A1T(I)V

    .line 11614
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/4V;->A06:Z

    .line 11615
    return-void

    .line 11616
    .end local p0    # "position":I
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4V;->A06:Z

    if-eqz v0, :cond_5

    .line 11617
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4V;->A01()V

    .line 11618
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4V;->A05:Landroid/view/animation/Interpolator;

    sget-object v1, Lcom/facebook/ads/redexgen/X/4V;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/4V;->A08:[Ljava/lang/String;

    const-string v1, "O0czx9uFUzFwUeJrPkRP61AB"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "AYyk"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v3, :cond_4

    .line 11619
    iget v1, p0, Lcom/facebook/ads/redexgen/X/4V;->A01:I

    const/high16 v0, -0x80000000

    if-ne v1, v0, :cond_2

    .line 11620
    iget-object v2, p1, Lcom/facebook/ads/redexgen/X/El;->A08:Lcom/facebook/ads/redexgen/X/4b;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4V;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4V;->A03:I

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4b;->A0B(II)V

    .line 11621
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4V;->A00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4V;->A00:I

    .line 11622
    iget v1, p0, Lcom/facebook/ads/redexgen/X/4V;->A00:I

    const/16 v0, 0xa

    if-le v1, v0, :cond_1

    .line 11623
    const/16 v2, 0x40

    const/16 v1, 0xc

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4V;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x75

    const/16 v1, 0x68

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4V;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11624
    :cond_1
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/4V;->A06:Z

    .line 11625
    :goto_1
    return-void

    .line 11626
    :cond_2
    iget-object v6, p1, Lcom/facebook/ads/redexgen/X/El;->A08:Lcom/facebook/ads/redexgen/X/4b;

    iget v4, p0, Lcom/facebook/ads/redexgen/X/4V;->A02:I

    iget v3, p0, Lcom/facebook/ads/redexgen/X/4V;->A03:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/4V;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4V;->A01:I

    invoke-virtual {v6, v4, v3, v0}, Lcom/facebook/ads/redexgen/X/4b;->A0C(III)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/4V;->A08:[Ljava/lang/String;

    const-string v1, "WLL7Xa5cC4PfSmY4OKeTHvZ3MFGwUNY7"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "1QT7rx7s1eUCzctaxezGIMAtvqNEmmGR"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4V;->A01:I

    invoke-virtual {v6, v4, v3, v0}, Lcom/facebook/ads/redexgen/X/4b;->A0C(III)V

    goto :goto_0

    .line 11627
    :cond_4
    iget-object v4, p1, Lcom/facebook/ads/redexgen/X/El;->A08:Lcom/facebook/ads/redexgen/X/4b;

    iget v3, p0, Lcom/facebook/ads/redexgen/X/4V;->A02:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/4V;->A03:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4V;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4V;->A05:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4b;->A0D(IIILandroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 11628
    :cond_5
    iput v5, p0, Lcom/facebook/ads/redexgen/X/4V;->A00:I

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A07()Z
    .locals 1

    .line 11629
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4V;->A04:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
