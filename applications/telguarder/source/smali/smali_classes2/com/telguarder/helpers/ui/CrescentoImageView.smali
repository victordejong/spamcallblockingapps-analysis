.class public Lcom/telguarder/helpers/ui/CrescentoImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "CrescentoImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telguarder/helpers/ui/CrescentoImageView$CurvatureDirection;,
        Lcom/telguarder/helpers/ui/CrescentoImageView$Gradient;,
        Lcom/telguarder/helpers/ui/CrescentoImageView$TintMode;,
        Lcom/telguarder/helpers/ui/CrescentoImageView$Gravity;
    }
.end annotation


# instance fields
.field curvatureDirection:I

.field curvatureHeight:I

.field gradientDirection:I

.field gradientEndColor:I

.field gradientStartColor:I

.field gravity:I

.field height:I

.field mBitmap:Landroid/graphics/Bitmap;

.field mClipPath:Landroid/graphics/Path;

.field mContext:Landroid/content/Context;

.field mPaint:Landroid/graphics/Paint;

.field private porterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

.field shaderPaint:Landroid/graphics/Paint;

.field tintAmount:I

.field tintColor:I

.field tintMode:I

.field tintPaint:Landroid/graphics/Paint;

.field width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 99
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->width:I

    .line 34
    iput v0, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->height:I

    .line 44
    iput v0, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->gravity:I

    const/16 v1, 0x32

    .line 49
    iput v1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->curvatureHeight:I

    .line 54
    iput v0, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->tintAmount:I

    const/4 v1, 0x1

    .line 59
    iput v1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->tintMode:I

    .line 64
    iput v0, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->tintColor:I

    .line 66
    iput v0, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->gradientDirection:I

    .line 68
    iput v0, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->gradientStartColor:I

    .line 69
    iput v0, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->gradientEndColor:I

    .line 71
    iput v0, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->curvatureDirection:I

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/ui/CrescentoImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 104
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->width:I

    .line 34
    iput v0, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->height:I

    .line 44
    iput v0, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->gravity:I

    const/16 v1, 0x32

    .line 49
    iput v1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->curvatureHeight:I

    .line 54
    iput v0, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->tintAmount:I

    const/4 v1, 0x1

    .line 59
    iput v1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->tintMode:I

    .line 64
    iput v0, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->tintColor:I

    .line 66
    iput v0, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->gradientDirection:I

    .line 68
    iput v0, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->gradientStartColor:I

    .line 69
    iput v0, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->gradientEndColor:I

    .line 71
    iput v0, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->curvatureDirection:I

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/telguarder/helpers/ui/CrescentoImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getDpForPixel(I)I
    .locals 2

    int-to-float p1, p1

    .line 259
    iget-object v0, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 109
    iput-object p1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->mContext:Landroid/content/Context;

    .line 111
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->porterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    .line 113
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 114
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->shaderPaint:Landroid/graphics/Paint;

    .line 118
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->mClipPath:Landroid/graphics/Path;

    .line 120
    iget-object p1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/telguarder/R$styleable;->CrescentoImageView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x3

    .line 121
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    iget v1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->curvatureHeight:I

    invoke-direct {p0, v1}, Lcom/telguarder/helpers/ui/CrescentoImageView;->getDpForPixel(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->curvatureHeight:I

    .line 125
    :cond_0
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 126
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/16 v1, 0xff

    if-gt p2, v1, :cond_1

    .line 127
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_1

    .line 128
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->tintAmount:I

    :cond_1
    const/16 p2, 0x8

    .line 132
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 133
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ne p2, v0, :cond_2

    .line 134
    iput v0, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->gravity:I

    goto :goto_0

    .line 136
    :cond_2
    iput v2, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->gravity:I

    :cond_3
    :goto_0
    const/4 p2, 0x2

    .line 140
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 141
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-nez p2, :cond_4

    .line 142
    iput v2, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->tintMode:I

    goto :goto_1

    .line 144
    :cond_4
    iput v0, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->tintMode:I

    :cond_5
    :goto_1
    const/4 p2, 0x5

    .line 148
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 149
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->gradientDirection:I

    :cond_6
    const/4 p2, 0x7

    .line 153
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->gradientStartColor:I

    const/4 p2, 0x6

    .line 156
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->gradientEndColor:I

    .line 158
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 159
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->tintColor:I

    :cond_7
    const/4 p2, 0x4

    .line 163
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->curvatureDirection:I

    .line 165
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 167
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/CrescentoImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 168
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/CrescentoImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 169
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 170
    invoke-direct {p0, p1}, Lcom/telguarder/helpers/ui/CrescentoImageView;->pickColorFromBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 172
    :cond_8
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/CrescentoImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 173
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/CrescentoImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p1, p1, Landroid/graphics/drawable/ColorDrawable;

    if-nez p1, :cond_9

    .line 174
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/CrescentoImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 175
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 176
    invoke-direct {p0, p1}, Lcom/telguarder/helpers/ui/CrescentoImageView;->pickColorFromBitmap(Landroid/graphics/Bitmap;)V

    :cond_9
    :goto_2
    return-void
.end method

.method private pickColorFromBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 201
    invoke-static {p1}, Landroidx/palette/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette$Builder;

    move-result-object p1

    new-instance v0, Lcom/telguarder/helpers/ui/CrescentoImageView$1;

    invoke-direct {v0, p0}, Lcom/telguarder/helpers/ui/CrescentoImageView$1;-><init>(Lcom/telguarder/helpers/ui/CrescentoImageView;)V

    invoke-virtual {p1, v0}, Landroidx/palette/graphics/Palette$Builder;->generate(Landroidx/palette/graphics/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public getOutlineProvider()Landroid/view/ViewOutlineProvider;
    .locals 1

    .line 228
    new-instance v0, Lcom/telguarder/helpers/ui/CrescentoImageView$2;

    invoke-direct {v0, p0}, Lcom/telguarder/helpers/ui/CrescentoImageView$2;-><init>(Lcom/telguarder/helpers/ui/CrescentoImageView;)V

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 242
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/CrescentoImageView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/CrescentoImageView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v0

    .line 243
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 244
    iget-object v1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->porterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 245
    iget-object v1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->tintPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 249
    :cond_0
    iget v1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->gradientStartColor:I

    iget v2, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->gradientEndColor:I

    iget v3, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->gradientDirection:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/telguarder/helpers/ui/GradientProvider;->getShader(IIIII)Landroid/graphics/Shader;

    move-result-object v1

    .line 250
    iget-object v2, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->shaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 251
    iget-object v1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->shaderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 253
    iget-object v1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->mClipPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 254
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 255
    iget-object p1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 184
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->onMeasure(II)V

    .line 186
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/CrescentoImageView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->width:I

    .line 187
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/CrescentoImageView;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->height:I

    .line 189
    iget p2, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->width:I

    iget v0, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->curvatureHeight:I

    iget v1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->curvatureDirection:I

    iget v2, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->gravity:I

    invoke-static {p2, p1, v0, v1, v2}, Lcom/telguarder/helpers/ui/PathProvider;->getClipPath(IIIII)Landroid/graphics/Path;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->mClipPath:Landroid/graphics/Path;

    .line 191
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result p1

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 194
    :try_start_0
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/CrescentoImageView;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/telguarder/helpers/ui/CrescentoImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 196
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CRESCENTO_IMAGE_VIEW"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setCurvature(I)V
    .locals 0

    .line 263
    invoke-direct {p0, p1}, Lcom/telguarder/helpers/ui/CrescentoImageView;->getDpForPixel(I)I

    move-result p1

    iput p1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->curvatureHeight:I

    return-void
.end method

.method public setCurvatureDirection(I)V
    .locals 0

    .line 291
    iput p1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->curvatureDirection:I

    return-void
.end method

.method public setGradientDirection(I)V
    .locals 0

    .line 279
    iput p1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->gradientDirection:I

    return-void
.end method

.method public setGradientEndColor(I)V
    .locals 0

    .line 287
    iput p1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->gradientEndColor:I

    return-void
.end method

.method public setGradientStartColor(I)V
    .locals 0

    .line 283
    iput p1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->gradientStartColor:I

    return-void
.end method

.method public setTintAmount(I)V
    .locals 0

    .line 275
    iput p1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->tintAmount:I

    return-void
.end method

.method public setTintColor(I)V
    .locals 0

    .line 267
    iput p1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->tintColor:I

    return-void
.end method

.method public setTintMode(I)V
    .locals 0

    .line 271
    iput p1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView;->tintMode:I

    return-void
.end method
