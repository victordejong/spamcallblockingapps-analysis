.class public final Lcom/facebook/ads/redexgen/X/Ni;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field public A00:I

.field public A01:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/GradientDrawable;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:I

.field public final A03:I

.field public final A04:I


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1I;I)V
    .locals 9

    .line 45706
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45707
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A00:I

    .line 45708
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/facebook/ads/redexgen/X/Ni;->setOrientation(I)V

    .line 45709
    const/16 v7, 0x11

    invoke-virtual {p0, v7}, Lcom/facebook/ads/redexgen/X/Ni;->setGravity(I)V

    .line 45710
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    .line 45711
    .local p2, "density":F
    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    float-to-int v6, v0

    .line 45712
    .local p3, "dotSize":I
    const/high16 v0, 0x40c00000    # 6.0f

    mul-float/2addr v0, v1

    float-to-int v5, v0

    .line 45713
    .local v0, "margin":I
    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A02:I

    .line 45714
    invoke-virtual {p2, v8}, Lcom/facebook/ads/redexgen/X/1I;->A04(Z)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A04:I

    .line 45715
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ni;->A04:I

    const/16 v0, 0x80

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2L;->A01(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A03:I

    .line 45716
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A01:Ljava/util/List;

    .line 45717
    const/4 v4, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v4, p3, :cond_0

    .line 45718
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 45719
    .local v7, "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 45720
    invoke-virtual {v3, v6, v6}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 45721
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A02:I

    invoke-virtual {v3, v0, v8}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 45722
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 45723
    .local v1, "dotImage":Landroid/widget/ImageView;
    const/4 v1, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45724
    .local v0, "dotImageParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v8, v8, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 45725
    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 45726
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45727
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45728
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A01:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45729
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/Ni;->addView(Landroid/view/View;)V

    .line 45730
    .end local v7    # "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    .end local v1    # "dotImage":Landroid/widget/ImageView;
    .end local v0    # "dotImageParams":Landroid/widget/LinearLayout$LayoutParams;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 45731
    .end local v8    # "i":I
    :cond_0
    invoke-virtual {p0, v8}, Lcom/facebook/ads/redexgen/X/Ni;->A00(I)V

    .line 45732
    return-void
.end method


# virtual methods
.method public final A00(I)V
    .locals 5

    .line 45733
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A00:I

    if-ne v0, p1, :cond_0

    .line 45734
    return-void

    .line 45735
    :cond_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ni;->A00:I

    .line 45736
    const/4 v4, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 45737
    if-ne v4, p1, :cond_1

    .line 45738
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Ni;->A04:I

    .line 45739
    .local p1, "bgColor":I
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Ni;->A04:I

    .line 45740
    .local v0, "borderColor":I
    .restart local v0    # "borderColor":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A01:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A02:I

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 45741
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A01:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 45742
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A01:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 45743
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 45744
    .end local p1    # "bgColor":I
    .end local v0    # "borderColor":I
    :cond_1
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Ni;->A03:I

    .line 45745
    .restart local p1    # "bgColor":I
    const/4 v2, 0x0

    goto :goto_1

    .line 45746
    .end local p0    # "i":I
    .end local p1    # "bgColor":I
    .end local v0
    :cond_2
    return-void
.end method
