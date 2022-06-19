.class public Lcom/verizon/ads/utils/IOUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/utils/IOUtils$FileStreamer;,
        Lcom/verizon/ads/utils/IOUtils$BitmapStreamer;,
        Lcom/verizon/ads/utils/IOUtils$StringStreamer;,
        Lcom/verizon/ads/utils/IOUtils$DownloadListener;
    }
.end annotation


# static fields
.field private static final a:Lcom/verizon/ads/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/verizon/ads/utils/IOUtils;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/utils/IOUtils;->a:Lcom/verizon/ads/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 2

    .line 149
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_0

    .line 151
    sget-object v0, Lcom/verizon/ads/utils/IOUtils;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Unable to create bitmap from input stream"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method static synthetic a()Lcom/verizon/ads/Logger;
    .locals 1

    .line 29
    sget-object v0, Lcom/verizon/ads/utils/IOUtils;->a:Lcom/verizon/ads/Logger;

    return-object v0
.end method

.method private static synthetic a(Ljava/io/File;Ljava/lang/String;Ljava/lang/Integer;Lcom/verizon/ads/utils/IOUtils$DownloadListener;)V
    .locals 6

    .line 214
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_vas_"

    const/4 v1, 0x0

    .line 215
    invoke-static {v0, v1, p0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 217
    new-instance v5, Lcom/verizon/ads/utils/IOUtils$FileStreamer;

    invoke-direct {v5, p0}, Lcom/verizon/ads/utils/IOUtils$FileStreamer;-><init>(Ljava/io/File;)V

    move-object v0, p1

    move-object v4, p2

    .line 218
    invoke-static/range {v0 .. v5}, Lcom/verizon/ads/utils/HttpUtils;->a(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Integer;Lcom/verizon/ads/utils/HttpUtils$ResponseStreamer;)Lcom/verizon/ads/utils/HttpUtils$Response;

    move-result-object p0

    .line 220
    iget-object p2, p0, Lcom/verizon/ads/utils/HttpUtils$Response;->file:Ljava/io/File;

    if-eqz p2, :cond_1

    .line 221
    iget-object p0, p0, Lcom/verizon/ads/utils/HttpUtils$Response;->file:Ljava/io/File;

    invoke-interface {p3, p0}, Lcom/verizon/ads/utils/IOUtils$DownloadListener;->onDownloadSucceeded(Ljava/io/File;)V

    return-void

    .line 223
    :cond_1
    new-instance p0, Ljava/lang/Throwable;

    const-string p2, "Error creating file"

    invoke-direct {p0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p0}, Lcom/verizon/ads/utils/IOUtils$DownloadListener;->onDownloadFailed(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 227
    sget-object p2, Lcom/verizon/ads/utils/IOUtils;->a:Lcom/verizon/ads/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "An error occurred downloading file from url = "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 228
    invoke-interface {p3, p0}, Lcom/verizon/ads/utils/IOUtils$DownloadListener;->onDownloadFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static closeStream(Ljava/io/Closeable;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 92
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 97
    sget-object v0, Lcom/verizon/ads/utils/IOUtils;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Error closing stream"

    invoke-virtual {v0, v1, p0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5

    const-string v0, "Error closing input stream reader"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 111
    sget-object p0, Lcom/verizon/ads/utils/IOUtils;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Unable to convert to string, input stream is null"

    invoke-virtual {p0, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object v1

    .line 118
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, p0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 p0, 0x1000

    invoke-direct {v2, v3, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 124
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    .line 125
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 135
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 139
    sget-object v2, Lcom/verizon/ads/utils/IOUtils;->a:Lcom/verizon/ads/Logger;

    invoke-virtual {v2, v0, p0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    move-object v2, v1

    .line 131
    :goto_1
    :try_start_3
    sget-object v3, Lcom/verizon/ads/utils/IOUtils;->a:Lcom/verizon/ads/Logger;

    const-string v4, "Error occurred when converting stream to string"

    invoke-virtual {v3, v4, p0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_2

    .line 135
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    :goto_2
    return-object v1

    :catchall_1
    move-exception p0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v1

    .line 139
    sget-object v2, Lcom/verizon/ads/utils/IOUtils;->a:Lcom/verizon/ads/Logger;

    invoke-virtual {v2, v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    :cond_3
    :goto_4
    throw p0
.end method

.method public static downloadFile(Ljava/lang/String;Ljava/lang/Integer;Ljava/io/File;Lcom/verizon/ads/utils/IOUtils$DownloadListener;)V
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 210
    new-instance v0, Lcom/verizon/ads/utils/-$$Lambda$IOUtils$CwZooKI9nCl4KCq-_KtiAMMPVEU;

    invoke-direct {v0, p2, p0, p1, p3}, Lcom/verizon/ads/utils/-$$Lambda$IOUtils$CwZooKI9nCl4KCq-_KtiAMMPVEU;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/Integer;Lcom/verizon/ads/utils/IOUtils$DownloadListener;)V

    invoke-static {v0}, Lcom/verizon/ads/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void

    .line 207
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "url, file, and download listener are required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getUniqueFileName(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 5

    .line 237
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 238
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "\\.(?=[^.]+$)"

    .line 243
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 244
    aget-object v0, p1, v0

    .line 245
    array-length v1, p1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    aget-object p1, p1, v2

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    const/16 v1, 0x3e8

    if-ge v2, v1, :cond_3

    .line 247
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 248
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic lambda$CwZooKI9nCl4KCq-_KtiAMMPVEU(Ljava/io/File;Ljava/lang/String;Ljava/lang/Integer;Lcom/verizon/ads/utils/IOUtils$DownloadListener;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/verizon/ads/utils/IOUtils;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/Integer;Lcom/verizon/ads/utils/IOUtils$DownloadListener;)V

    return-void
.end method

.method public static varargs read(Ljava/io/InputStream;[Ljava/io/OutputStream;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 59
    :cond_0
    invoke-virtual {p0, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    add-int/2addr v3, v4

    .line 61
    array-length v5, p1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, p1, v6

    .line 62
    invoke-virtual {v7, v1, v2, v4}, Ljava/io/OutputStream;->write([BII)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static read(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "UTF-8"

    .line 74
    :goto_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/verizon/ads/utils/IOUtils;->read(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static read(Ljava/io/InputStream;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/OutputStream;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 47
    invoke-static {p0, v1}, Lcom/verizon/ads/utils/IOUtils;->read(Ljava/io/InputStream;[Ljava/io/OutputStream;)I

    .line 49
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static write(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/io/OutputStreamWriter;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 82
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 81
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 83
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method
