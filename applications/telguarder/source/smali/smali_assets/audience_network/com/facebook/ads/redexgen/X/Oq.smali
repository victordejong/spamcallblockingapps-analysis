.class public final Lcom/facebook/ads/redexgen/X/Oq;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field public static final A07:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/AM;

.field public A01:Lcom/facebook/ads/redexgen/X/7y;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/IK;

.field public A03:Lcom/facebook/ads/redexgen/X/7Z;

.field public A04:Lcom/facebook/ads/redexgen/X/7L;

.field public final A05:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A06:Lcom/facebook/ads/redexgen/X/JK;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 47436
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Oq;->A07:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JK;)V
    .locals 0

    .line 47437
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47438
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Oq;->A06:Lcom/facebook/ads/redexgen/X/JK;

    .line 47439
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Oq;->A05:Lcom/facebook/ads/redexgen/X/Wm;

    .line 47440
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Oq;->setUpView(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 47441
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Oq;)Lcom/facebook/ads/redexgen/X/7L;
    .locals 0

    .line 47442
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A04:Lcom/facebook/ads/redexgen/X/7L;

    return-object p0
.end method

.method private setUpPlugins(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 5

    .line 47461
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A00:Lcom/facebook/ads/redexgen/X/AM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0V()V

    .line 47462
    new-instance v0, Lcom/facebook/ads/redexgen/X/7Z;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/7Z;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A03:Lcom/facebook/ads/redexgen/X/7Z;

    .line 47463
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oq;->A00:Lcom/facebook/ads/redexgen/X/AM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A03:Lcom/facebook/ads/redexgen/X/7Z;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0a(Lcom/facebook/ads/redexgen/X/PK;)V

    .line 47464
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oq;->A06:Lcom/facebook/ads/redexgen/X/JK;

    new-instance v0, Lcom/facebook/ads/redexgen/X/IK;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/IK;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JK;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A02:Lcom/facebook/ads/redexgen/X/IK;

    .line 47465
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oq;->A00:Lcom/facebook/ads/redexgen/X/AM;

    new-instance v0, Lcom/facebook/ads/redexgen/X/7i;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/7i;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0a(Lcom/facebook/ads/redexgen/X/PK;)V

    .line 47466
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oq;->A00:Lcom/facebook/ads/redexgen/X/AM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A02:Lcom/facebook/ads/redexgen/X/IK;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0a(Lcom/facebook/ads/redexgen/X/PK;)V

    .line 47467
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oq;->A06:Lcom/facebook/ads/redexgen/X/JK;

    const/4 v4, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/7L;

    invoke-direct {v0, p1, v4, v1}, Lcom/facebook/ads/redexgen/X/7L;-><init>(Lcom/facebook/ads/redexgen/X/Wm;ZLcom/facebook/ads/redexgen/X/JK;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A04:Lcom/facebook/ads/redexgen/X/7L;

    .line 47468
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oq;->A00:Lcom/facebook/ads/redexgen/X/AM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A04:Lcom/facebook/ads/redexgen/X/7L;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0a(Lcom/facebook/ads/redexgen/X/PK;)V

    .line 47469
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Oq;->A00:Lcom/facebook/ads/redexgen/X/AM;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Oq;->A04:Lcom/facebook/ads/redexgen/X/7L;

    sget-object v1, Lcom/facebook/ads/redexgen/X/PW;->A02:Lcom/facebook/ads/redexgen/X/PW;

    new-instance v0, Lcom/facebook/ads/redexgen/X/IR;

    invoke-direct {v0, v2, v1, v4, v4}, Lcom/facebook/ads/redexgen/X/IR;-><init>(Landroid/view/View;Lcom/facebook/ads/redexgen/X/PW;ZZ)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0a(Lcom/facebook/ads/redexgen/X/PK;)V

    .line 47470
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A00:Lcom/facebook/ads/redexgen/X/AM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47471
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/J4;->A1m(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47472
    return-void

    .line 47473
    :cond_0
    const/4 v0, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47474
    .local p0, "muteButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 47475
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 47476
    sget v0, Lcom/facebook/ads/redexgen/X/Oq;->A07:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 47477
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A02:Lcom/facebook/ads/redexgen/X/IK;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IK;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47478
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oq;->A00:Lcom/facebook/ads/redexgen/X/AM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A02:Lcom/facebook/ads/redexgen/X/IK;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AM;->addView(Landroid/view/View;)V

    .line 47479
    return-void
.end method

.method private setUpVideo(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 4

    .line 47480
    new-instance v0, Lcom/facebook/ads/redexgen/X/AM;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/AM;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A00:Lcom/facebook/ads/redexgen/X/AM;

    .line 47481
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Oq;->A00:Lcom/facebook/ads/redexgen/X/AM;

    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Oj;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47482
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A00:Lcom/facebook/ads/redexgen/X/AM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 47483
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A00:Lcom/facebook/ads/redexgen/X/AM;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Oq;->addView(Landroid/view/View;)V

    .line 47484
    new-instance v0, Lcom/facebook/ads/redexgen/X/Op;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Op;-><init>(Lcom/facebook/ads/redexgen/X/Oq;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Oq;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47485
    return-void
.end method

.method private setUpView(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 0

    .line 47486
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Oq;->setUpVideo(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 47487
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Oq;->setUpPlugins(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 47488
    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 3

    .line 47443
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Oq;->A00:Lcom/facebook/ads/redexgen/X/AM;

    const/4 v1, 0x1

    const/16 v0, 0xa

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0c(ZI)V

    .line 47444
    return-void
.end method

.method public final A02()V
    .locals 1

    .line 47445
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A01:Lcom/facebook/ads/redexgen/X/7y;

    if-eqz v0, :cond_0

    .line 47446
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7y;->A0h()V

    .line 47447
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A01:Lcom/facebook/ads/redexgen/X/7y;

    .line 47448
    :cond_0
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/9G;)V
    .locals 1

    .line 47449
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A00:Lcom/facebook/ads/redexgen/X/AM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->getEventBus()Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/9F;->A05(Lcom/facebook/ads/redexgen/X/9G;)Z

    .line 47450
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/JC;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 47451
    .local v5, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Oq;->A02()V

    .line 47452
    new-instance v0, Lcom/facebook/ads/redexgen/X/7y;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oq;->A05:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Oq;->A00:Lcom/facebook/ads/redexgen/X/AM;

    move-object v5, p3

    move-object v4, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/Oj;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A01:Lcom/facebook/ads/redexgen/X/7y;

    .line 47453
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/PJ;)V
    .locals 2

    .line 47454
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oq;->A00:Lcom/facebook/ads/redexgen/X/AM;

    const/16 v0, 0xd

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0Z(Lcom/facebook/ads/redexgen/X/PJ;I)V

    .line 47455
    return-void
.end method

.method public final A06()Z
    .locals 1

    .line 47456
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A00:Lcom/facebook/ads/redexgen/X/AM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0i()Z

    move-result v0

    return v0
.end method

.method public getSimpleVideoView()Lcom/facebook/ads/redexgen/X/Oj;
    .locals 1

    .line 47457
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A00:Lcom/facebook/ads/redexgen/X/AM;

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    .line 47458
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A00:Lcom/facebook/ads/redexgen/X/AM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->getVolume()F

    move-result v0

    return v0
.end method

.method public setPlaceholderUrl(Ljava/lang/String;)V
    .locals 1

    .line 47459
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A03:Lcom/facebook/ads/redexgen/X/7Z;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/7Z;->setImage(Ljava/lang/String;)V

    .line 47460
    return-void
.end method

.method public setVideoURI(Ljava/lang/String;)V
    .locals 1

    .line 47489
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A00:Lcom/facebook/ads/redexgen/X/AM;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Oj;->setVideoURI(Ljava/lang/String;)V

    .line 47490
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 47491
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A00:Lcom/facebook/ads/redexgen/X/AM;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Oj;->setVolume(F)V

    .line 47492
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oq;->A02:Lcom/facebook/ads/redexgen/X/IK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IK;->A0A()V

    .line 47493
    return-void
.end method
