.class public Lcom/explorestack/iab/vast/view/CircleCountdownView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/iab/utils/g;


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:F

.field private g:F

.field private final h:Landroid/graphics/RectF;

.field private final i:Landroid/graphics/RectF;

.field private j:F

.field private k:F

.field private l:F

.field private m:Landroid/graphics/Paint;

.field private n:Landroid/graphics/Paint;

.field private o:Landroid/graphics/Rect;

.field private p:Landroid/graphics/RectF;

.field private q:Landroid/graphics/Paint;

.field private r:Landroid/graphics/Paint;

.field private s:F

.field private t:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 57
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    sget v0, Lcom/explorestack/iab/utils/Assets;->mainAssetsColor:I

    iput v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->c:I

    .line 28
    sget v0, Lcom/explorestack/iab/utils/Assets;->backgroundColor:I

    iput v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->d:I

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->e:Z

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->f:F

    const v0, 0x3d924925

    .line 32
    iput v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->g:F

    .line 34
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->h:Landroid/graphics/RectF;

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->i:Landroid/graphics/RectF;

    const/high16 v0, 0x42580000    # 54.0f

    .line 36
    iput v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->j:F

    .line 37
    iput v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->k:F

    const/high16 v0, 0x40a00000    # 5.0f

    .line 38
    iput v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->l:F

    const/high16 v0, 0x42c80000    # 100.0f

    .line 53
    iput v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->s:F

    .line 58
    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    sget p2, Lcom/explorestack/iab/utils/Assets;->mainAssetsColor:I

    iput p2, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->c:I

    .line 28
    sget p2, Lcom/explorestack/iab/utils/Assets;->backgroundColor:I

    iput p2, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->d:I

    const/4 p2, 0x0

    .line 29
    iput-boolean p2, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->e:Z

    const/4 p2, 0x0

    .line 31
    iput p2, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->f:F

    const p2, 0x3d924925

    .line 32
    iput p2, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->g:F

    .line 34
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->h:Landroid/graphics/RectF;

    .line 35
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->i:Landroid/graphics/RectF;

    const/high16 p2, 0x42580000    # 54.0f

    .line 36
    iput p2, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->j:F

    .line 37
    iput p2, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->k:F

    const/high16 p2, 0x40a00000    # 5.0f

    .line 38
    iput p2, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->l:F

    const/high16 p2, 0x42c80000    # 100.0f

    .line 53
    iput p2, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->s:F

    .line 63
    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(FZ)F
    .locals 6

    .line 198
    iget-object v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->h:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz p2, :cond_0

    .line 200
    iget p2, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->l:F

    mul-float p2, p2, v1

    sub-float/2addr v0, p2

    :cond_0
    div-float/2addr v0, v1

    float-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 202
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    double-to-float p2, v2

    mul-float p1, p1, p2

    mul-float p1, p1, v1

    sub-float/2addr p2, p1

    return p2
.end method

