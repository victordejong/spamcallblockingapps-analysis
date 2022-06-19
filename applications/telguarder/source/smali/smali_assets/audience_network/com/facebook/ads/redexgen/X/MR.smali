.class public final Lcom/facebook/ads/redexgen/X/MR;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/ToolbarActionView$ToolbarActionMode;
    }
.end annotation


# static fields
.field public static final A06:I

.field public static final A07:I


# instance fields
.field public A00:I

.field public A01:Z

.field public final A02:Landroid/widget/ImageView;

.field public final A03:Landroid/widget/LinearLayout;

.field public final A04:Landroid/widget/TextView;

.field public final A05:Lcom/facebook/ads/redexgen/X/Ng;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 43985
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/MR;->A06:I

    .line 43986
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x42300000    # 44.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/MR;->A07:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;I)V
    .locals 3

    .line 43987
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43988
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/MR;->A01:Z

    .line 43989
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MR;->A02:Landroid/widget/ImageView;

    .line 43990
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MR;->A02:Landroid/widget/ImageView;

    sget v0, Lcom/facebook/ads/redexgen/X/MR;->A06:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 43991
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ng;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Ng;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MR;->A05:Lcom/facebook/ads/redexgen/X/Ng;

    .line 43992
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MR;->A05:Lcom/facebook/ads/redexgen/X/Ng;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ng;->setProgress(F)V

    .line 43993
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MR;->A05:Lcom/facebook/ads/redexgen/X/Ng;

    sget v0, Lcom/facebook/ads/redexgen/X/MR;->A06:I

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/Ng;->setPadding(IIII)V

    .line 43994
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MR;->A04:Landroid/widget/TextView;

    .line 43995
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/MR;->setOrientation(I)V

    .line 43996
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MR;->A03:Landroid/widget/LinearLayout;

    .line 43997
    iput p2, p0, Lcom/facebook/ads/redexgen/X/MR;->A00:I

    .line 43998
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MR;->A00()V

    .line 43999
    return-void
.end method

.method private A00()V
    .locals 7

    .line 44000
    iget v0, p0, Lcom/facebook/ads/redexgen/X/MR;->A00:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/MR;->setToolbarActionMode(I)V

    .line 44001
    const/4 v4, -0x2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44002
    .local p0, "actionContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/MR;->setGravity(I)V

    .line 44003
    sget v0, Lcom/facebook/ads/redexgen/X/MR;->A07:I

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44004
    .local v5, "actionIconParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/MR;->A04:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0Z(Landroid/widget/TextView;ZI)V

    .line 44005
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MR;->A04:Landroid/widget/TextView;

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44006
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MR;->A04:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44007
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MR;->A03:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MR;->A02:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44008
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MR;->A03:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MR;->A05:Lcom/facebook/ads/redexgen/X/Ng;

    invoke-virtual {v1, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44009
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MR;->A03:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v5}, Lcom/facebook/ads/redexgen/X/MR;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44010
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44011
    .local v0, "actionTextLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 44012
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MR;->A04:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/MR;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44013
    return-void
.end method

.method private A01()V
    .locals 4

    .line 44014
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MR;->A05:Lcom/facebook/ads/redexgen/X/Ng;

    .line 44015
    iget v0, p0, Lcom/facebook/ads/redexgen/X/MR;->A00:I

    const/4 v3, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 44016
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/MR;->A01:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 44017
    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ng;->setVisibility(I)V

    .line 44018
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MR;->A02:Landroid/widget/ImageView;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/MR;->A00:I

    if-ne v0, v2, :cond_0

    const/16 v3, 0x8

    :cond_0
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44019
    return-void

    .line 44020
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 44021
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public final A02()Z
    .locals 1

    .line 44022
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MR;->A04:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final A03()Z
    .locals 2

    .line 44023
    iget v1, p0, Lcom/facebook/ads/redexgen/X/MR;->A00:I

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActionClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 44024
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/MR;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44025
    return-void
.end method

.method public setColors(I)V
    .locals 2

    .line 44026
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MR;->A05:Lcom/facebook/ads/redexgen/X/Ng;

    const/16 v0, 0x4d

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/2L;->A01(II)I

    move-result v0

    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/Ng;->A03(II)V

    .line 44027
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MR;->A02:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 44028
    return-void
.end method

.method public setInitialUnskippableSeconds(I)V
    .locals 1

    .line 44029
    if-lez p1, :cond_0

    .line 44030
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/MR;->setToolbarActionMode(I)V

    .line 44031
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 44032
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MR;->A05:Lcom/facebook/ads/redexgen/X/Ng;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ng;->setProgressWithAnimation(F)V

    .line 44033
    return-void
.end method

.method public setProgressSpinnerInvisible(Z)V
    .locals 0

    .line 44034
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/MR;->A01:Z

    .line 44035
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MR;->A01()V

    .line 44036
    return-void
.end method

.method public setToolbarActionMode(I)V
    .locals 3

    .line 44037
    iput p1, p0, Lcom/facebook/ads/redexgen/X/MR;->A00:I

    .line 44038
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MR;->A01()V

    .line 44039
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/MR;->setVisibility(I)V

    .line 44040
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 44041
    sget-object v2, Lcom/facebook/ads/redexgen/X/Lr;->A0E:Lcom/facebook/ads/redexgen/X/Lr;

    .line 44042
    .local p0, "actionEncodedImage":Lcom/facebook/ads/redexgen/X/Lr;
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MR;->A02:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Ls;->A01(Lcom/facebook/ads/redexgen/X/Lr;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44043
    const/16 v1, 0x3ea

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MR;->A02:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0I(ILandroid/view/View;)V

    .line 44044
    return-void

    .line 44045
    .end local p0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/Lr;
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Lr;->A0E:Lcom/facebook/ads/redexgen/X/Lr;

    .line 44046
    .restart local p0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/Lr;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MR;->A02:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44047
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/MR;->setVisibility(I)V

    .line 44048
    goto :goto_0

    .line 44049
    .end local p0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/Lr;
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Lr;->A0L:Lcom/facebook/ads/redexgen/X/Lr;

    .line 44050
    .restart local p0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/Lr;
    goto :goto_0

    .line 44051
    .end local p0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/Lr;
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Lr;->A0S:Lcom/facebook/ads/redexgen/X/Lr;

    .line 44052
    .restart local p0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/Lr;
    goto :goto_0

    .line 44053
    .end local p0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/Lr;
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Lr;->A0E:Lcom/facebook/ads/redexgen/X/Lr;

    .line 44054
    .restart local p0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/Lr;
    goto :goto_0
.end method

.method public setToolbarMessage(Ljava/lang/String;)V
    .locals 2

    .line 44055
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MR;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44056
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MR;->A04:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44057
    return-void

    .line 44058
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setToolbarMessageEnabled(Z)V
    .locals 2

    .line 44059
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MR;->A04:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44060
    return-void

    .line 44061
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
