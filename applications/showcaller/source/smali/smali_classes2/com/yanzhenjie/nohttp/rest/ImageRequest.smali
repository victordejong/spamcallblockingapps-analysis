.class public Lcom/yanzhenjie/nohttp/rest/ImageRequest;
.super Lcom/yanzhenjie/nohttp/rest/Request;
.source "ImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yanzhenjie/nohttp/rest/Request<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final DECODE_LOCK:Ljava/lang/Object;


# instance fields
.field private final mDecodeConfig:Landroid/graphics/Bitmap$Config;

.field private final mMaxHeight:I

.field private final mMaxWidth:I

.field private mScaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yanzhenjie/nohttp/rest/ImageRequest;->DECODE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;IILandroid/graphics/Bitmap$Config;Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/yanzhenjie/nohttp/rest/Request;-><init>(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;)V

    .line 2
    iput p3, p0, Lcom/yanzhenjie/nohttp/rest/ImageRequest;->mMaxWidth:I

    .line 3
    iput p4, p0, Lcom/yanzhenjie/nohttp/rest/ImageRequest;->mMaxHeight:I

    .line 4
    iput-object p5, p0, Lcom/yanzhenjie/nohttp/rest/ImageRequest;->mDecodeConfig:Landroid/graphics/Bitmap$Config;

    .line 5
    iput-object p6, p0, Lcom/yanzhenjie/nohttp/rest/ImageRequest;->mScaleType:Landroid/widget/ImageView$ScaleType;

    const-string p1, "image/*"

    .line 6
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->setAccept(Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;

    return-void
.end method

.method private doResponse([B)Landroid/graphics/Bitmap;
    .locals 9

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2
    iget v1, p0, Lcom/yanzhenjie/nohttp/rest/ImageRequest;->mMaxWidth:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget v1, p0, Lcom/yanzhenjie/nohttp/rest/ImageRequest;->mMaxHeight:I

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/rest/ImageRequest;->mDecodeConfig:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 4
    array-length v1, p1

    invoke-static {p1, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 6
    array-length v3, p1

    invoke-static {p1, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 7
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 8
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 9
    iget v5, p0, Lcom/yanzhenjie/nohttp/rest/ImageRequest;->mMaxWidth:I

    iget v6, p0, Lcom/yanzhenjie/nohttp/rest/ImageRequest;->mMaxHeight:I

    iget-object v7, p0, Lcom/yanzhenjie/nohttp/rest/ImageRequest;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-static {v5, v6, v3, v4, v7}, Lcom/yanzhenjie/nohttp/rest/ImageRequest;->getResizedDimension(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v5

    .line 10
    iget v6, p0, Lcom/yanzhenjie/nohttp/rest/ImageRequest;->mMaxHeight:I

    iget v7, p0, Lcom/yanzhenjie/nohttp/rest/ImageRequest;->mMaxWidth:I

    iget-object v8, p0, Lcom/yanzhenjie/nohttp/rest/ImageRequest;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-static {v6, v7, v4, v3, v8}, Lcom/yanzhenjie/nohttp/rest/ImageRequest;->getResizedDimension(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v6

    .line 11
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 12
    invoke-static {v3, v4, v5, v6}, Lcom/yanzhenjie/nohttp/rest/ImageRequest;->findBestSampleSize(IIII)I

    move-result v3

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 13
    array-length v3, p1

    invoke-static {p1, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt v0, v5, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le v0, v6, :cond_2

    .line 15
    :cond_1
    invoke-static {p1, v5, v6, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 16
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object p1, v0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public static findBestSampleSize(IIII)I
    .locals 4

    int-to-double v0, p0

    int-to-double v2, p2

    div-double/2addr v0, v2

    int-to-double p0, p1

    int-to-double p2, p3

    div-double/2addr p0, p2

    .line 1
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    const/high16 p3, 0x40000000    # 2.0f

    mul-float p3, p3, p2

    float-to-double v0, p3

    cmpg-double v2, v0, p0

    if-gtz v2, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    float-to-int p0, p2

    return p0
.end method

.method private static getResizedDimension(IIIILandroid/widget/ImageView$ScaleType;)I
    .locals 4

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return p2

    .line 1
    :cond_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne p4, v0, :cond_2

    if-nez p0, :cond_1

    return p2

    :cond_1
    return p0

    :cond_2
    if-nez p0, :cond_3

    int-to-double p0, p1

    int-to-double p3, p3

    div-double/2addr p0, p3

    int-to-double p2, p2

    mul-double p2, p2, p0

    double-to-int p0, p2

    return p0

    :cond_3
    if-nez p1, :cond_4

    return p0

    :cond_4
    int-to-double v0, p3

    int-to-double p2, p2

    div-double/2addr v0, p2

    .line 2
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne p4, p2, :cond_6

    int-to-double p2, p0

    mul-double p2, p2, v0

    int-to-double v2, p1

    cmpg-double p1, p2, v2

    if-gez p1, :cond_5

    div-double/2addr v2, v0

    double-to-int p0, v2

    :cond_5
    return p0

    :cond_6
    int-to-double p2, p0

    mul-double p2, p2, v0

    int-to-double v2, p1

    cmpl-double p1, p2, v2

    if-lez p1, :cond_7

    div-double/2addr v2, v0

    double-to-int p0, v2

    :cond_7
    return p0
.end method


# virtual methods
.method public parseResponse(Lcom/yanzhenjie/nohttp/Headers;[B)Landroid/graphics/Bitmap;
    .locals 5

    .line 2
    sget-object p1, Lcom/yanzhenjie/nohttp/rest/ImageRequest;->DECODE_LOCK:Ljava/lang/Object;

    monitor-enter p1

    if-eqz p2, :cond_0

    .line 3
    :try_start_0
    invoke-direct {p0, p2}, Lcom/yanzhenjie/nohttp/rest/ImageRequest;->doResponse([B)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    :try_start_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Caught OOM for %d byte image, url=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    array-length p2, p2

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v4

    const/4 p2, 0x1

    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/BasicRequest;->url()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p2

    .line 6
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-static {v0, p2}, Lcom/yanzhenjie/nohttp/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x0

    .line 8
    :goto_0
    monitor-exit p1

    return-object p2

    :catchall_0
    move-exception p2

    .line 9
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public bridge synthetic parseResponse(Lcom/yanzhenjie/nohttp/Headers;[B)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/yanzhenjie/nohttp/rest/ImageRequest;->parseResponse(Lcom/yanzhenjie/nohttp/Headers;[B)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
