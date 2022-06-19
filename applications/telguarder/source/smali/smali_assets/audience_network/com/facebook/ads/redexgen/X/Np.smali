.class public final Lcom/facebook/ads/redexgen/X/Np;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static A03:[Ljava/lang/String;

.field public static final A04:F

.field public static final A05:I

.field public static final A06:I


# instance fields
.field public final A00:Landroid/widget/TextView;

.field public final A01:Landroid/widget/TextView;

.field public final A02:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 45883
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Np;->A00()V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/facebook/ads/redexgen/X/Np;->A04:F

    .line 45884
    sget v1, Lcom/facebook/ads/redexgen/X/Np;->A04:F

    const/high16 v0, 0x40c00000    # 6.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Np;->A06:I

    .line 45885
    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Np;->A05:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1I;ZIII)V
    .locals 5

    .line 45886
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45887
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/Np;->setOrientation(I)V

    .line 45888
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Np;->A02:Landroid/widget/TextView;

    .line 45889
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Np;->A02:Landroid/widget/TextView;

    invoke-static {v0, v1, p4}, Lcom/facebook/ads/redexgen/X/Lj;->A0Z(Landroid/widget/TextView;ZI)V

    .line 45890
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Np;->A02:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 45891
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Np;->A02:Landroid/widget/TextView;

    sget v0, Lcom/facebook/ads/redexgen/X/Np;->A06:I

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 45892
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Np;->A01:Landroid/widget/TextView;

    .line 45893
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Np;->A00:Landroid/widget/TextView;

    .line 45894
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Np;->A00:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-static {v0, v4, p5}, Lcom/facebook/ads/redexgen/X/Lj;->A0Z(Landroid/widget/TextView;ZI)V

    .line 45895
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Np;->A00:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 45896
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Np;->A00:Landroid/widget/TextView;

    sget v0, Lcom/facebook/ads/redexgen/X/Np;->A06:I

    int-to-float v0, v0

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 45897
    const/4 v3, -0x2

    const/4 v2, -0x1

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45898
    .local p0, "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Np;->A02:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Np;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45899
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45900
    .local p4, "sponsoredLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Np;->A01:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Np;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45901
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Np;->A01:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45902
    invoke-virtual {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/Np;->A01(Lcom/facebook/ads/redexgen/X/1I;Z)V

    .line 45903
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45904
    .local p2, "descriptionParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v4, p6, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 45905
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Np;->A00:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Np;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45906
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1I;ZZZ)V
    .locals 7

    .line 45907
    if-eqz p4, :cond_2

    const/16 v4, 0x12

    .line 45908
    :goto_0
    if-eqz p4, :cond_1

    const/16 v5, 0xe

    .line 45909
    :goto_1
    sget v6, Lcom/facebook/ads/redexgen/X/Np;->A05:I

    if-eqz p5, :cond_0

    div-int/lit8 v6, v6, 0x2

    .line 45910
    :cond_0
    move-object v0, p0

    move v3, p3

    move-object v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Np;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1I;ZIII)V

    .line 45911
    return-void

    .line 45912
    :cond_1
    const/16 v5, 0x10

    goto :goto_1

    .line 45913
    :cond_2
    const/16 v4, 0x16

    goto :goto_0
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5HLU"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "cJmhtdIbv5Y5xdwCDl3dT8HPvklAUmwI"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "4stzzs6gVfUC8wPYX"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "7o6tBFGKBnQKcZsvXBJ4ayd9LnRtCNJ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "BSijPHOaulEPVGa4U1fKlqwI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "TamflSlcNH2rcKEIo3f72qWopMk8DENN"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Hhh3HDuTgivrAf4KqreTZK2"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "SugScFu"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Np;->A03:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A01(Lcom/facebook/ads/redexgen/X/1I;Z)V
    .locals 2

    .line 45914
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Np;->A02:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/redexgen/X/1I;->A06(Z)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45915
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Np;->A01:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/redexgen/X/1I;->A04(Z)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45916
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Np;->A00:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/redexgen/X/1I;->A05(Z)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45917
    return-void
.end method

.method public final A02(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 7
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 45918
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v3, 0x1

    xor-int/2addr v6, v3

    .line 45919
    .local p0, "isTitleValid":Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v3

    .line 45920
    .local p2, "isDesriptionValid":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Np;->A02:Landroid/widget/TextView;

    if-eqz v6, :cond_9

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45921
    if-eqz p3, :cond_0

    .line 45922
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Np;->A01:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45923
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Np;->A00:Landroid/widget/TextView;

    if-eqz v6, :cond_8

    :goto_1
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45924
    const/4 v4, 0x3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Np;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/Np;->A03:[Ljava/lang/String;

    const-string v1, "nuTyQWYrKUsKt4wC014k9cpf4UiNlrc"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "l7Wy"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v6, :cond_1

    if-nez v5, :cond_4

    .line 45925
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Np;->A02:Landroid/widget/TextView;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Np;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/Np;->A03:[Ljava/lang/String;

    const-string v1, "qWmgL2iM9nfMb7yMq7CVR7HS6Guvx6S"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "mFhP"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz p4, :cond_3

    const/4 v4, 0x2

    :cond_2
    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 45926
    :goto_3
    return-void

    .line 45927
    :cond_3
    if-eqz p5, :cond_2

    const/4 v4, 0x4

    goto :goto_2

    .line 45928
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Np;->A02:Landroid/widget/TextView;

    if-eqz p4, :cond_7

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 45929
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Np;->A00:Landroid/widget/TextView;

    if-eqz p4, :cond_5

    :goto_5
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_3

    :cond_5
    if-eqz p5, :cond_6

    const/4 v3, 0x3

    goto :goto_5

    :cond_6
    const/4 v3, 0x2

    goto :goto_5

    .line 45930
    :cond_7
    const/4 v0, 0x2

    goto :goto_4

    .line 45931
    :cond_8
    const-string p2, ""

    goto :goto_1

    .line 45932
    :cond_9
    move-object p1, p2

    goto :goto_0

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public getDescriptionTextView()Landroid/widget/TextView;
    .locals 1

    .line 45933
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Np;->A00:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .line 45934
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Np;->A02:Landroid/widget/TextView;

    return-object v0
.end method

.method public setAlignment(I)V
    .locals 1

    .line 45935
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Np;->A02:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 45936
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Np;->A00:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 45937
    return-void
.end method

.method public setDescriptionVisibility(I)V
    .locals 1

    .line 45938
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Np;->A00:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45939
    return-void
.end method
