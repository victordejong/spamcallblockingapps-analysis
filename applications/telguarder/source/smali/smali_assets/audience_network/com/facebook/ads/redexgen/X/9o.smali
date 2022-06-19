.class public Lcom/facebook/ads/redexgen/X/9o;
.super Lcom/facebook/ads/redexgen/X/Rj;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ru;
    }
.end annotation


# static fields
.field public static A0J:[Ljava/lang/String;

.field public static final A0K:I

.field public static final A0L:I

.field public static final A0M:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/MP;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/O7;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/Oq;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Z

.field public A04:Z

.field public A05:Z

.field public A06:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A07:Lcom/facebook/ads/redexgen/X/RD;

.field public final A08:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A09:Lcom/facebook/ads/redexgen/X/L6;

.field public final A0A:Lcom/facebook/ads/redexgen/X/KS;

.field public final A0B:Lcom/facebook/ads/redexgen/X/KN;

.field public final A0C:Lcom/facebook/ads/redexgen/X/KA;

.field public final A0D:Lcom/facebook/ads/redexgen/X/K0;

.field public final A0E:Ljava/lang/String;

.field public final A0F:Landroid/graphics/Paint;

.field public final A0G:Landroid/graphics/Path;

.field public final A0H:Landroid/graphics/RectF;

.field public final A0I:Lcom/facebook/ads/redexgen/X/Nw;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 20510
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9o;->A04()V

    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/4 v0, 0x0

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/9o;->A0L:I

    .line 20511
    sget v0, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v1, 0x41100000    # 9.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/9o;->A0M:I

    .line 20512
    sget v0, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/9o;->A0K:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nw;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/RD;)V
    .locals 3

    .line 20513
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Rj;-><init>(Lcom/facebook/ads/redexgen/X/Nw;Z)V

    .line 20514
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0G:Landroid/graphics/Path;

    .line 20515
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0H:Landroid/graphics/RectF;

    .line 20516
    new-instance v0, Lcom/facebook/ads/redexgen/X/9t;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9t;-><init>(Lcom/facebook/ads/redexgen/X/9o;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0D:Lcom/facebook/ads/redexgen/X/K0;

    .line 20517
    new-instance v0, Lcom/facebook/ads/redexgen/X/9s;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9s;-><init>(Lcom/facebook/ads/redexgen/X/9o;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A09:Lcom/facebook/ads/redexgen/X/L6;

    .line 20518
    new-instance v0, Lcom/facebook/ads/redexgen/X/9r;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9r;-><init>(Lcom/facebook/ads/redexgen/X/9o;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0B:Lcom/facebook/ads/redexgen/X/KN;

    .line 20519
    new-instance v0, Lcom/facebook/ads/redexgen/X/9q;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9q;-><init>(Lcom/facebook/ads/redexgen/X/9o;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0A:Lcom/facebook/ads/redexgen/X/KS;

    .line 20520
    new-instance v0, Lcom/facebook/ads/redexgen/X/9p;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9p;-><init>(Lcom/facebook/ads/redexgen/X/9o;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0C:Lcom/facebook/ads/redexgen/X/KA;

    .line 20521
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9o;->A0I:Lcom/facebook/ads/redexgen/X/Nw;

    .line 20522
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/9o;->A07:Lcom/facebook/ads/redexgen/X/RD;

    .line 20523
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/9o;->A0E:Ljava/lang/String;

    .line 20524
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nw;->A05()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A08:Lcom/facebook/ads/redexgen/X/Wm;

    .line 20525
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/9o;->setGravity(I)V

    .line 20526
    sget v1, Lcom/facebook/ads/redexgen/X/9o;->A0L:I

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/facebook/ads/redexgen/X/9o;->setPadding(IIII)V

    .line 20527
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0O(Landroid/view/View;I)V

    .line 20528
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A08:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9o;->setUpView(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 20529
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0F:Landroid/graphics/Paint;

    .line 20530
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9o;->A0F:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 20531
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9o;->A0F:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 20532
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9o;->A0F:Landroid/graphics/Paint;

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 20533
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0F:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 20534
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-ge v1, v0, :cond_0

    .line 20535
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/9o;->setLayerType(ILandroid/graphics/Paint;)V

    .line 20536
    :cond_0
    return-void
.end method

.method private A01()V
    .locals 5

    .line 20537
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0I:Lcom/facebook/ads/redexgen/X/Nw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nw;->A0A()Lcom/facebook/ads/redexgen/X/I6;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 20538
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Oq;

    if-eqz v0, :cond_1

    .line 20539
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0I:Lcom/facebook/ads/redexgen/X/Nw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nw;->A0A()Lcom/facebook/ads/redexgen/X/I6;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Oq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oq;->getSimpleVideoView()Lcom/facebook/ads/redexgen/X/Oj;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/9o;->A0J:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x47

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/9o;->A0J:[Ljava/lang/String;

    const-string v1, "7Tm7E6hvxl2lrINlaGqN4b4kJs9I709m"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "njm7q4dCrj2NJr9FsCrNNlLowJdEGDJD"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/I6;->A8M(Lcom/facebook/ads/redexgen/X/Oj;)V

    .line 20540
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9o;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1O(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20541
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0I:Lcom/facebook/ads/redexgen/X/Nw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nw;->A0A()Lcom/facebook/ads/redexgen/X/I6;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/I6;->A08(Z)V

    .line 20542
    :cond_1
    return-void
.end method

.method private A02()V
    .locals 2

    .line 20543
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0I:Lcom/facebook/ads/redexgen/X/Nw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nw;->A0A()Lcom/facebook/ads/redexgen/X/I6;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20544
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0I:Lcom/facebook/ads/redexgen/X/Nw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nw;->A0A()Lcom/facebook/ads/redexgen/X/I6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/I6;->A06()V

    .line 20545
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Oq;

    if-eqz v0, :cond_0

    .line 20546
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0I:Lcom/facebook/ads/redexgen/X/Nw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nw;->A0A()Lcom/facebook/ads/redexgen/X/I6;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Oq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oq;->getSimpleVideoView()Lcom/facebook/ads/redexgen/X/Oj;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/I6;->AEQ(Lcom/facebook/ads/redexgen/X/Oj;)V

    .line 20547
    :cond_0
    return-void
.end method

.method private A03()V
    .locals 4

    .line 20548
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A01:Lcom/facebook/ads/redexgen/X/O7;

    if-nez v0, :cond_0

    .line 20549
    return-void

    .line 20550
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9o;->A0g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/9o;->A05:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/9o;->A0J:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x53

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/9o;->A0J:[Ljava/lang/String;

    const-string v1, "H2PvwmHOgvOi5klEuL8elNjNTBtJADxS"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v3, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9o;->A0g()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A04:Z

    if-eqz v0, :cond_3

    .line 20551
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A01:Lcom/facebook/ads/redexgen/X/O7;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/O7;->A9R()V

    .line 20552
    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "MpRqvkZj1q70y"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "JmeA7cKwz52Cf66UfzrPr0LMRH4SYAx7"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "6sdDVsKAMYqDcEUPGSGZSzHS1QCr5tGd"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "kTGZxaoWJV94XtNMqSwvdL"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Mc6tnSsqpweEwwZBrEzxWewdD5U0ZBnH"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "pH8A6EuZ6tOwC2LEaYgoPeYfMAE"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "hIXMP87egv28CzL5Z81pRvvAccgq29VA"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "kjeLkimcHFb7T02SebLVQF"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9o;->A0J:[Ljava/lang/String;

    return-void
.end method

.method private A05(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 20553
    if-nez p1, :cond_0

    .line 20554
    return-void

    .line 20555
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 20556
    .local p0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez v2, :cond_1

    .line 20557
    return-void

    .line 20558
    :cond_1
    const/16 v1, 0xd

    const/4 v0, -0x1

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 20559
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20560
    return-void
.end method

.method public static A06(Landroid/view/View;)V
    .locals 3

    .line 20561
    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20562
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 20563
    return-void
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/9o;)V
    .locals 0

    .line 20564
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9o;->A02()V

    return-void
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/9o;)V
    .locals 0

    .line 20565
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9o;->A01()V

    return-void
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/9o;)V
    .locals 0

    .line 20566
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9o;->A03()V

    return-void
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/9o;Z)Z
    .locals 0

    .line 20567
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/9o;->A05:Z

    return p1
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/9o;Z)Z
    .locals 0

    .line 20568
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/9o;->A04:Z

    return p1
.end method

.method private setUpView(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 0

    .line 20640
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9o;->setUpImageView(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 20641
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9o;->setUpVideoView(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 20642
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9o;->setUpMediaContainer(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 20643
    return-void
.end method


# virtual methods
.method public final A0C()Z
    .locals 1

    .line 20569
    const/4 v0, 0x0

    return v0
.end method

.method public final A0a()Z
    .locals 1

    .line 20570
    const/4 v0, 0x0

    return v0
.end method

.method public final A0c()V
    .locals 1

    .line 20571
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9o;->A0g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Oq;

    if-eqz v0, :cond_0

    .line 20572
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oq;->A01()V

    .line 20573
    :cond_0
    return-void
.end method

.method public final A0d()V
    .locals 2

    .line 20574
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9o;->A0g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20575
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9o;->A0e()V

    .line 20576
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Oq;

    if-eqz v1, :cond_0

    .line 20577
    sget-object v0, Lcom/facebook/ads/redexgen/X/PJ;->A03:Lcom/facebook/ads/redexgen/X/PJ;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oq;->A05(Lcom/facebook/ads/redexgen/X/PJ;)V

    .line 20578
    :cond_0
    return-void
.end method

.method public final A0e()V
    .locals 2

    .line 20579
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A07:Lcom/facebook/ads/redexgen/X/RD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RD;->A0R()Lcom/facebook/ads/redexgen/X/OA;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/OA;->getVolume()F

    move-result v1

    .line 20580
    .local p0, "newVolume":F
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9o;->A0g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Oq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oq;->getVolume()F

    move-result v0

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_0

    .line 20581
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Oq;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Oq;->setVolume(F)V

    .line 20582
    :cond_0
    return-void
.end method

.method public final A0f()Z
    .locals 1

    .line 20583
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9o;->A0g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Oq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oq;->A06()Z

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

    .line 20584
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

    .line 20585
    .local v2, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Oq;

    if-eqz v0, :cond_0

    .line 20586
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oq;->A02()V

    .line 20587
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9o;->A0g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20588
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Oq;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ns;->getAdEventManager()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0E:Ljava/lang/String;

    invoke-virtual {v2, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/Oq;->A04(Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;Ljava/util/Map;)V

    .line 20589
    :cond_0
    return-void
.end method

.method public final getVideoView()Lcom/facebook/ads/redexgen/X/Oq;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 20590
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Oq;

    return-object v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 20591
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Ns;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 20592
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 20593
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0G:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 20594
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9o;->A0H:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9o;->getWidth()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9o;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v7, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 20595
    const/4 v5, 0x0

    .line 20596
    .local p0, "radius":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9o;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x1

    if-ne v0, v6, :cond_2

    .line 20597
    .local p1, "isPortrait":Z
    :goto_0
    if-eqz v6, :cond_0

    .line 20598
    sget v5, Lcom/facebook/ads/redexgen/X/9o;->A0K:I

    .line 20599
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/9o;->A0G:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9o;->A0H:Landroid/graphics/RectF;

    int-to-float v2, v5

    int-to-float v1, v5

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 20600
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9o;->A0G:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0F:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 20601
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

    .line 20602
    if-eqz v6, :cond_1

    .line 20603
    sget v5, Lcom/facebook/ads/redexgen/X/9o;->A0M:I

    .line 20604
    :cond_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/9o;->A0G:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9o;->A0H:Landroid/graphics/RectF;

    int-to-float v2, v5

    int-to-float v1, v5

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 20605
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0G:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 20606
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Rj;->onDraw(Landroid/graphics/Canvas;)V

    .line 20607
    return-void

    .line 20608
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 3

    .line 20609
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9o;->A00:Lcom/facebook/ads/redexgen/X/MP;

    if-eqz v1, :cond_0

    .line 20610
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MP;->setVisibility(I)V

    .line 20611
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9o;->A00:Lcom/facebook/ads/redexgen/X/MP;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9o;->A08:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Rz;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Rz;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 20612
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rz;->A05()Lcom/facebook/ads/redexgen/X/Rz;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ru;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Ru;-><init>(Lcom/facebook/ads/redexgen/X/9o;Lcom/facebook/ads/redexgen/X/9t;)V

    .line 20613
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Rz;->A07(Lcom/facebook/ads/redexgen/X/NW;)Lcom/facebook/ads/redexgen/X/Rz;

    move-result-object v0

    .line 20614
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Rz;->A08(Ljava/lang/String;)V

    .line 20615
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Oq;

    if-eqz v1, :cond_1

    .line 20616
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oq;->setVisibility(I)V

    .line 20617
    :cond_1
    return-void
.end method

.method public setIsVideo(Z)V
    .locals 0

    .line 20618
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/9o;->A03:Z

    .line 20619
    return-void
.end method

.method public setOnAssetsLoadedListener(Lcom/facebook/ads/redexgen/X/O7;)V
    .locals 0

    .line 20620
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9o;->A01:Lcom/facebook/ads/redexgen/X/O7;

    .line 20621
    return-void
.end method

.method public setUpImageView(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 1

    .line 20622
    new-instance v0, Lcom/facebook/ads/redexgen/X/MP;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/MP;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A00:Lcom/facebook/ads/redexgen/X/MP;

    .line 20623
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A00:Lcom/facebook/ads/redexgen/X/MP;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9o;->A06(Landroid/view/View;)V

    .line 20624
    return-void
.end method

.method public setUpMediaContainer(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 2

    .line 20625
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A06:Landroid/widget/RelativeLayout;

    .line 20626
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A06:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9o;->A06(Landroid/view/View;)V

    .line 20627
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9o;->A00:Lcom/facebook/ads/redexgen/X/MP;

    if-eqz v1, :cond_0

    .line 20628
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 20629
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A00:Lcom/facebook/ads/redexgen/X/MP;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9o;->A05(Landroid/view/View;)V

    .line 20630
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Oq;

    if-eqz v1, :cond_1

    .line 20631
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 20632
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Oq;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9o;->A05(Landroid/view/View;)V

    .line 20633
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/9o;->addView(Landroid/view/View;)V

    .line 20634
    return-void
.end method

.method public setUpVideoView(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 3

    .line 20635
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9o;->A0E:Ljava/lang/String;

    .line 20636
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ns;->getAdEventManager()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/JK;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/JK;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;)V

    .line 20637
    .local p0, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JK;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Oq;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Oq;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JK;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Oq;

    .line 20638
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Oq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9o;->A06(Landroid/view/View;)V

    .line 20639
    return-void
.end method

.method public setVideoPlaceholderUrl(Ljava/lang/String;)V
    .locals 1

    .line 20644
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Oq;

    if-eqz v0, :cond_0

    .line 20645
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Oq;->setPlaceholderUrl(Ljava/lang/String;)V

    .line 20646
    :cond_0
    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 4

    .line 20647
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9o;->A00:Lcom/facebook/ads/redexgen/X/MP;

    if-eqz v1, :cond_0

    .line 20648
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MP;->setVisibility(I)V

    .line 20649
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Oq;

    sget-object v2, Lcom/facebook/ads/redexgen/X/9o;->A0J:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/9o;->A0J:[Ljava/lang/String;

    const-string v1, "Key351avhXFGNIES0xzUdjVz8AR1nkGO"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 20650
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Oq;->setVisibility(I)V

    .line 20651
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Oq;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Oq;->setVideoURI(Ljava/lang/String;)V

    .line 20652
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Oq;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0D:Lcom/facebook/ads/redexgen/X/K0;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oq;->A03(Lcom/facebook/ads/redexgen/X/9G;)V

    .line 20653
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Oq;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A09:Lcom/facebook/ads/redexgen/X/L6;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oq;->A03(Lcom/facebook/ads/redexgen/X/9G;)V

    .line 20654
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Oq;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0B:Lcom/facebook/ads/redexgen/X/KN;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oq;->A03(Lcom/facebook/ads/redexgen/X/9G;)V

    .line 20655
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Oq;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0A:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oq;->A03(Lcom/facebook/ads/redexgen/X/9G;)V

    .line 20656
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/Oq;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0C:Lcom/facebook/ads/redexgen/X/KA;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oq;->A03(Lcom/facebook/ads/redexgen/X/9G;)V

    .line 20657
    :cond_2
    return-void
.end method
