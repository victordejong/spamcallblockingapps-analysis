.class public Lcom/theartofdev/edmodo/cropper/CropImageView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/theartofdev/edmodo/cropper/CropImageView$a;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$d;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$h;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$g;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$e;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$f;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$i;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$c;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$j;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$b;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Lcom/theartofdev/edmodo/cropper/CropImageView$f;

.field private C:Lcom/theartofdev/edmodo/cropper/CropImageView$e;

.field private D:Lcom/theartofdev/edmodo/cropper/CropImageView$g;

.field private E:I

.field private F:F

.field private G:F

.field private H:F

.field private I:Landroid/graphics/RectF;

.field private J:I

.field private K:Z

.field private L:Landroid/net/Uri;

.field a:Landroid/graphics/Bitmap;

.field b:I

.field c:I

.field d:Z

.field e:Z

.field f:Lcom/theartofdev/edmodo/cropper/CropImageView$h;

.field g:Lcom/theartofdev/edmodo/cropper/CropImageView$d;

.field h:Landroid/net/Uri;

.field i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/theartofdev/edmodo/cropper/b;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/theartofdev/edmodo/cropper/a;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Landroid/widget/ImageView;

.field private final l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

.field private final m:Landroid/graphics/Matrix;

.field private final n:Landroid/graphics/Matrix;

.field private final o:Landroid/widget/ProgressBar;

