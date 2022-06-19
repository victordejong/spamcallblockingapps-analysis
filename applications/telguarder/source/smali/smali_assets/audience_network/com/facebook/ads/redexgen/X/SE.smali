.class public final Lcom/facebook/ads/redexgen/X/SE;
.super Lcom/facebook/ads/redexgen/X/Me;
.source ""


# static fields
.field public static A02:[Ljava/lang/String;

.field public static final A03:I


# instance fields
.field public final A00:Landroid/widget/RelativeLayout;

.field public final A01:Lcom/facebook/ads/redexgen/X/Wm;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 51608
    invoke-static {}, Lcom/facebook/ads/redexgen/X/SE;->A0C()V

    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/SE;->A03:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1S;Lcom/facebook/ads/redexgen/X/M8;Lcom/facebook/ads/redexgen/X/M7;)V
    .locals 3

    .line 51609
    invoke-direct/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/Me;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1S;Lcom/facebook/ads/redexgen/X/M8;Lcom/facebook/ads/redexgen/X/M7;)V

    .line 51610
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SE;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    .line 51611
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SE;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SE;->A00:Landroid/widget/RelativeLayout;

    .line 51612
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/SE;->A00:Landroid/widget/RelativeLayout;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/SE;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51613
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SE;->A00:Landroid/widget/RelativeLayout;

    const/high16 v0, -0x67000000

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0O(Landroid/view/View;I)V

    .line 51614
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SE;->A00:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Mj;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Mj;-><init>(Lcom/facebook/ads/redexgen/X/SE;)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51615
    return-void
.end method

