.class public Lcom/mopub/volley/toolbox/ImageRequest;
.super Lcom/mopub/volley/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mopub/volley/Request<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_IMAGE_BACKOFF_MULT:F = 2.0f

.field public static final DEFAULT_IMAGE_MAX_RETRIES:I = 0x2

.field public static final DEFAULT_IMAGE_TIMEOUT_MS:I = 0x3e8

.field private static final g:Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/mopub/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mopub/volley/Response$Listener<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/graphics/Bitmap$Config;

.field private final d:I

.field private final e:I

.field private final f:Landroid/widget/ImageView$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mopub/volley/toolbox/ImageRequest;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mopub/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/mopub/volley/Response$ErrorListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mopub/volley/Response$Listener<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/mopub/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 107
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/mopub/volley/toolbox/ImageRequest;-><init>(Ljava/lang/String;Lcom/mopub/volley/Response$Listener;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/mopub/volley/Response$ErrorListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mopub/volley/Response$Listener;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/mopub/volley/Response$ErrorListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mopub/volley/Response$Listener<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/widget/ImageView$ScaleType;",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/mopub/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, v0, p1, p7}, Lcom/mopub/volley/Request;-><init>(ILjava/lang/String;Lcom/mopub/volley/Response$ErrorListener;)V

    .line 45
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mopub/volley/toolbox/ImageRequest;->a:Ljava/lang/Object;

    .line 83
    new-instance p1, Lcom/mopub/volley/DefaultRetryPolicy;

    const/16 p7, 0x3e8

    const/4 v0, 0x2

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p1, p7, v0, v1}, Lcom/mopub/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, p1}, Lcom/mopub/volley/toolbox/ImageRequest;->setRetryPolicy(Lcom/mopub/volley/RetryPolicy;)Lcom/mopub/volley/Request;

    .line 88
    iput-object p2, p0, Lcom/mopub/volley/toolbox/ImageRequest;->b:Lcom/mopub/volley/Response$Listener;

    .line 89
    iput-object p6, p0, Lcom/mopub/volley/toolbox/ImageRequest;->c:Landroid/graphics/Bitmap$Config;

    .line 90
    iput p3, p0, Lcom/mopub/volley/toolbox/ImageRequest;->d:I

    .line 91
    iput p4, p0, Lcom/mopub/volley/toolbox/ImageRequest;->e:I

    .line 92
    iput-object p5, p0, Lcom/mopub/volley/toolbox/ImageRequest;->f:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method private static a(IIII)I
    .locals 4

    int-to-double v0, p0

    int-to-double v2, p2

    div-double/2addr v0, v2

    int-to-double p0, p1

    int-to-double p2, p3

    div-double/2addr p0, p2

    .line 275
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

.method private static a(IIIILandroid/widget/ImageView$ScaleType;)I
    .locals 4

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return p2

    .line 146
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

    .line 167
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
.method public cancel()V
    .locals 2

    .line 244
    invoke-super {p0}, Lcom/mopub/volley/Request;->cancel()V

    .line 245
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageRequest;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 246
    :try_start_0
    iput-object v1, p0, Lcom/mopub/volley/toolbox/ImageRequest;->b:Lcom/mopub/volley/Response$Listener;

    .line 247
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 2

    .line 34
    check-cast p1, Landroid/graphics/Bitmap;

    .line 1253
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageRequest;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1254
    :try_start_0
    iget-object v1, p0, Lcom/mopub/volley/toolbox/ImageRequest;->b:Lcom/mopub/volley/Response$Listener;

    .line 1255
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1257
    invoke-interface {v1, p1}, Lcom/mopub/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 1255
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getPriority()Lcom/mopub/volley/Request$Priority;
    .locals 1

    .line 119
    sget-object v0, Lcom/mopub/volley/Request$Priority;->LOW:Lcom/mopub/volley/Request$Priority;

    return-object v0
.end method

.method public parseNetworkResponse(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Response;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/NetworkResponse;",
            ")",
            "Lcom/mopub/volley/Response<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 183
    sget-object v0, Lcom/mopub/volley/toolbox/ImageRequest;->g:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1195
    :try_start_0
    iget-object v3, p1, Lcom/mopub/volley/NetworkResponse;->data:[B

    .line 1196
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1198
    iget v5, p0, Lcom/mopub/volley/toolbox/ImageRequest;->d:I

    if-nez v5, :cond_0

    iget v5, p0, Lcom/mopub/volley/toolbox/ImageRequest;->e:I

    if-nez v5, :cond_0

    .line 1199
    iget-object v5, p0, Lcom/mopub/volley/toolbox/ImageRequest;->c:Landroid/graphics/Bitmap$Config;

    iput-object v5, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1200
    array-length v5, v3

    invoke-static {v3, v2, v5, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    .line 1203
    :cond_0
    iput-boolean v1, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1204
    array-length v5, v3

    invoke-static {v3, v2, v5, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1205
    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1206
    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1209
    iget v7, p0, Lcom/mopub/volley/toolbox/ImageRequest;->d:I

    iget v8, p0, Lcom/mopub/volley/toolbox/ImageRequest;->e:I

    iget-object v9, p0, Lcom/mopub/volley/toolbox/ImageRequest;->f:Landroid/widget/ImageView$ScaleType;

    .line 1210
    invoke-static {v7, v8, v5, v6, v9}, Lcom/mopub/volley/toolbox/ImageRequest;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v7

    .line 1212
    iget v8, p0, Lcom/mopub/volley/toolbox/ImageRequest;->e:I

    iget v9, p0, Lcom/mopub/volley/toolbox/ImageRequest;->d:I

    iget-object v10, p0, Lcom/mopub/volley/toolbox/ImageRequest;->f:Landroid/widget/ImageView$ScaleType;

    .line 1213
    invoke-static {v8, v9, v6, v5, v10}, Lcom/mopub/volley/toolbox/ImageRequest;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v8

    .line 1217
    iput-boolean v2, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1221
    invoke-static {v5, v6, v7, v8}, Lcom/mopub/volley/toolbox/ImageRequest;->a(IIII)I

    move-result v5

    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1222
    array-length v5, v3

    invoke-static {v3, v2, v5, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1226
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-gt v4, v7, :cond_1

    .line 1227
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-le v4, v8, :cond_2

    .line 1228
    :cond_1
    invoke-static {v3, v7, v8, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1229
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    move-object v3, v4

    :cond_2
    :goto_0
    if-nez v3, :cond_3

    .line 1236
    new-instance v3, Lcom/mopub/volley/ParseError;

    invoke-direct {v3, p1}, Lcom/mopub/volley/ParseError;-><init>(Lcom/mopub/volley/NetworkResponse;)V

    invoke-static {v3}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object p1

    goto :goto_1

    .line 1238
    :cond_3
    invoke-static {p1}, Lcom/mopub/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Cache$Entry;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mopub/volley/Response;->success(Ljava/lang/Object;Lcom/mopub/volley/Cache$Entry;)Lcom/mopub/volley/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :goto_1
    :try_start_1
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v3

    const-string v4, "Caught OOM for %d byte image, url=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 187
    iget-object p1, p1, Lcom/mopub/volley/NetworkResponse;->data:[B

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    invoke-virtual {p0}, Lcom/mopub/volley/toolbox/ImageRequest;->getUrl()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v1

    invoke-static {v4, v5}, Lcom/mopub/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    new-instance p1, Lcom/mopub/volley/ParseError;

    invoke-direct {p1, v3}, Lcom/mopub/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 190
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
