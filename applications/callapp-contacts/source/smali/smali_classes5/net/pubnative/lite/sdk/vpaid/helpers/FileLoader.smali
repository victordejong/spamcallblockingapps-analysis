.class public Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$FileHeaders;,
        Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$Callback;
    }
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT:I = 0x2710

.field private static final LOG_TAG:Ljava/lang/String; = "FileLoader"

.field private static final READ_TIMEOUT:I = 0x2710

.field private static useMobileNetworkForCaching:Z


# instance fields
.field private firstQuartile:Z

.field private final mCallback:Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$Callback;

.field private volatile mConnection:Ljava/net/HttpURLConnection;

.field private final mContext:Landroid/content/Context;

.field private volatile mIsFileFullyDownloaded:Z

.field private final mLoadingFile:Ljava/io/File;

.field private final mRemoteFileUrl:Ljava/lang/String;

.field private volatile mStop:Z

.field private midpoint:Z

.field private thirdQuartile:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$Callback;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p3, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mCallback:Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$Callback;

    .line 69
    iput-object p2, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mContext:Landroid/content/Context;

    .line 70
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mRemoteFileUrl:Ljava/lang/String;

    .line 71
    invoke-static {p1}, Lnet/pubnative/lite/sdk/vpaid/utils/FileUtils;->obtainHashName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 72
    new-instance p3, Ljava/io/File;

    invoke-static {p2}, Lnet/pubnative/lite/sdk/vpaid/utils/FileUtils;->getParentDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p3, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mLoadingFile:Ljava/io/File;

    return-void
.end method

