.class public final Lcom/facebook/ads/redexgen/X/aZ;
.super Lcom/facebook/ads/redexgen/X/Mj;
.source ""


# static fields
.field public static final A02:I


# instance fields
.field public final A00:Landroid/widget/RelativeLayout;

.field public final A01:Lcom/facebook/ads/redexgen/X/XJ;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 67832
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/aZ;->A02:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1S;Lcom/facebook/ads/redexgen/X/MA;Lcom/facebook/ads/redexgen/X/M9;)V
    .locals 3

    .line 67833
    invoke-direct/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/Mj;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1S;Lcom/facebook/ads/redexgen/X/MA;Lcom/facebook/ads/redexgen/X/M9;)V

    .line 67834
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aZ;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    .line 67835
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/aZ;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aZ;->A00:Landroid/widget/RelativeLayout;

    .line 67836
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aZ;->A00:Landroid/widget/RelativeLayout;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/aZ;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67837
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aZ;->A00:Landroid/widget/RelativeLayout;

    const/high16 v0, -0x67000000

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0P(Landroid/view/View;I)V

    .line 67838
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aZ;->A00:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Mo;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Mo;-><init>(Lcom/facebook/ads/redexgen/X/aZ;)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67839
    return-void
.end method

.method public static A0A(Z)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .line 67840
    const/4 v2, -0x1

    if-eqz p0, :cond_0

    const/4 v0, -0x1

    :goto_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 67841
    .local p0, "viewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 67842
    return-object v1

    .line 67843
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method private A0B()V
    .locals 3

    .line 67844
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_0

    .line 67845
    new-instance v2, Landroid/transition/TransitionSet;

    invoke-direct {v2}, Landroid/transition/TransitionSet;-><init>()V

    .line 67846
    .local p0, "transition":Landroid/transition/TransitionSet;
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 67847
    new-instance v0, Landroid/transition/ChangeBounds;

    invoke-direct {v0}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {v2, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v1

    new-instance v0, Landroid/transition/Explode;

    invoke-direct {v0}, Landroid/transition/Explode;-><init>()V

    invoke-virtual {v1, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 67848
    invoke-static {p0, v2}, Lcom/facebook/ads/redexgen/X/Lh;->A0a(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 67849
    .end local p0    # "transition":Landroid/transition/TransitionSet;
    :goto_0
    return-void

    .line 67850
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lh;->A0Y(Landroid/view/ViewGroup;)V

    goto :goto_0
.end method


# virtual methods
.method public final A0K()V
    .locals 11

    .line 67851
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aZ;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    .line 67852
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A03(Lcom/facebook/ads/redexgen/X/XK;)Lcom/facebook/ads/redexgen/X/2B;

    move-result-object v10

    .line 67853
    .local p0, "hidingReason":Lcom/facebook/ads/redexgen/X/2B;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aZ;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v8, Lcom/facebook/ads/redexgen/X/My;

    invoke-direct {v8, v0}, Lcom/facebook/ads/redexgen/X/My;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 67854
    .local v0, "hideAdView":Lcom/facebook/ads/redexgen/X/My;
    sget-object v2, Lcom/facebook/ads/redexgen/X/Lp;->A0K:Lcom/facebook/ads/redexgen/X/Lp;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aZ;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    .line 67855
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A0B(Lcom/facebook/ads/redexgen/X/XK;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aZ;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    .line 67856
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A0A(Lcom/facebook/ads/redexgen/X/XK;)Ljava/lang/String;

    move-result-object v0

    .line 67857
    invoke-virtual {v8, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/My;->setInfo(Lcom/facebook/ads/redexgen/X/Lp;Ljava/lang/String;Ljava/lang/String;)V

    .line 67858
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mp;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Mp;-><init>(Lcom/facebook/ads/redexgen/X/aZ;)V

    invoke-virtual {v8, v0}, Lcom/facebook/ads/redexgen/X/My;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67859
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aZ;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    .line 67860
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A04(Lcom/facebook/ads/redexgen/X/XK;)Lcom/facebook/ads/redexgen/X/2B;

    move-result-object v9

    .line 67861
    .local v0, "reportingReason":Lcom/facebook/ads/redexgen/X/2B;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aZ;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v7, Lcom/facebook/ads/redexgen/X/My;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/My;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 67862
    .local v10, "reportAdView":Lcom/facebook/ads/redexgen/X/My;
    sget-object v2, Lcom/facebook/ads/redexgen/X/Lp;->A0P:Lcom/facebook/ads/redexgen/X/Lp;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aZ;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    .line 67863
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A0F(Lcom/facebook/ads/redexgen/X/XK;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aZ;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    .line 67864
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A0E(Lcom/facebook/ads/redexgen/X/XK;)Ljava/lang/String;

    move-result-object v0

    .line 67865
    invoke-virtual {v7, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/My;->setInfo(Lcom/facebook/ads/redexgen/X/Lp;Ljava/lang/String;Ljava/lang/String;)V

    .line 67866
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mq;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Mq;-><init>(Lcom/facebook/ads/redexgen/X/aZ;)V

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/My;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67867
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aZ;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v6, Lcom/facebook/ads/redexgen/X/My;

    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/My;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 67868
    .local v0, "adChoicesView":Lcom/facebook/ads/redexgen/X/My;
    sget-object v2, Lcom/facebook/ads/redexgen/X/Lp;->A07:Lcom/facebook/ads/redexgen/X/Lp;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aZ;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    .line 67869
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A0G(Lcom/facebook/ads/redexgen/X/XK;)Ljava/lang/String;

    move-result-object v1

    .line 67870
    const-string v0, ""

    invoke-virtual {v6, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/My;->setInfo(Lcom/facebook/ads/redexgen/X/Lp;Ljava/lang/String;Ljava/lang/String;)V

    .line 67871
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mr;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Mr;-><init>(Lcom/facebook/ads/redexgen/X/aZ;)V

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/My;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67872
    const/4 v5, -0x1

    const/4 v0, -0x2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 67873
    .local v8, "itemParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/aZ;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 67874
    .local v0, "optionsView":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 67875
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 67876
    sget v2, Lcom/facebook/ads/redexgen/X/aZ;->A02:I

    mul-int/lit8 v1, v2, 0x2

    mul-int/lit8 v0, v2, 0x2

    invoke-virtual {v3, v1, v2, v0, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 67877
    invoke-static {v3, v5}, Lcom/facebook/ads/redexgen/X/Lh;->A0P(Landroid/view/View;I)V

    .line 67878
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/2B;->A05()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67879
    invoke-virtual {v3, v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67880
    :cond_0
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/2B;->A05()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 67881
    invoke-virtual {v3, v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67882
    :cond_1
    invoke-virtual {v3, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67883
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aZ;->A0B()V

    .line 67884
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aZ;->A00:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 67885
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aZ;->A00:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aZ;->A0A(Z)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67886
    return-void
.end method

.method public final A0L()V
    .locals 1

    .line 67887
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lh;->A0L(Landroid/view/View;)V

    .line 67888
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aZ;->A00:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 67889
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lh;->A0M(Landroid/view/View;)V

    .line 67890
    return-void
.end method

.method public final A0M(Lcom/facebook/ads/redexgen/X/2B;Lcom/facebook/ads/redexgen/X/29;)V
    .locals 5

    .line 67891
    sget-object v0, Lcom/facebook/ads/redexgen/X/29;->A04:Lcom/facebook/ads/redexgen/X/29;

    if-ne p2, v0, :cond_0

    .line 67892
    return-void

    .line 67893
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/29;->A05:Lcom/facebook/ads/redexgen/X/29;

    const/4 v4, 0x1

    if-ne p2, v0, :cond_5

    const/4 v3, 0x1

    .line 67894
    .local p0, "isReportFlow":Z
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aZ;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mj;->A0A:Lcom/facebook/ads/redexgen/X/Ml;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Mh;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Mh;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/Ml;)V

    .line 67895
    if-eqz v3, :cond_4

    .line 67896
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aZ;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A09(Lcom/facebook/ads/redexgen/X/XK;)Ljava/lang/String;

    move-result-object v0

    .line 67897
    :goto_1
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mh;->A0I(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mh;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aZ;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    .line 67898
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A07(Lcom/facebook/ads/redexgen/X/XK;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mh;->A0H(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mh;

    move-result-object v1

    .line 67899
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2B;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mh;->A0F(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mh;

    move-result-object v1

    .line 67900
    if-eqz v3, :cond_3

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lp;->A0P:Lcom/facebook/ads/redexgen/X/Lp;

    :goto_2
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mh;->A0E(Lcom/facebook/ads/redexgen/X/Lp;)Lcom/facebook/ads/redexgen/X/Mh;

    move-result-object v1

    .line 67901
    if-eqz v3, :cond_2

    .line 67902
    const v0, -0x86dc5

    .line 67903
    :goto_3
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mh;->A0D(I)Lcom/facebook/ads/redexgen/X/Mh;

    move-result-object v1

    .line 67904
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mj;->A09:Lcom/facebook/ads/redexgen/X/1S;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mj;->A09:Lcom/facebook/ads/redexgen/X/1S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1S;->A01()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mh;->A0G(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mh;

    move-result-object v0

    .line 67905
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mh;->A0M()Lcom/facebook/ads/redexgen/X/Mi;

    move-result-object v2

    .line 67906
    .local p2, "adHiddenView":Lcom/facebook/ads/redexgen/X/Mi;
    const/4 v0, -0x1

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0P(Landroid/view/View;I)V

    .line 67907
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lh;->A0Y(Landroid/view/ViewGroup;)V

    .line 67908
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aZ;->A00:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 67909
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aZ;->A00:Landroid/widget/RelativeLayout;

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/aZ;->A0A(Z)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67910
    return-void

    .line 67911
    :cond_1
    const-string v0, ""

    goto :goto_4

    .line 67912
    :cond_2
    const v0, -0xca871b

    goto :goto_3

    .line 67913
    :cond_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/Lp;->A0K:Lcom/facebook/ads/redexgen/X/Lp;

    goto :goto_2

    .line 67914
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aZ;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A08(Lcom/facebook/ads/redexgen/X/XK;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 67915
    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final A0N(Lcom/facebook/ads/redexgen/X/2B;Lcom/facebook/ads/redexgen/X/29;)V
    .locals 10

    .line 67916
    sget-object v0, Lcom/facebook/ads/redexgen/X/29;->A05:Lcom/facebook/ads/redexgen/X/29;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v0, :cond_2

    const/4 v1, 0x1

    .line 67917
    .local p0, "isReportFlow":Z
    :goto_0
    new-instance v4, Lcom/facebook/ads/redexgen/X/N1;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/aZ;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Mj;->A0A:Lcom/facebook/ads/redexgen/X/Ml;

    .line 67918
    if-eqz v1, :cond_1

    .line 67919
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aZ;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A0F(Lcom/facebook/ads/redexgen/X/XK;)Ljava/lang/String;

    move-result-object v8

    .line 67920
    :goto_1
    if-eqz v1, :cond_0

    sget-object v9, Lcom/facebook/ads/redexgen/X/Lp;->A0P:Lcom/facebook/ads/redexgen/X/Lp;

    :goto_2
    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/N1;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/2B;Lcom/facebook/ads/redexgen/X/Ml;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Lp;)V

    .line 67921
    .local v0, "reasonPickerView":Lcom/facebook/ads/redexgen/X/N1;
    invoke-virtual {v4, v2}, Lcom/facebook/ads/redexgen/X/N1;->setClickable(Z)V

    .line 67922
    const/4 v0, -0x1

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0P(Landroid/view/View;I)V

    .line 67923
    sget v2, Lcom/facebook/ads/redexgen/X/aZ;->A02:I

    mul-int/lit8 v1, v2, 0x2

    mul-int/lit8 v0, v2, 0x2

    invoke-virtual {v4, v1, v2, v0, v2}, Lcom/facebook/ads/redexgen/X/N1;->setPadding(IIII)V

    .line 67924
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aZ;->A0B()V

    .line 67925
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aZ;->A00:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 67926
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aZ;->A00:Landroid/widget/RelativeLayout;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/aZ;->A0A(Z)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67927
    return-void

    .line 67928
    :cond_0
    sget-object v9, Lcom/facebook/ads/redexgen/X/Lp;->A0K:Lcom/facebook/ads/redexgen/X/Lp;

    goto :goto_2

    .line 67929
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aZ;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A0B(Lcom/facebook/ads/redexgen/X/XK;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 67930
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final A0O()Z
    .locals 1

    .line 67931
    const/4 v0, 0x0

    return v0
.end method
