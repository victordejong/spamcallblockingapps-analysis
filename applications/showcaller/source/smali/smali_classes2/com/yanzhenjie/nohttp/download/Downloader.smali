.class public Lcom/yanzhenjie/nohttp/download/Downloader;
.super Ljava/lang/Object;
.source "Downloader.java"


# instance fields
.field private mHttpConnection:Lcom/yanzhenjie/nohttp/HttpConnection;


# direct methods
.method public constructor <init>(Lcom/yanzhenjie/nohttp/NetworkExecutor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/yanzhenjie/nohttp/HttpConnection;

    invoke-direct {v0, p1}, Lcom/yanzhenjie/nohttp/HttpConnection;-><init>(Lcom/yanzhenjie/nohttp/NetworkExecutor;)V

    iput-object v0, p0, Lcom/yanzhenjie/nohttp/download/Downloader;->mHttpConnection:Lcom/yanzhenjie/nohttp/HttpConnection;

    return-void
.end method

.method private getConnectionRetry(Lcom/yanzhenjie/nohttp/download/DownloadRequest;)Lcom/yanzhenjie/nohttp/Connection;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/download/Downloader;->mHttpConnection:Lcom/yanzhenjie/nohttp/HttpConnection;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/nohttp/HttpConnection;->getConnection(Lcom/yanzhenjie/nohttp/BasicRequest;)Lcom/yanzhenjie/nohttp/Connection;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/yanzhenjie/nohttp/Connection;->exception()Ljava/lang/Exception;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/yanzhenjie/nohttp/Connection;->responseHeaders()Lcom/yanzhenjie/nohttp/Headers;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/yanzhenjie/nohttp/Headers;->getResponseCode()I

    move-result v1

    const/16 v2, 0x1a0

    if-ne v1, v2, :cond_0

    const-string v0, "Range"

    .line 5
    invoke-virtual {p1, v0}, Lcom/yanzhenjie/nohttp/BasicRequest;->removeHeader(Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;

    .line 6
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/download/Downloader;->mHttpConnection:Lcom/yanzhenjie/nohttp/HttpConnection;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/nohttp/HttpConnection;->getConnection(Lcom/yanzhenjie/nohttp/BasicRequest;)Lcom/yanzhenjie/nohttp/Connection;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0

    .line 7
    :cond_1
    throw v1
.end method

.method private getRealFileName(Lcom/yanzhenjie/nohttp/download/DownloadRequest;Lcom/yanzhenjie/nohttp/Headers;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/yanzhenjie/nohttp/Headers;->getContentDisposition()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string v0, "filename"

    .line 3
    invoke-static {p2, v0, v1}, Lcom/yanzhenjie/nohttp/tools/HeaderUtils;->parseHeadValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 5
    :try_start_0
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->getParamsEncoding()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p2

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const-string p2, "\""

    .line 6
    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {v1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 8
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->url()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    .line 11
    invoke-virtual {p2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string p1, "/"

    .line 14
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 15
    array-length p2, p1

    sub-int/2addr p2, v2

    aget-object v1, p1, p2

    :cond_2
    :goto_1
    return-object v1
.end method

.method private validateDevice(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/yanzhenjie/nohttp/tools/NetUtils;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->createFolder(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/yanzhenjie/nohttp/error/StorageReadWriteError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SD card isn\'t available, please check SD card and permission: WRITE_EXTERNAL_STORAGE.\nYou must pay attention to Android6.0 RunTime Permissions: https://github.com/yanzhenjie/AndPermission.\nFailed to create folder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/yanzhenjie/nohttp/error/StorageReadWriteError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    new-instance p1, Lcom/yanzhenjie/nohttp/error/NetworkError;

    const-string v0, "Network is not available, please check network and permission: INTERNET, ACCESS_WIFI_STATE, ACCESS_NETWORK_STATE."

    invoke-direct {p1, v0}, Lcom/yanzhenjie/nohttp/error/NetworkError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private validateParam(Lcom/yanzhenjie/nohttp/download/DownloadRequest;Lcom/yanzhenjie/nohttp/download/DownloadListener;)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DownloadListener == null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DownloadRequest == null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public download(ILcom/yanzhenjie/nohttp/download/DownloadRequest;Lcom/yanzhenjie/nohttp/download/DownloadListener;)V
    .locals 42

    move-object/from16 v1, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v13, "The folder is not enough space to save the downloaded file: "

    const-string v14, "."

    const-string v2, "Range"

    const-string v15, "----------Response End----------"

    .line 1
    invoke-direct {v1, v11, v12}, Lcom/yanzhenjie/nohttp/download/Downloader;->validateParam(Lcom/yanzhenjie/nohttp/download/DownloadRequest;Lcom/yanzhenjie/nohttp/download/DownloadListener;)V

    .line 2
    invoke-virtual/range {p2 .. p2}, Lcom/yanzhenjie/nohttp/download/DownloadRequest;->getFileDir()Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-virtual/range {p2 .. p2}, Lcom/yanzhenjie/nohttp/download/DownloadRequest;->getFileName()Ljava/lang/String;

    move-result-object v4

    const/16 v16, 0x0

    .line 4
    :try_start_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3e
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_3d
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3a
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    if-eqz v5, :cond_0

    .line 5
    :try_start_1
    invoke-static {}, Lcom/yanzhenjie/nohttp/NoHttp;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v30, v15

    goto/16 :goto_30

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v30, v15

    goto/16 :goto_31

    :catch_1
    move-exception v0

    move-object v1, v0

    :goto_0
    move-object v7, v13

    move-object v8, v14

    move-object/from16 v30, v15

    goto/16 :goto_35

    :catch_2
    move-exception v0

    move-object v1, v0

    move-object/from16 v30, v15

    goto/16 :goto_38

    :catch_3
    move-exception v0

    move-object v1, v0

    move-object/from16 v30, v15

    goto/16 :goto_3a

    :catch_4
    move-exception v0

    move-object v1, v0

    move-object/from16 v30, v15

    goto/16 :goto_3c

    :cond_0
    :goto_1
    move-object v8, v3

    .line 6
    :try_start_2
    invoke-direct {v1, v8}, Lcom/yanzhenjie/nohttp/download/Downloader;->validateDevice(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v11, v2}, Lcom/yanzhenjie/nohttp/BasicRequest;->removeHeader(Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;

    .line 8
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_3e
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_3d
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_3c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_39
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3a
    .catchall {:try_start_2 .. :try_end_2} :catchall_a

    const-string v5, "-"

    const-string v6, "bytes="

    const-string v7, ".nohttp"

    const-wide/16 v17, 0x0

    if-eqz v3, :cond_5

    .line 9
    :try_start_3
    invoke-direct {v1, v11}, Lcom/yanzhenjie/nohttp/download/Downloader;->getConnectionRetry(Lcom/yanzhenjie/nohttp/download/DownloadRequest;)Lcom/yanzhenjie/nohttp/Connection;

    move-result-object v3
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 10
    :try_start_4
    invoke-virtual {v3}, Lcom/yanzhenjie/nohttp/Connection;->exception()Ljava/lang/Exception;

    move-result-object v4

    if-nez v4, :cond_4

    .line 11
    invoke-virtual {v3}, Lcom/yanzhenjie/nohttp/Connection;->responseHeaders()Lcom/yanzhenjie/nohttp/Headers;

    move-result-object v4

    .line 12
    invoke-direct {v1, v11, v4}, Lcom/yanzhenjie/nohttp/download/Downloader;->getRealFileName(Lcom/yanzhenjie/nohttp/download/DownloadRequest;Lcom/yanzhenjie/nohttp/Headers;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v19, v4

    .line 13
    new-instance v4, Ljava/io/File;
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v20, v13

    :try_start_5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual/range {p2 .. p2}, Lcom/yanzhenjie/nohttp/download/DownloadRequest;->isRange()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v21

    cmp-long v7, v21, v17

    if-lez v7, :cond_2

    .line 15
    invoke-virtual {v3}, Lcom/yanzhenjie/nohttp/Connection;->close()V

    move-object v13, v9

    .line 16
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v9

    .line 17
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v2, v5}, Lcom/yanzhenjie/nohttp/BasicRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;

    .line 18
    invoke-direct {v1, v11}, Lcom/yanzhenjie/nohttp/download/Downloader;->getConnectionRetry(Lcom/yanzhenjie/nohttp/download/DownloadRequest;)Lcom/yanzhenjie/nohttp/Connection;

    move-result-object v3

    .line 19
    invoke-virtual {v3}, Lcom/yanzhenjie/nohttp/Connection;->exception()Ljava/lang/Exception;

    move-result-object v5

    if-nez v5, :cond_1

    .line 20
    invoke-virtual {v3}, Lcom/yanzhenjie/nohttp/Connection;->responseHeaders()Lcom/yanzhenjie/nohttp/Headers;

    move-result-object v5

    .line 21
    invoke-virtual {v11, v2}, Lcom/yanzhenjie/nohttp/BasicRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 22
    invoke-static {v4}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->delFileOrFolder(Ljava/io/File;)Z

    move-wide/from16 v9, v17

    goto :goto_2

    .line 23
    :cond_1
    throw v5

    :cond_2
    move-object v13, v9

    .line 24
    invoke-static {v4}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->delFileOrFolder(Ljava/io/File;)Z

    move-wide/from16 v9, v17

    move-object/from16 v5, v19

    :cond_3
    :goto_2
    move-object v7, v5

    move-wide/from16 v40, v9

    move-object v10, v3

    move-object v9, v4

    :goto_3
    move-wide/from16 v2, v40

    goto/16 :goto_7

    :cond_4
    move-object/from16 v20, v13

    .line 25
    throw v4
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_5
    move-exception v0

    move-object v1, v0

    move-object/from16 v30, v15

    move-object/from16 v9, v16

    move-object/from16 v7, v20

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object/from16 v29, v3

    :goto_4
    move-object/from16 v30, v15

    goto/16 :goto_3f

    :catch_6
    move-exception v0

    move-object v1, v0

    move-object/from16 v30, v15

    move-object/from16 v9, v16

    move-object/from16 v16, v3

    goto/16 :goto_32

    :catch_7
    move-exception v0

    move-object v1, v0

    move-object v7, v13

    move-object/from16 v30, v15

    move-object/from16 v9, v16

    :goto_5
    move-object/from16 v16, v3

    move-object v3, v8

    move-object v8, v14

    goto/16 :goto_36

    :catch_8
    move-exception v0

    move-object v1, v0

    move-object/from16 v30, v15

    move-object/from16 v9, v16

    move-object/from16 v16, v3

    goto/16 :goto_39

    :catch_9
    move-exception v0

    move-object v1, v0

    move-object/from16 v30, v15

    move-object/from16 v9, v16

    move-object/from16 v16, v3

    goto/16 :goto_3b

    :catch_a
    move-exception v0

    move-object v1, v0

    move-object/from16 v30, v15

    move-object/from16 v9, v16

    move-object/from16 v16, v3

    goto/16 :goto_3d

    :catch_b
    move-exception v0

    move-object v1, v0

    move-object v3, v8

    goto/16 :goto_0

    :cond_5
    move-object/from16 v20, v13

    .line 26
    :try_start_6
    new-instance v3, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual/range {p2 .. p2}, Lcom/yanzhenjie/nohttp/download/DownloadRequest;->isRange()Z

    move-result v7
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_3e
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_3d
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_3c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_38
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3a
    .catchall {:try_start_6 .. :try_end_6} :catchall_a

    if-eqz v7, :cond_6

    :try_start_7
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v7, v9, v17

    if-lez v7, :cond_6

    .line 28
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v9

    .line 29
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v2, v5}, Lcom/yanzhenjie/nohttp/BasicRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_6

    :catch_c
    move-exception v0

    move-object v1, v0

    move-object v3, v8

    move-object v8, v14

    move-object/from16 v30, v15

    move-object/from16 v9, v16

    move-object/from16 v7, v20

    goto/16 :goto_36

    .line 30
    :cond_6
    :try_start_8
    invoke-static {v3}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->delFileOrFolder(Ljava/io/File;)Z

    move-wide/from16 v9, v17

    .line 31
    :goto_6
    invoke-direct {v1, v11}, Lcom/yanzhenjie/nohttp/download/Downloader;->getConnectionRetry(Lcom/yanzhenjie/nohttp/download/DownloadRequest;)Lcom/yanzhenjie/nohttp/Connection;

    move-result-object v5
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_3e
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_3d
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_3c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_38
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3a
    .catchall {:try_start_8 .. :try_end_8} :catchall_a

    .line 32
    :try_start_9
    invoke-virtual {v5}, Lcom/yanzhenjie/nohttp/Connection;->exception()Ljava/lang/Exception;

    move-result-object v6

    if-nez v6, :cond_1b

    .line 33
    invoke-virtual {v5}, Lcom/yanzhenjie/nohttp/Connection;->responseHeaders()Lcom/yanzhenjie/nohttp/Headers;

    move-result-object v6

    .line 34
    invoke-virtual {v11, v2}, Lcom/yanzhenjie/nohttp/BasicRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v2
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_37
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_36
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_35
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_34
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_33
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    if-nez v2, :cond_7

    .line 35
    :try_start_a
    invoke-static {v3}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->delFileOrFolder(Ljava/io/File;)Z
    :try_end_a
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_11
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_10
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object v9, v3

    move-object v13, v4

    move-object v10, v5

    move-object v7, v6

    move-wide/from16 v2, v17

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object/from16 v29, v5

    goto/16 :goto_4

    :catch_d
    move-exception v0

    move-object v1, v0

    move-object/from16 v30, v15

    goto/16 :goto_27

    :catch_e
    move-exception v0

    move-object v1, v0

    move-object v3, v8

    move-object v8, v14

    move-object/from16 v30, v15

    move-object/from16 v9, v16

    move-object/from16 v7, v20

    goto/16 :goto_29

    :catch_f
    move-exception v0

    move-object v1, v0

    move-object/from16 v30, v15

    goto/16 :goto_2b

    :catch_10
    move-exception v0

    move-object v1, v0

    move-object/from16 v30, v15

    goto/16 :goto_2d

    :catch_11
    move-exception v0

    move-object v1, v0

    move-object/from16 v30, v15

    goto/16 :goto_2f

    :cond_7
    move-object v13, v4

    move-object v7, v6

    move-wide/from16 v40, v9

    move-object v9, v3

    move-object v10, v5

    goto/16 :goto_3

    :goto_7
    :try_start_b
    const-string v4, "----------Response Start----------"

    .line 36
    invoke-static {v4}, Lcom/yanzhenjie/nohttp/Logger;->i(Ljava/lang/Object;)V

    .line 37
    invoke-virtual {v7}, Lcom/yanzhenjie/nohttp/Headers;->getResponseCode()I

    move-result v4

    .line 38
    invoke-virtual {v10}, Lcom/yanzhenjie/nohttp/Connection;->serverStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_b
    .catch Ljava/net/MalformedURLException; {:try_start_b .. :try_end_b} :catch_2d
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_b} :catch_2c
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_2b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_29
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    const/16 v6, 0x190

    if-ge v4, v6, :cond_1a

    const/16 v6, 0xce

    const-string v19, "-------Download finish-------"

    const/16 v21, 0x1

    if-ne v4, v6, :cond_8

    .line 39
    :try_start_c
    invoke-virtual {v7}, Lcom/yanzhenjie/nohttp/Headers;->getContentRange()Ljava/lang/String;

    move-result-object v6
    :try_end_c
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_c} :catch_16
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_c} :catch_15
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_14
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_13
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_12
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    const/16 v1, 0x2f

    .line 40
    :try_start_d
    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-object v1, v8

    move/from16 v8, p1

    goto/16 :goto_b

    .line 41
    :catchall_3
    :try_start_e
    new-instance v1, Lcom/yanzhenjie/nohttp/error/ServerError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResponseCode is 206, but content-Range error in Server HTTP header information: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yanzhenjie/nohttp/error/ServerError;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_e
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_e} :catch_16
    .catch Ljava/net/UnknownHostException; {:try_start_e .. :try_end_e} :catch_15
    .catch Ljava/net/SocketTimeoutException; {:try_start_e .. :try_end_e} :catch_14
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_12
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :catchall_4
    move-exception v0

    move-object v1, v0

    move-object/from16 v29, v10

    goto/16 :goto_4

    :catch_12
    move-exception v0

    move-object v1, v0

    move-object/from16 v30, v15

    move-object/from16 v9, v16

    move-object/from16 v16, v10

    goto/16 :goto_32

    :catch_13
    move-exception v0

    move-object v1, v0

    move-object v3, v8

    move-object v8, v14

    move-object/from16 v30, v15

    move-object/from16 v9, v16

    move-object/from16 v7, v20

    :goto_8
    move-object/from16 v16, v10

    goto/16 :goto_36

    :catch_14
    move-exception v0

    move-object v1, v0

    move-object/from16 v30, v15

    move-object/from16 v9, v16

    move-object/from16 v16, v10

    goto/16 :goto_39

    :catch_15
    move-exception v0

    move-object v1, v0

    move-object/from16 v30, v15

    move-object/from16 v9, v16

    move-object/from16 v16, v10

    goto/16 :goto_3b

    :catch_16
    move-exception v0

    move-object v1, v0

    move-object/from16 v30, v15

    move-object/from16 v9, v16

    move-object/from16 v16, v10

    goto/16 :goto_3d

    :cond_8
    const/16 v1, 0x130

    if-ne v4, v1, :cond_9

    .line 42
    :try_start_f
    invoke-virtual {v7}, Lcom/yanzhenjie/nohttp/Headers;->getContentLength()I

    move-result v1
    :try_end_f
    .catch Ljava/net/MalformedURLException; {:try_start_f .. :try_end_f} :catch_16
    .catch Ljava/net/UnknownHostException; {:try_start_f .. :try_end_f} :catch_15
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_f} :catch_14
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_18
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_12
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    const/4 v4, 0x1

    int-to-long v5, v1

    move-object/from16 v2, p3

    move/from16 v3, p1

    move-wide/from16 v17, v5

    move-object v1, v8

    move-wide/from16 v8, v17

    .line 43
    :try_start_10
    invoke-interface/range {v2 .. v9}, Lcom/yanzhenjie/nohttp/download/DownloadListener;->onStart(IZJLcom/yanzhenjie/nohttp/Headers;J)V

    const/16 v4, 0x64

    const-wide/16 v7, 0x0

    move-object/from16 v2, p3

    move/from16 v3, p1

    move-wide/from16 v5, v17

    .line 44
    invoke-interface/range {v2 .. v8}, Lcom/yanzhenjie/nohttp/download/DownloadListener;->onProgress(IIJJ)V

    .line 45
    invoke-static/range {v19 .. v19}, Lcom/yanzhenjie/nohttp/Logger;->d(Ljava/lang/Object;)V

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move/from16 v8, p1

    invoke-interface {v12, v8, v2}, Lcom/yanzhenjie/nohttp/download/DownloadListener;->onFinish(ILjava/lang/String;)V
    :try_end_10
    .catch Ljava/net/MalformedURLException; {:try_start_10 .. :try_end_10} :catch_16
    .catch Ljava/net/UnknownHostException; {:try_start_10 .. :try_end_10} :catch_15
    .catch Ljava/net/SocketTimeoutException; {:try_start_10 .. :try_end_10} :catch_14
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_17
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_12
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 47
    :goto_9
    invoke-static {v15}, Lcom/yanzhenjie/nohttp/Logger;->i(Ljava/lang/Object;)V

    .line 48
    invoke-static/range {v16 .. v16}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 49
    invoke-static {v10}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catch_17
    move-exception v0

    goto :goto_a

    :catch_18
    move-exception v0

    move-object v1, v8

    :goto_a
    move-object v3, v1

    move-object v8, v14

    move-object/from16 v30, v15

    move-object/from16 v9, v16

    move-object/from16 v7, v20

    move-object v1, v0

    goto :goto_8

    :cond_9
    move-object v1, v8

    move/from16 v8, p1

    .line 50
    :try_start_11
    invoke-virtual {v7}, Lcom/yanzhenjie/nohttp/Headers;->getContentLength()I

    move-result v2

    int-to-long v2, v2

    move-wide/from16 v23, v2

    move-wide/from16 v2, v17

    .line 51
    :goto_b
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13
    :try_end_11
    .catch Ljava/net/MalformedURLException; {:try_start_11 .. :try_end_11} :catch_2d
    .catch Ljava/net/UnknownHostException; {:try_start_11 .. :try_end_11} :catch_2c
    .catch Ljava/net/SocketTimeoutException; {:try_start_11 .. :try_end_11} :catch_2b
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_23
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_29
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    if-eqz v13, :cond_b

    .line 53
    :try_start_12
    invoke-virtual/range {p2 .. p2}, Lcom/yanzhenjie/nohttp/download/DownloadRequest;->isDeleteOld()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-static {v6}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->delFileOrFolder(Ljava/io/File;)Z

    goto :goto_c

    :cond_a
    const/4 v4, 0x1

    .line 54
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v17

    .line 55
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v21

    move-object/from16 v2, p3

    move/from16 v3, p1

    move-object v13, v6

    move-wide/from16 v5, v17

    move v11, v8

    move-wide/from16 v8, v21

    .line 56
    invoke-interface/range {v2 .. v9}, Lcom/yanzhenjie/nohttp/download/DownloadListener;->onStart(IZJLcom/yanzhenjie/nohttp/Headers;J)V

    const/16 v4, 0x64

    .line 57
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    move-object/from16 v2, p3

    move/from16 v3, p1

    invoke-interface/range {v2 .. v8}, Lcom/yanzhenjie/nohttp/download/DownloadListener;->onProgress(IIJJ)V

    .line 58
    invoke-static/range {v19 .. v19}, Lcom/yanzhenjie/nohttp/Logger;->d(Ljava/lang/Object;)V

    .line 59
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v11, v2}, Lcom/yanzhenjie/nohttp/download/DownloadListener;->onFinish(ILjava/lang/String;)V
    :try_end_12
    .catch Ljava/net/MalformedURLException; {:try_start_12 .. :try_end_12} :catch_16
    .catch Ljava/net/UnknownHostException; {:try_start_12 .. :try_end_12} :catch_15
    .catch Ljava/net/SocketTimeoutException; {:try_start_12 .. :try_end_12} :catch_14
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    goto :goto_9

    :cond_b
    :goto_c
    move-object v13, v6

    .line 60
    :try_start_13
    invoke-static {v1}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->getDirSize(Ljava/lang/String;)J

    move-result-wide v25
    :try_end_13
    .catch Ljava/net/MalformedURLException; {:try_start_13 .. :try_end_13} :catch_2d
    .catch Ljava/net/UnknownHostException; {:try_start_13 .. :try_end_13} :catch_2c
    .catch Ljava/net/SocketTimeoutException; {:try_start_13 .. :try_end_13} :catch_2b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_23
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_29
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    cmp-long v6, v25, v23

    if-ltz v6, :cond_19

    const/16 v6, 0xce

    if-eq v4, v6, :cond_d

    .line 61
    :try_start_14
    invoke-static {v9}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->createNewFile(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_d

    :cond_c
    new-instance v2, Lcom/yanzhenjie/nohttp/error/StorageReadWriteError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SD card isn\'t available, please check SD card and permission: WRITE_EXTERNAL_STORAGE.\nYou must pay attention to Android6.0 RunTime Permissions: https://github.com/yanzhenjie/AndPermission.\nFailed to create file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/yanzhenjie/nohttp/error/StorageReadWriteError;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_14
    .catch Ljava/net/MalformedURLException; {:try_start_14 .. :try_end_14} :catch_16
    .catch Ljava/net/UnknownHostException; {:try_start_14 .. :try_end_14} :catch_15
    .catch Ljava/net/SocketTimeoutException; {:try_start_14 .. :try_end_14} :catch_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_12
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 62
    :cond_d
    :goto_d
    :try_start_15
    invoke-virtual/range {p2 .. p2}, Lcom/yanzhenjie/nohttp/BasicRequest;->isCancelled()Z

    move-result v4
    :try_end_15
    .catch Ljava/net/MalformedURLException; {:try_start_15 .. :try_end_15} :catch_2d
    .catch Ljava/net/UnknownHostException; {:try_start_15 .. :try_end_15} :catch_2c
    .catch Ljava/net/SocketTimeoutException; {:try_start_15 .. :try_end_15} :catch_2b
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_29
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    const-string v6, "Download handle is canceled."

    const-string v11, "NoHttpDownloader"

    if-eqz v4, :cond_e

    .line 63
    :try_start_16
    invoke-static {v11, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/net/MalformedURLException; {:try_start_16 .. :try_end_16} :catch_16
    .catch Ljava/net/UnknownHostException; {:try_start_16 .. :try_end_16} :catch_15
    .catch Ljava/net/SocketTimeoutException; {:try_start_16 .. :try_end_16} :catch_14
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_17
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_12
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    goto/16 :goto_9

    :cond_e
    :try_start_17
    const-string v4, "-------Download start-------"

    .line 64
    invoke-static {v4}, Lcom/yanzhenjie/nohttp/Logger;->d(Ljava/lang/Object;)V
    :try_end_17
    .catch Ljava/net/MalformedURLException; {:try_start_17 .. :try_end_17} :catch_2d
    .catch Ljava/net/UnknownHostException; {:try_start_17 .. :try_end_17} :catch_2c
    .catch Ljava/net/SocketTimeoutException; {:try_start_17 .. :try_end_17} :catch_2b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_29
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    const/4 v4, 0x0

    cmp-long v22, v2, v17

    move-wide/from16 v25, v2

    if-lez v22, :cond_f

    const/16 v22, 0x1

    goto :goto_e

    :cond_f
    const/16 v22, 0x0

    :goto_e
    move-object/from16 v2, p3

    move/from16 v3, p1

    move-object/from16 v27, v14

    const/4 v14, 0x0

    move/from16 v4, v22

    move-object/from16 v28, v1

    move-object v14, v5

    move-object v1, v6

    move-wide/from16 v5, v25

    move-object/from16 v29, v10

    move-object/from16 v30, v15

    move v10, v8

    move-object v15, v9

    move-wide/from16 v8, v23

    .line 65
    :try_start_18
    invoke-interface/range {v2 .. v9}, Lcom/yanzhenjie/nohttp/download/DownloadListener;->onStart(IZJLcom/yanzhenjie/nohttp/Headers;J)V

    .line 66
    new-instance v9, Ljava/io/RandomAccessFile;

    const-string v2, "rws"

    invoke-direct {v9, v15, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/net/MalformedURLException; {:try_start_18 .. :try_end_18} :catch_28
    .catch Ljava/net/UnknownHostException; {:try_start_18 .. :try_end_18} :catch_27
    .catch Ljava/net/SocketTimeoutException; {:try_start_18 .. :try_end_18} :catch_26
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_24
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    move-wide/from16 v2, v25

    .line 67
    :try_start_19
    invoke-virtual {v9, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v4, 0x1fa0

    new-array v7, v4, [B

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-wide/from16 v25, v4

    move-wide/from16 v4, v17

    move-wide/from16 v31, v4

    const/4 v8, 0x0

    .line 69
    :goto_f
    invoke-virtual {v14, v7}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move-object/from16 v33, v14

    const/4 v14, -0x1

    if-eq v6, v14, :cond_17

    .line 70
    invoke-virtual/range {p2 .. p2}, Lcom/yanzhenjie/nohttp/BasicRequest;->isCancelled()Z

    move-result v14

    if-eqz v14, :cond_10

    .line 71
    invoke-static {v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    :cond_10
    const/4 v14, 0x0

    .line 72
    invoke-virtual {v9, v7, v14, v6}, Ljava/io/RandomAccessFile;->write([BII)V

    move-object/from16 v22, v15

    int-to-long v14, v6

    add-long v34, v2, v14

    add-long/2addr v14, v4

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v25

    const-wide/16 v4, 0x1

    .line 74
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v4, v4, v14

    .line 75
    div-long v36, v4, v2

    cmp-long v4, v31, v36

    if-eqz v4, :cond_11

    const-wide/16 v4, 0x12c

    cmp-long v6, v2, v4

    if-ltz v6, :cond_11

    const/4 v4, 0x1

    goto :goto_10

    :cond_11
    const/4 v4, 0x0

    :goto_10
    cmp-long v2, v23, v17

    if-eqz v2, :cond_15

    const-wide/16 v2, 0x64

    mul-long v2, v2, v34

    .line 76
    div-long v2, v2, v23

    long-to-int v5, v2

    if-eq v5, v8, :cond_12

    if-eqz v4, :cond_12

    move-object/from16 v2, p3

    move/from16 v3, p1

    move v4, v5

    move v14, v5

    move-wide/from16 v5, v34

    move-object/from16 v38, v7

    move-wide/from16 v7, v36

    .line 77
    invoke-interface/range {v2 .. v8}, Lcom/yanzhenjie/nohttp/download/DownloadListener;->onProgress(IIJJ)V

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    goto :goto_11

    :cond_12
    move-object/from16 v38, v7

    move v7, v5

    if-eqz v4, :cond_13

    move-object/from16 v2, p3

    move/from16 v3, p1

    move v4, v8

    move-wide/from16 v5, v34

    move v14, v7

    move-wide/from16 v7, v36

    .line 79
    invoke-interface/range {v2 .. v8}, Lcom/yanzhenjie/nohttp/download/DownloadListener;->onProgress(IIJJ)V

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    :goto_11
    move-wide/from16 v31, v36

    move/from16 v36, v14

    move-wide/from16 v14, v17

    goto :goto_12

    :cond_13
    if-eq v7, v8, :cond_14

    move-object/from16 v2, p3

    move/from16 v3, p1

    move v4, v7

    move-wide/from16 v5, v34

    move/from16 v36, v7

    move-wide/from16 v7, v31

    .line 81
    invoke-interface/range {v2 .. v8}, Lcom/yanzhenjie/nohttp/download/DownloadListener;->onProgress(IIJJ)V

    goto :goto_12

    :cond_14
    move/from16 v36, v7

    :goto_12
    move-wide v4, v14

    move/from16 v8, v36

    goto :goto_14

    :cond_15
    move-object/from16 v38, v7

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    move-object/from16 v2, p3

    move/from16 v3, p1

    move-wide/from16 v5, v34

    move/from16 v39, v8

    move-wide/from16 v7, v36

    .line 82
    invoke-interface/range {v2 .. v8}, Lcom/yanzhenjie/nohttp/download/DownloadListener;->onProgress(IIJJ)V

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide/from16 v25, v2

    move-wide/from16 v4, v17

    move-wide/from16 v31, v36

    goto :goto_13

    :cond_16
    move/from16 v39, v8

    const/4 v4, 0x0

    move-object/from16 v2, p3

    move/from16 v3, p1

    move-wide/from16 v5, v34

    move-wide/from16 v7, v31

    .line 84
    invoke-interface/range {v2 .. v8}, Lcom/yanzhenjie/nohttp/download/DownloadListener;->onProgress(IIJJ)V

    move-wide v4, v14

    :goto_13
    move/from16 v8, v39

    :goto_14
    move-object/from16 v15, v22

    move-object/from16 v14, v33

    move-wide/from16 v2, v34

    move-object/from16 v7, v38

    goto/16 :goto_f

    :cond_17
    :goto_15
    move-object/from16 v22, v15

    .line 85
    invoke-virtual/range {p2 .. p2}, Lcom/yanzhenjie/nohttp/BasicRequest;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_18

    move-object/from16 v3, v22

    .line 86
    invoke-virtual {v3, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 87
    invoke-static/range {v19 .. v19}, Lcom/yanzhenjie/nohttp/Logger;->d(Ljava/lang/Object;)V

    .line 88
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v10, v1}, Lcom/yanzhenjie/nohttp/download/DownloadListener;->onFinish(ILjava/lang/String;)V
    :try_end_19
    .catch Ljava/net/MalformedURLException; {:try_start_19 .. :try_end_19} :catch_1d
    .catch Ljava/net/UnknownHostException; {:try_start_19 .. :try_end_19} :catch_1c
    .catch Ljava/net/SocketTimeoutException; {:try_start_19 .. :try_end_19} :catch_1b
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    .line 89
    :cond_18
    invoke-static/range {v30 .. v30}, Lcom/yanzhenjie/nohttp/Logger;->i(Ljava/lang/Object;)V

    .line 90
    invoke-static {v9}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 91
    invoke-static/range {v29 .. v29}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_5
    move-exception v0

    move-object v1, v0

    goto/16 :goto_3e

    :catch_19
    move-exception v0

    move-object v1, v0

    goto/16 :goto_1b

    :catch_1a
    move-exception v0

    move-object v1, v0

    goto :goto_16

    :catch_1b
    move-exception v0

    move-object v1, v0

    goto/16 :goto_20

    :catch_1c
    move-exception v0

    move-object v1, v0

    goto/16 :goto_22

    :catch_1d
    move-exception v0

    move-object v1, v0

    goto/16 :goto_24

    :catch_1e
    move-exception v0

    move-object v1, v0

    move-object/from16 v9, v16

    :goto_16
    move-object/from16 v7, v20

    move-object/from16 v8, v27

    goto :goto_17

    :catch_1f
    move-exception v0

    move-object/from16 v28, v1

    move-object/from16 v29, v10

    move-object/from16 v30, v15

    move-object v1, v0

    move-object v8, v14

    move-object/from16 v9, v16

    move-object/from16 v7, v20

    :goto_17
    move-object/from16 v3, v28

    goto/16 :goto_1e

    :cond_19
    move-object/from16 v28, v1

    move-object/from16 v29, v10

    move-object/from16 v27, v14

    move-object/from16 v30, v15

    .line 92
    :try_start_1a
    new-instance v1, Lcom/yanzhenjie/nohttp/error/StorageSpaceNotEnoughError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1a
    .catch Ljava/net/MalformedURLException; {:try_start_1a .. :try_end_1a} :catch_28
    .catch Ljava/net/UnknownHostException; {:try_start_1a .. :try_end_1a} :catch_27
    .catch Ljava/net/SocketTimeoutException; {:try_start_1a .. :try_end_1a} :catch_26
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_22
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_24
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    move-object/from16 v7, v20

    :try_start_1b
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1b
    .catch Ljava/net/MalformedURLException; {:try_start_1b .. :try_end_1b} :catch_28
    .catch Ljava/net/UnknownHostException; {:try_start_1b .. :try_end_1b} :catch_27
    .catch Ljava/net/SocketTimeoutException; {:try_start_1b .. :try_end_1b} :catch_26
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_21
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_24
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    move-object/from16 v3, v28

    :try_start_1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1c
    .catch Ljava/net/MalformedURLException; {:try_start_1c .. :try_end_1c} :catch_28
    .catch Ljava/net/UnknownHostException; {:try_start_1c .. :try_end_1c} :catch_27
    .catch Ljava/net/SocketTimeoutException; {:try_start_1c .. :try_end_1c} :catch_26
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_20
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_24
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    move-object/from16 v8, v27

    :try_start_1d
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yanzhenjie/nohttp/error/StorageSpaceNotEnoughError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_20
    move-exception v0

    move-object/from16 v8, v27

    goto/16 :goto_1d

    :catch_21
    move-exception v0

    goto :goto_18

    :catch_22
    move-exception v0

    move-object/from16 v7, v20

    :goto_18
    move-object/from16 v8, v27

    move-object/from16 v3, v28

    goto/16 :goto_1d

    :catch_23
    move-exception v0

    move-object v3, v1

    goto :goto_1c

    :cond_1a
    move-object/from16 v33, v5

    move-object v3, v8

    move-object/from16 v29, v10

    move-object v8, v14

    move-object/from16 v30, v15

    move-object/from16 v7, v20

    .line 93
    new-instance v1, Lcom/yanzhenjie/nohttp/error/ServerError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Download failed, the server response code is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual/range {p2 .. p2}, Lcom/yanzhenjie/nohttp/BasicRequest;->url()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yanzhenjie/nohttp/error/ServerError;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-static/range {v33 .. v33}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yanzhenjie/nohttp/error/ServerError;->setErrorBody(Ljava/lang/String;)V

    .line 96
    throw v1
    :try_end_1d
    .catch Ljava/net/MalformedURLException; {:try_start_1d .. :try_end_1d} :catch_28
    .catch Ljava/net/UnknownHostException; {:try_start_1d .. :try_end_1d} :catch_27
    .catch Ljava/net/SocketTimeoutException; {:try_start_1d .. :try_end_1d} :catch_26
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_25
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_24
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    :catchall_6
    move-exception v0

    goto :goto_19

    :catch_24
    move-exception v0

    goto :goto_1a

    :catch_25
    move-exception v0

    goto :goto_1d

    :catch_26
    move-exception v0

    goto :goto_1f

    :catch_27
    move-exception v0

    goto :goto_21

    :catch_28
    move-exception v0

    goto :goto_23

    :catchall_7
    move-exception v0

    move-object/from16 v29, v10

    move-object/from16 v30, v15

    :goto_19
    move-object v1, v0

    goto/16 :goto_3f

    :catch_29
    move-exception v0

    move-object/from16 v29, v10

    move-object/from16 v30, v15

    :goto_1a
    move-object v1, v0

    move-object/from16 v9, v16

    :goto_1b
    move-object/from16 v16, v29

    goto/16 :goto_32

    :catch_2a
    move-exception v0

    move-object v3, v8

    :goto_1c
    move-object/from16 v29, v10

    move-object v8, v14

    move-object/from16 v30, v15

    move-object/from16 v7, v20

    :goto_1d
    move-object v1, v0

    move-object/from16 v9, v16

    :goto_1e
    move-object/from16 v16, v29

    goto/16 :goto_36

    :catch_2b
    move-exception v0

    move-object/from16 v29, v10

    move-object/from16 v30, v15

    :goto_1f
    move-object v1, v0

    move-object/from16 v9, v16

    :goto_20
    move-object/from16 v16, v29

    goto/16 :goto_39

    :catch_2c
    move-exception v0

    move-object/from16 v29, v10

    move-object/from16 v30, v15

    :goto_21
    move-object v1, v0

    move-object/from16 v9, v16

    :goto_22
    move-object/from16 v16, v29

    goto/16 :goto_3b

    :catch_2d
    move-exception v0

    move-object/from16 v29, v10

    move-object/from16 v30, v15

    :goto_23
    move-object v1, v0

    move-object/from16 v9, v16

    :goto_24
    move-object/from16 v16, v29

    goto/16 :goto_3d

    :cond_1b
    move-object v3, v8

    move-object v8, v14

    move-object/from16 v30, v15

    move-object/from16 v7, v20

    .line 97
    :try_start_1e
    throw v6
    :try_end_1e
    .catch Ljava/net/MalformedURLException; {:try_start_1e .. :try_end_1e} :catch_32
    .catch Ljava/net/UnknownHostException; {:try_start_1e .. :try_end_1e} :catch_31
    .catch Ljava/net/SocketTimeoutException; {:try_start_1e .. :try_end_1e} :catch_30
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_2e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    :catchall_8
    move-exception v0

    goto :goto_25

    :catch_2e
    move-exception v0

    goto :goto_26

    :catch_2f
    move-exception v0

    goto :goto_28

    :catch_30
    move-exception v0

    goto :goto_2a

    :catch_31
    move-exception v0

    goto :goto_2c

    :catch_32
    move-exception v0

    goto :goto_2e

    :catchall_9
    move-exception v0

    move-object/from16 v30, v15

    :goto_25
    move-object v1, v0

    move-object/from16 v29, v5

    goto/16 :goto_3f

    :catch_33
    move-exception v0

    move-object/from16 v30, v15

    :goto_26
    move-object v1, v0

    :goto_27
    move-object/from16 v9, v16

    move-object/from16 v16, v5

    goto :goto_32

    :catch_34
    move-exception v0

    move-object v3, v8

    move-object v8, v14

    move-object/from16 v30, v15

    move-object/from16 v7, v20

    :goto_28
    move-object v1, v0

    move-object/from16 v9, v16

    :goto_29
    move-object/from16 v16, v5

    goto/16 :goto_36

    :catch_35
    move-exception v0

    move-object/from16 v30, v15

    :goto_2a
    move-object v1, v0

    :goto_2b
    move-object/from16 v9, v16

    move-object/from16 v16, v5

    goto/16 :goto_39

    :catch_36
    move-exception v0

    move-object/from16 v30, v15

    :goto_2c
    move-object v1, v0

    :goto_2d
    move-object/from16 v9, v16

    move-object/from16 v16, v5

    goto/16 :goto_3b

    :catch_37
    move-exception v0

    move-object/from16 v30, v15

    :goto_2e
    move-object v1, v0

    :goto_2f
    move-object/from16 v9, v16

    move-object/from16 v16, v5

    goto/16 :goto_3d

    :catch_38
    move-exception v0

    move-object v3, v8

    move-object v8, v14

    move-object/from16 v30, v15

    move-object/from16 v7, v20

    goto :goto_34

    :catch_39
    move-exception v0

    move-object v3, v8

    goto :goto_33

    :catchall_a
    move-exception v0

    move-object/from16 v30, v15

    move-object v1, v0

    :goto_30
    move-object/from16 v29, v16

    goto/16 :goto_3f

    :catch_3a
    move-exception v0

    move-object/from16 v30, v15

    move-object v1, v0

    :goto_31
    move-object/from16 v9, v16

    .line 98
    :goto_32
    :try_start_1f
    invoke-static {}, Lcom/yanzhenjie/nohttp/tools/NetUtils;->isNetworkAvailable()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 99
    new-instance v1, Lcom/yanzhenjie/nohttp/error/NetworkError;

    const-string v2, "Network is not available, please check network and permission: INTERNET, ACCESS_WIFI_STATE, ACCESS_NETWORK_STATE."

    invoke-direct {v1, v2}, Lcom/yanzhenjie/nohttp/error/NetworkError;-><init>(Ljava/lang/String;)V

    .line 100
    :cond_1c
    throw v1

    :catch_3b
    move-exception v0

    :goto_33
    move-object v7, v13

    move-object v8, v14

    move-object/from16 v30, v15

    :goto_34
    move-object v1, v0

    :goto_35
    move-object/from16 v9, v16

    .line 101
    :goto_36
    invoke-static {v3}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->canWrite(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 102
    invoke-static {v3}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->getDirSize(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v10, 0x400

    cmp-long v2, v4, v10

    if-gez v2, :cond_1e

    new-instance v1, Lcom/yanzhenjie/nohttp/error/StorageSpaceNotEnoughError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yanzhenjie/nohttp/error/StorageSpaceNotEnoughError;-><init>(Ljava/lang/String;)V

    goto :goto_37

    .line 103
    :cond_1d
    new-instance v1, Lcom/yanzhenjie/nohttp/error/StorageReadWriteError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SD card isn\'t available, please check SD card and permission: WRITE_EXTERNAL_STORAGE.\nYou must pay attention to Android6.0 RunTime Permissions: https://github.com/yanzhenjie/AndPermission.\nFailed to create folder: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yanzhenjie/nohttp/error/StorageReadWriteError;-><init>(Ljava/lang/String;)V

    .line 104
    :cond_1e
    :goto_37
    throw v1

    :catch_3c
    move-exception v0

    move-object/from16 v30, v15

    move-object v1, v0

    :goto_38
    move-object/from16 v9, v16

    .line 105
    :goto_39
    new-instance v2, Lcom/yanzhenjie/nohttp/error/TimeoutError;

    invoke-virtual {v1}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/yanzhenjie/nohttp/error/TimeoutError;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_3d
    move-exception v0

    move-object/from16 v30, v15

    move-object v1, v0

    :goto_3a
    move-object/from16 v9, v16

    .line 106
    :goto_3b
    new-instance v2, Lcom/yanzhenjie/nohttp/error/UnKnownHostError;

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/yanzhenjie/nohttp/error/UnKnownHostError;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_3e
    move-exception v0

    move-object/from16 v30, v15

    move-object v1, v0

    :goto_3c
    move-object/from16 v9, v16

    .line 107
    :goto_3d
    new-instance v2, Lcom/yanzhenjie/nohttp/error/URLError;

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/yanzhenjie/nohttp/error/URLError;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    :catchall_b
    move-exception v0

    move-object v1, v0

    move-object/from16 v29, v16

    :goto_3e
    move-object/from16 v16, v9

    .line 108
    :goto_3f
    invoke-static/range {v30 .. v30}, Lcom/yanzhenjie/nohttp/Logger;->i(Ljava/lang/Object;)V

    .line 109
    invoke-static/range {v16 .. v16}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 110
    invoke-static/range {v29 .. v29}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method
