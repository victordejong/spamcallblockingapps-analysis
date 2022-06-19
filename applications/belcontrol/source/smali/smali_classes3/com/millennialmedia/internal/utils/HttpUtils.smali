.class public Lcom/millennialmedia/internal/utils/HttpUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;,
        Lcom/millennialmedia/internal/utils/HttpUtils$ResponseStreamer;,
        Lcom/millennialmedia/internal/utils/HttpUtils$Response;,
        Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestListener;,
        Lcom/millennialmedia/internal/utils/HttpUtils$HttpInterceptor;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT:I = 0x3a98

.field private static final TAG:Ljava/lang/String; = "HttpUtils"

.field private static httpInterceptor:Lcom/millennialmedia/internal/utils/HttpUtils$HttpInterceptor;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/utils/HttpUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getBitmapFromGetRequest(Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    .locals 2

    new-instance v0, Lcom/millennialmedia/internal/utils/IOUtils$BitmapStreamer;

    invoke-direct {v0}, Lcom/millennialmedia/internal/utils/IOUtils$BitmapStreamer;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v1, v1, v1, v0}, Lcom/millennialmedia/internal/utils/HttpUtils;->sendHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/millennialmedia/internal/utils/HttpUtils$ResponseStreamer;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmapFromGetRequestAsync(Ljava/lang/String;Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/millennialmedia/internal/utils/HttpUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/utils/HttpUtils$1;-><init>(Ljava/lang/String;Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestListener;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getContentFromGetRequest(Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    .locals 2

    new-instance v0, Lcom/millennialmedia/internal/utils/IOUtils$StringStreamer;

    invoke-direct {v0}, Lcom/millennialmedia/internal/utils/IOUtils$StringStreamer;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v1, v1, v1, v0}, Lcom/millennialmedia/internal/utils/HttpUtils;->sendHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/millennialmedia/internal/utils/HttpUtils$ResponseStreamer;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object p0

    return-object p0
.end method

.method public static getContentFromGetRequest(Ljava/lang/String;I)Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lcom/millennialmedia/internal/utils/IOUtils$StringStreamer;

    invoke-direct {v0}, Lcom/millennialmedia/internal/utils/IOUtils$StringStreamer;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v1, v1, p1, v0}, Lcom/millennialmedia/internal/utils/HttpUtils;->sendHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/millennialmedia/internal/utils/HttpUtils$ResponseStreamer;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object p0

    return-object p0
.end method

.method public static getContentFromPostRequest(Ljava/lang/String;I)Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lcom/millennialmedia/internal/utils/IOUtils$StringStreamer;

    invoke-direct {v0}, Lcom/millennialmedia/internal/utils/IOUtils$StringStreamer;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v1, v1, p1, v0}, Lcom/millennialmedia/internal/utils/HttpUtils;->sendHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/millennialmedia/internal/utils/HttpUtils$ResponseStreamer;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object p0

    return-object p0
.end method

.method public static getContentFromPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    .locals 2

    new-instance v0, Lcom/millennialmedia/internal/utils/IOUtils$StringStreamer;

    invoke-direct {v0}, Lcom/millennialmedia/internal/utils/IOUtils$StringStreamer;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lcom/millennialmedia/internal/utils/HttpUtils;->sendHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/millennialmedia/internal/utils/HttpUtils$ResponseStreamer;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object p0

    return-object p0
.end method

.method public static getContentFromPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    .locals 1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-instance v0, Lcom/millennialmedia/internal/utils/IOUtils$StringStreamer;

    invoke-direct {v0}, Lcom/millennialmedia/internal/utils/IOUtils$StringStreamer;-><init>()V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/millennialmedia/internal/utils/HttpUtils;->sendHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/millennialmedia/internal/utils/HttpUtils$ResponseStreamer;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object p0

    return-object p0
.end method

.method public static sendHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/millennialmedia/internal/utils/HttpUtils$ResponseStreamer;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    .locals 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    if-nez p3, :cond_0

    const/16 p3, 0x3a98

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    :goto_0
    new-instance v10, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;

    move-object v0, v10

    move-wide v1, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/millennialmedia/internal/utils/HttpUtils$ResponseStreamer;)V

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    const/4 p2, 0x0

    const/4 p4, 0x1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/millennialmedia/internal/utils/HttpUtils;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-array v1, p4, [Ljava/lang/Object;

    invoke-virtual {v10}, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p2

    const-string v2, "Sending Http request.\n\t%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object p1, Lcom/millennialmedia/internal/utils/HttpUtils;->httpInterceptor:Lcom/millennialmedia/internal/utils/HttpUtils$HttpInterceptor;

    if-eqz p1, :cond_2

    invoke-interface {p1, p0, v10}, Lcom/millennialmedia/internal/utils/HttpUtils$HttpInterceptor;->onRequest(Ljava/lang/String;Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;)V

    :cond_2
    invoke-static {v10}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    int-to-long v0, p3

    invoke-virtual {v10, v0, v1}, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->waitForResponse(J)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object p1

    sget-object p3, Lcom/millennialmedia/internal/utils/HttpUtils;->httpInterceptor:Lcom/millennialmedia/internal/utils/HttpUtils$HttpInterceptor;

    if-eqz p3, :cond_3

    invoke-interface {p3, p0, p1}, Lcom/millennialmedia/internal/utils/HttpUtils$HttpInterceptor;->onResponse(Ljava/lang/String;Lcom/millennialmedia/internal/utils/HttpUtils$Response;)V

    :cond_3
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/millennialmedia/internal/utils/HttpUtils;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, p2

    invoke-virtual {p1}, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p4

    const-string p2, "Http response.\n\trequestId: %d\n\t%s"

    invoke-static {p3, p2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object p1
.end method

.method public static setInterceptor(Lcom/millennialmedia/internal/utils/HttpUtils$HttpInterceptor;)V
    .locals 0

    sput-object p0, Lcom/millennialmedia/internal/utils/HttpUtils;->httpInterceptor:Lcom/millennialmedia/internal/utils/HttpUtils$HttpInterceptor;

    return-void
.end method
