.class public Lcom/verizon/ads/utils/HttpUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;,
        Lcom/verizon/ads/utils/HttpUtils$ResponseStreamer;,
        Lcom/verizon/ads/utils/HttpUtils$Response;,
        Lcom/verizon/ads/utils/HttpUtils$HttpRequestListener;,
        Lcom/verizon/ads/utils/HttpUtils$HttpInterceptor;
    }
.end annotation


# static fields
.field private static final a:Lcom/verizon/ads/Logger;

.field private static b:Lcom/verizon/ads/utils/HttpUtils$HttpInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/verizon/ads/utils/HttpUtils;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/utils/HttpUtils;->a:Lcom/verizon/ads/Logger;

    const/4 v0, 0x0

    .line 45
    sput-object v0, Lcom/verizon/ads/utils/HttpUtils;->b:Lcom/verizon/ads/utils/HttpUtils$HttpInterceptor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/verizon/ads/Logger;
    .locals 1

    .line 40
    sget-object v0, Lcom/verizon/ads/utils/HttpUtils;->a:Lcom/verizon/ads/Logger;

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Integer;Lcom/verizon/ads/utils/HttpUtils$ResponseStreamer;)Lcom/verizon/ads/utils/HttpUtils$Response;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Lcom/verizon/ads/utils/HttpUtils$ResponseStreamer;",
            ")",
            "Lcom/verizon/ads/utils/HttpUtils$Response;"
        }
    .end annotation

    move-object v8, p0

    move-object/from16 v9, p3

    .line 354
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    if-nez p4, :cond_0

    const/16 v0, 0x3a98

    const/16 v12, 0x3a98

    goto :goto_0

    .line 355
    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v12, v0

    .line 362
    :goto_0
    new-instance v13, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;

    move-object v0, v13

    move-wide v1, v10

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move v6, v12

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;-><init>(JLjava/lang/String;Ljava/io/InputStream;Ljava/lang/String;ILcom/verizon/ads/utils/HttpUtils$ResponseStreamer;)V

    if-eqz v9, :cond_1

    .line 366
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v9}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, v13, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->headers:Ljava/util/Map;

    :cond_1
    const/4 v0, 0x3

    .line 369
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 370
    sget-object v1, Lcom/verizon/ads/utils/HttpUtils;->a:Lcom/verizon/ads/Logger;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v13}, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "Sending Http request.\n\t%s"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 373
    :cond_2
    sget-object v1, Lcom/verizon/ads/utils/HttpUtils;->b:Lcom/verizon/ads/utils/HttpUtils$HttpInterceptor;

    if-eqz v1, :cond_3

    .line 374
    invoke-interface {v1, p0, v13}, Lcom/verizon/ads/utils/HttpUtils$HttpInterceptor;->onRequest(Ljava/lang/String;Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;)V

    .line 377
    :cond_3
    invoke-static {v13}, Lcom/verizon/ads/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    int-to-long v4, v12

    .line 379
    invoke-virtual {v13, v4, v5}, Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;->a(J)Lcom/verizon/ads/utils/HttpUtils$Response;

    move-result-object v1

    .line 381
    sget-object v4, Lcom/verizon/ads/utils/HttpUtils;->b:Lcom/verizon/ads/utils/HttpUtils$HttpInterceptor;

    if-eqz v4, :cond_4

    .line 382
    invoke-interface {v4, p0, v1}, Lcom/verizon/ads/utils/HttpUtils$HttpInterceptor;->onResponse(Ljava/lang/String;Lcom/verizon/ads/utils/HttpUtils$Response;)V

    .line 385
    :cond_4
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 386
    sget-object v0, Lcom/verizon/ads/utils/HttpUtils;->a:Lcom/verizon/ads/Logger;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v1}, Lcom/verizon/ads/utils/HttpUtils$Response;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    const-string v2, "Http response.\n\trequestId: %d\n\t%s"

    invoke-static {v4, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_5
    return-object v1
.end method

.method private static synthetic a(Ljava/lang/String;Lcom/verizon/ads/utils/HttpUtils$HttpRequestListener;)V
    .locals 0

    .line 488
    invoke-static {p0}, Lcom/verizon/ads/utils/HttpUtils;->getBitmapFromGetRequest(Ljava/lang/String;)Lcom/verizon/ads/utils/HttpUtils$Response;

    move-result-object p0

    .line 490
    invoke-interface {p1, p0}, Lcom/verizon/ads/utils/HttpUtils$HttpRequestListener;->onResponse(Lcom/verizon/ads/utils/HttpUtils$Response;)V

    return-void
.end method

.method public static getBitmapFromGetRequest(Ljava/lang/String;)Lcom/verizon/ads/utils/HttpUtils$Response;
    .locals 6

    .line 457
    new-instance v5, Lcom/verizon/ads/utils/IOUtils$BitmapStreamer;

    invoke-direct {v5}, Lcom/verizon/ads/utils/IOUtils$BitmapStreamer;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/verizon/ads/utils/HttpUtils;->a(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Integer;Lcom/verizon/ads/utils/HttpUtils$ResponseStreamer;)Lcom/verizon/ads/utils/HttpUtils$Response;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmapFromGetRequestAsync(Ljava/lang/String;Lcom/verizon/ads/utils/HttpUtils$HttpRequestListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 486
    :cond_0
    new-instance v0, Lcom/verizon/ads/utils/-$$Lambda$HttpUtils$-kAqPm-sBqlo-mqoTXkCW6K-vQQ;

    invoke-direct {v0, p0, p1}, Lcom/verizon/ads/utils/-$$Lambda$HttpUtils$-kAqPm-sBqlo-mqoTXkCW6K-vQQ;-><init>(Ljava/lang/String;Lcom/verizon/ads/utils/HttpUtils$HttpRequestListener;)V

    invoke-static {v0}, Lcom/verizon/ads/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getContentFromGetRequest(Ljava/lang/String;)Lcom/verizon/ads/utils/HttpUtils$Response;
    .locals 6

    .line 396
    new-instance v5, Lcom/verizon/ads/utils/IOUtils$StringStreamer;

    invoke-direct {v5}, Lcom/verizon/ads/utils/IOUtils$StringStreamer;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/verizon/ads/utils/HttpUtils;->a(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Integer;Lcom/verizon/ads/utils/HttpUtils$ResponseStreamer;)Lcom/verizon/ads/utils/HttpUtils$Response;

    move-result-object p0

    return-object p0
.end method

.method public static getContentFromGetRequest(Ljava/lang/String;I)Lcom/verizon/ads/utils/HttpUtils$Response;
    .locals 6

    .line 402
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/verizon/ads/utils/IOUtils$StringStreamer;

    invoke-direct {v5}, Lcom/verizon/ads/utils/IOUtils$StringStreamer;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/verizon/ads/utils/HttpUtils;->a(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Integer;Lcom/verizon/ads/utils/HttpUtils$ResponseStreamer;)Lcom/verizon/ads/utils/HttpUtils$Response;

    move-result-object p0

    return-object p0
.end method

.method public static getContentFromPostRequest(Ljava/lang/String;I)Lcom/verizon/ads/utils/HttpUtils$Response;
    .locals 6

    .line 463
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/verizon/ads/utils/IOUtils$StringStreamer;

    invoke-direct {v5}, Lcom/verizon/ads/utils/IOUtils$StringStreamer;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/verizon/ads/utils/HttpUtils;->a(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Integer;Lcom/verizon/ads/utils/HttpUtils$ResponseStreamer;)Lcom/verizon/ads/utils/HttpUtils$Response;

    move-result-object p0

    return-object p0
.end method

.method public static getContentFromPostRequest(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Lcom/verizon/ads/utils/HttpUtils$Response;
    .locals 7

    .line 408
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 409
    :try_start_1
    new-instance v5, Lcom/verizon/ads/utils/IOUtils$StringStreamer;

    invoke-direct {v5}, Lcom/verizon/ads/utils/IOUtils$StringStreamer;-><init>()V

    move-object v0, p0

    move-object v1, v6

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/verizon/ads/utils/HttpUtils;->a(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Integer;Lcom/verizon/ads/utils/HttpUtils$ResponseStreamer;)Lcom/verizon/ads/utils/HttpUtils$Response;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 408
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    .line 410
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 411
    :catch_0
    sget-object p1, Lcom/verizon/ads/utils/HttpUtils;->a:Lcom/verizon/ads/Logger;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "Error occurred posting data to url = "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 414
    new-instance p0, Lcom/verizon/ads/utils/HttpUtils$Response;

    const/16 p1, 0x190

    invoke-direct {p0, p1}, Lcom/verizon/ads/utils/HttpUtils$Response;-><init>(I)V

    return-object p0
.end method

.method public static getContentFromPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/verizon/ads/utils/HttpUtils$Response;
    .locals 7

    .line 422
    :try_start_0
    new-instance v6, Ljava/io/ByteArrayInputStream;

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v6, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 423
    :try_start_1
    new-instance v5, Lcom/verizon/ads/utils/IOUtils$StringStreamer;

    invoke-direct {v5}, Lcom/verizon/ads/utils/IOUtils$StringStreamer;-><init>()V

    move-object v0, p0

    move-object v1, v6

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/verizon/ads/utils/HttpUtils;->a(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Integer;Lcom/verizon/ads/utils/HttpUtils$ResponseStreamer;)Lcom/verizon/ads/utils/HttpUtils$Response;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 424
    :try_start_2
    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 422
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    .line 424
    :try_start_4
    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 425
    :catch_0
    sget-object p1, Lcom/verizon/ads/utils/HttpUtils;->a:Lcom/verizon/ads/Logger;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "Error occurred posting data to url = "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 428
    new-instance p0, Lcom/verizon/ads/utils/HttpUtils$Response;

    const/16 p1, 0x190

    invoke-direct {p0, p1}, Lcom/verizon/ads/utils/HttpUtils$Response;-><init>(I)V

    return-object p0
.end method

.method public static getContentFromPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/verizon/ads/utils/HttpUtils$Response;
    .locals 1

    const/4 v0, 0x0

    .line 436
    invoke-static {p0, p1, p2, v0, p3}, Lcom/verizon/ads/utils/HttpUtils;->getContentFromPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Lcom/verizon/ads/utils/HttpUtils$Response;

    move-result-object p0

    return-object p0
.end method

.method public static getContentFromPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Lcom/verizon/ads/utils/HttpUtils$Response;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/verizon/ads/utils/HttpUtils$Response;"
        }
    .end annotation

    .line 444
    :try_start_0
    new-instance v6, Ljava/io/ByteArrayInputStream;

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v6, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :try_start_1
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/verizon/ads/utils/IOUtils$StringStreamer;

    invoke-direct {v5}, Lcom/verizon/ads/utils/IOUtils$StringStreamer;-><init>()V

    move-object v0, p0

    move-object v1, v6

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/verizon/ads/utils/HttpUtils;->a(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Integer;Lcom/verizon/ads/utils/HttpUtils$ResponseStreamer;)Lcom/verizon/ads/utils/HttpUtils$Response;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    :try_start_2
    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 444
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    .line 446
    :try_start_4
    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p3

    :try_start_5
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 447
    :catch_0
    sget-object p1, Lcom/verizon/ads/utils/HttpUtils;->a:Lcom/verizon/ads/Logger;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "Error occurred posting data to url = "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 450
    new-instance p0, Lcom/verizon/ads/utils/HttpUtils$Response;

    const/16 p1, 0x190

    invoke-direct {p0, p1}, Lcom/verizon/ads/utils/HttpUtils$Response;-><init>(I)V

    return-object p0
.end method

.method public static getFileFromGetRequest(Ljava/lang/String;Ljava/io/File;I)Lcom/verizon/ads/utils/HttpUtils$Response;
    .locals 6

    .line 469
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/verizon/ads/utils/IOUtils$FileStreamer;

    invoke-direct {v5, p1}, Lcom/verizon/ads/utils/IOUtils$FileStreamer;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/verizon/ads/utils/HttpUtils;->a(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Integer;Lcom/verizon/ads/utils/HttpUtils$ResponseStreamer;)Lcom/verizon/ads/utils/HttpUtils$Response;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$-kAqPm-sBqlo-mqoTXkCW6K-vQQ(Ljava/lang/String;Lcom/verizon/ads/utils/HttpUtils$HttpRequestListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/verizon/ads/utils/HttpUtils;->a(Ljava/lang/String;Lcom/verizon/ads/utils/HttpUtils$HttpRequestListener;)V

    return-void
.end method

.method public static setInterceptor(Lcom/verizon/ads/utils/HttpUtils$HttpInterceptor;)V
    .locals 0

    .line 476
    sput-object p0, Lcom/verizon/ads/utils/HttpUtils;->b:Lcom/verizon/ads/utils/HttpUtils$HttpInterceptor;

    return-void
.end method
