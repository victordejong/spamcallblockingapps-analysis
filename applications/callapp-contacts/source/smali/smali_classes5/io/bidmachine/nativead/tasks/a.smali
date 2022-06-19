.class final Lio/bidmachine/nativead/tasks/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cacheVideoFile(Ljava/lang/String;Ljava/io/File;I)Ljava/io/File;
    .locals 5

    const/4 v0, 0x0

    .line 22
    :try_start_0
    invoke-static {p0, p2}, Lio/bidmachine/nativead/tasks/b;->getInputStream(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    :try_start_1
    invoke-static {p0}, Lio/bidmachine/core/Utils;->generateFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 24
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide p0

    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    if-lez v4, :cond_0

    invoke-static {v1}, Lio/bidmachine/nativead/tasks/a;->isVideoFileSupported(Ljava/io/File;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 41
    invoke-static {p2}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    return-object v1

    .line 28
    :cond_0
    :try_start_2
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 31
    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v3, 0x0

    .line 32
    invoke-virtual {p0, p1, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 35
    invoke-static {v1}, Lio/bidmachine/nativead/tasks/a;->isVideoFileSupported(Ljava/io/File;)Z

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_2

    .line 41
    invoke-static {p2}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception p0

    move-object v0, p2

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    move-object p2, v0

    .line 39
    :goto_1
    :try_start_3
    invoke-static {p0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 41
    :cond_2
    invoke-static {p2}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    return-object v0

    :goto_2
    invoke-static {v0}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    .line 42
    throw p0
.end method

.method private static isVideoFileSupported(Ljava/io/File;)Z
    .locals 1

    .line 47
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
