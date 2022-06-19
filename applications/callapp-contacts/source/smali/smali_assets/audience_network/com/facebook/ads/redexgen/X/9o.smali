.class public Lcom/facebook/ads/redexgen/X/9o;
.super Lcom/facebook/ads/redexgen/X/YM;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/ZR;
    }
.end annotation


# static fields
.field public static A0J:[Ljava/lang/String;

.field public static final A0K:I

.field public static final A0L:I

.field public static final A0M:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/MU;
    .annotation runtime Lcom/facebook/ads/internal/checkerframework/checker/nullness/qual/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/OC;
    .annotation runtime Lcom/facebook/ads/internal/checkerframework/checker/nullness/qual/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/Ov;
    .annotation runtime Lcom/facebook/ads/internal/checkerframework/checker/nullness/qual/Nullable;
    .end annotation
.end field

.field public A03:Z

.field public A04:Z

.field public A05:Z

.field public A06:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/facebook/ads/internal/checkerframework/checker/nullness/qual/Nullable;
    .end annotation
.end field

.field public A07:Lcom/facebook/ads/redexgen/X/RH;

.field public final A08:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A09:Lcom/facebook/ads/redexgen/X/Le;

.field public final A0A:Lcom/facebook/ads/redexgen/X/KW;

.field public final A0B:Lcom/facebook/ads/redexgen/X/KQ;

.field public final A0C:Lcom/facebook/ads/redexgen/X/KL;

.field public final A0D:Lcom/facebook/ads/redexgen/X/K1;

.field public final A0E:Ljava/lang/String;

.field public final A0F:Landroid/graphics/Paint;

.field public final A0G:Landroid/graphics/Path;

.field public final A0H:Landroid/graphics/RectF;

.field public final A0I:Lcom/facebook/ads/redexgen/X/O1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 20456
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9o;->A03()V

    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/4 v0, 0x0

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/9o;->A0L:I

    .line 20457
    sget v0, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v1, 0x41100000    # 9.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/9o;->A0M:I

    .line 20458
    sget v0, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/9o;->A0K:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/O1;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/RH;)V
    .locals 3

    .line 20459
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/YM;-><init>(Lcom/facebook/ads/redexgen/X/O1;Z)V

    .line 20460
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0G:Landroid/graphics/Path;

    .line 20461
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0H:Landroid/graphics/RectF;

    .line 20462
    new-instance v0, Lcom/facebook/ads/redexgen/X/9t;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9t;-><init>(Lcom/facebook/ads/redexgen/X/9o;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0D:Lcom/facebook/ads/redexgen/X/K1;

    .line 20463
    new-instance v0, Lcom/facebook/ads/redexgen/X/9s;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9s;-><init>(Lcom/facebook/ads/redexgen/X/9o;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A09:Lcom/facebook/ads/redexgen/X/Le;

    .line 20464
    new-instance v0, Lcom/facebook/ads/redexgen/X/9r;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9r;-><init>(Lcom/facebook/ads/redexgen/X/9o;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0B:Lcom/facebook/ads/redexgen/X/KQ;

    .line 20465
    new-instance v0, Lcom/facebook/ads/redexgen/X/9q;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9q;-><init>(Lcom/facebook/ads/redexgen/X/9o;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0A:Lcom/facebook/ads/redexgen/X/KW;

    .line 20466
    new-instance v0, Lcom/facebook/ads/redexgen/X/9p;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9p;-><init>(Lcom/facebook/ads/redexgen/X/9o;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0C:Lcom/facebook/ads/redexgen/X/KL;

    .line 20467
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9o;->A0I:Lcom/facebook/ads/redexgen/X/O1;

    .line 20468
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/9o;->A07:Lcom/facebook/ads/redexgen/X/RH;

    .line 20469
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/9o;->A0E:Ljava/lang/String;

    .line 20470
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A05()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A08:Lcom/facebook/ads/redexgen/X/XJ;

    .line 20471
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/9o;->setGravity(I)V

    .line 20472
    sget v1, Lcom/facebook/ads/redexgen/X/9o;->A0L:I

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/facebook/ads/redexgen/X/9o;->setPadding(IIII)V

    .line 20473
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0P(Landroid/view/View;I)V

    .line 20474
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A08:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9o;->setUpView(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 20475
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0F:Landroid/graphics/Paint;

    .line 20476
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9o;->A0F:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 20477
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9o;->A0F:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 20478
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9o;->A0F:Landroid/graphics/Paint;

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 20479
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0F:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 20480
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-ge v1, v0, :cond_0

    .line 20481
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/9o;->setLayerType(ILandroid/graphics/Paint;)V

    .line 20482
    :cond_0
    return-void
.end method

.method private A00()V
    .locals 2

    .line 20483
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0I:Lcom/facebook/ads/redexgen/X/O1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A0A()Lcom/facebook/ads/redexgen/X/IB;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20484
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Ov;

    if-eqz v0, :cond_0

    .line 20485
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0I:Lcom/facebook/ads/redexgen/X/O1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A0A()Lcom/facebook/ads/redexgen/X/IB;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Ov;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ov;->getSimpleVideoView()Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IB;->A8K(Lcom/facebook/ads/redexgen/X/PD;)V

    .line 20486
    :cond_0
    return-void
.end method

.method private A01()V
    .locals 2

    .line 20487
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0I:Lcom/facebook/ads/redexgen/X/O1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A0A()Lcom/facebook/ads/redexgen/X/IB;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20488
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0I:Lcom/facebook/ads/redexgen/X/O1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A0A()Lcom/facebook/ads/redexgen/X/IB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IB;->A07()V

    .line 20489
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Ov;

    if-eqz v0, :cond_0

    .line 20490
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0I:Lcom/facebook/ads/redexgen/X/O1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A0A()Lcom/facebook/ads/redexgen/X/IB;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Ov;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ov;->getSimpleVideoView()Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IB;->AEO(Lcom/facebook/ads/redexgen/X/PD;)V

    .line 20491
    :cond_0
    return-void
.end method

.method private A02()V
    .locals 4

    .line 20492
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A01:Lcom/facebook/ads/redexgen/X/OC;

    if-nez v0, :cond_0

    .line 20493
    return-void

    .line 20494
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9o;->A0g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A05:Z

    if-nez v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9o;->A0g()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/9o;->A0J:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/9o;->A0J:[Ljava/lang/String;

    const-string v1, "whWH7G9NZGoicUCMK8TGye"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "jQqQ2QRGHP0rmsCqitHuog"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v3, :cond_4

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A04:Z

    if-eqz v0, :cond_4

    .line 20495
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A01:Lcom/facebook/ads/redexgen/X/OC;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/OC;->A9R()V

    .line 20496
    :cond_4
    return-void
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "dJoea1DbFsfm9GTpKIzcXYdmCRfBe4FS"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "N1xc2MysRccxXRgwDgHXZSQeh7bFq7uk"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "3nDu3mubCrSGPsHb"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "SUxuavEQD34fwSKO8hxc7w"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "hmAyL1Y1BI3zOyZEMNvfuG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "1nycCDmAbpyAo4RWRzHJ2ixoeiRT"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "fh6VcnyoMwgZMcb2oBIx6"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "bmD"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9o;->A0J:[Ljava/lang/String;

    return-void
.end method

.method public static A04(Landroid/view/View;)V
    .locals 3

    .line 20497
    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20498
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 20499
    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/9o;)V
    .locals 0

    .line 20500
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9o;->A01()V

    return-void
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/9o;)V
    .locals 0

    .line 20501
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9o;->A00()V

    return-void
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/9o;)V
    .locals 0

    .line 20502
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9o;->A02()V

    return-void
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/9o;Z)Z
    .locals 0

    .line 20503
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/9o;->A05:Z

    return p1
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/9o;Z)Z
    .locals 0

    .line 20504
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/9o;->A04:Z

    return p1
.end method

.method private setUpView(Lcom/facebook/ads/redexgen/X/XJ;)V
    .locals 0

    .line 20574
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9o;->setUpImageView(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 20575
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9o;->setUpVideoView(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 20576
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9o;->setUpMediaContainer(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 20577
    return-void
.end method


# virtual methods
.method public final A0A()Z
    .locals 1

    .line 20505
    const/4 v0, 0x0

    return v0
.end method

.method public final A0a()Z
    .locals 1

    .line 20506
    const/4 v0, 0x0

    return v0
.end method

.method public final A0c()V
    .locals 1

    .line 20507
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9o;->A0g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Ov;

    if-eqz v0, :cond_0

    .line 20508
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ov;->A01()V

    .line 20509
    :cond_0
    return-void
.end method

.method public final A0d()V
    .locals 2

    .line 20510
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9o;->A0g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20511
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9o;->A0e()V

    .line 20512
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Ov;

    if-eqz v1, :cond_0

    .line 20513
    sget-object v0, Lcom/facebook/ads/redexgen/X/PO;->A03:Lcom/facebook/ads/redexgen/X/PO;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ov;->A05(Lcom/facebook/ads/redexgen/X/PO;)V

    .line 20514
    :cond_0
    return-void
.end method

.method public final A0e()V
    .locals 2

    .line 20515
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A07:Lcom/facebook/ads/redexgen/X/RH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RH;->A0R()Lcom/facebook/ads/redexgen/X/OF;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/OF;->getVolume()F

    move-result v1

    .line 20516
    .local p0, "newVolume":F
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9o;->A0g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Ov;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ov;->getVolume()F

    move-result v0

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_0

    .line 20517
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Ov;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Ov;->setVolume(F)V

    .line 20518
    :cond_0
    return-void
.end method

.method public final A0f()Z
    .locals 1

    .line 20519
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9o;->A0g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Ov;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ov;->A06()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0g()Z
    .locals 1

    .line 20520
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A03:Z

    return v0
.end method

.method public final A0h(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 20521
    .local v2, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Ov;

    if-eqz v0, :cond_0

    .line 20522
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ov;->A02()V

    .line 20523
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9o;->A0g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20524
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Ov;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nx;->getAdEventManager()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0E:Ljava/lang/String;

    invoke-virtual {v2, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/Ov;->A04(Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;Ljava/util/Map;)V

    .line 20525
    :cond_0
    return-void
.end method

.method public final getVideoView()Lcom/facebook/ads/redexgen/X/Ov;
    .locals 1
    .annotation runtime Lcom/facebook/ads/internal/checkerframework/checker/nullness/qual/Nullable;
    .end annotation

    .line 20526
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Ov;

    return-object v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 20527
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Nx;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 20528
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 20529
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0G:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 20530
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9o;->A0H:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9o;->getWidth()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9o;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v7, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 20531
    const/4 v5, 0x0

    .line 20532
    .local p0, "radius":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9o;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x1

    if-ne v0, v6, :cond_2

    .line 20533
    .local p1, "isPortrait":Z
    :goto_0
    if-eqz v6, :cond_0

    .line 20534
    sget v5, Lcom/facebook/ads/redexgen/X/9o;->A0K:I

    .line 20535
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/9o;->A0G:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9o;->A0H:Landroid/graphics/RectF;

    int-to-float v2, v5

    int-to-float v1, v5

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 20536
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9o;->A0G:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0F:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 20537
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/9o;->A0H:Landroid/graphics/RectF;

    sget v0, Lcom/facebook/ads/redexgen/X/9o;->A0L:I

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9o;->getWidth()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/9o;->A0L:I

    sub-int/2addr v1, v0

    int-to-float v2, v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9o;->getHeight()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/9o;->A0L:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    invoke-virtual {v4, v3, v7, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 20538
    if-eqz v6, :cond_1

    .line 20539
    sget v5, Lcom/facebook/ads/redexgen/X/9o;->A0M:I

    .line 20540
    :cond_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/9o;->A0G:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9o;->A0H:Landroid/graphics/RectF;

    int-to-float v2, v5

    int-to-float v1, v5

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 20541
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0G:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 20542
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/YM;->onDraw(Landroid/graphics/Canvas;)V

    .line 20543
    return-void

    .line 20544
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 3

    .line 20545
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9o;->A00:Lcom/facebook/ads/redexgen/X/MU;

    if-eqz v1, :cond_0

    .line 20546
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MU;->setVisibility(I)V

    .line 20547
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9o;->A00:Lcom/facebook/ads/redexgen/X/MU;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9o;->A08:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/aA;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/aA;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 20548
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aA;->A05()Lcom/facebook/ads/redexgen/X/aA;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/ZR;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/ZR;-><init>(Lcom/facebook/ads/redexgen/X/9o;Lcom/facebook/ads/redexgen/X/9t;)V

    .line 20549
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/aA;->A07(Lcom/facebook/ads/redexgen/X/Nb;)Lcom/facebook/ads/redexgen/X/aA;

    move-result-object v0

    .line 20550
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/aA;->A08(Ljava/lang/String;)V

    .line 20551
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Ov;

    if-eqz v1, :cond_1

    .line 20552
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ov;->setVisibility(I)V

    .line 20553
    :cond_1
    return-void
.end method

.method public setIsVideo(Z)V
    .locals 0

    .line 20554
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/9o;->A03:Z

    .line 20555
    return-void
.end method

.method public setOnAssetsLoadedListener(Lcom/facebook/ads/redexgen/X/OC;)V
    .locals 0

    .line 20556
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9o;->A01:Lcom/facebook/ads/redexgen/X/OC;

    .line 20557
    return-void
.end method

.method public setUpImageView(Lcom/facebook/ads/redexgen/X/XJ;)V
    .locals 1

    .line 20558
    new-instance v0, Lcom/facebook/ads/redexgen/X/MU;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/MU;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A00:Lcom/facebook/ads/redexgen/X/MU;

    .line 20559
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A00:Lcom/facebook/ads/redexgen/X/MU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9o;->A04(Landroid/view/View;)V

    .line 20560
    return-void
.end method

.method public setUpMediaContainer(Lcom/facebook/ads/redexgen/X/XJ;)V
    .locals 2

    .line 20561
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A06:Landroid/widget/RelativeLayout;

    .line 20562
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A06:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9o;->A04(Landroid/view/View;)V

    .line 20563
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9o;->A00:Lcom/facebook/ads/redexgen/X/MU;

    if-eqz v1, :cond_0

    .line 20564
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 20565
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Ov;

    if-eqz v1, :cond_1

    .line 20566
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 20567
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/9o;->addView(Landroid/view/View;)V

    .line 20568
    return-void
.end method

.method public setUpVideoView(Lcom/facebook/ads/redexgen/X/XJ;)V
    .locals 3

    .line 20569
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9o;->A0E:Ljava/lang/String;

    .line 20570
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nx;->getAdEventManager()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/JJ;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/JJ;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;)V

    .line 20571
    .local p0, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JJ;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ov;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Ov;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Ov;

    .line 20572
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Ov;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9o;->A04(Landroid/view/View;)V

    .line 20573
    return-void
.end method

.method public setVideoPlaceholderUrl(Ljava/lang/String;)V
    .locals 1

    .line 20578
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Ov;

    if-eqz v0, :cond_0

    .line 20579
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ov;->setPlaceholderUrl(Ljava/lang/String;)V

    .line 20580
    :cond_0
    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 5

    .line 20581
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/9o;->A00:Lcom/facebook/ads/redexgen/X/MU;

    if-eqz v4, :cond_0

    .line 20582
    const/16 v3, 0x8

    sget-object v1, Lcom/facebook/ads/redexgen/X/9o;->A0J:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/9o;->A0J:[Ljava/lang/String;

    const-string v1, "s54OOOYMcUndmM7F"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/MU;->setVisibility(I)V

    .line 20583
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Ov;

    if-eqz v1, :cond_1

    .line 20584
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ov;->setVisibility(I)V

    .line 20585
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Ov;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ov;->setVideoURI(Ljava/lang/String;)V

    .line 20586
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Ov;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0D:Lcom/facebook/ads/redexgen/X/K1;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ov;->A03(Lcom/facebook/ads/redexgen/X/9G;)V

    .line 20587
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Ov;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A09:Lcom/facebook/ads/redexgen/X/Le;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ov;->A03(Lcom/facebook/ads/redexgen/X/9G;)V

    .line 20588
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Ov;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0B:Lcom/facebook/ads/redexgen/X/KQ;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ov;->A03(Lcom/facebook/ads/redexgen/X/9G;)V

    .line 20589
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Ov;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0A:Lcom/facebook/ads/redexgen/X/KW;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ov;->A03(Lcom/facebook/ads/redexgen/X/9G;)V

    .line 20590
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Ov;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0C:Lcom/facebook/ads/redexgen/X/KL;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ov;->A03(Lcom/facebook/ads/redexgen/X/9G;)V

    .line 20591
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
