.class public Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:F

.field private e:F

.field private f:F

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x5

    .line 18
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->a:I

    const/4 p2, 0x0

    .line 19
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->b:I

    .line 20
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->c:I

    .line 31
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setOrientation(I)V

    const-string p2, "tt_star_empty_bg"

    .line 33
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/x;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->g:Landroid/graphics/drawable/Drawable;

    const-string v0, "tt_star_full_bg"

    .line 34
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->h:Landroid/graphics/drawable/Drawable;

    .line 35
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/x;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->i:Landroid/graphics/drawable/Drawable;

    const/high16 p2, 0x41700000    # 15.0f

    .line 37
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->d:F

    .line 38
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->e:F

    const/high16 p2, 0x40a00000    # 5.0f

    .line 39
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->f:F

    return-void
.end method

.method private getStarImageView()Landroid/widget/ImageView;
    .locals 4

    .line 140
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 141
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->d:F

    .line 142
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->e:F

    .line 143
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 145
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->f:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 116
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->removeAllViews()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 118
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->getStarFillNum()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->getStarImageView()Landroid/widget/ImageView;

    move-result-object v2

    .line 120
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->getStarFillDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 125
    :goto_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->getStarHalfNum()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 126
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->getStarImageView()Landroid/widget/ImageView;

    move-result-object v2

    .line 127
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->getStarHalfDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 132
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->getStarEmptyNum()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 133
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->getStarImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 134
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->getStarEmptyDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public getStarEmptyDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getStarEmptyNum()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->c:I

    return v0
.end method

.method public getStarFillDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->h:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getStarFillNum()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->a:I

    return v0
.end method

.method public getStarHalfDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->i:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getStarHalfNum()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->b:I

    return v0
.end method

.method public getStarImageHeight()F
    .locals 1

    .line 76
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->e:F

    return v0
.end method

.method public getStarImagePadding()F
    .locals 1

    .line 84
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->f:F

    return v0
.end method

.method public getStarImageWidth()F
    .locals 1

    .line 68
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->d:F

    return v0
.end method

.method public setStarEmptyDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->g:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setStarEmptyNum(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->c:I

    return-void
.end method

.method public setStarFillDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->h:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setStarFillNum(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->a:I

    return-void
.end method

.method public setStarHalfDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->i:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setStarHalfNum(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->b:I

    return-void
.end method

.method public setStarImageHeight(F)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->e:F

    return-void
.end method

.method public setStarImagePadding(F)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->f:F

    return-void
.end method

.method public setStarImageWidth(F)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->d:F

    return-void
.end method
