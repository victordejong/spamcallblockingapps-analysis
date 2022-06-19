.class public Lcom/facebook/share/internal/LikeBoxCountView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/internal/LikeBoxCountView$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/facebook/share/internal/LikeBoxCountView$a;

.field private c:F

.field private d:F

.field private e:F

.field private f:Landroid/graphics/Paint;

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49
    sget-object v0, Lcom/facebook/share/internal/LikeBoxCountView$a;->LEFT:Lcom/facebook/share/internal/LikeBoxCountView$a;

    iput-object v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->b:Lcom/facebook/share/internal/LikeBoxCountView$a;

    const/4 v0, 0x0

    .line 1120
    invoke-virtual {p0, v0}, Lcom/facebook/share/internal/LikeBoxCountView;->setWillNotDraw(Z)V

    .line 1121
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/common/a$b;->com_facebook_likeboxcountview_caret_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->c:F

    .line 1122
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/common/a$b;->com_facebook_likeboxcountview_caret_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->d:F

    .line 1123
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/common/a$b;->com_facebook_likeboxcountview_border_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->e:F

    .line 1125
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->f:Landroid/graphics/Paint;

    .line 1127
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/common/a$a;->com_facebook_likeboxcountview_border_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 1126
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1128
    iget-object v1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->f:Landroid/graphics/Paint;

    .line 1129
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/common/a$b;->com_facebook_likeboxcountview_border_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 1128
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1130
    iget-object v1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->f:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1140
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->a:Landroid/widget/TextView;

    .line 1141
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1143
    iget-object v1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->a:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1144
    iget-object p1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->a:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1145
    iget-object p1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->a:Landroid/widget/TextView;

    .line 1147
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/common/a$b;->com_facebook_likeboxcountview_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 1145
    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1148
    iget-object p1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->a:Landroid/widget/TextView;

    .line 1149
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/common/a$a;->com_facebook_likeboxcountview_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1148
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1151
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/facebook/common/a$b;->com_facebook_likeboxcountview_text_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->g:I

    .line 1155
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/facebook/common/a$b;->com_facebook_likeboxcountview_caret_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->h:I

    .line 1134
    iget-object p1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/LikeBoxCountView;->addView(Landroid/view/View;)V

    .line 1136
    iget-object p1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->b:Lcom/facebook/share/internal/LikeBoxCountView$a;

    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/LikeBoxCountView;->setCaretPosition(Lcom/facebook/share/internal/LikeBoxCountView$a;)V

    return-void
.end method

