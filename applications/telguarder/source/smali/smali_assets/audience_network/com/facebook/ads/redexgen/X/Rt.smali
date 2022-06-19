.class public final Lcom/facebook/ads/redexgen/X/Rt;
.super Lcom/facebook/ads/redexgen/X/Na;
.source ""


# static fields
.field public static A0F:[B

.field public static A0G:[Ljava/lang/String;

.field public static final A0H:I

.field public static final A0I:I

.field public static final A0J:I

.field public static final A0K:I

.field public static final A0L:I

.field public static final A0M:I

.field public static final A0N:I

.field public static final A0O:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Landroid/widget/LinearLayout;

.field public A03:Landroid/widget/TextView;

.field public A04:Landroid/widget/TextView;

.field public A05:Landroid/widget/TextView;

.field public A06:Lcom/facebook/ads/redexgen/X/1G;

.field public A07:Lcom/facebook/ads/redexgen/X/1J;

.field public A08:Lcom/facebook/ads/redexgen/X/Nl;

.field public A09:Z

.field public final A0A:Landroid/widget/LinearLayout;

.field public final A0B:Landroid/widget/RelativeLayout;

.field public final A0C:Landroid/widget/RelativeLayout;

.field public final A0D:Landroid/widget/TextView;

.field public final A0E:Lcom/facebook/ads/redexgen/X/Wm;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 50828
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rt;->A08()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rt;->A07()V

    const/4 v1, -0x1

    const/16 v0, 0x4d

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2L;->A01(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Rt;->A0N:I

    .line 50829
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Rt;->A0K:I

    .line 50830
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Rt;->A0L:I

    .line 50831
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41d00000    # 26.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Rt;->A0H:I

    .line 50832
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x43100000    # 144.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Rt;->A0J:I

    .line 50833
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x42400000    # 48.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Rt;->A0I:I

    .line 50834
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Rt;->A0M:I

    .line 50835
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41600000    # 14.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Rt;->A0O:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;IZLcom/facebook/ads/redexgen/X/1I;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M7;Lcom/facebook/ads/redexgen/X/Q9;Lcom/facebook/ads/redexgen/X/Lc;)V
    .locals 12

    .line 50836
    move-object v2, p0

    move-object v3, p0

    move-object/from16 v11, p9

    move-object/from16 v10, p8

    move-object/from16 v9, p7

    move-object/from16 v7, p5

    move-object/from16 v6, p4

    move v5, p2

    move-object/from16 v8, p6

    move-object v4, p1

    invoke-direct/range {v3 .. v11}, Lcom/facebook/ads/redexgen/X/Na;-><init>(Lcom/facebook/ads/redexgen/X/Wm;ILcom/facebook/ads/redexgen/X/1I;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M7;Lcom/facebook/ads/redexgen/X/Q9;Lcom/facebook/ads/redexgen/X/Lc;)V

    .line 50837
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Rt;->A09:Z

    .line 50838
    iput v0, v2, Lcom/facebook/ads/redexgen/X/Rt;->A00:I

    .line 50839
    iput v0, v2, Lcom/facebook/ads/redexgen/X/Rt;->A01:I

    .line 50840
    iput-object v4, v2, Lcom/facebook/ads/redexgen/X/Rt;->A0E:Lcom/facebook/ads/redexgen/X/Wm;

    .line 50841
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Na;->A04:Lcom/facebook/ads/redexgen/X/Nj;

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/Nj;->setFullCircleCorners(Z)V

    .line 50842
    sget v1, Lcom/facebook/ads/redexgen/X/Rt;->A0K:I

    sget v0, Lcom/facebook/ads/redexgen/X/Rt;->A0H:I

    invoke-virtual {v2, v1, v1, v1, v0}, Lcom/facebook/ads/redexgen/X/Rt;->setPadding(IIII)V

    .line 50843
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rt;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Rt;->A0B:Landroid/widget/RelativeLayout;

    .line 50844
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rt;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Rt;->A05:Landroid/widget/TextView;

    .line 50845
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rt;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Rt;->A02:Landroid/widget/LinearLayout;

    .line 50846
    new-instance v5, Lcom/facebook/ads/redexgen/X/Nl;

    iget-object v6, v2, Lcom/facebook/ads/redexgen/X/Rt;->A0E:Lcom/facebook/ads/redexgen/X/Wm;

    sget v7, Lcom/facebook/ads/redexgen/X/Rt;->A0O:I

    sget v9, Lcom/facebook/ads/redexgen/X/Rt;->A0N:I

    const/4 v8, 0x5

    const/4 v10, -0x1

    invoke-direct/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/Nl;-><init>(Lcom/facebook/ads/redexgen/X/Wm;IIII)V

    iput-object v5, v2, Lcom/facebook/ads/redexgen/X/Rt;->A08:Lcom/facebook/ads/redexgen/X/Nl;

    .line 50847
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rt;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Rt;->A0C:Landroid/widget/RelativeLayout;

    .line 50848
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rt;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Rt;->A0A:Landroid/widget/LinearLayout;

    .line 50849
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rt;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Rt;->A04:Landroid/widget/TextView;

    .line 50850
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rt;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Rt;->A03:Landroid/widget/TextView;

    .line 50851
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Na;->A01:Landroid/widget/RelativeLayout;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Rt;->A0B:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 50852
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Na;->A01:Landroid/widget/RelativeLayout;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Rt;->A0A:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 50853
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rt;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Rt;->A0D:Landroid/widget/TextView;

    .line 50854
    invoke-static {p0, v4}, Lcom/facebook/ads/redexgen/X/Lj;->A0T(Landroid/view/View;Landroid/content/Context;)V

    .line 50855
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rt;->A05()V

    .line 50856
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rt;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x5f

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

    .line 50857
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Na;->A03:Lcom/facebook/ads/redexgen/X/Ry;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/Ry;->setPadding(IIII)V

    .line 50858
    sget v2, Lcom/facebook/ads/redexgen/X/Rt;->A0I:I

    const/4 v0, -0x1

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50859
    .local p0, "ctaButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Na;->A03:Lcom/facebook/ads/redexgen/X/Ry;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Ry;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50860
    return-void
.end method

.method private A02()V
    .locals 6

    .line 50861
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rt;->A0A:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 50862
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rt;->A0A:Landroid/widget/LinearLayout;

    sget v0, Lcom/facebook/ads/redexgen/X/Rt;->A0K:I

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 50863
    const/4 v4, -0x2

    const/4 v3, -0x1

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 50864
    .local p0, "expandableParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A0B:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v5, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 50865
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A0A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50866
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A0A:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 50867
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rt;->A03:Landroid/widget/TextView;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 50868
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rt;->A03:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 50869
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A03:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 50870
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A03:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50871
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A03:Landroid/widget/TextView;

    invoke-static {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Lj;->A0Z(Landroid/widget/TextView;ZI)V

    .line 50872
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50873
    .local v1, "descriptionParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rt;->A0A:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A03:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50874
    return-void
.end method

.method private A03()V
    .locals 7

    .line 50875
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A0B:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 50876
    const/4 v4, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 50877
    .local p0, "iconAndMetaDataContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Rt;->A0K:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 50878
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A0B:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50879
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A0B:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 50880
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Na;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Na;->A00:I

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 50881
    .local v4, "iconParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xf

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 50882
    const/16 v0, 0x9

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 50883
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rt;->A0B:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Na;->A04:Lcom/facebook/ads/redexgen/X/Nj;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50884
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 50885
    .local v0, "containerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Rt;->A0L:I

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 50886
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Na;->A04:Lcom/facebook/ads/redexgen/X/Nj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nj;->getId()I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 50887
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 50888
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rt;->A0B:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A0C:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50889
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A0C:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 50890
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A05:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 50891
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rt;->A05:Landroid/widget/TextView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Na;->A06:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50892
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A05:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50893
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rt;->A05:Landroid/widget/TextView;

    const/16 v0, 0x12

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0Z(Landroid/widget/TextView;ZI)V

    .line 50894
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rt;->A0C:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A05:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 50895
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A02:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 50896
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A02:Landroid/widget/LinearLayout;

    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 50897
    sget v0, Lcom/facebook/ads/redexgen/X/Rt;->A0M:I

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 50898
    .local v1, "ratingInfoContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Rt;->A0L:I

    div-int/lit8 v0, v0, 0x2

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 50899
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A05:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 50900
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rt;->A0C:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50901
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 50902
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A08:Lcom/facebook/ads/redexgen/X/Nl;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/Nl;->setGravity(I)V

    .line 50903
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50904
    .local v0, "starRatingContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rt;->A02:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A08:Lcom/facebook/ads/redexgen/X/Nl;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50905
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50906
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 50907
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 50908
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rt;->A04:Landroid/widget/TextView;

    const/16 v0, 0xe

    invoke-static {v1, v5, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0Z(Landroid/widget/TextView;ZI)V

    .line 50909
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50910
    .local v0, "ratingCountParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Rt;->A0L:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 50911
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rt;->A02:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A04:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50912
    return-void
.end method

.method private A04()V
    .locals 4

    .line 50913
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A0D:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 50914
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rt;->A0D:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 50915
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rt;->A0D:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 50916
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A0D:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50917
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A0D:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 50918
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rt;->A0D:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0Z(Landroid/widget/TextView;ZI)V

    .line 50919
    const/4 v0, -0x2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50920
    .local p0, "socialContextParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Rt;->A0K:I

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 50921
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A0D:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50922
    return-void
.end method

.method private A05()V
    .locals 2

    .line 50923
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rt;->removeAllViews()V

    .line 50924
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Na;->A01:Landroid/widget/RelativeLayout;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Na;->A06:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50925
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rt;->A03()V

    .line 50926
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rt;->A02()V

    .line 50927
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rt;->A01()V

    .line 50928
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rt;->A04()V

    .line 50929
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rt;->A06()V

    .line 50930
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Na;->A01:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0L(Landroid/view/View;)V

    .line 50931
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Na;->A03:Lcom/facebook/ads/redexgen/X/Ry;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0L(Landroid/view/View;)V

    .line 50932
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A0D:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0L(Landroid/view/View;)V

    .line 50933
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Na;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Rt;->addView(Landroid/view/View;)V

    .line 50934
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Na;->A03:Lcom/facebook/ads/redexgen/X/Ry;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Rt;->addView(Landroid/view/View;)V

    .line 50935
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A0D:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Rt;->addView(Landroid/view/View;)V

    .line 50936
    return-void
.end method

.method private A06()V
    .locals 5

    .line 50937
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A06:Lcom/facebook/ads/redexgen/X/1G;

    if-nez v0, :cond_0

    .line 50938
    return-void

    .line 50939
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Rt;->A05:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A06()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rt;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rt;->A0G:[Ljava/lang/String;

    const-string v1, "SIvKbfulzllrpdkfdrym2tho7PogZ3oV"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50940
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rt;->A03:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A06:Lcom/facebook/ads/redexgen/X/1G;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50941
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rt;->A0D:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A06:Lcom/facebook/ads/redexgen/X/1G;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50942
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A07:Lcom/facebook/ads/redexgen/X/1J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50943
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Na;->A03:Lcom/facebook/ads/redexgen/X/Ry;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0J(Landroid/view/View;)V

    .line 50944
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A06:Lcom/facebook/ads/redexgen/X/1G;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50945
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A0D:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0J(Landroid/view/View;)V

    .line 50946
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A06:Lcom/facebook/ads/redexgen/X/1G;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 50947
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rt;->A02:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 50948
    :cond_3
    :goto_0
    return-void

    .line 50949
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rt;->A02:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 50950
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rt;->A08:Lcom/facebook/ads/redexgen/X/Nl;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A06:Lcom/facebook/ads/redexgen/X/1G;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nl;->setRating(F)V

    .line 50951
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A06:Lcom/facebook/ads/redexgen/X/1G;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A02()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 50952
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rt;->A04:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rt;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50953
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A06:Lcom/facebook/ads/redexgen/X/1G;

    .line 50954
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rt;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50955
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A07()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Rt;->A0F:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x50t
        -0x40t
    .end array-data
.end method

.method public static A08()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "U1MfpI1C6bH5E6SUUi1isARh9jp"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "U"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Ubu5RVHkDHh3GnMyAX4EkYenDqWvQs6J"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Crj7vvGLMnYJtX1VpNFn8xcnVkyg9fPV"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "3oNG9AhO9bk5LTGV0GcEQxoD"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "h"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "kfjfnNCZtD"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "orAcnrCTNYiJWv2aZLW"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Rt;->A0G:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A09()V
    .locals 2

    .line 50956
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Na;->A04:Lcom/facebook/ads/redexgen/X/Nj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0J(Landroid/view/View;)V

    .line 50957
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A0C:Landroid/widget/RelativeLayout;

    .line 50958
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 50959
    .local p0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v1, :cond_0

    .line 50960
    const/4 v0, 0x0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 50961
    :cond_0
    return-void
.end method

.method public final A0A()V
    .locals 1

    .line 50962
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A0D:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0J(Landroid/view/View;)V

    .line 50963
    return-void
.end method

.method public final A0B(I)V
    .locals 4

    .line 50964
    const/4 v1, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    .line 50965
    .local v1, "isPortrait":Z
    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/Rt;->setOrientation(I)V

    .line 50966
    if-nez v0, :cond_0

    .line 50967
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Rt;->setWeightSum(F)V

    .line 50968
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50969
    .local p0, "auxContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 50970
    sget v1, Lcom/facebook/ads/redexgen/X/Rt;->A0H:I

    sget v0, Lcom/facebook/ads/redexgen/X/Rt;->A0K:I

    sub-int/2addr v1, v0

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 50971
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Na;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50972
    sget v0, Lcom/facebook/ads/redexgen/X/Rt;->A0I:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50973
    .local v3, "ctaButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Rt;->A0H:I

    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 50974
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 50975
    const/16 v0, 0x50

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 50976
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Na;->A03:Lcom/facebook/ads/redexgen/X/Ry;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Ry;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50977
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Na;->A03:Lcom/facebook/ads/redexgen/X/Ry;

    sget v0, Lcom/facebook/ads/redexgen/X/Rt;->A0J:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ry;->setMinWidth(I)V

    .line 50978
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A0D:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0L(Landroid/view/View;)V

    .line 50979
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50980
    .local v0, "socialContextParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 50981
    sget v0, Lcom/facebook/ads/redexgen/X/Rt;->A0L:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 50982
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rt;->A0A:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A0D:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50983
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A0A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 50984
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rt;->A0D:Landroid/widget/TextView;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 50985
    .end local p0    # "auxContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "ctaButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v0    # "socialContextParams":Landroid/widget/LinearLayout$LayoutParams;
    :goto_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rt;->bringToFront()V

    .line 50986
    return-void

    .line 50987
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rt;->A05()V

    goto :goto_2

    .line 50988
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 50989
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getExpandableLayout()Landroid/view/View;
    .locals 1

    .line 50990
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A0A:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    .line 50991
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Na;->onLayout(ZIIII)V

    .line 50992
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A00:I

    if-nez v0, :cond_0

    .line 50993
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A03:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A00:I

    .line 50994
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A0D:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A01:I

    .line 50995
    :cond_0
    return-void
.end method

.method public setInfo(Lcom/facebook/ads/redexgen/X/1G;Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Nd;)V
    .locals 0
    .param p5    # Lcom/facebook/ads/redexgen/X/Nd;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 50996
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Na;->setInfo(Lcom/facebook/ads/redexgen/X/1G;Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Nd;)V

    .line 50997
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rt;->A06:Lcom/facebook/ads/redexgen/X/1G;

    .line 50998
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Rt;->A07:Lcom/facebook/ads/redexgen/X/1J;

    .line 50999
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rt;->A06()V

    .line 51000
    return-void
.end method

.method public setTitleMaxLines(I)V
    .locals 2

    .line 51001
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rt;->A05:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 51002
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rt;->A05:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 51003
    return-void
.end method
