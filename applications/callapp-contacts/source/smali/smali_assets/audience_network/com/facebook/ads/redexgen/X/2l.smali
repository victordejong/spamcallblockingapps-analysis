.class public final Lcom/facebook/ads/redexgen/X/2l;
.super Lcom/facebook/ads/redexgen/X/9o;
.source ""


# static fields
.field public static final A06:I

.field public static final A07:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/a7;
    .annotation runtime Lcom/facebook/ads/internal/checkerframework/checker/nullness/qual/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/Ot;
    .annotation runtime Lcom/facebook/ads/internal/checkerframework/checker/nullness/qual/Nullable;
    .end annotation
.end field

.field public final A02:Lcom/facebook/ads/redexgen/X/JC;

.field public final A03:Lcom/facebook/ads/redexgen/X/cD;

.field public final A04:Lcom/facebook/ads/redexgen/X/9v;

.field public final A05:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 5870
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, -0x3f800000    # -4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/2l;->A07:I

    .line 5871
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x40c00000    # 6.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/2l;->A06:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/O1;Lcom/facebook/ads/redexgen/X/cD;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/9v;)V
    .locals 1

    .line 5872
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/facebook/ads/redexgen/X/9o;-><init>(Lcom/facebook/ads/redexgen/X/O1;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/RH;)V

    .line 5873
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/2l;->A03:Lcom/facebook/ads/redexgen/X/cD;

    .line 5874
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/2l;->A05:Ljava/lang/String;

    .line 5875
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/2l;->A04:Lcom/facebook/ads/redexgen/X/9v;

    .line 5876
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0I:Lcom/facebook/ads/redexgen/X/O1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A05()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/br;->A01(Lcom/facebook/ads/redexgen/X/XK;)Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2l;->A02:Lcom/facebook/ads/redexgen/X/JC;

    .line 5877
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2l;->A03:Lcom/facebook/ads/redexgen/X/cD;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/cD;->A1K(Landroid/view/View;)V

    .line 5878
    return-void
.end method


# virtual methods
.method public setupNativeCtaExtension(Lcom/facebook/ads/redexgen/X/Ot;)V
    .locals 11

    .line 5879
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2l;->A01:Lcom/facebook/ads/redexgen/X/Ot;

    .line 5880
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0I:Lcom/facebook/ads/redexgen/X/O1;

    .line 5881
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A05()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0K(Landroid/content/Context;)I

    move-result v1

    .line 5882
    .local p0, "extensionVariant":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2l;->A03:Lcom/facebook/ads/redexgen/X/cD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0z()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0M()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v6

    .line 5883
    .local p1, "colorInfo":Lcom/facebook/ads/redexgen/X/1I;
    new-instance v3, Lcom/facebook/ads/redexgen/X/a7;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A0I:Lcom/facebook/ads/redexgen/X/O1;

    .line 5884
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A05()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2l;->A03:Lcom/facebook/ads/redexgen/X/cD;

    .line 5885
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0z()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0S()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/2l;->A02:Lcom/facebook/ads/redexgen/X/JC;

    .line 5886
    invoke-static {}, Lcom/facebook/ads/redexgen/X/NQ;->getDummyListener()Lcom/facebook/ads/redexgen/X/M9;

    move-result-object v8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2l;->A04:Lcom/facebook/ads/redexgen/X/9v;

    .line 5887
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9v;->A0e()Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2l;->A03:Lcom/facebook/ads/redexgen/X/cD;

    .line 5888
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cD;->A18()Lcom/facebook/ads/redexgen/X/La;

    move-result-object v10

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/a7;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1I;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/QE;Lcom/facebook/ads/redexgen/X/La;)V

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/2l;->A00:Lcom/facebook/ads/redexgen/X/a7;

    .line 5889
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/2l;->A00:Lcom/facebook/ads/redexgen/X/a7;

    .line 5890
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ot;->A03()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0G()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v3

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2l;->A05:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5891
    invoke-virtual {v4, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/a7;->setCta(Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;Ljava/util/Map;)V

    .line 5892
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2l;->A03:Lcom/facebook/ads/redexgen/X/cD;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2l;->A00:Lcom/facebook/ads/redexgen/X/a7;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/cD;->A1K(Landroid/view/View;)V

    .line 5893
    const/4 v2, -0x1

    const/4 v0, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5894
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v5, 0x0

    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    .line 5895
    const/16 v0, 0xc

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 5896
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2l;->A00:Lcom/facebook/ads/redexgen/X/a7;

    sget v2, Lcom/facebook/ads/redexgen/X/2l;->A06:I

    const/4 v1, 0x5

    .line 5897
    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/1I;->A09(Z)I

    move-result v0

    .line 5898
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0T(Landroid/view/View;III)V

    .line 5899
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9o;->A06:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2l;->A00:Lcom/facebook/ads/redexgen/X/a7;

    invoke-virtual {v1, v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5900
    :cond_0
    :goto_0
    return-void

    .line 5901
    :cond_1
    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    .line 5902
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 5903
    sget v0, Lcom/facebook/ads/redexgen/X/2l;->A07:I

    invoke-virtual {v4, v5, v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 5904
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2l;->A00:Lcom/facebook/ads/redexgen/X/a7;

    invoke-virtual {p0, v0, v5, v4}, Lcom/facebook/ads/redexgen/X/2l;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 5905
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V

    goto :goto_0
.end method