.method static synthetic access$000(Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->load()V

    return-void
.end method

.method static synthetic access$100(Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;)Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$Callback;
    .locals 0

    .line 24
    iget-object p0, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mCallback:Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$Callback;

    return-object p0
.end method

.method static synthetic access$200(Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;)Ljava/io/File;
    .locals 0

    .line 24
    iget-object p0, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mLoadingFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 24
    iget-object p0, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mConnection:Ljava/net/HttpURLConnection;

    return-object p0
.end method

.method private appendFile(Ljava/io/File;Ljava/lang/String;ILnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$FileHeaders;)I
    .locals 6

    const/4 v0, 0x0

    .line 153
    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->obtainGetConnection(Ljava/lang/String;ILnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$FileHeaders;)Ljava/net/HttpURLConnection;

    move-result-object p2

    iput-object p2, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mConnection:Ljava/net/HttpURLConnection;

    .line 154
    iget-object p2, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 155
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p1, 0x1000

    :try_start_2
    new-array p1, p1, [B

    .line 158
    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x0

    .line 159
    invoke-virtual {v1, p1, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr p3, v0

    int-to-double v2, p3

    .line 161
    iget v0, p4, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$FileHeaders;->fileLength:I

    int-to-double v4, v0

    div-double/2addr v2, v4

    .line 162
    invoke-direct {p0, v2, v3}, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->handelProgress(D)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 167
    :cond_0
    invoke-static {p2}, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->closeStream(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v1, v0

    :goto_1
    move-object v0, p2

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v1, v0

    :goto_2
    move-object v0, p2

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v1, v0

    goto :goto_5

    :catch_2
    move-exception p1

    move-object v1, v0

    .line 165
    :goto_3
    :try_start_3
    sget-object p2, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v2, "appendFile interrupted: "

    invoke-direct {p4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 167
    invoke-static {v0}, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->closeStream(Ljava/io/Closeable;)V

    .line 168
    :goto_4
    invoke-static {v1}, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->closeStream(Ljava/io/Closeable;)V

    return p3

    :catchall_3
    move-exception p1

    .line 167
    :goto_5
    invoke-static {v0}, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->closeStream(Ljava/io/Closeable;)V

    .line 168
    invoke-static {v1}, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->closeStream(Ljava/io/Closeable;)V

    throw p1
.end method

.method private static closeStream(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 281
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 283
    :catch_0
    sget-object p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Can\'t close stream"

    invoke-static {p0, v0}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private handelProgress(D)V
    .locals 5

    .line 219
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mCallback:Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$Callback;

    if-eqz v0, :cond_2

    .line 220
    iget-boolean v1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->firstQuartile:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-wide/high16 v3, 0x3fd0000000000000L    # 0.25

    cmpl-double v1, p1, v3

    if-lez v1, :cond_2

    .line 222
    iput-boolean v2, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->firstQuartile:Z

    .line 223
    invoke-interface {v0, v3, v4}, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$Callback;->onProgress(D)V

    return-void

    .line 225
    :cond_0
    iget-boolean v1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->midpoint:Z

    if-nez v1, :cond_1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    cmpl-double v1, p1, v3

    if-lez v1, :cond_2

    .line 227
    iput-boolean v2, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->midpoint:Z

    .line 228
    invoke-interface {v0, v3, v4}, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$Callback;->onProgress(D)V

    return-void

    .line 230
    :cond_1
    iget-boolean v1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->thirdQuartile:Z

    if-nez v1, :cond_2

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    cmpl-double v1, p1, v3

    if-lez v1, :cond_2

    .line 232
    iput-boolean v2, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->thirdQuartile:Z

    .line 233
    invoke-interface {v0, v3, v4}, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$Callback;->onProgress(D)V

    :cond_2
    return-void
.end method

.method private handleEmulator()V
    .locals 2

    .line 272
    invoke-static {}, Lnet/pubnative/lite/sdk/vpaid/utils/Utils;->isEmulator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->LOG_TAG:Ljava/lang/String;

    const-string v1, "running on emulator"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 274
    sput-boolean v0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->useMobileNetworkForCaching:Z

    :cond_0
    return-void
.end method

.method private handleFileFullDownloaded()V
    .locals 2

    const/4 v0, 0x1

    .line 240
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mIsFileFullyDownloaded:Z

    .line 241
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$2;

    invoke-direct {v1, p0}, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$2;-><init>(Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private load()V
    .locals 9

    .line 111
    :try_start_0
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mStop:Z

    if-eqz v0, :cond_0

    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mRemoteFileUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->obtainHeaders(Ljava/lang/String;)Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$FileHeaders;

    move-result-object v0

    if-nez v0, :cond_2

    .line 116
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mCallback:Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$Callback;

    if-eqz v0, :cond_1

    .line 117
    new-instance v1, Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;

    const-string v2, "Error during loading file"

    invoke-direct {v1, v2}, Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$Callback;->onError(Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;)V

    :cond_1
    return-void

    .line 122
    :cond_2
    sget-object v1, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "File length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$FileHeaders;->fileLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 126
    :goto_0
    iget-boolean v5, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mStop:Z

    if-nez v5, :cond_3

    iget v5, v0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$FileHeaders;->fileLength:I

    if-ge v3, v5, :cond_3

    .line 127
    iget-object v5, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mLoadingFile:Ljava/io/File;

    iget-object v6, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mRemoteFileUrl:Ljava/lang/String;

    invoke-direct {p0, v5, v6, v3, v0}, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->appendFile(Ljava/io/File;Ljava/lang/String;ILnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$FileHeaders;)I

    move-result v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 130
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    .line 131
    sget-object v1, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "Load time: "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    long-to-double v5, v5

    const-wide v7, 0x408f400000000000L    # 1000.0

    div-double/2addr v5, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "AttemptsCount: "

    .line 132
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget v0, v0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$FileHeaders;->fileLength:I

    if-ne v3, v0, :cond_4

    .line 135
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->handleFileFullDownloaded()V

    return-void

    .line 137
    :cond_4
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mCallback:Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$Callback;

    if-eqz v0, :cond_5

    .line 138
    new-instance v1, Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;

    const-string v2, "Error during file loading, attemptsCount: "

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$Callback;->onError(Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-void

    :catch_0
    move-exception v0

    .line 142
    sget-object v1, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected FileLoader error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private maybeLoadFile()V
    .locals 3

    .line 94
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/vpaid/helpers/RequestParametersProvider;->getConnectionType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 95
    sget-boolean v0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->useMobileNetworkForCaching:Z

    if-nez v0, :cond_1

    .line 96
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mCallback:Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$Callback;

    if-eqz v0, :cond_0

    .line 97
    new-instance v1, Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;

    const-string v2, "Mobile network. File will not be cached"

    invoke-direct {v1, v2}, Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$Callback;->onError(Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;)V

    :cond_0
    return-void

    .line 101
    :cond_1
    invoke-static {}, Lnet/pubnative/lite/sdk/vpaid/helpers/ExecutorHelper;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$1;

    invoke-direct {v1, p0}, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$1;-><init>(Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private obtainGetConnection(Ljava/lang/String;ILnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$FileHeaders;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/16 v0, 0x2710

    .line 210
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 211
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v0, "GET"

    .line 212
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bytes="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p3, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$FileHeaders;->fileLength:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Range"

    invoke-virtual {p1, v0, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object p2, p3, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$FileHeaders;->eTag:Ljava/lang/String;

    const-string p3, "If-Range"

    invoke-virtual {p1, p3, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private obtainHeaders(Ljava/lang/String;)Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$FileHeaders;
    .locals 4

    const-string v0, "File not found by URL: "

    const/4 v1, 0x0

    .line 175
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mConnection:Ljava/net/HttpURLConnection;

    .line 177
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mConnection:Ljava/net/HttpURLConnection;

    const-string v2, "HEAD"

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 178
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 v2, 0xc8

    if-ne p1, v2, :cond_1

    .line 179
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mConnection:Ljava/net/HttpURLConnection;

    const-string v2, "ETag"

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 180
    iget-object v2, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    .line 181
    new-instance v3, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$FileHeaders;

    invoke-direct {v3, p1, v2}, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$FileHeaders;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_0

    .line 202
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-object v3

    .line 182
    :cond_1
    :try_start_1
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 v2, 0x193

    if-eq p1, v2, :cond_4

    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mConnection:Ljava/net/HttpURLConnection;

    .line 183
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 v2, 0xce

    if-eq p1, v2, :cond_4

    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mConnection:Ljava/net/HttpURLConnection;

    .line 184
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0x194

    if-ne p1, v2, :cond_2

    goto :goto_0

    .line 201
    :cond_2
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_3

    .line 202
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    return-object v1

    .line 185
    :cond_4
    :goto_0
    :try_start_2
    sget-object p1, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mRemoteFileUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mContext:Landroid/content/Context;

    sget-object v2, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;->TRAFFICKING:Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

    invoke-static {p1, v2}, Lnet/pubnative/lite/sdk/vpaid/helpers/ErrorLog;->postError(Landroid/content/Context;Lnet/pubnative/lite/sdk/vpaid/enums/VastError;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_5

    .line 202
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 197
    :catch_0
    :try_start_3
    sget-object p1, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mRemoteFileUrl:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mContext:Landroid/content/Context;

    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;->FILE_NOT_FOUND:Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

    invoke-static {p1, v0}, Lnet/pubnative/lite/sdk/vpaid/helpers/ErrorLog;->postError(Landroid/content/Context;Lnet/pubnative/lite/sdk/vpaid/enums/VastError;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 201
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_6

    .line 202
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    return-object v1

    .line 193
    :catch_1
    :try_start_4
    sget-object p1, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Timeout by URL: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mRemoteFileUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mContext:Landroid/content/Context;

    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;->TIMEOUT:Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

    invoke-static {p1, v0}, Lnet/pubnative/lite/sdk/vpaid/helpers/ErrorLog;->postError(Landroid/content/Context;Lnet/pubnative/lite/sdk/vpaid/enums/VastError;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 201
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_7

    .line 202
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    return-object v1

    .line 201
    :goto_1
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_8

    .line 202
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    throw p1
.end method

.method public static setUseMobileNetworkForCaching(Z)V
    .locals 0

    .line 289
    sput-boolean p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->useMobileNetworkForCaching:Z

    return-void
.end method


# virtual methods
.method public start()V
    .locals 3

    .line 76
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->handleEmulator()V

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Use mobile network for caching: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->useMobileNetworkForCaching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mRemoteFileUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mCallback:Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$Callback;

    new-instance v1, Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;

    const-string v2, "FileUrl is empty"

    invoke-direct {v1, v2}, Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$Callback;->onError(Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;)V

    return-void

    .line 85
    :cond_0
    iget-object v1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mLoadingFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "File already exists"

    .line 86
    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->handleFileFullDownloaded()V

    return-void

    .line 89
    :cond_1
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->maybeLoadFile()V

    return-void
.end method

.method public stop()V
    .locals 3

    .line 252
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->LOG_TAG:Ljava/lang/String;

    const-string v1, "stop()"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 253
    iput-boolean v1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mStop:Z

    .line 254
    iget-object v1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_0

    .line 255
    invoke-static {}, Lnet/pubnative/lite/sdk/vpaid/helpers/ExecutorHelper;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$3;

    invoke-direct {v2, p0}, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$3;-><init>(Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 265
    :cond_0
    iget-boolean v1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mIsFileFullyDownloaded:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mLoadingFile:Ljava/io/File;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "remove bad file"

    .line 266
    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->mLoadingFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method