.method private a(IIII)V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->a:Landroid/widget/TextView;

    iget v1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->g:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    add-int/2addr p3, v1

    add-int/2addr v1, p4

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 96
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 98
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getPaddingLeft()I

    move-result v1

    .line 99
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 101
    sget-object v4, Lcom/facebook/share/internal/LikeBoxCountView$1;->a:[I

    iget-object v5, p0, Lcom/facebook/share/internal/LikeBoxCountView;->b:Lcom/facebook/share/internal/LikeBoxCountView$a;

    invoke-virtual {v5}, Lcom/facebook/share/internal/LikeBoxCountView$a;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v3, v3

    .line 103
    iget v4, p0, Lcom/facebook/share/internal/LikeBoxCountView;->c:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    goto :goto_0

    :cond_1
    int-to-float v2, v2

    .line 112
    iget v4, p0, Lcom/facebook/share/internal/LikeBoxCountView;->c:F

    sub-float/2addr v2, v4

    float-to-int v2, v2

    goto :goto_0

    :cond_2
    int-to-float v0, v0

    .line 109
    iget v4, p0, Lcom/facebook/share/internal/LikeBoxCountView;->c:F

    add-float/2addr v0, v4

    float-to-int v0, v0

    goto :goto_0

    :cond_3
    int-to-float v1, v1

    .line 106
    iget v4, p0, Lcom/facebook/share/internal/LikeBoxCountView;->c:F

    add-float/2addr v1, v4

    float-to-int v1, v1

    :goto_0
    int-to-float v1, v1

    int-to-float v0, v0

    int-to-float v2, v2

    int-to-float v3, v3

    .line 1164
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 1166
    iget v5, p0, Lcom/facebook/share/internal/LikeBoxCountView;->e:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v5, v5, v6

    .line 1169
    new-instance v7, Landroid/graphics/RectF;

    add-float v8, v1, v5

    add-float v9, v0, v5

    invoke-direct {v7, v1, v0, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v10, -0x3ccc0000    # -180.0f

    const/high16 v11, 0x42b40000    # 90.0f

    invoke-virtual {v4, v7, v10, v11}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 1172
    iget-object v7, p0, Lcom/facebook/share/internal/LikeBoxCountView;->b:Lcom/facebook/share/internal/LikeBoxCountView$a;

    sget-object v10, Lcom/facebook/share/internal/LikeBoxCountView$a;->TOP:Lcom/facebook/share/internal/LikeBoxCountView$a;

    if-ne v7, v10, :cond_4

    sub-float v7, v2, v1

    .line 1173
    iget v10, p0, Lcom/facebook/share/internal/LikeBoxCountView;->d:F

    sub-float v10, v7, v10

    div-float/2addr v10, v6

    add-float/2addr v10, v1

    invoke-virtual {v4, v10, v0}, Landroid/graphics/Path;->lineTo(FF)V

    div-float v10, v7, v6

    add-float/2addr v10, v1

    .line 1174
    iget v12, p0, Lcom/facebook/share/internal/LikeBoxCountView;->c:F

    sub-float v12, v0, v12

    invoke-virtual {v4, v10, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1175
    iget v10, p0, Lcom/facebook/share/internal/LikeBoxCountView;->d:F

    add-float/2addr v7, v10

    div-float/2addr v7, v6

    add-float/2addr v7, v1

    invoke-virtual {v4, v7, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1179
    :cond_4
    iget v7, p0, Lcom/facebook/share/internal/LikeBoxCountView;->e:F

    sub-float v7, v2, v7

    invoke-virtual {v4, v7, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1182
    new-instance v7, Landroid/graphics/RectF;

    sub-float v10, v2, v5

    invoke-direct {v7, v10, v0, v2, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v9, -0x3d4c0000    # -90.0f

    invoke-virtual {v4, v7, v9, v11}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 1185
    iget-object v7, p0, Lcom/facebook/share/internal/LikeBoxCountView;->b:Lcom/facebook/share/internal/LikeBoxCountView$a;

    sget-object v9, Lcom/facebook/share/internal/LikeBoxCountView$a;->RIGHT:Lcom/facebook/share/internal/LikeBoxCountView$a;

    if-ne v7, v9, :cond_5

    sub-float v7, v3, v0

    .line 1186
    iget v9, p0, Lcom/facebook/share/internal/LikeBoxCountView;->d:F

    sub-float v9, v7, v9

    div-float/2addr v9, v6

    add-float/2addr v9, v0

    invoke-virtual {v4, v2, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1187
    iget v9, p0, Lcom/facebook/share/internal/LikeBoxCountView;->c:F

    add-float/2addr v9, v2

    div-float v12, v7, v6

    add-float/2addr v12, v0

    invoke-virtual {v4, v9, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1188
    iget v9, p0, Lcom/facebook/share/internal/LikeBoxCountView;->d:F

    add-float/2addr v7, v9

    div-float/2addr v7, v6

    add-float/2addr v7, v0

    invoke-virtual {v4, v2, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1192
    :cond_5
    iget v7, p0, Lcom/facebook/share/internal/LikeBoxCountView;->e:F

    sub-float v7, v3, v7

    invoke-virtual {v4, v2, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1195
    new-instance v7, Landroid/graphics/RectF;

    sub-float v5, v3, v5

    invoke-direct {v7, v10, v5, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v9, 0x0

    invoke-virtual {v4, v7, v9, v11}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 1198
    iget-object v7, p0, Lcom/facebook/share/internal/LikeBoxCountView;->b:Lcom/facebook/share/internal/LikeBoxCountView$a;

    sget-object v9, Lcom/facebook/share/internal/LikeBoxCountView$a;->BOTTOM:Lcom/facebook/share/internal/LikeBoxCountView$a;

    if-ne v7, v9, :cond_6

    sub-float/2addr v2, v1

    .line 1199
    iget v7, p0, Lcom/facebook/share/internal/LikeBoxCountView;->d:F

    add-float/2addr v7, v2

    div-float/2addr v7, v6

    add-float/2addr v7, v1

    invoke-virtual {v4, v7, v3}, Landroid/graphics/Path;->lineTo(FF)V

    div-float v7, v2, v6

    add-float/2addr v7, v1

    .line 1200
    iget v9, p0, Lcom/facebook/share/internal/LikeBoxCountView;->c:F

    add-float/2addr v9, v3

    invoke-virtual {v4, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1201
    iget v7, p0, Lcom/facebook/share/internal/LikeBoxCountView;->d:F

    sub-float/2addr v2, v7

    div-float/2addr v2, v6

    add-float/2addr v2, v1

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1205
    :cond_6
    iget v2, p0, Lcom/facebook/share/internal/LikeBoxCountView;->e:F

    add-float/2addr v2, v1

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1208
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v1, v5, v8, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v4, v2, v11, v11}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 1211
    iget-object v2, p0, Lcom/facebook/share/internal/LikeBoxCountView;->b:Lcom/facebook/share/internal/LikeBoxCountView$a;

    sget-object v5, Lcom/facebook/share/internal/LikeBoxCountView$a;->LEFT:Lcom/facebook/share/internal/LikeBoxCountView$a;

    if-ne v2, v5, :cond_7

    sub-float/2addr v3, v0

    .line 1212
    iget v2, p0, Lcom/facebook/share/internal/LikeBoxCountView;->d:F

    add-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v2, v0

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1213
    iget v2, p0, Lcom/facebook/share/internal/LikeBoxCountView;->c:F

    sub-float v2, v1, v2

    div-float v5, v3, v6

    add-float/2addr v5, v0

    invoke-virtual {v4, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1214
    iget v2, p0, Lcom/facebook/share/internal/LikeBoxCountView;->d:F

    sub-float/2addr v3, v2

    div-float/2addr v3, v6

    add-float/2addr v3, v0

    invoke-virtual {v4, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1218
    :cond_7
    iget v2, p0, Lcom/facebook/share/internal/LikeBoxCountView;->e:F

    add-float/2addr v0, v2

    invoke-virtual {v4, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1220
    iget-object v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setCaretPosition(Lcom/facebook/share/internal/LikeBoxCountView$a;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->b:Lcom/facebook/share/internal/LikeBoxCountView$a;

    .line 78
    sget-object v0, Lcom/facebook/share/internal/LikeBoxCountView$1;->a:[I

    invoke-virtual {p1}, Lcom/facebook/share/internal/LikeBoxCountView$a;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    iget p1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->h:I

    invoke-direct {p0, v1, v1, v1, p1}, Lcom/facebook/share/internal/LikeBoxCountView;->a(IIII)V

    :goto_0
    return-void

    .line 86
    :cond_1
    iget p1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->h:I

    invoke-direct {p0, v1, v1, p1, v1}, Lcom/facebook/share/internal/LikeBoxCountView;->a(IIII)V

    return-void

    .line 83
    :cond_2
    iget p1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->h:I

    invoke-direct {p0, v1, p1, v1, v1}, Lcom/facebook/share/internal/LikeBoxCountView;->a(IIII)V

    return-void

    .line 80
    :cond_3
    iget p1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->h:I

    invoke-direct {p0, p1, v1, v1, v1}, Lcom/facebook/share/internal/LikeBoxCountView;->a(IIII)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
