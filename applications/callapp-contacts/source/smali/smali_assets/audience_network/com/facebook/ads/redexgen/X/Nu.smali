.class public final Lcom/facebook/ads/redexgen/X/Nu;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static A04:[Ljava/lang/String;

.field public static final A05:F

.field public static final A06:I

.field public static final A07:I


# instance fields
.field public A00:Z

.field public final A01:Landroid/widget/TextView;

.field public final A02:Landroid/widget/TextView;

.field public final A03:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 45879
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Nu;->A00()V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/facebook/ads/redexgen/X/Nu;->A05:F

    .line 45880
    sget v1, Lcom/facebook/ads/redexgen/X/Nu;->A05:F

    const/high16 v0, 0x40c00000    # 6.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Nu;->A07:I

    .line 45881
    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Nu;->A06:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/1I;ZIII)V
    .locals 5

    .line 45882
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45883
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Nu;->A00:Z

    .line 45884
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/Nu;->setOrientation(I)V

    .line 45885
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Nu;->A03:Landroid/widget/TextView;

    .line 45886
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nu;->A03:Landroid/widget/TextView;

    invoke-static {v0, v1, p4}, Lcom/facebook/ads/redexgen/X/Lh;->A0c(Landroid/widget/TextView;ZI)V

    .line 45887
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nu;->A03:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 45888
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nu;->A03:Landroid/widget/TextView;

    sget v0, Lcom/facebook/ads/redexgen/X/Nu;->A07:I

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 45889
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Nu;->A02:Landroid/widget/TextView;

    .line 45890
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Nu;->A01:Landroid/widget/TextView;

    .line 45891
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nu;->A01:Landroid/widget/TextView;

    invoke-static {v0, v3, p5}, Lcom/facebook/ads/redexgen/X/Lh;->A0c(Landroid/widget/TextView;ZI)V

    .line 45892
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nu;->A01:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 45893
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nu;->A01:Landroid/widget/TextView;

    sget v0, Lcom/facebook/ads/redexgen/X/Nu;->A07:I

    int-to-float v0, v0

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 45894
    const/4 v4, -0x2

    const/4 v2, -0x1

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45895
    .local p1, "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nu;->A03:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Nu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45896
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45897
    .local p4, "sponsoredLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nu;->A02:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Nu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45898
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nu;->A02:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45899
    invoke-virtual {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/Nu;->A01(Lcom/facebook/ads/redexgen/X/1I;Z)V

    .line 45900
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45901
    .local p2, "descriptionParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v3, p6, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 45902
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nu;->A01:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Nu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45903
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/1I;ZZZ)V
    .locals 7

    .line 45904
    if-eqz p4, :cond_2

    const/16 v4, 0x12

    .line 45905
    :goto_0
    if-eqz p4, :cond_1

    const/16 v5, 0xe

    .line 45906
    :goto_1
    sget v6, Lcom/facebook/ads/redexgen/X/Nu;->A06:I

    if-eqz p5, :cond_0

    div-int/lit8 v6, v6, 0x2

    .line 45907
    :cond_0
    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Nu;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/1I;ZIII)V

    .line 45908
    return-void

    .line 45909
    :cond_1
    const/16 v5, 0x10

    goto :goto_1

    .line 45910
    :cond_2
    const/16 v4, 0x16

    goto :goto_0
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "lF8IVPZcS3mZAefsIaNZ6E9xMmjOqdH7"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "idkW2"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "HbWJiF6R60B06srsOI5ot4Pv3KsUxfPN"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "7f3O1w3Qg3dv0DYXPvEPDd2nNc"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "nnNATfNTHr6hSEkqMWy2MP3i9vksRg0T"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "pai30RxYeYeDatKriEp6xPPXjxDmZE6E"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "MhBAxeK5XElhMNsb"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "N4hTYih9SgQSzhMEA04rsaAJRIerHLwS"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Nu;->A04:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A01(Lcom/facebook/ads/redexgen/X/1I;Z)V
    .locals 2

    .line 45911
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nu;->A03:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/redexgen/X/1I;->A06(Z)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45912
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nu;->A02:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/redexgen/X/1I;->A04(Z)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45913
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nu;->A01:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/redexgen/X/1I;->A05(Z)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45914
    return-void
.end method

.method public final A02(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 45915
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v3, 0x1

    xor-int/2addr v5, v3

    .line 45916
    .local p0, "isTitleValid":Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v3

    .line 45917
    .local p2, "isDesriptionValid":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nu;->A03:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45918
    if-eqz p3, :cond_0

    .line 45919
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nu;->A02:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45920
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nu;->A01:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    :goto_1
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Nu;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x79

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    const-string p2, ""

    goto :goto_1

    .line 45921
    :cond_2
    move-object p1, p2

    goto :goto_0

    .line 45922
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Nu;->A04:[Ljava/lang/String;

    const-string v1, "cGsHRNQKRzUTXMDBZCyzngEN4Bg1pclE"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v1, 0x3

    if-eqz v5, :cond_4

    if-nez v4, :cond_7

    .line 45923
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nu;->A03:Landroid/widget/TextView;

    if-eqz p4, :cond_6

    const/4 v1, 0x2

    :cond_5
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 45924
    :goto_3
    return-void

    .line 45925
    :cond_6
    if-eqz p5, :cond_5

    const/4 v1, 0x4

    goto :goto_2

    .line 45926
    :cond_7
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nu;->A03:Landroid/widget/TextView;

    if-eqz p4, :cond_a

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 45927
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nu;->A01:Landroid/widget/TextView;

    if-eqz p4, :cond_8

    :goto_5
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_3

    :cond_8
    if-eqz p5, :cond_9

    const/4 v3, 0x3

    goto :goto_5

    :cond_9
    const/4 v3, 0x2

    goto :goto_5

    .line 45928
    :cond_a
    const/4 v0, 0x2

    goto :goto_4
.end method

.method public getDescriptionTextView()Landroid/widget/TextView;
    .locals 1

    .line 45929
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nu;->A01:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .line 45930
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nu;->A03:Landroid/widget/TextView;

    return-object v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 45931
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 45932
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Nu;->A00:Z

    if-eqz v0, :cond_0

    .line 45933
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    const/4 v2, 0x1

    .line 45934
    .local p0, "isLandscape":Z
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nu;->A03:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    const/high16 v0, 0x41900000    # 18.0f

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 45935
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nu;->A01:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    const/high16 v0, 0x41600000    # 14.0f

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 45936
    .end local p0    # "isLandscape":Z
    :cond_0
    return-void

    .line 45937
    :cond_1
    const/high16 v0, 0x41800000    # 16.0f

    goto :goto_2

    .line 45938
    :cond_2
    const/high16 v0, 0x41b00000    # 22.0f

    goto :goto_1

    .line 45939
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setAlignment(I)V
    .locals 1

    .line 45940
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nu;->A03:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 45941
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nu;->A01:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 45942
    return-void
.end method

.method public setDescriptionVisibility(I)V
    .locals 1

    .line 45943
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nu;->A01:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45944
    return-void
.end method

.method public setUseNewLandscapeEndCard(Z)V
    .locals 0

    .line 45945
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Nu;->A00:Z

    .line 45946
    return-void
.end method
