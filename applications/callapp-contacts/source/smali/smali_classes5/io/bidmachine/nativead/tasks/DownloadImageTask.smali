.class public Lio/bidmachine/nativead/tasks/DownloadImageTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;,
        Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;
    }
.end annotation


# static fields
.field private static final DIR_NAME:Ljava/lang/String; = "native_cache_image"

.field private static final RESULT_FAIL:I = 0x0

.field private static final RESULT_IMAGE_SUCCESS:I = 0x2

.field private static final RESULT_PATH_SUCCESS:I = 0x1

.field private static final SERVER_TIME_OUT:I = 0x4e20


# instance fields
.field private cacheDir:Ljava/io/File;

.field private checkAspectRatio:Z

.field private context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private listener:Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lio/bidmachine/nativead/tasks/DownloadImageTask$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/bidmachine/nativead/tasks/DownloadImageTask$1;-><init>(Lio/bidmachine/nativead/tasks/DownloadImageTask;Landroid/os/Looper;)V

    iput-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lio/bidmachine/nativead/tasks/DownloadImageTask;)Landroid/content/Context;
    .locals 0

    .line 26
    iget-object p0, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$002(Lio/bidmachine/nativead/tasks/DownloadImageTask;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 26
    iput-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask;->context:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$102(Lio/bidmachine/nativead/tasks/DownloadImageTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 26
    iput-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask;->url:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lio/bidmachine/nativead/tasks/DownloadImageTask;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask;->checkAspectRatio:Z

    return p1
.end method

.method static synthetic access$300(Lio/bidmachine/nativead/tasks/DownloadImageTask;)Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask;->listener:Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;

    return-object p0
.end method

.method static synthetic access$302(Lio/bidmachine/nativead/tasks/DownloadImageTask;Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;)Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;
    .locals 0

    .line 26
    iput-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask;->listener:Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;

    return-object p1
.end method

.method static synthetic access$402(Lio/bidmachine/nativead/tasks/DownloadImageTask;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 26
    iput-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask;->cacheDir:Ljava/io/File;

    return-object p1
.end method

.method private convert([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    .line 218
    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v0, 0x0

    .line 221
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :try_start_1
    invoke-direct {p0, p1, p2, v1}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->writeBitmap([BLandroid/graphics/BitmapFactory$Options;Ljava/io/OutputStream;)V

    .line 223
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 227
    invoke-static {v1}, Lio/bidmachine/core/Utils;->flush(Ljava/io/Flushable;)V

    .line 228
    invoke-static {v1}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v1, v0

    .line 225
    :goto_0
    :try_start_2
    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 227
    invoke-static {v1}, Lio/bidmachine/core/Utils;->flush(Ljava/io/Flushable;)V

    .line 228
    invoke-static {v1}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    return-object v0

    :catchall_1
    move-exception p1

    move-object v0, v1

    .line 227
    :goto_1
    invoke-static {v0}, Lio/bidmachine/core/Utils;->flush(Ljava/io/Flushable;)V

    .line 228
    invoke-static {v0}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    .line 229
    throw p1
.end method

.method private downloadImage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .line 134
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 135
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    .line 136
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 138
    iget-object v1, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask;->cacheDir:Ljava/io/File;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 139
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask;->cacheDir:Ljava/io/File;

    invoke-static {p2}, Lio/bidmachine/core/Utils;->generateFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    .line 141
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 142
    invoke-direct {p0, v0}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->isAspectRatioCorrect(Landroid/graphics/BitmapFactory$Options;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 143
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->sendPathSuccess(Landroid/net/Uri;)V

    return-void

    .line 145
    :cond_0
    invoke-direct {p0}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->sendFail()V

    return-void

    :cond_1
    move-object v1, v2

    :cond_2
    const/16 v3, 0x4e20

    .line 153
    :try_start_0
    invoke-static {p2, v3}, Lio/bidmachine/nativead/tasks/b;->getInputStream(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 154
    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v2, 0x2000

    :try_start_2
    new-array v2, v2, [B

    .line 158
    :goto_0
    invoke-virtual {p2, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_3

    .line 159
    invoke-virtual {v3, v2, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 161
    :cond_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 162
    array-length v4, v2

    invoke-static {v2, v6, v4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 163
    invoke-direct {p0, v0}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->isAspectRatioCorrect(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 164
    invoke-direct {p0}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->sendFail()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    invoke-static {v3}, Lio/bidmachine/core/Utils;->flush(Ljava/io/Flushable;)V

    .line 188
    invoke-static {v3}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    .line 189
    invoke-static {p2}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    return-void

    :cond_4
    if-eqz v1, :cond_5

    .line 168
    :try_start_3
    invoke-direct {p0, v1, v2, v0}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->saveImage(Ljava/io/File;[BLandroid/graphics/BitmapFactory$Options;)V

    .line 169
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->sendPathSuccess(Landroid/net/Uri;)V

    goto :goto_1

    .line 171
    :cond_5
    invoke-static {p1}, Lio/bidmachine/nativead/utils/ImageHelper;->calculateReqWidth(Landroid/content/Context;)I

    move-result p1

    .line 172
    iget-boolean v1, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask;->checkAspectRatio:Z

    invoke-static {p1, v1}, Lio/bidmachine/nativead/utils/ImageHelper;->calculateReqHeight(IZ)I

    move-result v1

    .line 173
    invoke-static {v0, p1, v1}, Lio/bidmachine/nativead/utils/ImageHelper;->calculateInSamplesSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 176
    invoke-direct {p0, v2, v0}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->convert([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 178
    invoke-direct {p0, p1}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->sendImageSuccess(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 180
    :cond_6
    invoke-direct {p0}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->sendFail()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 187
    :goto_1
    invoke-static {v3}, Lio/bidmachine/core/Utils;->flush(Ljava/io/Flushable;)V

    .line 188
    invoke-static {v3}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    .line 189
    invoke-static {p2}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v3, v2

    :goto_2
    move-object v2, p2

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v3, v2

    .line 184
    :goto_3
    :try_start_4
    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    .line 185
    invoke-direct {p0}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->sendFail()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 187
    invoke-static {v3}, Lio/bidmachine/core/Utils;->flush(Ljava/io/Flushable;)V

    .line 188
    invoke-static {v3}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    .line 189
    invoke-static {v2}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    return-void

    :catchall_3
    move-exception p1

    .line 187
    invoke-static {v3}, Lio/bidmachine/core/Utils;->flush(Ljava/io/Flushable;)V

    .line 188
    invoke-static {v3}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    .line 189
    invoke-static {v2}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    .line 190
    throw p1
.end method

.method private isAspectRatioCorrect(Landroid/graphics/BitmapFactory$Options;)Z
    .locals 2

    .line 194
    iget-boolean v0, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask;->checkAspectRatio:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 195
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 196
    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    const/high16 p1, 0x3fc00000    # 1.5f

    cmpg-float p1, v0, p1

    if-ltz p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    return v1
.end method

.method public static newBuilder(Landroid/content/Context;Ljava/lang/String;)Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;
    .locals 2

    .line 44
    new-instance v0, Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;

    new-instance v1, Lio/bidmachine/nativead/tasks/DownloadImageTask;

    invoke-direct {v1}, Lio/bidmachine/nativead/tasks/DownloadImageTask;-><init>()V

    invoke-direct {v0, v1, p0, p1}, Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;-><init>(Lio/bidmachine/nativead/tasks/DownloadImageTask;Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private saveImage(Ljava/io/File;[BLandroid/graphics/BitmapFactory$Options;)V
    .locals 2

    const/4 v0, 0x0

    .line 204
    iput-boolean v0, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v0, 0x0

    .line 207
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 208
    :try_start_1
    invoke-direct {p0, p2, p3, v1}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->writeBitmap([BLandroid/graphics/BitmapFactory$Options;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    invoke-static {v1}, Lio/bidmachine/core/Utils;->flush(Ljava/io/Flushable;)V

    .line 213
    invoke-static {v1}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 210
    :goto_0
    :try_start_2
    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 212
    invoke-static {v0}, Lio/bidmachine/core/Utils;->flush(Ljava/io/Flushable;)V

    .line 213
    invoke-static {v0}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    return-void

    .line 212
    :goto_1
    invoke-static {v0}, Lio/bidmachine/core/Utils;->flush(Ljava/io/Flushable;)V

    .line 213
    invoke-static {v0}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    .line 214
    throw p1
.end method

.method private sendFail()V
    .locals 2

    .line 128
    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 129
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private sendImageSuccess(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 121
    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 122
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 123
    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private sendPathSuccess(Landroid/net/Uri;)V
    .locals 2

    .line 114
    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 115
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 116
    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private writeBitmap([BLandroid/graphics/BitmapFactory$Options;Ljava/io/OutputStream;)V
    .locals 2

    .line 236
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 237
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x55

    invoke-virtual {p1, p2, v0, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 238
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 105
    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask;->url:Ljava/lang/String;

    invoke-static {v0}, Lio/bidmachine/core/Utils;->isHttpUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask;->url:Ljava/lang/String;

    const-string v1, " "

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask;->url:Ljava/lang/String;

    .line 110
    iget-object v1, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask;->context:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->downloadImage(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 106
    :cond_1
    :goto_0
    invoke-direct {p0}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->sendFail()V

    return-void
.end method
