.class public Landroidx/cardview/widget/CardView;
.super Landroid/widget/FrameLayout;
.source "CardView.java"


# static fields
.field private static final e:[I

.field private static final f:Landroidx/cardview/widget/e;


# instance fields
.field a:I

.field b:I

.field final c:Landroid/graphics/Rect;

.field final d:Landroid/graphics/Rect;

.field private g:Z

.field private h:Z

.field private final i:Landroidx/cardview/widget/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 81
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010031

    aput v2, v0, v1

    sput-object v0, Landroidx/cardview/widget/CardView;->e:[I

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 86
    new-instance v0, Landroidx/cardview/widget/b;

    invoke-direct {v0}, Landroidx/cardview/widget/b;-><init>()V

    sput-object v0, Landroidx/cardview/widget/CardView;->f:Landroidx/cardview/widget/e;

    .line 92
    :goto_0
    sget-object v0, Landroidx/cardview/widget/CardView;->f:Landroidx/cardview/widget/e;

    invoke-interface {v0}, Landroidx/cardview/widget/e;->a()V

    .line 93
    return-void

    .line 87
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 88
    new-instance v0, Landroidx/cardview/widget/a;

    invoke-direct {v0}, Landroidx/cardview/widget/a;-><init>()V

    sput-object v0, Landroidx/cardview/widget/CardView;->f:Landroidx/cardview/widget/e;

    goto :goto_0

    .line 90
    :cond_1
    new-instance v0, Landroidx/cardview/widget/c;

    invoke-direct {v0}, Landroidx/cardview/widget/c;-><init>()V

    sput-object v0, Landroidx/cardview/widget/CardView;->f:Landroidx/cardview/widget/e;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 117
    sget v0, Landroidx/cardview/a$a;->cardViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/cardview/widget/CardView;->c:Landroid/graphics/Rect;

    .line 110
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/cardview/widget/CardView;->d:Landroid/graphics/Rect;

    .line 447
    new-instance v0, Landroidx/cardview/widget/CardView$1;

    invoke-direct {v0, p0}, Landroidx/cardview/widget/CardView$1;-><init>(Landroidx/cardview/widget/CardView;)V

    iput-object v0, p0, Landroidx/cardview/widget/CardView;->i:Landroidx/cardview/widget/d;

    .line 123
    sget-object v0, Landroidx/cardview/a$e;->CardView:[I

    sget v1, Landroidx/cardview/a$d;->CardView:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 126
    sget v0, Landroidx/cardview/a$e;->CardView_cardBackgroundColor:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    sget v0, Landroidx/cardview/a$e;->CardView_cardBackgroundColor:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 141
    :goto_0
    sget v0, Landroidx/cardview/a$e;->CardView_cardCornerRadius:I

    invoke-virtual {v1, v0, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 142
    sget v0, Landroidx/cardview/a$e;->CardView_cardElevation:I

    invoke-virtual {v1, v0, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .line 143
    sget v0, Landroidx/cardview/a$e;->CardView_cardMaxElevation:I

    invoke-virtual {v1, v0, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    .line 144
    sget v0, Landroidx/cardview/a$e;->CardView_cardUseCompatPadding:I

    invoke-virtual {v1, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/cardview/widget/CardView;->g:Z

    .line 145
    sget v0, Landroidx/cardview/a$e;->CardView_cardPreventCornerOverlap:I

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/cardview/widget/CardView;->h:Z

    .line 146
    sget v0, Landroidx/cardview/a$e;->CardView_contentPadding:I

    invoke-virtual {v1, v0, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 147
    iget-object v2, p0, Landroidx/cardview/widget/CardView;->c:Landroid/graphics/Rect;

    sget v7, Landroidx/cardview/a$e;->CardView_contentPaddingLeft:I

    invoke-virtual {v1, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v2, Landroid/graphics/Rect;->left:I

    .line 149
    iget-object v2, p0, Landroidx/cardview/widget/CardView;->c:Landroid/graphics/Rect;

    sget v7, Landroidx/cardview/a$e;->CardView_contentPaddingTop:I

    invoke-virtual {v1, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v2, Landroid/graphics/Rect;->top:I

    .line 151
    iget-object v2, p0, Landroidx/cardview/widget/CardView;->c:Landroid/graphics/Rect;

    sget v7, Landroidx/cardview/a$e;->CardView_contentPaddingRight:I

    invoke-virtual {v1, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v2, Landroid/graphics/Rect;->right:I

    .line 153
    iget-object v2, p0, Landroidx/cardview/widget/CardView;->c:Landroid/graphics/Rect;

    sget v7, Landroidx/cardview/a$e;->CardView_contentPaddingBottom:I

    invoke-virtual {v1, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 155
    cmpl-float v0, v5, v6

    if-lez v0, :cond_0

    move v6, v5

    .line 158
    :cond_0
    sget v0, Landroidx/cardview/a$e;->CardView_android_minWidth:I

    invoke-virtual {v1, v0, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroidx/cardview/widget/CardView;->a:I

    .line 159
    sget v0, Landroidx/cardview/a$e;->CardView_android_minHeight:I

    invoke-virtual {v1, v0, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroidx/cardview/widget/CardView;->b:I

    .line 160
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 162
    sget-object v0, Landroidx/cardview/widget/CardView;->f:Landroidx/cardview/widget/e;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->i:Landroidx/cardview/widget/d;

    move-object v2, p1

    invoke-interface/range {v0 .. v6}, Landroidx/cardview/widget/e;->a(Landroidx/cardview/widget/d;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V

    .line 164
    return-void

    .line 130
    :cond_1
    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroidx/cardview/widget/CardView;->e:[I

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 131
    invoke-virtual {v0, v8, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 132
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 135
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 136
    invoke-static {v2, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 137
    const/4 v2, 0x2

    aget v0, v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 138
    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Landroidx/cardview/a$b;->cardview_light_background:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 137
    :goto_1
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    goto/16 :goto_0

    .line 139
    :cond_2
    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Landroidx/cardview/a$b;->cardview_dark_background:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1
.end method

.method static synthetic a(Landroidx/cardview/widget/CardView;I)V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    return-void
.end method

.method static synthetic a(Landroidx/cardview/widget/CardView;IIII)V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method static synthetic b(Landroidx/cardview/widget/CardView;I)V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    return-void
.end method


# virtual methods
.method public a(IIII)V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Landroidx/cardview/widget/CardView;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 227
    sget-object v0, Landroidx/cardview/widget/CardView;->f:Landroidx/cardview/widget/e;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->i:Landroidx/cardview/widget/d;

    invoke-interface {v0, v1}, Landroidx/cardview/widget/e;->f(Landroidx/cardview/widget/d;)V

    .line 228
    return-void
.end method

.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    .line 303
    sget-object v0, Landroidx/cardview/widget/CardView;->f:Landroidx/cardview/widget/e;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->i:Landroidx/cardview/widget/d;

    invoke-interface {v0, v1}, Landroidx/cardview/widget/e;->i(Landroidx/cardview/widget/d;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getCardElevation()F
    .locals 2

    .prologue
    .line 387
    sget-object v0, Landroidx/cardview/widget/CardView;->f:Landroidx/cardview/widget/e;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->i:Landroidx/cardview/widget/d;

    invoke-interface {v0, v1}, Landroidx/cardview/widget/e;->e(Landroidx/cardview/widget/d;)F

    move-result v0

    return v0
.end method

.method public getContentPaddingBottom()I
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Landroidx/cardview/widget/CardView;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getContentPaddingLeft()I
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Landroidx/cardview/widget/CardView;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getContentPaddingRight()I
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Landroidx/cardview/widget/CardView;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getContentPaddingTop()I
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Landroidx/cardview/widget/CardView;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getMaxCardElevation()F
    .locals 2

    .prologue
    .line 413
    sget-object v0, Landroidx/cardview/widget/CardView;->f:Landroidx/cardview/widget/e;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->i:Landroidx/cardview/widget/d;

    invoke-interface {v0, v1}, Landroidx/cardview/widget/e;->a(Landroidx/cardview/widget/d;)F

    move-result v0

    return v0
.end method

.method public getPreventCornerOverlap()Z
    .locals 1

    .prologue
    .line 424
    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->h:Z

    return v0
.end method

.method public getRadius()F
    .locals 2

    .prologue
    .line 364
    sget-object v0, Landroidx/cardview/widget/CardView;->f:Landroidx/cardview/widget/e;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->i:Landroidx/cardview/widget/d;

    invoke-interface {v0, v1}, Landroidx/cardview/widget/e;->d(Landroidx/cardview/widget/d;)F

    move-result v0

    return v0
.end method

.method public getUseCompatPadding()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->g:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    .line 232
    sget-object v0, Landroidx/cardview/widget/CardView;->f:Landroidx/cardview/widget/e;

    instance-of v0, v0, Landroidx/cardview/widget/b;

    if-nez v0, :cond_0

    .line 233
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 234
    sparse-switch v0, :sswitch_data_0

    .line 246
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 247
    sparse-switch v0, :sswitch_data_1

    .line 258
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 262
    :goto_2
    return-void

    .line 237
    :sswitch_0
    sget-object v1, Landroidx/cardview/widget/CardView;->f:Landroidx/cardview/widget/e;

    iget-object v2, p0, Landroidx/cardview/widget/CardView;->i:Landroidx/cardview/widget/d;

    invoke-interface {v1, v2}, Landroidx/cardview/widget/e;->b(Landroidx/cardview/widget/d;)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 239
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 238
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 250
    :sswitch_1
    sget-object v1, Landroidx/cardview/widget/CardView;->f:Landroidx/cardview/widget/e;

    iget-object v2, p0, Landroidx/cardview/widget/CardView;->i:Landroidx/cardview/widget/d;

    invoke-interface {v1, v2}, Landroidx/cardview/widget/e;->c(Landroidx/cardview/widget/d;)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 252
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 251
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_1

    .line 260
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_2

    .line 234
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_0
    .end sparse-switch

    .line 247
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public setCardBackgroundColor(I)V
    .locals 3

    .prologue
    .line 283
    sget-object v0, Landroidx/cardview/widget/CardView;->f:Landroidx/cardview/widget/e;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->i:Landroidx/cardview/widget/d;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroidx/cardview/widget/e;->a(Landroidx/cardview/widget/d;Landroid/content/res/ColorStateList;)V

    .line 284
    return-void
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 293
    sget-object v0, Landroidx/cardview/widget/CardView;->f:Landroidx/cardview/widget/e;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->i:Landroidx/cardview/widget/d;

    invoke-interface {v0, v1, p1}, Landroidx/cardview/widget/e;->a(Landroidx/cardview/widget/d;Landroid/content/res/ColorStateList;)V

    .line 294
    return-void
.end method

.method public setCardElevation(F)V
    .locals 2

    .prologue
    .line 376
    sget-object v0, Landroidx/cardview/widget/CardView;->f:Landroidx/cardview/widget/e;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->i:Landroidx/cardview/widget/d;

    invoke-interface {v0, v1, p1}, Landroidx/cardview/widget/e;->c(Landroidx/cardview/widget/d;F)V

    .line 377
    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 2

    .prologue
    .line 402
    sget-object v0, Landroidx/cardview/widget/CardView;->f:Landroidx/cardview/widget/e;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->i:Landroidx/cardview/widget/d;

    invoke-interface {v0, v1, p1}, Landroidx/cardview/widget/e;->b(Landroidx/cardview/widget/d;F)V

    .line 403
    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0

    .prologue
    .line 272
    iput p1, p0, Landroidx/cardview/widget/CardView;->b:I

    .line 273
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 274
    return-void
.end method

.method public setMinimumWidth(I)V
    .locals 0

    .prologue
    .line 266
    iput p1, p0, Landroidx/cardview/widget/CardView;->a:I

    .line 267
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 268
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 2

    .prologue
    .line 441
    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->h:Z

    if-eq p1, v0, :cond_0

    .line 442
    iput-boolean p1, p0, Landroidx/cardview/widget/CardView;->h:Z

    .line 443
    sget-object v0, Landroidx/cardview/widget/CardView;->f:Landroidx/cardview/widget/e;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->i:Landroidx/cardview/widget/d;

    invoke-interface {v0, v1}, Landroidx/cardview/widget/e;->h(Landroidx/cardview/widget/d;)V

    .line 445
    :cond_0
    return-void
.end method

.method public setRadius(F)V
    .locals 2

    .prologue
    .line 354
    sget-object v0, Landroidx/cardview/widget/CardView;->f:Landroidx/cardview/widget/e;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->i:Landroidx/cardview/widget/d;

    invoke-interface {v0, v1, p1}, Landroidx/cardview/widget/e;->a(Landroidx/cardview/widget/d;F)V

    .line 355
    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 2

    .prologue
    .line 203
    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->g:Z

    if-eq v0, p1, :cond_0

    .line 204
    iput-boolean p1, p0, Landroidx/cardview/widget/CardView;->g:Z

    .line 205
    sget-object v0, Landroidx/cardview/widget/CardView;->f:Landroidx/cardview/widget/e;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->i:Landroidx/cardview/widget/d;

    invoke-interface {v0, v1}, Landroidx/cardview/widget/e;->g(Landroidx/cardview/widget/d;)V

    .line 207
    :cond_0
    return-void
.end method