.field private final p:[F

.field private final q:[F

.field private r:Lcom/theartofdev/edmodo/cropper/d;

.field private s:I

.field private t:I

.field private u:I

.field private v:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 179
    invoke-direct {p0, p1, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 183
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->m:Landroid/graphics/Matrix;

    .line 56
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->n:Landroid/graphics/Matrix;

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 62
    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:[F

    new-array v0, v0, [F

    .line 65
    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->q:[F

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Z

    const/4 v1, 0x1

    .line 106
    iput-boolean v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->x:Z

    .line 112
    iput-boolean v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->y:Z

    .line 118
    iput-boolean v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->z:Z

    .line 142
    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->E:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 145
    iput v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->F:F

    .line 186
    instance-of v2, p1, Landroid/app/Activity;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_1

    const-string v4, "CROP_IMAGE_EXTRA_BUNDLE"

    .line 188
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "CROP_IMAGE_EXTRA_OPTIONS"

    .line 190
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    :cond_1
    if-nez v3, :cond_3

    .line 196
    new-instance v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    invoke-direct {v3}, Lcom/theartofdev/edmodo/cropper/CropImageOptions;-><init>()V

    if-eqz p2, :cond_3

    .line 199
    sget-object v2, Lcom/theartofdev/edmodo/cropper/g$e;->CropImageView:[I

    invoke-virtual {p1, p2, v2, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 201
    :try_start_0
    sget v0, Lcom/theartofdev/edmodo/cropper/g$e;->CropImageView_cropFixAspectRatio:I

    iget-boolean v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->fixAspectRatio:Z

    .line 202
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->fixAspectRatio:Z

    .line 203
    sget v0, Lcom/theartofdev/edmodo/cropper/g$e;->CropImageView_cropAspectRatioX:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->aspectRatioX:I

    .line 204
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->aspectRatioX:I

    .line 205
    sget v0, Lcom/theartofdev/edmodo/cropper/g$e;->CropImageView_cropAspectRatioY:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->aspectRatioY:I

    .line 206
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->aspectRatioY:I

    .line 208
    invoke-static {}, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->values()[Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    move-result-object v0

    sget v2, Lcom/theartofdev/edmodo/cropper/g$e;->CropImageView_cropScaleType:I

    iget-object v4, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->scaleType:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    .line 209
    invoke-virtual {v4}, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->ordinal()I

    move-result v4

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget-object v0, v0, v2

    iput-object v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->scaleType:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    .line 210
    sget v0, Lcom/theartofdev/edmodo/cropper/g$e;->CropImageView_cropAutoZoomEnabled:I

    iget-boolean v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->autoZoomEnabled:Z

    .line 211
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->autoZoomEnabled:Z

    .line 212
    sget v0, Lcom/theartofdev/edmodo/cropper/g$e;->CropImageView_cropMultiTouchEnabled:I

    iget-boolean v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->multiTouchEnabled:Z

    .line 213
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->multiTouchEnabled:Z

    .line 215
    sget v0, Lcom/theartofdev/edmodo/cropper/g$e;->CropImageView_cropMaxZoom:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxZoom:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxZoom:I

    .line 217
    invoke-static {}, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->values()[Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    move-result-object v0

    sget v2, Lcom/theartofdev/edmodo/cropper/g$e;->CropImageView_cropShape:I

    iget-object v4, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->cropShape:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    .line 218
    invoke-virtual {v4}, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->ordinal()I

    move-result v4

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget-object v0, v0, v2

    iput-object v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->cropShape:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    .line 220
    invoke-static {}, Lcom/theartofdev/edmodo/cropper/CropImageView$c;->values()[Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    move-result-object v0

    sget v2, Lcom/theartofdev/edmodo/cropper/g$e;->CropImageView_cropGuidelines:I

    iget-object v4, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelines:Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    .line 222
    invoke-virtual {v4}, Lcom/theartofdev/edmodo/cropper/CropImageView$c;->ordinal()I

    move-result v4

    .line 221
    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget-object v0, v0, v2

    iput-object v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelines:Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    .line 223
    sget v0, Lcom/theartofdev/edmodo/cropper/g$e;->CropImageView_cropSnapRadius:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->snapRadius:F

    .line 224
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->snapRadius:F

    .line 225
    sget v0, Lcom/theartofdev/edmodo/cropper/g$e;->CropImageView_cropTouchRadius:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->touchRadius:F

    .line 226
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->touchRadius:F

    .line 227
    sget v0, Lcom/theartofdev/edmodo/cropper/g$e;->CropImageView_cropInitialCropWindowPaddingRatio:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->initialCropWindowPaddingRatio:F

    .line 228
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->initialCropWindowPaddingRatio:F

    .line 231
    sget v0, Lcom/theartofdev/edmodo/cropper/g$e;->CropImageView_cropBorderLineThickness:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderLineThickness:F

    .line 232
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderLineThickness:F

    .line 234
    sget v0, Lcom/theartofdev/edmodo/cropper/g$e;->CropImageView_cropBorderLineColor:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderLineColor:I

    .line 235
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderLineColor:I

    .line 236
    sget v0, Lcom/theartofdev/edmodo/cropper/g$e;->CropImageView_cropBorderCornerThickness:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerThickness:F

    .line 237
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerThickness:F

    .line 240
    sget v0, Lcom/theartofdev/edmodo/cropper/g$e;->CropImageView_cropBorderCornerOffset:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerOffset:F

    .line 241
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerOffset:F

    .line 243
    sget v0, Lcom/theartofdev/edmodo/cropper/g$e;->CropImageView_cropBorderCornerLength:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerLength:F

    .line 244
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerLength:F

    .line 246
    sget v0, Lcom/theartofdev/edmodo/cropper/g$e;->CropImageView_cropBorderCornerColor:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerColor:I

    .line 247
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerColor:I

    .line 249
    sget v0, Lcom/theartofdev/edmodo/cropper/g$e;->CropImageView_cropGuidelinesThickness:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelinesThickness:F

    .line 250
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelinesThickness:F

    .line 252
    sget v0, Lcom/theartofdev/edmodo/cropper/g$e;->CropImageView_cropGuidelinesColor:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelinesColor:I

    .line 253
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelinesColor:I

    .line 254
    sget v0, Lcom/theartofdev/edmodo/cropper/g$e;->CropImageView_cropBackgroundColor:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->backgroundColor:I

    .line 255
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->backgroundColor:I

    .line 256
    sget v0, Lcom/theartofdev/edmodo/cropper/g$e;->CropImageView_cropShowCropOverlay:I

    iget-boolean v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->x:Z

    .line 257
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->showCropOverlay:Z

    .line 258
    sget v0, Lcom/theartofdev/edmodo/cropper/g$e;->CropImageView_cropShowProgressBar:I

    iget-boolean v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->y:Z

    .line 259
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->showProgressBar:Z

    .line 260
    sget v0, Lcom/theartofdev/edmodo/cropper/g$e;->CropImageView_cropBorderCornerThickness:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerThickness:F

    .line 261
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerThickness:F

    .line 264
    sget v0, Lcom/theartofdev/edmodo/cropper/g$e;->CropImageView_cropMinCropWindowWidth:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropWindowWidth:I

    int-to-float v2, v2

    .line 266
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropWindowWidth:I

    .line 268
    sget v0, Lcom/theartofdev/edmodo/cropper/g$e;->CropImageView_cropMinCropWindowHeight:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropWindowHeight:I

    int-to-float v2, v2

    .line 270
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropWindowHeight:I

    .line 273
    sget v0, Lcom/theartofdev/edmodo/cropper/g$e;->CropImageView_cropMinCropResultWidthPX:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropResultWidth:I

    int-to-float v2, v2

    .line 275
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropResultWidth:I

    .line 278
    sget v0, Lcom/theartofdev/edmodo/cropper/g$e;->CropImageView_cropMinCropResultHeightPX:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropResultHeight:I

    int-to-float v2, v2

    .line 280
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropResultHeight:I

    .line 283
    sget v0, Lcom/theartofdev/edmodo/cropper/g$e;->CropImageView_cropMaxCropResultWidthPX:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxCropResultWidth:I

    int-to-float v2, v2

    .line 285
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxCropResultWidth:I

    .line 288
    sget v0, Lcom/theartofdev/edmodo/cropper/g$e;->CropImageView_cropMaxCropResultHeightPX:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxCropResultHeight:I

    int-to-float v2, v2

    .line 290
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxCropResultHeight:I

    .line 293
    sget v0, Lcom/theartofdev/edmodo/cropper/g$e;->CropImageView_cropFlipHorizontally:I

    iget-boolean v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->flipHorizontally:Z

    .line 294
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->flipHorizontally:Z

    .line 296
    sget v0, Lcom/theartofdev/edmodo/cropper/g$e;->CropImageView_cropFlipHorizontally:I

    iget-boolean v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->flipVertically:Z

    .line 297
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->flipVertically:Z

    .line 299
    sget v0, Lcom/theartofdev/edmodo/cropper/g$e;->CropImageView_cropSaveBitmapToInstanceState:I

    iget-boolean v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Z

    .line 300
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Z

    .line 305
    sget v0, Lcom/theartofdev/edmodo/cropper/g$e;->CropImageView_cropAspectRatioX:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/theartofdev/edmodo/cropper/g$e;->CropImageView_cropAspectRatioX:I

    .line 306
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/theartofdev/edmodo/cropper/g$e;->CropImageView_cropFixAspectRatio:I

    .line 307
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 308
    iput-boolean v1, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->fixAspectRatio:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    :cond_2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1

    .line 316
    :cond_3
    :goto_1
    invoke-virtual {v3}, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->validate()V

    .line 318
    iget-object p2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->scaleType:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    iput-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->v:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    .line 319
    iget-boolean p2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->autoZoomEnabled:Z

    iput-boolean p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->z:Z

    .line 320
    iget p2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxZoom:I

    iput p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->A:I

    .line 321
    iget-boolean p2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->showCropOverlay:Z

    iput-boolean p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->x:Z

    .line 322
    iget-boolean p2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->showProgressBar:Z

    iput-boolean p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->y:Z

    .line 323
    iget-boolean p2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->flipHorizontally:Z

    iput-boolean p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->d:Z

    .line 324
    iget-boolean p2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->flipVertically:Z

    iput-boolean p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->e:Z

    .line 326
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 327
    sget p2, Lcom/theartofdev/edmodo/cropper/g$b;->crop_image_view:I

    invoke-virtual {p1, p2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 329
    sget p2, Lcom/theartofdev/edmodo/cropper/g$a;->ImageView_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->k:Landroid/widget/ImageView;

    .line 330
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 332
    sget p2, Lcom/theartofdev/edmodo/cropper/g$a;->CropOverlayView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    iput-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 333
    new-instance v0, Lcom/theartofdev/edmodo/cropper/CropImageView$1;

    invoke-direct {v0, p0}, Lcom/theartofdev/edmodo/cropper/CropImageView$1;-><init>(Lcom/theartofdev/edmodo/cropper/CropImageView;)V

    invoke-virtual {p2, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropWindowChangeListener(Lcom/theartofdev/edmodo/cropper/CropOverlayView$a;)V

    .line 348
    invoke-virtual {p2, v3}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setInitialAttributeValues(Lcom/theartofdev/edmodo/cropper/CropImageOptions;)V

    .line 350
    sget p2, Lcom/theartofdev/edmodo/cropper/g$a;->CropProgressBar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->o:Landroid/widget/ProgressBar;

    .line 351
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->d()V

    return-void
.end method

.method private static a(III)I
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_1

    .line 1774
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, p2

    :goto_0
    return p1
.end method

.method static synthetic a(Lcom/theartofdev/edmodo/cropper/CropImageView;)Lcom/theartofdev/edmodo/cropper/CropImageView$f;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->B:Lcom/theartofdev/edmodo/cropper/CropImageView$f;

    return-object p0
.end method

.method private a(IILcom/theartofdev/edmodo/cropper/CropImageView$i;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V
    .locals 22

    move-object/from16 v15, p0

    move-object/from16 v14, p3

    .line 1267
    iget-object v2, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->a:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    .line 1269
    iget-object v0, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->k:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1271
    iget-object v0, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->j:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 1272
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/theartofdev/edmodo/cropper/a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1275
    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/a;->cancel(Z)Z

    .line 1278
    :cond_1
    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$i;->NONE:Lcom/theartofdev/edmodo/cropper/CropImageView$i;

    if-eq v14, v0, :cond_2

    move/from16 v10, p1

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    .line 1279
    :goto_1
    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$i;->NONE:Lcom/theartofdev/edmodo/cropper/CropImageView$i;

    if-eq v14, v0, :cond_3

    move/from16 v16, p2

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    .line 1281
    :goto_2
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v3, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->E:I

    mul-int v5, v0, v3

    .line 1282
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v3, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->E:I

    mul-int v6, v0, v3

    .line 1283
    iget-object v0, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->h:Landroid/net/Uri;

    if-eqz v0, :cond_5

    if-gt v3, v1, :cond_4

    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$i;->SAMPLING:Lcom/theartofdev/edmodo/cropper/CropImageView$i;

    if-ne v14, v0, :cond_5

    .line 1285
    :cond_4
    new-instance v1, Ljava/lang/ref/WeakReference;

    new-instance v13, Lcom/theartofdev/edmodo/cropper/a;

    move-object v0, v13

    iget-object v2, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->h:Landroid/net/Uri;

    .line 1290
    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->c()[F

    move-result-object v3

    iget v4, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->c:I

    iget-object v7, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 4249
    iget-boolean v7, v7, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->b:Z

    .line 1294
    iget-object v8, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 4268
    iget v8, v8, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->c:I

    .line 1295
    iget-object v9, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 4289
    iget v9, v9, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->d:I

    .line 1296
    iget-boolean v12, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->d:Z

    iget-boolean v11, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->e:Z

    move-object/from16 v18, v13

    move v13, v11

    move-object v11, v1

    move-object/from16 v1, p0

    move-object/from16 v19, v11

    move/from16 v11, v16

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move/from16 v17, p6

    invoke-direct/range {v0 .. v17}, Lcom/theartofdev/edmodo/cropper/a;-><init>(Lcom/theartofdev/edmodo/cropper/CropImageView;Landroid/net/Uri;[FIIIZIIIIZZLcom/theartofdev/edmodo/cropper/CropImageView$i;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V

    move-object/from16 v1, v18

    move-object/from16 v0, v19

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v15, p0

    iput-object v0, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->j:Ljava/lang/ref/WeakReference;

    move-object v1, v15

    goto :goto_3

    .line 1306
    :cond_5
    new-instance v13, Ljava/lang/ref/WeakReference;

    new-instance v12, Lcom/theartofdev/edmodo/cropper/a;

    .line 1311
    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->c()[F

    move-result-object v3

    iget v4, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->c:I

    iget-object v0, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 5249
    iget-boolean v5, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->b:Z

    .line 1313
    iget-object v0, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 5268
    iget v6, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->c:I

    .line 1314
    iget-object v0, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 5289
    iget v7, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->d:I

    .line 1315
    iget-boolean v11, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->d:Z

    iget-boolean v9, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->e:Z

    move-object v0, v12

    move-object/from16 v1, p0

    move v8, v10

    move/from16 v17, v9

    move/from16 v9, v16

    move v10, v11

    move/from16 v11, v17

    move-object/from16 v20, v12

    move-object/from16 v12, p3

    move-object v14, v13

    move-object/from16 v13, p4

    move-object/from16 v21, v14

    move-object/from16 v14, p5

    move/from16 v15, p6

    invoke-direct/range {v0 .. v15}, Lcom/theartofdev/edmodo/cropper/a;-><init>(Lcom/theartofdev/edmodo/cropper/CropImageView;Landroid/graphics/Bitmap;[FIZIIIIZZLcom/theartofdev/edmodo/cropper/CropImageView$i;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V

    move-object/from16 v1, v20

    move-object/from16 v0, v21

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/theartofdev/edmodo/cropper/CropImageView;->j:Ljava/lang/ref/WeakReference;

    .line 1325
    :goto_3
    iget-object v0, v1, Lcom/theartofdev/edmodo/cropper/CropImageView;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/theartofdev/edmodo/cropper/a;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Lcom/theartofdev/edmodo/cropper/a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1326
    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->d()V

    goto :goto_4

    :cond_6
    move-object v1, v15

    :goto_4
    return-void
.end method

.method static synthetic a(Lcom/theartofdev/edmodo/cropper/CropImageView;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(ZZ)V

    return-void
.end method

.method private a(Z)V
    .locals 5

    .line 1805
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1809
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->E:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->q:[F

    .line 1810
    invoke-static {v2}, Lcom/theartofdev/edmodo/cropper/c;->e([F)F

    move-result v2

    div-float/2addr v0, v2

    .line 1811
    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->E:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->q:[F

    .line 1812
    invoke-static {v1}, Lcom/theartofdev/edmodo/cropper/c;->f([F)F

    move-result v1

    div-float/2addr v2, v1

    .line 1813
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 1814
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    .line 1813
    invoke-virtual {v1, v3, v4, v0, v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropWindowLimits(FFFF)V

    .line 1818
    :cond_0
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:[F

    :goto_0
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setBounds([FII)V

    return-void
.end method

.method private a(ZZ)V
    .locals 10

    .line 1565
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result v0

    .line 1566
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result v1

    .line 1567
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->a:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_9

    if-lez v0, :cond_9

    if-lez v1, :cond_9

    .line 1569
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 8150
    iget-object v2, v2, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a:Lcom/theartofdev/edmodo/cropper/e;

    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/e;->a()Landroid/graphics/RectF;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 1571
    iget p1, v2, Landroid/graphics/RectF;->left:F

    cmpg-float p1, p1, v3

    if-ltz p1, :cond_0

    iget p1, v2, Landroid/graphics/RectF;->top:F

    cmpg-float p1, p1, v3

    if-ltz p1, :cond_0

    iget p1, v2, Landroid/graphics/RectF;->right:F

    int-to-float p2, v0

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_0

    iget p1, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float p2, v1

    cmpl-float p1, p1, p2

    if-lez p1, :cond_9

    :cond_0
    int-to-float p1, v0

    int-to-float p2, v1

    const/4 v0, 0x0

    .line 1575
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(FFZZ)V

    return-void

    .line 1577
    :cond_1
    iget-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->z:Z

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez p1, :cond_2

    iget p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->F:F

    cmpl-float p1, p1, v4

    if-lez p1, :cond_9

    .line 1580
    :cond_2
    iget p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->F:F

    iget v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->A:I

    int-to-float v5, v5

    cmpg-float p1, p1, v5

    if-gez p1, :cond_3

    .line 1581
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result p1

    int-to-float v5, v0

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v7, v5, v6

    cmpg-float p1, p1, v7

    if-gez p1, :cond_3

    .line 1582
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result p1

    int-to-float v7, v1

    mul-float v6, v6, v7

    cmpg-float p1, p1, v6

    if-gez p1, :cond_3

    .line 1583
    iget p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->A:I

    int-to-float p1, p1

    .line 1587
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget v8, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->F:F

    div-float/2addr v6, v8

    const v8, 0x3f23d70a    # 0.64f

    div-float/2addr v6, v8

    div-float/2addr v5, v6

    .line 1588
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v6

    iget v9, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->F:F

    div-float/2addr v6, v9

    div-float/2addr v6, v8

    div-float/2addr v7, v6

    .line 1586
    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1584
    invoke-static {p1, v5}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 1590
    :goto_0
    iget v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->F:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_5

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    int-to-float v6, v0

    const v7, 0x3f266666    # 0.65f

    mul-float v8, v6, v7

    cmpl-float v5, v5, v8

    if-gtz v5, :cond_4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    int-to-float v8, v1

    mul-float v8, v8, v7

    cmpl-float v5, v5, v8

    if-lez v5, :cond_5

    .line 1595
    :cond_4
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->F:F

    div-float/2addr p1, v5

    const v5, 0x3f028f5c    # 0.51f

    div-float/2addr p1, v5

    div-float/2addr v6, p1

    int-to-float p1, v1

    .line 1596
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v7, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->F:F

    div-float/2addr v2, v7

    div-float/2addr v2, v5

    div-float/2addr p1, v2

    .line 1594
    invoke-static {v6, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1592
    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1598
    :cond_5
    iget-boolean v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->z:Z

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    move v4, p1

    :goto_1
    cmpl-float p1, v4, v3

    if-lez p1, :cond_9

    .line 1602
    iget p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->F:F

    cmpl-float p1, v4, p1

    if-eqz p1, :cond_9

    if-eqz p2, :cond_8

    .line 1604
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->r:Lcom/theartofdev/edmodo/cropper/d;

    if-nez p1, :cond_7

    .line 1606
    new-instance p1, Lcom/theartofdev/edmodo/cropper/d;

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->k:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-direct {p1, v2, v3}, Lcom/theartofdev/edmodo/cropper/d;-><init>(Landroid/widget/ImageView;Lcom/theartofdev/edmodo/cropper/CropOverlayView;)V

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->r:Lcom/theartofdev/edmodo/cropper/d;

    .line 1609
    :cond_7
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->r:Lcom/theartofdev/edmodo/cropper/d;

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:[F

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->m:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2, v3}, Lcom/theartofdev/edmodo/cropper/d;->a([FLandroid/graphics/Matrix;)V

    .line 1612
    :cond_8
    iput v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->F:F

    int-to-float p1, v0

    int-to-float v0, v1

    const/4 v1, 0x1

    .line 1614
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(FFZZ)V

    :cond_9
    return-void
.end method

.method static synthetic b(Lcom/theartofdev/edmodo/cropper/CropImageView;)Lcom/theartofdev/edmodo/cropper/CropImageView$e;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->C:Lcom/theartofdev/edmodo/cropper/CropImageView$e;

    return-object p0
.end method

.method private e()V
    .locals 3

    .line 1222
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->u:I

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->h:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 1223
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    const/4 v0, 0x0

    .line 1225
    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->a:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 1228
    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->u:I

    .line 1229
    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->h:Landroid/net/Uri;

    const/4 v2, 0x1

    .line 1230
    iput v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->E:I

    .line 1231
    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->c:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1232
    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->F:F

    const/4 v1, 0x0

    .line 1233
    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->G:F

    .line 1234
    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->H:F

    .line 1235
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->m:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 1236
    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->L:Landroid/net/Uri;

    .line 1238
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->k:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1240
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->g()V

    return-void
.end method

.method private f()V
    .locals 11

    .line 1736
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v3, 0x1

    .line 1737
    aput v2, v0, v3

    .line 1738
    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x2

    aput v4, v0, v5

    .line 1739
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:[F

    const/4 v4, 0x3

    aput v2, v0, v4

    .line 1740
    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x4

    aput v6, v0, v7

    .line 1741
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:[F

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v8, 0x5

    aput v6, v0, v8

    .line 1742
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:[F

    const/4 v6, 0x6

    aput v2, v0, v6

    .line 1743
    iget-object v9, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/4 v10, 0x7

    aput v9, v0, v10

    .line 1744
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->m:Landroid/graphics/Matrix;

    iget-object v9, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:[F

    invoke-virtual {v0, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1745
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->q:[F

    aput v2, v0, v1

    .line 1746
    aput v2, v0, v3

    const/high16 v1, 0x42c80000    # 100.0f

    .line 1747
    aput v1, v0, v5

    .line 1748
    aput v2, v0, v4

    .line 1749
    aput v1, v0, v7

    .line 1750
    aput v1, v0, v8

    .line 1751
    aput v2, v0, v6

    .line 1752
    aput v1, v0, v10

    .line 1753
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->m:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-void
.end method

.method private g()V
    .locals 2

    .line 1787
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    if-eqz v0, :cond_1

    .line 1788
    iget-boolean v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->x:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Rect;
    .locals 4

    .line 622
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->E:I

    .line 623
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->a:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 628
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int v2, v2, v0

    .line 629
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v1, v1, v0

    .line 630
    new-instance v0, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method final a(FFZZ)V
    .locals 8

    .line 1630
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_a

    cmpl-float v1, p2, v0

    if-lez v1, :cond_a

    .line 1632
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->m:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->n:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1633
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 9150
    iget-object v1, v1, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a:Lcom/theartofdev/edmodo/cropper/e;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/e;->a()Landroid/graphics/RectF;

    move-result-object v1

    .line 1634
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->n:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1636
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->m:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 1639
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->m:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->a:Landroid/graphics/Bitmap;

    .line 1640
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p1, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, p2, v5

    div-float/2addr v5, v4

    .line 1639
    invoke-virtual {v2, v3, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1641
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->f()V

    .line 1644
    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->c:I

    if-lez v2, :cond_0

    .line 1645
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->m:Landroid/graphics/Matrix;

    int-to-float v2, v2

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:[F

    .line 1647
    invoke-static {v5}, Lcom/theartofdev/edmodo/cropper/c;->g([F)F

    move-result v5

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:[F

    .line 1648
    invoke-static {v6}, Lcom/theartofdev/edmodo/cropper/c;->h([F)F

    move-result v6

    .line 1645
    invoke-virtual {v3, v2, v5, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1649
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->f()V

    .line 1653
    :cond_0
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:[F

    .line 1655
    invoke-static {v2}, Lcom/theartofdev/edmodo/cropper/c;->e([F)F

    move-result v2

    div-float v2, p1, v2

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:[F

    .line 1656
    invoke-static {v3}, Lcom/theartofdev/edmodo/cropper/c;->f([F)F

    move-result v3

    div-float v3, p2, v3

    .line 1654
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1657
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->v:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    sget-object v5, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->FIT_CENTER:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    if-eq v3, v5, :cond_2

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->v:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    sget-object v5, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->CENTER_INSIDE:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne v3, v5, :cond_1

    cmpg-float v3, v2, v6

    if-ltz v3, :cond_2

    :cond_1
    cmpl-float v3, v2, v6

    if-lez v3, :cond_3

    iget-boolean v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->z:Z

    if-eqz v3, :cond_3

    .line 1660
    :cond_2
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->m:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:[F

    .line 1663
    invoke-static {v5}, Lcom/theartofdev/edmodo/cropper/c;->g([F)F

    move-result v5

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:[F

    .line 1664
    invoke-static {v6}, Lcom/theartofdev/edmodo/cropper/c;->h([F)F

    move-result v6

    .line 1660
    invoke-virtual {v3, v2, v2, v5, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1665
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->f()V

    .line 1669
    :cond_3
    iget-boolean v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->d:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->F:F

    neg-float v2, v2

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->F:F

    .line 1670
    :goto_0
    iget-boolean v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->e:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->F:F

    neg-float v3, v3

    goto :goto_1

    :cond_5
    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->F:F

    .line 1671
    :goto_1
    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->m:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:[F

    .line 1674
    invoke-static {v6}, Lcom/theartofdev/edmodo/cropper/c;->g([F)F

    move-result v6

    iget-object v7, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:[F

    .line 1675
    invoke-static {v7}, Lcom/theartofdev/edmodo/cropper/c;->h([F)F

    move-result v7

    .line 1671
    invoke-virtual {v5, v2, v3, v6, v7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1676
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->f()V

    .line 1678
    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->m:Landroid/graphics/Matrix;

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    if-eqz p3, :cond_8

    .line 1682
    iget-object p3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:[F

    .line 1683
    invoke-static {p3}, Lcom/theartofdev/edmodo/cropper/c;->e([F)F

    move-result p3

    cmpl-float p3, p1, p3

    if-lez p3, :cond_6

    const/4 p1, 0x0

    goto :goto_2

    :cond_6
    div-float/2addr p1, v4

    .line 1687
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    sub-float/2addr p1, p3

    iget-object p3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:[F

    invoke-static {p3}, Lcom/theartofdev/edmodo/cropper/c;->a([F)F

    move-result p3

    neg-float p3, p3

    .line 1686
    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1688
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result p3

    int-to-float p3, p3

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:[F

    invoke-static {v5}, Lcom/theartofdev/edmodo/cropper/c;->c([F)F

    move-result v5

    sub-float/2addr p3, v5

    .line 1685
    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float/2addr p1, v2

    :goto_2
    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->G:F

    .line 1690
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:[F

    .line 1691
    invoke-static {p1}, Lcom/theartofdev/edmodo/cropper/c;->f([F)F

    move-result p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_7

    goto :goto_3

    :cond_7
    div-float/2addr p2, v4

    .line 1695
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    sub-float/2addr p2, p1

    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:[F

    invoke-static {p1}, Lcom/theartofdev/edmodo/cropper/c;->b([F)F

    move-result p1

    neg-float p1, p1

    .line 1694
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1696
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:[F

    invoke-static {p3}, Lcom/theartofdev/edmodo/cropper/c;->d([F)F

    move-result p3

    sub-float/2addr p2, p3

    .line 1693
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float v0, p1, v3

    :goto_3
    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->H:F

    goto :goto_4

    .line 1701
    :cond_8
    iget p3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->G:F

    mul-float p3, p3, v2

    iget v0, v1, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    .line 1702
    invoke-static {p3, v0}, Ljava/lang/Math;->max(FF)F

    move-result p3

    iget v0, v1, Landroid/graphics/RectF;->right:F

    neg-float v0, v0

    add-float/2addr v0, p1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr p1, v2

    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->G:F

    .line 1704
    iget p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->H:F

    mul-float p1, p1, v3

    iget p3, v1, Landroid/graphics/RectF;->top:F

    neg-float p3, p3

    .line 1705
    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget p3, v1, Landroid/graphics/RectF;->bottom:F

    neg-float p3, p3

    add-float/2addr p3, p2

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr p1, v3

    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->H:F

    .line 1710
    :goto_4
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->m:Landroid/graphics/Matrix;

    iget p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->G:F

    mul-float p2, p2, v2

    iget p3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->H:F

    mul-float p3, p3, v3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1711
    iget p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->G:F

    mul-float p1, p1, v2

    iget p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->H:F

    mul-float p2, p2, v3

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 1712
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {p1, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropWindowRect(Landroid/graphics/RectF;)V

    .line 1713
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->f()V

    .line 1714
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    if-eqz p4, :cond_9

    .line 1719
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->r:Lcom/theartofdev/edmodo/cropper/d;

    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:[F

    iget-object p3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->m:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2, p3}, Lcom/theartofdev/edmodo/cropper/d;->b([FLandroid/graphics/Matrix;)V

    .line 1720
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->k:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->r:Lcom/theartofdev/edmodo/cropper/d;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_5

    .line 1722
    :cond_9
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->k:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->m:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :goto_5
    const/4 p1, 0x0

    .line 1726
    invoke-direct {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(Z)V

    :cond_a
    return-void
.end method

.method public final a(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1045
    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->a:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7

    if-gez v1, :cond_0

    .line 1048
    rem-int/lit16 v1, v1, 0x168

    add-int/lit16 v1, v1, 0x168

    goto :goto_0

    .line 1050
    :cond_0
    rem-int/lit16 v1, v1, 0x168

    .line 1053
    :goto_0
    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 3249
    iget-boolean v2, v2, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->b:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_3

    const/16 v2, 0x2d

    if-le v1, v2, :cond_1

    const/16 v2, 0x87

    if-lt v1, v2, :cond_2

    :cond_1
    const/16 v2, 0xd7

    if-le v1, v2, :cond_3

    const/16 v2, 0x131

    if-ge v1, v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 1056
    :goto_1
    sget-object v5, Lcom/theartofdev/edmodo/cropper/c;->c:Landroid/graphics/RectF;

    iget-object v6, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 4150
    iget-object v6, v6, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a:Lcom/theartofdev/edmodo/cropper/e;

    invoke-virtual {v6}, Lcom/theartofdev/edmodo/cropper/e;->a()Landroid/graphics/RectF;

    move-result-object v6

    .line 1056
    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1057
    sget-object v5, Lcom/theartofdev/edmodo/cropper/c;->c:Landroid/graphics/RectF;

    if-eqz v2, :cond_4

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    :goto_2
    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 1058
    sget-object v7, Lcom/theartofdev/edmodo/cropper/c;->c:Landroid/graphics/RectF;

    if-eqz v2, :cond_5

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    goto :goto_3

    :cond_5
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    :goto_3
    div-float/2addr v7, v6

    if-eqz v2, :cond_6

    .line 1060
    iget-boolean v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->d:Z

    .line 1061
    iget-boolean v6, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->e:Z

    iput-boolean v6, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->d:Z

    .line 1062
    iput-boolean v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->e:Z

    .line 1065
    :cond_6
    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->m:Landroid/graphics/Matrix;

    iget-object v6, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->n:Landroid/graphics/Matrix;

    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1067
    sget-object v2, Lcom/theartofdev/edmodo/cropper/c;->d:[F

    sget-object v6, Lcom/theartofdev/edmodo/cropper/c;->c:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    aput v6, v2, v4

    .line 1068
    sget-object v2, Lcom/theartofdev/edmodo/cropper/c;->d:[F

    sget-object v6, Lcom/theartofdev/edmodo/cropper/c;->c:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    aput v6, v2, v3

    .line 1069
    sget-object v2, Lcom/theartofdev/edmodo/cropper/c;->d:[F

    const/4 v6, 0x2

    const/4 v8, 0x0

    aput v8, v2, v6

    .line 1070
    sget-object v2, Lcom/theartofdev/edmodo/cropper/c;->d:[F

    const/4 v9, 0x3

    aput v8, v2, v9

    .line 1071
    sget-object v2, Lcom/theartofdev/edmodo/cropper/c;->d:[F

    const/4 v10, 0x4

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v2, v10

    .line 1072
    sget-object v2, Lcom/theartofdev/edmodo/cropper/c;->d:[F

    const/4 v12, 0x5

    aput v8, v2, v12

    .line 1073
    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->n:Landroid/graphics/Matrix;

    sget-object v8, Lcom/theartofdev/edmodo/cropper/c;->d:[F

    invoke-virtual {v2, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1076
    iget v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->c:I

    add-int/2addr v2, v1

    rem-int/lit16 v2, v2, 0x168

    iput v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->c:I

    .line 1078
    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(FFZZ)V

    .line 1081
    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->m:Landroid/graphics/Matrix;

    sget-object v2, Lcom/theartofdev/edmodo/cropper/c;->e:[F

    sget-object v8, Lcom/theartofdev/edmodo/cropper/c;->d:[F

    invoke-virtual {v1, v2, v8}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 1082
    iget v1, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->F:F

    float-to-double v1, v1

    sget-object v8, Lcom/theartofdev/edmodo/cropper/c;->e:[F

    aget v8, v8, v10

    sget-object v13, Lcom/theartofdev/edmodo/cropper/c;->e:[F

    aget v13, v13, v6

    sub-float/2addr v8, v13

    float-to-double v13, v8

    move/from16 p1, v7

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 1084
    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    sget-object v15, Lcom/theartofdev/edmodo/cropper/c;->e:[F

    aget v15, v15, v12

    sget-object v16, Lcom/theartofdev/edmodo/cropper/c;->e:[F

    aget v16, v16, v9

    sub-float v15, v15, v16

    float-to-double v8, v15

    .line 1085
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v13, v8

    .line 1083
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    div-double/2addr v1, v8

    double-to-float v1, v1

    iput v1, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->F:F

    .line 1086
    invoke-static {v1, v11}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->F:F

    .line 1088
    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(FFZZ)V

    .line 1090
    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->m:Landroid/graphics/Matrix;

    sget-object v2, Lcom/theartofdev/edmodo/cropper/c;->e:[F

    sget-object v8, Lcom/theartofdev/edmodo/cropper/c;->d:[F

    invoke-virtual {v1, v2, v8}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 1093
    sget-object v1, Lcom/theartofdev/edmodo/cropper/c;->e:[F

    aget v1, v1, v10

    sget-object v2, Lcom/theartofdev/edmodo/cropper/c;->e:[F

    const/4 v8, 0x2

    aget v2, v2, v8

    sub-float/2addr v1, v2

    float-to-double v1, v1

    .line 1095
    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    sget-object v8, Lcom/theartofdev/edmodo/cropper/c;->e:[F

    aget v8, v8, v12

    sget-object v9, Lcom/theartofdev/edmodo/cropper/c;->e:[F

    const/4 v10, 0x3

    aget v9, v9, v10

    sub-float/2addr v8, v9

    float-to-double v8, v8

    .line 1096
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v1, v6

    .line 1094
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    float-to-double v5, v5

    mul-double v5, v5, v1

    double-to-float v5, v5

    move/from16 v7, p1

    float-to-double v6, v7

    mul-double v6, v6, v1

    double-to-float v1, v6

    .line 1102
    sget-object v2, Lcom/theartofdev/edmodo/cropper/c;->c:Landroid/graphics/RectF;

    sget-object v6, Lcom/theartofdev/edmodo/cropper/c;->e:[F

    aget v6, v6, v4

    sub-float/2addr v6, v5

    sget-object v7, Lcom/theartofdev/edmodo/cropper/c;->e:[F

    aget v7, v7, v3

    sub-float/2addr v7, v1

    sget-object v8, Lcom/theartofdev/edmodo/cropper/c;->e:[F

    aget v8, v8, v4

    add-float/2addr v8, v5

    sget-object v5, Lcom/theartofdev/edmodo/cropper/c;->e:[F

    aget v5, v5, v3

    add-float/2addr v5, v1

    invoke-virtual {v2, v6, v7, v8, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1108
    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->b()V

    .line 1109
    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    sget-object v2, Lcom/theartofdev/edmodo/cropper/c;->c:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropWindowRect(Landroid/graphics/RectF;)V

    .line 1110
    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(FFZZ)V

    .line 1111
    invoke-direct {v0, v4, v4}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(ZZ)V

    .line 1115
    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a()V

    :cond_7
    return-void
.end method

.method final a(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V
    .locals 1

    .line 1191
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1193
    :cond_0
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->k:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1195
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->e()V

    .line 1197
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->a:Landroid/graphics/Bitmap;

    .line 1198
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1200
    iput-object p3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->h:Landroid/net/Uri;

    .line 1201
    iput p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->u:I

    .line 1202
    iput p4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->E:I

    .line 1203
    iput p5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->c:I

    .line 1205
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result p2

    int-to-float p2, p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(FFZZ)V

    .line 1207
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    if-eqz p1, :cond_1

    .line 1208
    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->b()V

    .line 1209
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->g()V

    :cond_1
    return-void
.end method

.method public final a(Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;IIILcom/theartofdev/edmodo/cropper/CropImageView$i;)V
    .locals 7

    .line 919
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->g:Lcom/theartofdev/edmodo/cropper/CropImageView$d;

    if-eqz v0, :cond_0

    move-object v0, p0

    move v1, p4

    move v2, p5

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    .line 922
    invoke-direct/range {v0 .. v6}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(IILcom/theartofdev/edmodo/cropper/CropImageView$i;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V

    return-void

    .line 920
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "mOnCropImageCompleteListener is not set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()Landroid/graphics/Rect;
    .locals 7

    .line 640
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->E:I

    .line 641
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->a:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 647
    :cond_0
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->c()[F

    move-result-object v2

    .line 649
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int v3, v3, v0

    .line 650
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v0, v0, v1

    .line 653
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 2249
    iget-boolean v4, v1, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->b:Z

    .line 657
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 2268
    iget v5, v1, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->c:I

    .line 658
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 2289
    iget v6, v1, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->d:I

    move-object v1, v2

    move v2, v3

    move v3, v0

    .line 653
    invoke-static/range {v1 .. v6}, Lcom/theartofdev/edmodo/cropper/c;->a([FIIZII)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public final c()[F
    .locals 6

    .line 685
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 3150
    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a:Lcom/theartofdev/edmodo/cropper/e;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/e;->a()Landroid/graphics/RectF;

    move-result-object v0

    const/16 v1, 0x8

    new-array v2, v1, [F

    .line 687
    iget v3, v0, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, v0, Landroid/graphics/RectF;->top:F

    const/4 v5, 0x1

    aput v3, v2, v5

    iget v3, v0, Landroid/graphics/RectF;->right:F

    const/4 v5, 0x2

    aput v3, v2, v5

    iget v3, v0, Landroid/graphics/RectF;->top:F

    const/4 v5, 0x3

    aput v3, v2, v5

    iget v3, v0, Landroid/graphics/RectF;->right:F

    const/4 v5, 0x4

    aput v3, v2, v5

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    const/4 v5, 0x5

    aput v3, v2, v5

    iget v3, v0, Landroid/graphics/RectF;->left:F

    const/4 v5, 0x6

    aput v3, v2, v5

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    const/4 v3, 0x7

    aput v0, v2, v3

    .line 699
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->m:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 700
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    :goto_0
    if-ge v4, v1, :cond_0

    .line 703
    aget v0, v2, v4

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->E:I

    int-to-float v3, v3

    mul-float v0, v0, v3

    aput v0, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method final d()V
    .locals 3

    .line 1796
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->y:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->i:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->j:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1800
    :goto_0
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->o:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 1508
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1510
    iget p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->s:I

    const/4 v0, 0x1

    if-lez p1, :cond_4

    iget p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->t:I

    if-lez p1, :cond_4

    .line 1512
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 1513
    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->s:I

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1514
    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->t:I

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1515
    invoke-virtual {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1517
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->a:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    sub-int/2addr p4, p2

    int-to-float p1, p4

    sub-int/2addr p5, p3

    int-to-float p2, p5

    const/4 p3, 0x0

    .line 1518
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(FFZZ)V

    .line 1522
    iget-object p4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->I:Landroid/graphics/RectF;

    if-eqz p4, :cond_1

    .line 1523
    iget p4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->J:I

    iget p5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->b:I

    if-eq p4, p5, :cond_0

    .line 1524
    iput p4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->c:I

    .line 1525
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(FFZZ)V

    .line 1527
    :cond_0
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->m:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->I:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1528
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->I:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropWindowRect(Landroid/graphics/RectF;)V

    .line 1529
    invoke-direct {p0, p3, p3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(ZZ)V

    .line 1530
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a()V

    const/4 p1, 0x0

    .line 1531
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->I:Landroid/graphics/RectF;

    return-void

    .line 1532
    :cond_1
    iget-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->K:Z

    if-eqz p1, :cond_3

    .line 1533
    iput-boolean p3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->K:Z

    .line 1534
    invoke-direct {p0, p3, p3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(ZZ)V

    return-void

    .line 1537
    :cond_2
    invoke-direct {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(Z)V

    :cond_3
    return-void

    .line 1540
    :cond_4
    invoke-direct {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 1447
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1449
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1450
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 1451
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1452
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 1454
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->a:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    if-nez p2, :cond_0

    .line 1458
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    .line 1468
    :cond_0
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    if-ge p1, v2, :cond_1

    int-to-double v5, p1

    .line 1469
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v7, v2

    div-double/2addr v5, v7

    goto :goto_0

    :cond_1
    move-wide v5, v3

    .line 1471
    :goto_0
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ge p2, v2, :cond_2

    int-to-double v7, p2

    .line 1472
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-double v9, v2

    div-double/2addr v7, v9

    goto :goto_1

    :cond_2
    move-wide v7, v3

    :goto_1
    cmpl-double v2, v5, v3

    if-nez v2, :cond_4

    cmpl-double v2, v7, v3

    if-eqz v2, :cond_3

    goto :goto_2

    .line 1488
    :cond_3
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 1489
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    goto :goto_3

    :cond_4
    :goto_2
    cmpg-double v2, v5, v7

    if-gtz v2, :cond_5

    .line 1480
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double v2, v2, v5

    double-to-int v3, v2

    move v2, p1

    goto :goto_3

    .line 1483
    :cond_5
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double v2, v2, v7

    double-to-int v2, v2

    move v3, p2

    .line 1492
    :goto_3
    invoke-static {v0, p1, v2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(III)I

    move-result p1

    .line 1493
    invoke-static {v1, p2, v3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(III)I

    move-result p2

    .line 1495
    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->s:I

    .line 1496
    iput p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->t:I

    .line 1498
    invoke-virtual {p0, p1, p2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setMeasuredDimension(II)V

    return-void

    .line 1501
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7

    .line 1380
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_a

    .line 1381
    check-cast p1, Landroid/os/Bundle;

    .line 1384
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->i:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->h:Landroid/net/Uri;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_9

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->u:I

    if-nez v0, :cond_9

    const-string v0, "LOADED_IMAGE_URI"

    .line 1389
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_2

    const-string v1, "LOADED_IMAGE_STATE_BITMAP_KEY"

    .line 1391
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1393
    sget-object v2, Lcom/theartofdev/edmodo/cropper/c;->f:Landroid/util/Pair;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Lcom/theartofdev/edmodo/cropper/c;->f:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1394
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/theartofdev/edmodo/cropper/c;->f:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1395
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 1397
    :goto_0
    sput-object v3, Lcom/theartofdev/edmodo/cropper/c;->f:Landroid/util/Pair;

    if-eqz v2, :cond_1

    .line 1398
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v3, 0x0

    const-string v1, "LOADED_SAMPLE_SIZE"

    .line 1399
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    .line 1402
    :cond_1
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->h:Landroid/net/Uri;

    if-nez v1, :cond_4

    .line 1403
    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    goto :goto_1

    :cond_2
    const-string v0, "LOADED_IMAGE_RESOURCE"

    .line 1406
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    .line 1408
    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    const-string v0, "LOADING_IMAGE_URI"

    .line 1410
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 1412
    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    :cond_4
    :goto_1
    const-string v0, "DEGREES_ROTATED"

    .line 1417
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->J:I

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->c:I

    const-string v0, "INITIAL_CROP_RECT"

    .line 1419
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-eqz v0, :cond_6

    .line 1421
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-gtz v1, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lez v1, :cond_6

    .line 1422
    :cond_5
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v1, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    :cond_6
    const-string v0, "CROP_WINDOW_RECT"

    .line 1425
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    if-eqz v0, :cond_8

    .line 1426
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_7

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8

    .line 1427
    :cond_7
    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->I:Landroid/graphics/RectF;

    .line 1430
    :cond_8
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    const-string v1, "CROP_SHAPE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->valueOf(Ljava/lang/String;)Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropShape(Lcom/theartofdev/edmodo/cropper/CropImageView$b;)V

    const-string v0, "CROP_AUTO_ZOOM_ENABLED"

    .line 1432
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->z:Z

    const-string v0, "CROP_MAX_ZOOM"

    .line 1433
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->A:I

    const-string v0, "CROP_FLIP_HORIZONTALLY"

    .line 1435
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->d:Z

    const-string v0, "CROP_FLIP_VERTICALLY"

    .line 1436
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->e:Z

    :cond_9
    const-string v0, "instanceState"

    .line 1439
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1441
    :cond_a
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .line 1332
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->h:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->u:I

    if-gtz v0, :cond_0

    .line 1333
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0

    .line 1336
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1337
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->h:Landroid/net/Uri;

    .line 1338
    iget-boolean v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Z

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->u:I

    if-gtz v2, :cond_1

    .line 1342
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->a:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->L:Landroid/net/Uri;

    .line 1341
    invoke-static {v1, v2, v3}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->L:Landroid/net/Uri;

    :cond_1
    if-eqz v1, :cond_2

    .line 1344
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->a:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 1345
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1346
    new-instance v3, Landroid/util/Pair;

    new-instance v4, Ljava/lang/ref/WeakReference;

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->a:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v3, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v3, Lcom/theartofdev/edmodo/cropper/c;->f:Landroid/util/Pair;

    const-string v3, "LOADED_IMAGE_STATE_BITMAP_KEY"

    .line 1347
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    :cond_2
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->i:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_3

    .line 1350
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/theartofdev/edmodo/cropper/b;

    if-eqz v2, :cond_3

    .line 6058
    iget-object v2, v2, Lcom/theartofdev/edmodo/cropper/b;->a:Landroid/net/Uri;

    const-string v3, "LOADING_IMAGE_URI"

    .line 1352
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1355
    :cond_3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    const-string v3, "instanceState"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "LOADED_IMAGE_URI"

    .line 1356
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1357
    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->u:I

    const-string v2, "LOADED_IMAGE_RESOURCE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1358
    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->E:I

    const-string v2, "LOADED_SAMPLE_SIZE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1359
    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->c:I

    const-string v2, "DEGREES_ROTATED"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1360
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 6361
    iget-object v1, v1, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->f:Landroid/graphics/Rect;

    const-string v2, "INITIAL_CROP_RECT"

    .line 1360
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1362
    sget-object v1, Lcom/theartofdev/edmodo/cropper/c;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 7150
    iget-object v2, v2, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a:Lcom/theartofdev/edmodo/cropper/e;

    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/e;->a()Landroid/graphics/RectF;

    move-result-object v2

    .line 1362
    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1364
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->m:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->n:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1365
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->n:Landroid/graphics/Matrix;

    sget-object v2, Lcom/theartofdev/edmodo/cropper/c;->c:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1367
    sget-object v1, Lcom/theartofdev/edmodo/cropper/c;->c:Landroid/graphics/RectF;

    const-string v2, "CROP_WINDOW_RECT"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1368
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 7200
    iget-object v1, v1, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->e:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    .line 1368
    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CROP_SHAPE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    iget-boolean v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->z:Z

    const-string v2, "CROP_AUTO_ZOOM_ENABLED"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1370
    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->A:I

    const-string v2, "CROP_MAX_ZOOM"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1371
    iget-boolean v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->d:Z

    const-string v2, "CROP_FLIP_HORIZONTALLY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1372
    iget-boolean v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->e:Z

    const-string v2, "CROP_FLIP_VERTICALLY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1550
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1551
    :goto_0
    iput-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->K:Z

    return-void
.end method

.method public setAspectRatio(II)V
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setAspectRatioX(I)V

    .line 524
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {p1, p2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setAspectRatioY(I)V

    const/4 p1, 0x1

    .line 525
    invoke-virtual {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setFixedAspectRatio(Z)V

    return-void
.end method

.method public setAutoZoomEnabled(Z)V
    .locals 1

    .line 390
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->z:Z

    if-eq v0, p1, :cond_0

    .line 391
    iput-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->z:Z

    const/4 p1, 0x0

    .line 392
    invoke-direct {p0, p1, p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(ZZ)V

    .line 393
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCropRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 716
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setCropShape(Lcom/theartofdev/edmodo/cropper/CropImageView$b;)V
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropShape(Lcom/theartofdev/edmodo/cropper/CropImageView$b;)V

    return-void
.end method

.method public setFixedAspectRatio(Z)V
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setFixedAspectRatio(Z)V

    return-void
.end method

.method public setFlippedHorizontally(Z)V
    .locals 3

    .line 478
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->d:Z

    if-eq v0, p1, :cond_0

    .line 479
    iput-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->d:Z

    .line 480
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(FFZZ)V

    :cond_0
    return-void
.end method

.method public setFlippedVertically(Z)V
    .locals 3

    .line 491
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->e:Z

    if-eq v0, p1, :cond_0

    .line 492
    iput-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->e:Z

    .line 493
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(FFZZ)V

    :cond_0
    return-void
.end method

.method public setGuidelines(Lcom/theartofdev/edmodo/cropper/CropImageView$c;)V
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setGuidelines(Lcom/theartofdev/edmodo/cropper/CropImageView$c;)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 8

    .line 963
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 964
    invoke-virtual/range {v2 .. v7}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;Landroidx/f/a/a;)V
    .locals 7

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 980
    invoke-static {p1, p2}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/graphics/Bitmap;Landroidx/f/a/a;)Lcom/theartofdev/edmodo/cropper/c$b;

    move-result-object p1

    .line 981
    iget-object p2, p1, Lcom/theartofdev/edmodo/cropper/c$b;->a:Landroid/graphics/Bitmap;

    .line 982
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/c$b;->b:I

    .line 983
    iget p1, p1, Lcom/theartofdev/edmodo/cropper/c$b;->b:I

    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->b:I

    move-object v2, p2

    move v6, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v2, p1

    const/4 v6, 0x0

    .line 987
    :goto_0
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    .line 988
    invoke-virtual/range {v1 .. v6}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 7

    if-eqz p1, :cond_0

    .line 998
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    .line 999
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    .line 1000
    invoke-virtual/range {v1 .. v6}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    :cond_0
    return-void
.end method

.method public setImageUriAsync(Landroid/net/Uri;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 1013
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->i:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1014
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/theartofdev/edmodo/cropper/b;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 1018
    invoke-virtual {v0, v2}, Lcom/theartofdev/edmodo/cropper/b;->cancel(Z)Z

    .line 1022
    :cond_1
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->e()V

    .line 1023
    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->I:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 1024
    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->J:I

    .line 1025
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v2, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    .line 1026
    new-instance v1, Ljava/lang/ref/WeakReference;

    new-instance v2, Lcom/theartofdev/edmodo/cropper/b;

    invoke-direct {v2, p0, p1}, Lcom/theartofdev/edmodo/cropper/b;-><init>(Lcom/theartofdev/edmodo/cropper/CropImageView;Landroid/net/Uri;)V

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->i:Ljava/lang/ref/WeakReference;

    .line 1027
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/theartofdev/edmodo/cropper/b;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v1, v0}, Lcom/theartofdev/edmodo/cropper/b;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1028
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->d()V

    :cond_2
    return-void
.end method

.method public setMaxCropResultSize(II)V
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, p1, p2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setMaxCropResultSize(II)V

    return-void
.end method

.method public setMaxZoom(I)V
    .locals 1

    .line 412
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->A:I

    if-eq v0, p1, :cond_0

    if-lez p1, :cond_0

    .line 413
    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->A:I

    const/4 p1, 0x0

    .line 414
    invoke-direct {p0, p1, p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(ZZ)V

    .line 415
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setMinCropResultSize(II)V
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, p1, p2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setMinCropResultSize(II)V

    return-void
.end method

.method public setMultiTouchEnabled(Z)V
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 400
    invoke-direct {p0, p1, p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(ZZ)V

    .line 401
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setOnCropImageCompleteListener(Lcom/theartofdev/edmodo/cropper/CropImageView$d;)V
    .locals 0

    .line 954
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->g:Lcom/theartofdev/edmodo/cropper/CropImageView$d;

    return-void
.end method

.method public setOnCropWindowChangedListener(Lcom/theartofdev/edmodo/cropper/CropImageView$g;)V
    .locals 0

    .line 938
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->D:Lcom/theartofdev/edmodo/cropper/CropImageView$g;

    return-void
.end method

.method public setOnSetCropOverlayMovedListener(Lcom/theartofdev/edmodo/cropper/CropImageView$e;)V
    .locals 0

    .line 933
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->C:Lcom/theartofdev/edmodo/cropper/CropImageView$e;

    return-void
.end method

.method public setOnSetCropOverlayReleasedListener(Lcom/theartofdev/edmodo/cropper/CropImageView$f;)V
    .locals 0

    .line 928
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->B:Lcom/theartofdev/edmodo/cropper/CropImageView$f;

    return-void
.end method

.method public setOnSetImageUriCompleteListener(Lcom/theartofdev/edmodo/cropper/CropImageView$h;)V
    .locals 0

    .line 946
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->f:Lcom/theartofdev/edmodo/cropper/CropImageView$h;

    return-void
.end method

.method public setRotatedDegrees(I)V
    .locals 1

    .line 450
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->c:I

    if-eq v0, p1, :cond_0

    sub-int/2addr p1, v0

    .line 451
    invoke-virtual {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(I)V

    :cond_0
    return-void
.end method

.method public setSaveBitmapToInstanceState(Z)V
    .locals 0

    .line 603
    iput-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Z

    return-void
.end method

.method public setScaleType(Lcom/theartofdev/edmodo/cropper/CropImageView$j;)V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->v:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    if-eq p1, v0, :cond_0

    .line 362
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->v:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 363
    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->F:F

    const/4 p1, 0x0

    .line 364
    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->H:F

    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->G:F

    .line 365
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->b()V

    .line 366
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setShowCropOverlay(Z)V
    .locals 1

    .line 580
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->x:Z

    if-eq v0, p1, :cond_0

    .line 581
    iput-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->x:Z

    .line 582
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->g()V

    :cond_0
    return-void
.end method

.method public setShowProgressBar(Z)V
    .locals 1

    .line 559
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->y:Z

    if-eq v0, p1, :cond_0

    .line 560
    iput-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->y:Z

    .line 561
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->d()V

    :cond_0
    return-void
.end method

.method public setSnapRadius(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->l:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setSnapRadius(F)V

    :cond_0
    return-void
.end method
