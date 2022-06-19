.class public final Lcom/facebook/ads/redexgen/X/7U;
.super Lcom/facebook/ads/redexgen/X/MP;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Le;

.field public final A01:Lcom/facebook/ads/redexgen/X/KW;

.field public final A02:Lcom/facebook/ads/redexgen/X/KQ;

.field public final A03:Lcom/facebook/ads/redexgen/X/KL;

.field public final A04:Lcom/facebook/ads/redexgen/X/Pj;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/7U;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;)V
    .locals 1

    .line 16617
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/7U;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Landroid/util/AttributeSet;)V

    .line 16618
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Landroid/util/AttributeSet;)V
    .locals 1

    .line 16619
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/7U;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Landroid/util/AttributeSet;I)V

    .line 16620
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 16621
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/MP;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Landroid/util/AttributeSet;I)V

    .line 16622
    new-instance v0, Lcom/facebook/ads/redexgen/X/7Y;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7Y;-><init>(Lcom/facebook/ads/redexgen/X/7U;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7U;->A03:Lcom/facebook/ads/redexgen/X/KL;

    .line 16623
    new-instance v0, Lcom/facebook/ads/redexgen/X/7X;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7X;-><init>(Lcom/facebook/ads/redexgen/X/7U;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7U;->A01:Lcom/facebook/ads/redexgen/X/KW;

    .line 16624
    new-instance v0, Lcom/facebook/ads/redexgen/X/7W;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7W;-><init>(Lcom/facebook/ads/redexgen/X/7U;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7U;->A02:Lcom/facebook/ads/redexgen/X/KQ;

    .line 16625
    new-instance v0, Lcom/facebook/ads/redexgen/X/7V;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7V;-><init>(Lcom/facebook/ads/redexgen/X/7U;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7U;->A00:Lcom/facebook/ads/redexgen/X/Le;

    .line 16626
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7U;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 16627
    .local p0, "metrics":Landroid/util/DisplayMetrics;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Pj;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Pj;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7U;->A04:Lcom/facebook/ads/redexgen/X/Pj;

    .line 16628
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7U;->A04:Lcom/facebook/ads/redexgen/X/Pj;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Pj;->setChecked(Z)V

    .line 16629
    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41c80000    # 25.0f

    mul-float/2addr v0, v1

    float-to-int v2, v0

    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 16630
    .local p1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/7U;->setVisibility(I)V

    .line 16631
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7U;->A04:Lcom/facebook/ads/redexgen/X/Pj;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/7U;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16632
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/7U;->setClickable(Z)V

    .line 16633
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/7U;->setFocusable(Z)V

    .line 16634
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/7U;)Lcom/facebook/ads/redexgen/X/Pj;
    .locals 0

    .line 16635
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7U;->A04:Lcom/facebook/ads/redexgen/X/Pj;

    return-object p0
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "dj2bca5KMhic7lU7SNdjndSTQwmssf52"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "TPlcacN2BRfqpmqqou3eGj4ypEirHC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "lK1i5T"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "LDnNwGMA5Xj1Rc4RK"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "9vPtQslMJEvaRYxyY6ZiMi1q6kn3NQTo"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "pbwCeIFhJ07zfEQSECI2TdcOW"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Wj7W52"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ztBFgo3EeJBil6N8wes8zN"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/7U;->A05:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 16636
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/MP;->A07()V

    .line 16637
    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/7U;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16638
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7U;->A04:Lcom/facebook/ads/redexgen/X/Pj;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Pj;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16639
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MP;->getVideoView()Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16640
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MP;->getVideoView()Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getEventBus()Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v3

    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9G;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7U;->A03:Lcom/facebook/ads/redexgen/X/KL;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7U;->A00:Lcom/facebook/ads/redexgen/X/Le;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7U;->A01:Lcom/facebook/ads/redexgen/X/KW;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7U;->A02:Lcom/facebook/ads/redexgen/X/KQ;

    aput-object v0, v2, v1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9F;->A04([Lcom/facebook/ads/redexgen/X/9G;)V

    .line 16641
    :cond_0
    return-void
.end method

.method public final A08()V
    .locals 4

    .line 16642
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MP;->getVideoView()Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16643
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MP;->getVideoView()Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getEventBus()Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v3

    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9G;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7U;->A02:Lcom/facebook/ads/redexgen/X/KQ;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7U;->A01:Lcom/facebook/ads/redexgen/X/KW;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7U;->A00:Lcom/facebook/ads/redexgen/X/Le;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7U;->A03:Lcom/facebook/ads/redexgen/X/KL;

    aput-object v0, v2, v1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9F;->A05([Lcom/facebook/ads/redexgen/X/9G;)V

    .line 16644
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/7U;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16645
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7U;->A04:Lcom/facebook/ads/redexgen/X/Pj;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Pj;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16646
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/MP;->A08()V

    .line 16647
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KT;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 16648
    .local p0, "this":Lcom/facebook/ads/redexgen/X/7U;
    .local v1, "v":Landroid/view/View;
    :try_start_0
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/MP;->getVideoView()Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v2

    .line 16649
    .local p1, "videoView":Lcom/facebook/ads/redexgen/X/PD;
    if-nez v2, :cond_1

    .line 16650
    return-void

    .line 16651
    :cond_1
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/PD;->getState()Lcom/facebook/ads/redexgen/X/QB;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A07:Lcom/facebook/ads/redexgen/X/QB;

    if-eq v1, v0, :cond_2

    .line 16652
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/PD;->getState()Lcom/facebook/ads/redexgen/X/QB;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A05:Lcom/facebook/ads/redexgen/X/QB;

    if-eq v1, v0, :cond_2

    .line 16653
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/PD;->getState()Lcom/facebook/ads/redexgen/X/QB;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A06:Lcom/facebook/ads/redexgen/X/QB;

    if-ne v1, v0, :cond_3

    .line 16654
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/7U;
    :cond_2
    sget-object v1, Lcom/facebook/ads/redexgen/X/PO;->A05:Lcom/facebook/ads/redexgen/X/PO;

    const/16 v0, 0xb

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0Y(Lcom/facebook/ads/redexgen/X/PO;I)V

    goto :goto_0

    .line 16655
    :cond_3
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/PD;->getState()Lcom/facebook/ads/redexgen/X/QB;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A0A:Lcom/facebook/ads/redexgen/X/QB;

    if-ne v1, v0, :cond_4

    .line 16656
    const/4 v1, 0x1

    const/4 v0, 0x7

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0b(ZI)V

    .line 16657
    :cond_4
    :goto_0
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p1    # "videoView":Lcom/facebook/ads/redexgen/X/PD;
    .end local v1    # "v":Landroid/view/View;
    :catchall_0
    move-exception v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/7U;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/7U;->A05:[Ljava/lang/String;

    const-string v1, "YsoDkb8mAWGLBYzRGBa3i8"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v3, v4}, Lcom/facebook/ads/redexgen/X/KT;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public setPauseAccessibilityLabel(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 16658
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7U;->A04:Lcom/facebook/ads/redexgen/X/Pj;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Pj;->setPauseAccessibilityLabel(Ljava/lang/String;)V

    .line 16659
    return-void
.end method

.method public setPlayAccessibilityLabel(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 16660
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7U;->A04:Lcom/facebook/ads/redexgen/X/Pj;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Pj;->setPlayAccessibilityLabel(Ljava/lang/String;)V

    .line 16661
    return-void
.end method