.method private a()V
    .locals 7

    .line 100
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 101
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 103
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 104
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    int-to-float v0, v0

    div-float v3, v0, v2

    sub-float/2addr v1, v3

    .line 105
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    sub-float/2addr v4, v3

    .line 107
    iget-object v3, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->h:Landroid/graphics/RectF;

    add-float v5, v1, v0

    add-float/2addr v0, v4

    invoke-virtual {v3, v1, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 108
    iget-object v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->h:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iput v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->j:F

    .line 109
    iget-object v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->h:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iput v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->k:F

    .line 110
    iget-object v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->i:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->h:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->l:F

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->h:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->l:F

    div-float/2addr v4, v2

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->h:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->l:F

    div-float/2addr v5, v2

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->h:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    iget v6, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->l:F

    div-float/2addr v6, v2

    sub-float/2addr v5, v6

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 67
    invoke-virtual {p0, v0, v1}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->setLayerType(ILandroid/graphics/Paint;)V

    const/high16 v0, 0x40400000    # 3.0f

    .line 68
    invoke-static {p1, v0}, Lcom/explorestack/iab/utils/Utils;->a(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->l:F

    return-void
.end method


# virtual methods
.method public final a(FI)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 209
    :cond_0
    iput p1, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->s:F

    .line 210
    iput p2, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->t:I

    .line 211
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->postInvalidate()V

    :cond_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 118
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 119
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 122
    :cond_0
    iget v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->t:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    .line 1133
    :cond_1
    iget-object v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->m:Landroid/graphics/Paint;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 1134
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->m:Landroid/graphics/Paint;

    .line 1136
    :cond_2
    iget v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->s:F

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v0, v0, v2

    const v3, 0x3c23d70a    # 0.01f

    mul-float v0, v0, v3

    sub-float v6, v2, v0

    .line 1137
    iget-object v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->m:Landroid/graphics/Paint;

    iget v2, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->d:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1138
    iget-object v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->m:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1139
    iget-object v8, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->h:Landroid/graphics/RectF;

    const/4 v9, 0x0

    const/high16 v10, 0x43b40000    # 360.0f

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->m:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1141
    iget-object v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->m:Landroid/graphics/Paint;

    iget v2, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->c:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1142
    iget-object v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->m:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1143
    iget-object v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->m:Landroid/graphics/Paint;

    iget v2, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->l:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1144
    iget-object v4, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->i:Landroid/graphics/RectF;

    const/high16 v5, 0x43870000    # 270.0f

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->m:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 124
    iget-object v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->a:Landroid/graphics/Bitmap;

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_8

    .line 1165
    iget-object v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->q:Landroid/graphics/Paint;

    if-nez v0, :cond_3

    .line 1166
    new-instance v0, Landroid/graphics/Paint;

    const/4 v3, 0x7

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->q:Landroid/graphics/Paint;

    .line 1169
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1170
    iget-object v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->q:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1172
    :cond_3
    iget-object v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->o:Landroid/graphics/Rect;

    if-nez v0, :cond_4

    .line 1173
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->o:Landroid/graphics/Rect;

    .line 1175
    :cond_4
    iget-object v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->p:Landroid/graphics/RectF;

    if-nez v0, :cond_5

    .line 1176
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->p:Landroid/graphics/RectF;

    .line 1178
    :cond_5
    iget v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->f:F

    iget-boolean v3, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->e:Z

    invoke-direct {p0, v0, v3}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->a(FZ)F

    move-result v0

    .line 1179
    iget v3, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->j:F

    div-float v2, v0, v2

    sub-float/2addr v3, v2

    .line 1180
    iget v4, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->k:F

    sub-float/2addr v4, v2

    .line 1181
    iget-object v2, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->o:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1182
    iget-object v2, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->p:Landroid/graphics/RectF;

    add-float v5, v3, v0

    add-float/2addr v0, v4

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1183
    iget-object v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->q:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget v3, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->c:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1184
    iget-object v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->o:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->p:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1186
    iget-boolean v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->e:Z

    if-eqz v0, :cond_7

    .line 1187
    iget-object v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->r:Landroid/graphics/Paint;

    if-nez v0, :cond_6

    .line 1188
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->r:Landroid/graphics/Paint;

    .line 1189
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1191
    :cond_6
    iget-object v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->r:Landroid/graphics/Paint;

    iget v1, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->l:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1192
    iget-object v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->r:Landroid/graphics/Paint;

    iget v1, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1193
    iget-object v3, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->i:Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/high16 v5, 0x43b40000    # 360.0f

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->r:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_7
    return-void

    .line 2148
    :cond_8
    iget-object v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->n:Landroid/graphics/Paint;

    if-nez v0, :cond_9

    .line 2149
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->n:Landroid/graphics/Paint;

    .line 2150
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2151
    iget-object v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->n:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2152
    iget-object v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->n:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2154
    :cond_9
    iget v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->t:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 2155
    iget-object v3, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->n:Landroid/graphics/Paint;

    iget v4, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->c:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2156
    iget-object v3, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->n:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v5, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->b:I

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2157
    iget-object v3, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->n:Landroid/graphics/Paint;

    iget v4, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->g:F

    invoke-direct {p0, v4, v1}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->a(FZ)F

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2159
    iget v1, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->j:F

    .line 2160
    iget v3, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->k:F

    iget-object v4, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->n:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    iget-object v5, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->n:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    .line 2161
    iget-object v2, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_a
    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 96
    invoke-direct {p0}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->a()V

    return-void
.end method

.method public setColors(II)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->c:I

    .line 89
    iput p2, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->d:I

    .line 90
    invoke-direct {p0}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->a()V

    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 217
    iput-object p1, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->a:Landroid/graphics/Bitmap;

    const/high16 p1, 0x42c80000    # 100.0f

    .line 218
    iput p1, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->s:F

    goto :goto_0

    .line 220
    :cond_0
    iput-object p1, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->a:Landroid/graphics/Bitmap;

    .line 222
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->postInvalidate()V

    return-void
.end method

.method public setStyle(Lcom/explorestack/iab/utils/h;)V
    .locals 4

    .line 73
    invoke-virtual {p1}, Lcom/explorestack/iab/utils/h;->h()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->b:I

    .line 74
    invoke-virtual {p1}, Lcom/explorestack/iab/utils/h;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->c:I

    .line 75
    invoke-virtual {p1}, Lcom/explorestack/iab/utils/h;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->d:I

    .line 76
    invoke-virtual {p1}, Lcom/explorestack/iab/utils/h;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->e:Z

    .line 77
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/explorestack/iab/utils/h;->e(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/explorestack/iab/vast/view/CircleCountdownView;->l:F

    .line 78
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/explorestack/iab/utils/h;->a(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 79
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/explorestack/iab/utils/h;->c(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 80
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/explorestack/iab/utils/h;->b(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 81
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/explorestack/iab/utils/h;->d(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 78
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->setPadding(IIII)V

    .line 82
    invoke-virtual {p1}, Lcom/explorestack/iab/utils/h;->g()Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->setAlpha(F)V

    .line 83
    invoke-direct {p0}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->a()V

    .line 84
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->postInvalidate()V

    return-void
.end method
