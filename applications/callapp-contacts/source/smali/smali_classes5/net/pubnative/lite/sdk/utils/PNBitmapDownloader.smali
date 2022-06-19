.class public Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$DownloadListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PNBitmapDownloader"


# instance fields
.field private downloadTask:Ljava/lang/Runnable;

.field private loadFromFileSystemTask:Ljava/lang/Runnable;

.field private mDownloadListener:Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$DownloadListener;

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mURL:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$1;

    invoke-direct {v0, p0}, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$1;-><init>(Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;->downloadTask:Ljava/lang/Runnable;

    .line 83
    new-instance v0, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$2;

    invoke-direct {v0, p0}, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$2;-><init>(Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;->loadFromFileSystemTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;->mURL:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;Z)Landroid/graphics/BitmapFactory$Options;
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;->getBitmapOptionsDecodingBounds(Z)Landroid/graphics/BitmapFactory$Options;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;)Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$DownloadListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;->mDownloadListener:Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$DownloadListener;

    return-object p0
.end method

.method static synthetic access$202(Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$DownloadListener;)Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$DownloadListener;
    .locals 0

    .line 39
    iput-object p1, p0, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;->mDownloadListener:Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$DownloadListener;

    return-object p1
.end method

.method private downloadImage()V
    .locals 2

    .line 150
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;->downloadTask:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getBitmapOptionsDecodingBounds(Z)Landroid/graphics/BitmapFactory$Options;
    .locals 3

    .line 159
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 160
    iget v1, p0, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;->mWidth:I

    if-lez v1, :cond_0

    iget v2, p0, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;->mHeight:I

    if-lez v2, :cond_0

    if-nez p1, :cond_0

    .line 161
    invoke-virtual {p0, v0, v1, v2}, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 163
    :cond_0
    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    return-object v0
.end method

.method private loadCachedImage()V
    .locals 2

    .line 154
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;->loadFromFileSystemTask:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method protected calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3

    .line 177
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 178
    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v1, 0x1

    if-gt v0, p3, :cond_0

    if-le p1, p2, :cond_1

    .line 183
    :cond_0
    div-int/lit8 v0, v0, 0x2

    .line 184
    div-int/lit8 p1, p1, 0x2

    .line 188
    :goto_0
    div-int v2, v0, v1

    if-lt v2, p3, :cond_1

    div-int v2, p1, v1

    if-lt v2, p2, :cond_1

    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public download(Ljava/lang/String;IILnet/pubnative/lite/sdk/utils/PNBitmapDownloader$DownloadListener;)V
    .locals 2

    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;->mHandler:Landroid/os/Handler;

    if-nez p4, :cond_0

    .line 127
    sget-object p1, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;->TAG:Ljava/lang/String;

    const-string p2, "download won\'t start since there is no assigned listener to It"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 129
    :cond_0
    iput-object p4, p0, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;->mDownloadListener:Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$DownloadListener;

    .line 130
    iput-object p1, p0, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;->mURL:Ljava/lang/String;

    .line 131
    iput p2, p0, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;->mWidth:I

    .line 132
    iput p3, p0, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;->mHeight:I

    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 134
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Image URL is empty"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;->invokeFail(Ljava/lang/Exception;)V

    return-void

    .line 135
    :cond_1
    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 137
    :cond_2
    invoke-static {p1}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 138
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;->loadCachedImage()V

    return-void

    .line 140
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Wrong file URL!"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;->invokeFail(Ljava/lang/Exception;)V

    return-void

    .line 136
    :cond_4
    :goto_0
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;->downloadImage()V

    return-void
.end method

.method public download(Ljava/lang/String;Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$DownloadListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p0, p1, v0, v0, p2}, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;->download(Ljava/lang/String;IILnet/pubnative/lite/sdk/utils/PNBitmapDownloader$DownloadListener;)V

    return-void
.end method

.method protected invokeFail(Ljava/lang/Exception;)V
    .locals 2

    .line 214
    iget-object v0, p0, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;->mHandler:Landroid/os/Handler;

    new-instance v1, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$4;

    invoke-direct {v1, p0, p1}, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$4;-><init>(Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected invokeLoad(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 201
    iget-object v0, p0, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;->mHandler:Landroid/os/Handler;

    new-instance v1, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$3;

    invoke-direct {v1, p0, p1}, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$3;-><init>(Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
