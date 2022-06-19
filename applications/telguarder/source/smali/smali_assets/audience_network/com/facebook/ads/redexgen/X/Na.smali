.class public abstract Lcom/facebook/ads/redexgen/X/Na;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static final A05:I

.field public static final A06:Landroid/widget/LinearLayout$LayoutParams;


# instance fields
.field public final A00:I

.field public final A01:Landroid/widget/RelativeLayout;

.field public final A02:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A03:Lcom/facebook/ads/redexgen/X/Ry;

.field public final A04:Lcom/facebook/ads/redexgen/X/Nj;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 45525
    const/4 v1, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Na;->A06:Landroid/widget/LinearLayout$LayoutParams;

    .line 45526
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Na;->A05:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;ILcom/facebook/ads/redexgen/X/1I;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M7;Lcom/facebook/ads/redexgen/X/Q9;Lcom/facebook/ads/redexgen/X/Lc;)V
    .locals 11

    .line 45527
    move-object v2, p0

    move-object v4, p1

    invoke-direct {p0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45528
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 45529
    iput-object v4, v2, Lcom/facebook/ads/redexgen/X/Na;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    .line 45530
    iput p2, v2, Lcom/facebook/ads/redexgen/X/Na;->A00:I

    .line 45531
    new-instance v0, Lcom/facebook/ads/redexgen/X/Nj;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/Nj;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Na;->A04:Lcom/facebook/ads/redexgen/X/Nj;

    .line 45532
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Na;->A04:Lcom/facebook/ads/redexgen/X/Nj;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0O(Landroid/view/View;I)V

    .line 45533
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Na;->A04:Lcom/facebook/ads/redexgen/X/Nj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 45534
    new-instance v3, Lcom/facebook/ads/redexgen/X/Ry;

    move-object/from16 v10, p8

    move-object/from16 v9, p7

    move-object/from16 v7, p5

    move-object v5, p4

    move-object v6, p3

    move-object/from16 v8, p6

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/Ry;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1I;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M7;Lcom/facebook/ads/redexgen/X/Q9;Lcom/facebook/ads/redexgen/X/Lc;)V

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/Na;->A03:Lcom/facebook/ads/redexgen/X/Ry;

    .line 45535
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Na;->A03:Lcom/facebook/ads/redexgen/X/Ry;

    const/16 v0, 0x3e9

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lj;->A0I(ILandroid/view/View;)V

    .line 45536
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Na;->A01:Landroid/widget/RelativeLayout;

    .line 45537
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Na;->A01:Landroid/widget/RelativeLayout;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Na;->A06:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45538
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Na;->A01:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 45539
    return-void
.end method


# virtual methods
.method public A09()V
    .locals 0

    .line 45540
    return-void
.end method

.method public A0A()V
    .locals 0

    .line 45541
    return-void
.end method

.method public abstract A0B(I)V
.end method

.method public final getCTAButton()Lcom/facebook/ads/redexgen/X/Ry;
    .locals 1

    .line 45542
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Na;->A03:Lcom/facebook/ads/redexgen/X/Ry;

    return-object v0
.end method

.method public getExpandableLayout()Landroid/view/View;
    .locals 1

    .line 45543
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIconView()Landroid/widget/ImageView;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 45544
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Na;->A04:Lcom/facebook/ads/redexgen/X/Nj;

    return-object v0
.end method

.method public setInfo(Lcom/facebook/ads/redexgen/X/1G;Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Nd;)V
    .locals 3
    .param p5    # Lcom/facebook/ads/redexgen/X/Nd;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 45545
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Na;->A03:Lcom/facebook/ads/redexgen/X/Ry;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, p2, p3, v0, p5}, Lcom/facebook/ads/redexgen/X/Ry;->setCta(Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Nd;)V

    .line 45546
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Na;->A04:Lcom/facebook/ads/redexgen/X/Nj;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Na;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Rz;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Rz;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Wm;)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Na;->A00:I

    .line 45547
    invoke-virtual {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/Rz;->A06(II)Lcom/facebook/ads/redexgen/X/Rz;

    move-result-object v0

    .line 45548
    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/Rz;->A08(Ljava/lang/String;)V

    .line 45549
    return-void
.end method

.method public setTitleMaxLines(I)V
    .locals 0

    .line 45550
    return-void
.end method
