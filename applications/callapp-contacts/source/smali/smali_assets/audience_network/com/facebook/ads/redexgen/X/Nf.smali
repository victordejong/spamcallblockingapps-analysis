.class public abstract Lcom/facebook/ads/redexgen/X/Nf;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static final A05:I

.field public static final A06:Landroid/widget/LinearLayout$LayoutParams;


# instance fields
.field public final A00:I

.field public final A01:Landroid/widget/RelativeLayout;

.field public final A02:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A03:Lcom/facebook/ads/redexgen/X/a7;

.field public final A04:Lcom/facebook/ads/redexgen/X/No;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 45520
    const/4 v1, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Nf;->A06:Landroid/widget/LinearLayout$LayoutParams;

    .line 45521
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Nf;->A05:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;ILcom/facebook/ads/redexgen/X/1I;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/QE;Lcom/facebook/ads/redexgen/X/La;)V
    .locals 11

    .line 45522
    move-object v2, p0

    move-object v4, p1

    invoke-direct {p0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45523
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 45524
    iput-object v4, v2, Lcom/facebook/ads/redexgen/X/Nf;->A02:Lcom/facebook/ads/redexgen/X/XJ;

    .line 45525
    iput p2, v2, Lcom/facebook/ads/redexgen/X/Nf;->A00:I

    .line 45526
    new-instance v0, Lcom/facebook/ads/redexgen/X/No;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/No;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Nf;->A04:Lcom/facebook/ads/redexgen/X/No;

    .line 45527
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Nf;->A04:Lcom/facebook/ads/redexgen/X/No;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0P(Landroid/view/View;I)V

    .line 45528
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Nf;->A04:Lcom/facebook/ads/redexgen/X/No;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 45529
    new-instance v3, Lcom/facebook/ads/redexgen/X/a7;

    move-object/from16 v9, p7

    move-object v6, p3

    move-object/from16 v10, p8

    move-object v5, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/a7;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1I;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/QE;Lcom/facebook/ads/redexgen/X/La;)V

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/Nf;->A03:Lcom/facebook/ads/redexgen/X/a7;

    .line 45530
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Nf;->A03:Lcom/facebook/ads/redexgen/X/a7;

    const/16 v0, 0x3e9

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lh;->A0J(ILandroid/view/View;)V

    .line 45531
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Nf;->A01:Landroid/widget/RelativeLayout;

    .line 45532
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Nf;->A01:Landroid/widget/RelativeLayout;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Nf;->A06:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45533
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Nf;->A01:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 45534
    return-void
.end method


# virtual methods
.method public A09(I)I
    .locals 1

    .line 45535
    const/4 v0, 0x0

    return v0
.end method

.method public A0A()V
    .locals 0

    .line 45536
    return-void
.end method

.method public A0B()V
    .locals 0

    .line 45537
    return-void
.end method

.method public A0C(Landroid/view/View;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .line 45538
    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public A0D(Landroid/view/View;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .line 45539
    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public abstract A0E(I)V
.end method

.method public abstract A0F(Z)V
.end method

.method public final getCTAButton()Lcom/facebook/ads/redexgen/X/a7;
    .locals 1

    .line 45540
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A03:Lcom/facebook/ads/redexgen/X/a7;

    return-object v0
.end method

.method public getExpandableLayout()Landroid/view/View;
    .locals 1

    .line 45541
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIconView()Landroid/widget/ImageView;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 45542
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A04:Lcom/facebook/ads/redexgen/X/No;

    return-object v0
.end method

.method public setInfo(Lcom/facebook/ads/redexgen/X/1G;Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ni;)V
    .locals 3
    .param p5    # Lcom/facebook/ads/redexgen/X/Ni;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 45543
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nf;->A03:Lcom/facebook/ads/redexgen/X/a7;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, p2, p3, v0, p5}, Lcom/facebook/ads/redexgen/X/a7;->setCta(Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Ni;)V

    .line 45544
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Nf;->A04:Lcom/facebook/ads/redexgen/X/No;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A02:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v1, Lcom/facebook/ads/redexgen/X/aA;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/aA;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/XJ;)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A00:I

    .line 45545
    invoke-virtual {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/aA;->A06(II)Lcom/facebook/ads/redexgen/X/aA;

    move-result-object v0

    .line 45546
    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/aA;->A08(Ljava/lang/String;)V

    .line 45547
    return-void
.end method

.method public setTitleMaxLines(I)V
    .locals 0

    .line 45548
    return-void
.end method