.method public static A0A(Z)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .line 51616
    const/4 v2, -0x1

    if-eqz p0, :cond_0

    const/4 v0, -0x1

    :goto_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51617
    .local p0, "viewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51618
    return-object v1

    .line 51619
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method private A0B()V
    .locals 3

    .line 51620
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_0

    .line 51621
    new-instance v2, Landroid/transition/TransitionSet;

    invoke-direct {v2}, Landroid/transition/TransitionSet;-><init>()V

    .line 51622
    .local p0, "transition":Landroid/transition/TransitionSet;
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 51623
    new-instance v0, Landroid/transition/ChangeBounds;

    invoke-direct {v0}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {v2, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v1

    new-instance v0, Landroid/transition/Explode;

    invoke-direct {v0}, Landroid/transition/Explode;-><init>()V

    invoke-virtual {v1, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 51624
    invoke-static {p0, v2}, Lcom/facebook/ads/redexgen/X/Lj;->A0X(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 51625
    .end local p0    # "transition":Landroid/transition/TransitionSet;
    :goto_0
    return-void

    .line 51626
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lj;->A0V(Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method public static A0C()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ps9u6Kn8p"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "fRCCllxRFm9XYnsS5Nz0CDYYbd8rz98F"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "veZY5LUK4HkumILqtvhVtf9OT9QK1Jmh"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "8c6Edyt19YE2bwpDp37rWBgdyfN4I4si"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Dgwj6SSLqT"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "biYcUlACC5CMDg3zbjwwDR7mq5XP76DA"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "rp5V5gFYHfFnaijOqqdMDMWavMrEx7HP"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ycj43TNZcka4uMSCxDz6fuqQ2r9gi3g6"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/SE;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A0L()V
    .locals 11

    .line 51627
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SE;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    .line 51628
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A03(Lcom/facebook/ads/redexgen/X/Wl;)Lcom/facebook/ads/redexgen/X/2B;

    move-result-object v10

    .line 51629
    .local p0, "hidingReason":Lcom/facebook/ads/redexgen/X/2B;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SE;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v8, Lcom/facebook/ads/redexgen/X/Mt;

    invoke-direct {v8, v0}, Lcom/facebook/ads/redexgen/X/Mt;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 51630
    .local v0, "hideAdView":Lcom/facebook/ads/redexgen/X/Mt;
    sget-object v2, Lcom/facebook/ads/redexgen/X/Lr;->A0J:Lcom/facebook/ads/redexgen/X/Lr;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SE;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    .line 51631
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A0B(Lcom/facebook/ads/redexgen/X/Wl;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SE;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    .line 51632
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A0A(Lcom/facebook/ads/redexgen/X/Wl;)Ljava/lang/String;

    move-result-object v0

    .line 51633
    invoke-virtual {v8, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Mt;->setInfo(Lcom/facebook/ads/redexgen/X/Lr;Ljava/lang/String;Ljava/lang/String;)V

    .line 51634
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mk;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Mk;-><init>(Lcom/facebook/ads/redexgen/X/SE;)V

    invoke-virtual {v8, v0}, Lcom/facebook/ads/redexgen/X/Mt;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51635
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SE;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    .line 51636
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A04(Lcom/facebook/ads/redexgen/X/Wl;)Lcom/facebook/ads/redexgen/X/2B;

    move-result-object v9

    .line 51637
    .local v0, "reportingReason":Lcom/facebook/ads/redexgen/X/2B;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SE;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v7, Lcom/facebook/ads/redexgen/X/Mt;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/Mt;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 51638
    .local v10, "reportAdView":Lcom/facebook/ads/redexgen/X/Mt;
    sget-object v2, Lcom/facebook/ads/redexgen/X/Lr;->A0O:Lcom/facebook/ads/redexgen/X/Lr;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SE;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    .line 51639
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A0F(Lcom/facebook/ads/redexgen/X/Wl;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SE;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    .line 51640
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A0E(Lcom/facebook/ads/redexgen/X/Wl;)Ljava/lang/String;

    move-result-object v0

    .line 51641
    invoke-virtual {v7, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Mt;->setInfo(Lcom/facebook/ads/redexgen/X/Lr;Ljava/lang/String;Ljava/lang/String;)V

    .line 51642
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ml;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ml;-><init>(Lcom/facebook/ads/redexgen/X/SE;)V

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/Mt;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51643
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SE;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v6, Lcom/facebook/ads/redexgen/X/Mt;

    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/Mt;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 51644
    .local v0, "adChoicesView":Lcom/facebook/ads/redexgen/X/Mt;
    sget-object v2, Lcom/facebook/ads/redexgen/X/Lr;->A06:Lcom/facebook/ads/redexgen/X/Lr;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SE;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    .line 51645
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A0G(Lcom/facebook/ads/redexgen/X/Wl;)Ljava/lang/String;

    move-result-object v1

    .line 51646
    const-string v0, ""

    invoke-virtual {v6, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Mt;->setInfo(Lcom/facebook/ads/redexgen/X/Lr;Ljava/lang/String;Ljava/lang/String;)V

    .line 51647
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mm;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Mm;-><init>(Lcom/facebook/ads/redexgen/X/SE;)V

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/Mt;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51648
    const/4 v5, -0x1

    const/4 v0, -0x2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51649
    .local v8, "itemParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SE;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51650
    .local v0, "optionsView":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 51651
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 51652
    sget v2, Lcom/facebook/ads/redexgen/X/SE;->A03:I

    mul-int/lit8 v1, v2, 0x2

    mul-int/lit8 v0, v2, 0x2

    invoke-virtual {v3, v1, v2, v0, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 51653
    invoke-static {v3, v5}, Lcom/facebook/ads/redexgen/X/Lj;->A0O(Landroid/view/View;I)V

    .line 51654
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/2B;->A05()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51655
    invoke-virtual {v3, v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51656
    :cond_0
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/2B;->A05()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51657
    invoke-virtual {v3, v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51658
    :cond_1
    invoke-virtual {v3, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51659
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SE;->A0B()V

    .line 51660
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SE;->A00:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 51661
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SE;->A00:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SE;->A0A(Z)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51662
    return-void
.end method

.method public final A0M()V
    .locals 1

    .line 51663
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lj;->A0K(Landroid/view/View;)V

    .line 51664
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SE;->A00:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 51665
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lj;->A0L(Landroid/view/View;)V

    .line 51666
    return-void
.end method

.method public final A0N(Lcom/facebook/ads/redexgen/X/2B;Lcom/facebook/ads/redexgen/X/29;)V
    .locals 7

    .line 51667
    sget-object v0, Lcom/facebook/ads/redexgen/X/29;->A04:Lcom/facebook/ads/redexgen/X/29;

    if-ne p2, v0, :cond_0

    .line 51668
    return-void

    .line 51669
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/29;->A05:Lcom/facebook/ads/redexgen/X/29;

    const/4 v6, 0x1

    if-ne p2, v0, :cond_1

    const/4 v5, 0x1

    .line 51670
    .local p0, "isReportFlow":Z
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SE;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Me;->A0A:Lcom/facebook/ads/redexgen/X/Mg;

    new-instance v3, Lcom/facebook/ads/redexgen/X/Mc;

    invoke-direct {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Mc;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/Mg;)V

    .line 51671
    if-eqz v5, :cond_3

    .line 51672
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SE;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/SE;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4d

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 51673
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/SE;->A02:[Ljava/lang/String;

    const-string v1, "fE81dulHFmzGO7NxqDb7oaE1pV2dKkXx"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "FHqo1ckB9pLdx3pZGfcAQQbM7kmpB4Tn"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/28;->A09(Lcom/facebook/ads/redexgen/X/Wl;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 51674
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SE;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A08(Lcom/facebook/ads/redexgen/X/Wl;)Ljava/lang/String;

    move-result-object v0

    .line 51675
    :goto_1
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Mc;->A0I(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mc;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SE;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    .line 51676
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A07(Lcom/facebook/ads/redexgen/X/Wl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mc;->A0H(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mc;

    move-result-object v1

    .line 51677
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2B;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mc;->A0F(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mc;

    move-result-object v1

    .line 51678
    if-eqz v5, :cond_6

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lr;->A0O:Lcom/facebook/ads/redexgen/X/Lr;

    :goto_2
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mc;->A0E(Lcom/facebook/ads/redexgen/X/Lr;)Lcom/facebook/ads/redexgen/X/Mc;

    move-result-object v1

    .line 51679
    if-eqz v5, :cond_5

    .line 51680
    const v0, -0x86dc5

    .line 51681
    :goto_3
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mc;->A0D(I)Lcom/facebook/ads/redexgen/X/Mc;

    move-result-object v1

    .line 51682
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Me;->A09:Lcom/facebook/ads/redexgen/X/1S;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Me;->A09:Lcom/facebook/ads/redexgen/X/1S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1S;->A01()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mc;->A0G(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mc;

    move-result-object v0

    .line 51683
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mc;->A0M()Lcom/facebook/ads/redexgen/X/Md;

    move-result-object v2

    .line 51684
    .local p2, "adHiddenView":Lcom/facebook/ads/redexgen/X/Md;
    const/4 v0, -0x1

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0O(Landroid/view/View;I)V

    .line 51685
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lj;->A0V(Landroid/view/ViewGroup;)V

    .line 51686
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SE;->A00:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 51687
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SE;->A00:Landroid/widget/RelativeLayout;

    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/SE;->A0A(Z)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51688
    return-void

    .line 51689
    :cond_4
    const-string v0, ""

    goto :goto_4

    .line 51690
    :cond_5
    const v0, -0xca871b

    goto :goto_3

    .line 51691
    :cond_6
    sget-object v0, Lcom/facebook/ads/redexgen/X/Lr;->A0J:Lcom/facebook/ads/redexgen/X/Lr;

    goto :goto_2
.end method

.method public final A0O(Lcom/facebook/ads/redexgen/X/2B;Lcom/facebook/ads/redexgen/X/29;)V
    .locals 10

    .line 51692
    sget-object v0, Lcom/facebook/ads/redexgen/X/29;->A05:Lcom/facebook/ads/redexgen/X/29;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v0, :cond_2

    const/4 v1, 0x1

    .line 51693
    .local p0, "isReportFlow":Z
    :goto_0
    new-instance v4, Lcom/facebook/ads/redexgen/X/Mw;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/SE;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Me;->A0A:Lcom/facebook/ads/redexgen/X/Mg;

    .line 51694
    if-eqz v1, :cond_1

    .line 51695
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SE;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A0F(Lcom/facebook/ads/redexgen/X/Wl;)Ljava/lang/String;

    move-result-object v8

    .line 51696
    :goto_1
    if-eqz v1, :cond_0

    sget-object v9, Lcom/facebook/ads/redexgen/X/Lr;->A0O:Lcom/facebook/ads/redexgen/X/Lr;

    :goto_2
    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Mw;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/2B;Lcom/facebook/ads/redexgen/X/Mg;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Lr;)V

    .line 51697
    .local v0, "reasonPickerView":Lcom/facebook/ads/redexgen/X/Mw;
    invoke-virtual {v4, v2}, Lcom/facebook/ads/redexgen/X/Mw;->setClickable(Z)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/SE;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x58

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 51698
    :cond_0
    sget-object v9, Lcom/facebook/ads/redexgen/X/Lr;->A0J:Lcom/facebook/ads/redexgen/X/Lr;

    goto :goto_2

    .line 51699
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SE;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A0B(Lcom/facebook/ads/redexgen/X/Wl;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 51700
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 51701
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/SE;->A02:[Ljava/lang/String;

    const-string v1, "oQvJ70CiRWilhIiWSDPMsGTFrOY4nX10"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/4 v0, -0x1

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0O(Landroid/view/View;I)V

    .line 51702
    sget v2, Lcom/facebook/ads/redexgen/X/SE;->A03:I

    mul-int/lit8 v1, v2, 0x2

    mul-int/lit8 v0, v2, 0x2

    invoke-virtual {v4, v1, v2, v0, v2}, Lcom/facebook/ads/redexgen/X/Mw;->setPadding(IIII)V

    .line 51703
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SE;->A0B()V

    .line 51704
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SE;->A00:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 51705
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SE;->A00:Landroid/widget/RelativeLayout;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/SE;->A0A(Z)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51706
    return-void
.end method

.method public final A0P()Z
    .locals 1

    .line 51707
    const/4 v0, 0x0

    return v0
.end method
