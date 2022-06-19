.class final Lcom/theartofdev/edmodo/cropper/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/theartofdev/edmodo/cropper/c$b;,
        Lcom/theartofdev/edmodo/cropper/c$a;
    }
.end annotation


# static fields
.field static final a:Landroid/graphics/Rect;

.field static final b:Landroid/graphics/RectF;

.field static final c:Landroid/graphics/RectF;

.field static final d:[F

.field static final e:[F

.field static f:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/c;->a:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/c;->b:Landroid/graphics/RectF;

    .line 50
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/c;->c:Landroid/graphics/RectF;

    const/4 v0, 0x6

    new-array v1, v0, [F

    .line 53
    sput-object v1, Lcom/theartofdev/edmodo/cropper/c;->d:[F

    new-array v0, v0, [F

    .line 56
    sput-object v0, Lcom/theartofdev/edmodo/cropper/c;->e:[F

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a([F)F
    .locals 2

    const/4 v0, 0x0

    .line 292
    aget v0, p0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x4

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x6

    aget p0, p0, v1

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private static a()I
    .locals 11

    const/16 v0, 0x800

    .line 786
    :try_start_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    .line 787
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 791
    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    const/4 v3, 0x1

    new-array v4, v3, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 795
    invoke-interface {v1, v2, v5, v6, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 798
    aget v5, v4, v6

    new-array v5, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 799
    aget v7, v4, v6

    invoke-interface {v1, v2, v5, v7, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    new-array v3, v3, [I

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 805
    :goto_0
    aget v9, v4, v6

    if-ge v7, v9, :cond_1

    .line 807
    aget-object v9, v5, v7

    const/16 v10, 0x302c

    invoke-interface {v1, v2, v9, v10, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 811
    aget v9, v3, v6

    if-ge v8, v9, :cond_0

    .line 812
    aget v8, v3, v6

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 817
    :cond_1
    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 820
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method private static a(II)I
    .locals 3

    .line 743
    sget v0, Lcom/theartofdev/edmodo/cropper/c;->g:I

    if-nez v0, :cond_0

    .line 744
    invoke-static {}, Lcom/theartofdev/edmodo/cropper/c;->a()I

    move-result v0

    sput v0, Lcom/theartofdev/edmodo/cropper/c;->g:I

    .line 746
    :cond_0
    sget v0, Lcom/theartofdev/edmodo/cropper/c;->g:I

    const/4 v1, 0x1

    if-lez v0, :cond_2

    .line 747
    :goto_0
    div-int v0, p1, v1

    sget v2, Lcom/theartofdev/edmodo/cropper/c;->g:I

    if-gt v0, v2, :cond_1

    div-int v0, p0, v1

    if-le v0, v2, :cond_2

    :cond_1
    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static a(IIII)I
    .locals 2

    const/4 v0, 0x1

    if-gt p1, p3, :cond_0

    if-le p0, p2, :cond_1

    .line 730
    :cond_0
    :goto_0
    div-int/lit8 v1, p1, 0x2

    div-int/2addr v1, v0

    if-le v1, p3, :cond_1

    div-int/lit8 v1, p0, 0x2

    div-int/2addr v1, v0

    if-le v1, p2, :cond_1

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static a(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    :goto_0
    const/4 v0, 0x0

    .line 627
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 628
    sget-object v1, Lcom/theartofdev/edmodo/cropper/c;->a:Landroid/graphics/Rect;

    invoke-static {v0, v1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    invoke-static {v0}, Lcom/theartofdev/edmodo/cropper/c;->a(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 630
    :catch_0
    :try_start_1
    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 632
    invoke-static {v0}, Lcom/theartofdev/edmodo/cropper/c;->a(Ljava/io/Closeable;)V

    .line 634
    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/16 v1, 0x200

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 635
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Failed to decode image: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 632
    :goto_1
    invoke-static {v0}, Lcom/theartofdev/edmodo/cropper/c;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method static a(Landroid/graphics/Bitmap;IILcom/theartofdev/edmodo/cropper/CropImageView$i;)Landroid/graphics/Bitmap;
    .locals 4

    if-lez p1, :cond_5

    if-lez p2, :cond_5

    .line 417
    :try_start_0
    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$i;->RESIZE_FIT:Lcom/theartofdev/edmodo/cropper/CropImageView$i;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$i;->RESIZE_INSIDE:Lcom/theartofdev/edmodo/cropper/CropImageView$i;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$i;->RESIZE_EXACT:Lcom/theartofdev/edmodo/cropper/CropImageView$i;

    if-ne p3, v0, :cond_5

    :cond_0
    const/4 v0, 0x0

    .line 424
    sget-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$i;->RESIZE_EXACT:Lcom/theartofdev/edmodo/cropper/CropImageView$i;

    const/4 v2, 0x0

    if-ne p3, v1, :cond_1

    .line 425
    invoke-static {p0, p1, p2, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 427
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 428
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v1, v1

    int-to-float p1, p1

    div-float p1, v1, p1

    int-to-float v3, v3

    int-to-float p2, p2

    div-float p2, v3, p2

    .line 429
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p2, p1, p2

    if-gtz p2, :cond_2

    .line 430
    sget-object p2, Lcom/theartofdev/edmodo/cropper/CropImageView$i;->RESIZE_FIT:Lcom/theartofdev/edmodo/cropper/CropImageView$i;

    if-ne p3, p2, :cond_3

    :cond_2
    div-float/2addr v1, p1

    float-to-int p2, v1

    div-float/2addr v3, p1

    float-to-int p1, v3

    .line 432
    invoke-static {p0, p2, p1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    if-eq v0, p0, :cond_4

    .line 438
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object v0

    :catch_0
    move-exception p1

    const-string p2, "AIC"

    const-string p3, "Failed to resize cropped image, return bitmap before resize"

    .line 444
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    return-object p0
.end method

.method private static a(Landroid/graphics/Bitmap;[FIZIIFZZ)Landroid/graphics/Bitmap;
    .locals 10

    move-object v7, p0

    move v8, p2

    move/from16 v0, p6

    .line 204
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 205
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object v1, p1

    move v4, p3

    move v5, p4

    move v6, p5

    .line 202
    invoke-static/range {v1 .. v6}, Lcom/theartofdev/edmodo/cropper/c;->a([FIIZII)Landroid/graphics/Rect;

    move-result-object v9

    .line 211
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v1, v8

    .line 212
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v5, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    if-eqz p7, :cond_0

    neg-float v1, v0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz p8, :cond_1

    neg-float v0, v0

    .line 213
    :cond_1
    invoke-virtual {v5, v1, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 214
    iget v1, v9, Landroid/graphics/Rect;->left:I

    iget v2, v9, Landroid/graphics/Rect;->top:I

    .line 215
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-ne v0, v7, :cond_2

    .line 219
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 223
    :cond_2
    rem-int/lit8 v1, v8, 0x5a

    if-eqz v1, :cond_3

    move-object v1, p1

    move-object v2, v9

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 228
    invoke-static/range {v0 .. v6}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/graphics/Bitmap;[FLandroid/graphics/Rect;IZII)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method private static a(Landroid/graphics/Bitmap;[FLandroid/graphics/Rect;IZII)Landroid/graphics/Bitmap;
    .locals 8

    .line 690
    rem-int/lit8 v0, p3, 0x5a

    if-eqz v0, :cond_6

    int-to-double v0, p3

    .line 693
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    const/16 v2, 0x5a

    if-lt p3, v2, :cond_1

    const/16 v2, 0xb4

    if-le p3, v2, :cond_0

    const/16 v2, 0x10e

    if-ge p3, v2, :cond_0

    goto :goto_0

    .line 694
    :cond_0
    iget p3, p2, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_1
    :goto_0
    iget p3, p2, Landroid/graphics/Rect;->left:I

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 698
    :goto_2
    array-length v4, p1

    if-ge v3, v4, :cond_3

    .line 699
    aget v4, p1, v3

    add-int/lit8 v5, p3, -0x1

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    aget v4, p1, v3

    add-int/lit8 v5, p3, 0x1

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_2

    .line 700
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iget p3, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p3, p3

    add-int/lit8 v3, v3, 0x1

    aget v2, p1, v3

    sub-float/2addr p3, v2

    float-to-double v6, p3

    mul-double v4, v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 701
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    aget p3, p1, v3

    iget v6, p2, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float/2addr p3, v6

    float-to-double v6, p3

    mul-double v4, v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-int p3, v4

    .line 702
    aget v4, p1, v3

    iget v5, p2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 703
    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    aget p1, p1, v3

    sub-float/2addr v5, p1

    float-to-double v5, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    div-double/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-int p1, v0

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    const/4 p3, 0x0

    const/4 v4, 0x0

    :goto_3
    add-int/2addr v4, v2

    add-int/2addr p1, p3

    .line 708
    invoke-virtual {p2, v2, p3, v4, p1}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p4, :cond_4

    .line 710
    invoke-static {p2, p5, p6}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/graphics/Rect;II)V

    .line 714
    :cond_4
    iget p1, p2, Landroid/graphics/Rect;->left:I

    iget p3, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-static {p0, p1, p3, p4, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p0, p1, :cond_5

    .line 716
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    move-object p0, p1

    :cond_6
    return-object p0
.end method

.method private static a(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 606
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 607
    :try_start_1
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    .line 608
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 609
    sget-object v0, Lcom/theartofdev/edmodo/cropper/c;->a:Landroid/graphics/Rect;

    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 610
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 613
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->a(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method static a([FIIZII)Landroid/graphics/Rect;
    .locals 3

    .line 341
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->a([F)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 342
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->b([F)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float p1, p1

    .line 343
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->c([F)F

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p2, p2

    .line 344
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->d([F)F

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 346
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, v0, v1, p1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p3, :cond_0

    .line 348
    invoke-static {p2, p4, p5}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/graphics/Rect;II)V

    :cond_0
    return-object p2
.end method

.method static a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    const/4 v0, 0x1

    if-nez p2, :cond_0

    :try_start_0
    const-string p2, "aic_state_store_temp"

    const-string v1, ".jpg"

    .line 382
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {p2, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p2

    .line 381
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    .line 383
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 387
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x5f

    invoke-static {p0, p1, p2, v0, v1}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object p2

    :catch_0
    move-exception p0

    const-string p1, "AIC"

    const-string p2, "Failed to write bitmap to temp file for image-cropper save instance state"

    .line 391
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method static a(Landroid/content/Context;Landroid/net/Uri;II)Lcom/theartofdev/edmodo/cropper/c$a;
    .locals 3

    .line 112
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 115
    invoke-static {p0, p1}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 117
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p2, "File is not a picture"

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 121
    :cond_1
    :goto_0
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 123
    invoke-static {v1, v2, p2, p3}, Lcom/theartofdev/edmodo/cropper/c;->a(IIII)I

    move-result p2

    iget p3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 125
    invoke-static {p3, v1}, Lcom/theartofdev/edmodo/cropper/c;->a(II)I

    move-result p3

    .line 122
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 128
    invoke-static {p0, p1, v0}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 130
    new-instance p2, Lcom/theartofdev/edmodo/cropper/c$a;

    iget p3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-direct {p2, p0, p3}, Lcom/theartofdev/edmodo/cropper/c$a;-><init>(Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    .line 133
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Failed to load sampled bitmap: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Rect;III)Lcom/theartofdev/edmodo/cropper/c$a;
    .locals 4

    const/4 v0, 0x0

    .line 649
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 653
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 652
    invoke-static {v2, v3, p3, p4}, Lcom/theartofdev/edmodo/cropper/c;->a(IIII)I

    move-result p3

    mul-int p5, p5, p3

    iput p5, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 655
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 p3, 0x0

    .line 656
    :try_start_1
    invoke-static {p0, p3}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 659
    :cond_0
    :try_start_2
    new-instance p4, Lcom/theartofdev/edmodo/cropper/c$a;

    invoke-virtual {p3, p2, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p5

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-direct {p4, p5, v2}, Lcom/theartofdev/edmodo/cropper/c$a;-><init>(Landroid/graphics/Bitmap;I)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 668
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->a(Ljava/io/Closeable;)V

    if-eqz p3, :cond_1

    .line 670
    invoke-virtual {p3}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    :cond_1
    return-object p4

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    .line 661
    :catch_1
    :try_start_3
    iget p4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 p4, p4, 0x2

    iput p4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 663
    iget p4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 p5, 0x200

    if-le p4, p5, :cond_0

    .line 668
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->a(Ljava/io/Closeable;)V

    if-eqz p3, :cond_2

    .line 670
    invoke-virtual {p3}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 673
    :cond_2
    new-instance p0, Lcom/theartofdev/edmodo/cropper/c$a;

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/theartofdev/edmodo/cropper/c$a;-><init>(Landroid/graphics/Bitmap;I)V

    return-object p0

    :catchall_1
    move-exception p1

    move-object p3, v0

    :goto_0
    move-object v0, p0

    goto :goto_3

    :catch_2
    move-exception p2

    move-object p3, v0

    :goto_1
    move-object v0, p0

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object p3, v0

    goto :goto_3

    :catch_3
    move-exception p2

    move-object p3, v0

    .line 665
    :goto_2
    :try_start_4
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Failed to load sampled bitmap: "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p1

    .line 668
    :goto_3
    invoke-static {v0}, Lcom/theartofdev/edmodo/cropper/c;->a(Ljava/io/Closeable;)V

    if-eqz p3, :cond_3

    .line 670
    invoke-virtual {p3}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    :cond_3
    throw p1
.end method

.method static a(Landroid/content/Context;Landroid/net/Uri;[FIIIZIIIIZZ)Lcom/theartofdev/edmodo/cropper/c$a;
    .locals 16

    const/4 v0, 0x1

    const/4 v15, 0x1

    :goto_0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move v14, v15

    .line 258
    :try_start_0
    invoke-static/range {v1 .. v14}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/content/Context;Landroid/net/Uri;[FIIIZIIIIZZI)Lcom/theartofdev/edmodo/cropper/c$a;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    mul-int/lit8 v15, v15, 0x2

    const/16 v0, 0x10

    if-gt v15, v0, :cond_0

    goto :goto_0

    .line 277
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to handle OOM by sampling ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;[FIIIZIIIIZZI)Lcom/theartofdev/edmodo/cropper/c$a;
    .locals 19

    move/from16 v0, p3

    move-object/from16 v1, p2

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    .line 478
    invoke-static/range {v1 .. v6}, Lcom/theartofdev/edmodo/cropper/c;->a([FIIZII)Landroid/graphics/Rect;

    move-result-object v9

    if-lez p9, :cond_0

    move/from16 v10, p9

    goto :goto_0

    .line 480
    :cond_0
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v1

    move v10, v1

    :goto_0
    if-lez p10, :cond_1

    move/from16 v11, p10

    goto :goto_1

    .line 481
    :cond_1
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v1

    move v11, v1

    :goto_1
    const/4 v1, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v4, v9

    move v5, v10

    move v6, v11

    move/from16 v7, p13

    .line 489
    :try_start_0
    invoke-static/range {v2 .. v7}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Rect;III)Lcom/theartofdev/edmodo/cropper/c$a;

    move-result-object v2

    .line 490
    iget-object v1, v2, Lcom/theartofdev/edmodo/cropper/c$a;->a:Landroid/graphics/Bitmap;

    .line 491
    iget v8, v2, Lcom/theartofdev/edmodo/cropper/c$a;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    :goto_2
    if-eqz v1, :cond_9

    if-gtz v0, :cond_3

    if-nez p11, :cond_3

    if-eqz p12, :cond_2

    goto :goto_3

    :cond_2
    move-object v10, v1

    goto :goto_6

    .line 1762
    :cond_3
    :goto_3
    :try_start_1
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v3, v0

    .line 1763
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p11, :cond_4

    const/high16 v5, -0x40800000    # -1.0f

    goto :goto_4

    :cond_4
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_4
    if-eqz p12, :cond_5

    goto :goto_5

    :cond_5
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1764
    :goto_5
    invoke-virtual {v2, v5, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 1766
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    const/16 v18, 0x0

    move-object v12, v1

    move-object/from16 v17, v2

    invoke-static/range {v12 .. v18}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eq v2, v1, :cond_6

    .line 1768
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    :cond_6
    move-object v10, v2

    .line 501
    :goto_6
    :try_start_2
    rem-int/lit8 v1, v0, 0x5a

    if-eqz v1, :cond_7

    move-object v1, v10

    move-object/from16 v2, p2

    move-object v3, v9

    move/from16 v4, p3

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    .line 506
    invoke-static/range {v1 .. v7}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/graphics/Bitmap;[FLandroid/graphics/Rect;IZII)Landroid/graphics/Bitmap;

    move-result-object v10
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    .line 515
    :cond_7
    new-instance v0, Lcom/theartofdev/edmodo/cropper/c$a;

    invoke-direct {v0, v10, v8}, Lcom/theartofdev/edmodo/cropper/c$a;-><init>(Landroid/graphics/Bitmap;I)V

    return-object v0

    :catch_1
    move-exception v0

    move-object v1, v10

    goto :goto_7

    :catch_2
    move-exception v0

    :goto_7
    if-eqz v1, :cond_8

    .line 511
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 513
    :cond_8
    throw v0

    :cond_9
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p13

    move/from16 v12, p11

    move/from16 v13, p12

    .line 518
    invoke-static/range {v1 .. v13}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/content/Context;Landroid/net/Uri;[FIZIIILandroid/graphics/Rect;IIZZ)Lcom/theartofdev/edmodo/cropper/c$a;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;[FIZIIILandroid/graphics/Rect;IIZZ)Lcom/theartofdev/edmodo/cropper/c$a;
    .locals 15

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    const/4 v2, 0x0

    .line 556
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 560
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->height()I

    move-result v5

    move/from16 v6, p9

    move/from16 v7, p10

    invoke-static {v4, v5, v6, v7}, Lcom/theartofdev/edmodo/cropper/c;->a(IIII)I

    move-result v4

    mul-int v4, v4, p7

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 562
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1, v3}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_2

    .line 566
    :try_start_1
    array-length v6, v0

    new-array v7, v6, [F

    .line 567
    array-length v8, v0

    const/4 v9, 0x0

    invoke-static {v0, v9, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-ge v9, v6, :cond_0

    .line 569
    aget v0, v7, v9

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v8, v8

    div-float/2addr v0, v8

    aput v0, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    const/high16 v12, 0x3f800000    # 1.0f

    move-object v6, v5

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v13, p11

    move/from16 v14, p12

    .line 573
    invoke-static/range {v6 .. v14}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/graphics/Bitmap;[FIZIIFZZ)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v2, v5, :cond_2

    .line 585
    :try_start_2
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    throw v0
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 598
    :cond_2
    :goto_1
    new-instance v0, Lcom/theartofdev/edmodo/cropper/c$a;

    invoke-direct {v0, v2, v4}, Lcom/theartofdev/edmodo/cropper/c$a;-><init>(Landroid/graphics/Bitmap;I)V

    return-object v0

    :catch_0
    move-exception v0

    .line 595
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to load sampled bitmap: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    if-eqz v2, :cond_3

    .line 591
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 593
    :cond_3
    throw v0
.end method

.method static a(Landroid/graphics/Bitmap;[FIZIIZZ)Lcom/theartofdev/edmodo/cropper/c$a;
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v2, v1

    div-float v9, v0, v2

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v10, p6

    move/from16 v11, p7

    .line 159
    :try_start_0
    invoke-static/range {v3 .. v11}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/graphics/Bitmap;[FIZIIFZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 169
    new-instance v2, Lcom/theartofdev/edmodo/cropper/c$a;

    invoke-direct {v2, v0, v1}, Lcom/theartofdev/edmodo/cropper/c$a;-><init>(Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    mul-int/lit8 v1, v1, 0x2

    const/16 v2, 0x8

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    throw v0
.end method

.method static a(Landroid/graphics/Bitmap;Landroid/content/Context;Landroid/net/Uri;)Lcom/theartofdev/edmodo/cropper/c$b;
    .locals 1

    const/4 v0, 0x0

    .line 72
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 74
    new-instance p2, Landroidx/f/a/a;

    invoke-direct {p2, p1}, Landroidx/f/a/a;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-object v0, p2

    goto :goto_0

    :catch_1
    nop

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 79
    invoke-static {p0, v0}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/graphics/Bitmap;Landroidx/f/a/a;)Lcom/theartofdev/edmodo/cropper/c$b;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Lcom/theartofdev/edmodo/cropper/c$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/theartofdev/edmodo/cropper/c$b;-><init>(Landroid/graphics/Bitmap;I)V

    return-object p1
.end method

.method static a(Landroid/graphics/Bitmap;Landroidx/f/a/a;)Lcom/theartofdev/edmodo/cropper/c$b;
    .locals 1

    const-string v0, "Orientation"

    .line 90
    invoke-virtual {p1, v0}, Landroidx/f/a/a;->a(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x10e

    goto :goto_0

    :cond_1
    const/16 p1, 0x5a

    goto :goto_0

    :cond_2
    const/16 p1, 0xb4

    .line 105
    :goto_0
    new-instance v0, Lcom/theartofdev/edmodo/cropper/c$b;

    invoke-direct {v0, p0, p1}, Lcom/theartofdev/edmodo/cropper/c$b;-><init>(Landroid/graphics/Bitmap;I)V

    return-object v0
.end method

.method static a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 406
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    .line 407
    invoke-virtual {p1, p3, p4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    invoke-static {v0}, Lcom/theartofdev/edmodo/cropper/c;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0}, Lcom/theartofdev/edmodo/cropper/c;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method private static a(Landroid/graphics/Rect;II)V
    .locals 1

    if-ne p1, p2, :cond_1

    .line 359
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p2

    if-eq p1, p2, :cond_1

    .line 360
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p2

    if-le p1, p2, :cond_0

    .line 361
    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p2, v0

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-void

    .line 363
    :cond_0
    iget p1, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr p2, v0

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/graphics/Rect;->right:I

    :cond_1
    return-void
.end method

.method private static a(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 835
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method static b([F)F
    .locals 2

    const/4 v0, 0x1

    .line 297
    aget v0, p0, v0

    const/4 v1, 0x3

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x5

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x7

    aget p0, p0, v1

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method static c([F)F
    .locals 2

    const/4 v0, 0x0

    .line 302
    aget v0, p0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x4

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x6

    aget p0, p0, v1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method static d([F)F
    .locals 2

    const/4 v0, 0x1

    .line 307
    aget v0, p0, v0

    const/4 v1, 0x3

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x5

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x7

    aget p0, p0, v1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method static e([F)F
    .locals 1

    .line 312
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->c([F)F

    move-result v0

    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->a([F)F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method static f([F)F
    .locals 1

    .line 317
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->d([F)F

    move-result v0

    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->b([F)F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method static g([F)F
    .locals 1

    .line 322
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->c([F)F

    move-result v0

    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->a([F)F

    move-result p0

    add-float/2addr v0, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v0, p0

    return v0
.end method

.method static h([F)F
    .locals 1

    .line 327
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->d([F)F

    move-result v0

    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->b([F)F

    move-result p0

    add-float/2addr v0, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v0, p0

    return v0
.end method
