.class public Lcom/yanzhenjie/nohttp/NoHttp;
.super Ljava/lang/Object;
.source "NoHttp.java"


# static fields
.field private static sDownloadQueueInstance:Lcom/yanzhenjie/nohttp/download/DownloadQueue;

.field private static sInitializeConfig:Lcom/yanzhenjie/nohttp/InitializationConfig;

.field private static sRequestQueueInstance:Lcom/yanzhenjie/nohttp/rest/RequestQueue;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createByteArrayRequest(Ljava/lang/String;)Lcom/yanzhenjie/nohttp/rest/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/yanzhenjie/nohttp/rest/Request<",
            "[B>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/yanzhenjie/nohttp/rest/ByteArrayRequest;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/nohttp/rest/ByteArrayRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createByteArrayRequest(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;)Lcom/yanzhenjie/nohttp/rest/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yanzhenjie/nohttp/RequestMethod;",
            ")",
            "Lcom/yanzhenjie/nohttp/rest/Request<",
            "[B>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/yanzhenjie/nohttp/rest/ByteArrayRequest;

    invoke-direct {v0, p0, p1}, Lcom/yanzhenjie/nohttp/rest/ByteArrayRequest;-><init>(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;)V

    return-object v0
.end method

.method public static createDownloadRequest(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/yanzhenjie/nohttp/download/DownloadRequest;
    .locals 8

    .line 5
    new-instance v7, Lcom/yanzhenjie/nohttp/download/DownloadRequest;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/yanzhenjie/nohttp/download/DownloadRequest;-><init>(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v7
.end method

.method public static createDownloadRequest(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;Ljava/lang/String;Z)Lcom/yanzhenjie/nohttp/download/DownloadRequest;
    .locals 7

    .line 2
    new-instance v6, Lcom/yanzhenjie/nohttp/download/DownloadRequest;

    const/4 v4, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/yanzhenjie/nohttp/download/DownloadRequest;-><init>(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;Ljava/lang/String;ZZ)V

    return-object v6
.end method

.method public static createDownloadRequest(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;Ljava/lang/String;ZZ)Lcom/yanzhenjie/nohttp/download/DownloadRequest;
    .locals 7

    .line 3
    new-instance v6, Lcom/yanzhenjie/nohttp/download/DownloadRequest;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yanzhenjie/nohttp/download/DownloadRequest;-><init>(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;Ljava/lang/String;ZZ)V

    return-object v6
.end method

.method public static createDownloadRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/yanzhenjie/nohttp/download/DownloadRequest;
    .locals 6

    .line 4
    sget-object v1, Lcom/yanzhenjie/nohttp/RequestMethod;->GET:Lcom/yanzhenjie/nohttp/RequestMethod;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/yanzhenjie/nohttp/NoHttp;->createDownloadRequest(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/yanzhenjie/nohttp/download/DownloadRequest;

    move-result-object p0

    return-object p0
.end method

.method public static createDownloadRequest(Ljava/lang/String;Ljava/lang/String;Z)Lcom/yanzhenjie/nohttp/download/DownloadRequest;
    .locals 1

    .line 1
    sget-object v0, Lcom/yanzhenjie/nohttp/RequestMethod;->GET:Lcom/yanzhenjie/nohttp/RequestMethod;

    invoke-static {p0, v0, p1, p2}, Lcom/yanzhenjie/nohttp/NoHttp;->createDownloadRequest(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;Ljava/lang/String;Z)Lcom/yanzhenjie/nohttp/download/DownloadRequest;

    move-result-object p0

    return-object p0
.end method

.method public static createImageRequest(Ljava/lang/String;)Lcom/yanzhenjie/nohttp/rest/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/yanzhenjie/nohttp/rest/Request<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/yanzhenjie/nohttp/RequestMethod;->GET:Lcom/yanzhenjie/nohttp/RequestMethod;

    invoke-static {p0, v0}, Lcom/yanzhenjie/nohttp/NoHttp;->createImageRequest(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;)Lcom/yanzhenjie/nohttp/rest/Request;

    move-result-object p0

    return-object p0
.end method

.method public static createImageRequest(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;)Lcom/yanzhenjie/nohttp/rest/Request;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yanzhenjie/nohttp/RequestMethod;",
            ")",
            "Lcom/yanzhenjie/nohttp/rest/Request<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 2
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const/16 v2, 0x3e8

    const/16 v3, 0x3e8

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/yanzhenjie/nohttp/NoHttp;->createImageRequest(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;IILandroid/graphics/Bitmap$Config;Landroid/widget/ImageView$ScaleType;)Lcom/yanzhenjie/nohttp/rest/Request;

    move-result-object p0

    return-object p0
.end method

.method public static createImageRequest(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;IILandroid/graphics/Bitmap$Config;Landroid/widget/ImageView$ScaleType;)Lcom/yanzhenjie/nohttp/rest/Request;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yanzhenjie/nohttp/RequestMethod;",
            "II",
            "Landroid/graphics/Bitmap$Config;",
            "Landroid/widget/ImageView$ScaleType;",
            ")",
            "Lcom/yanzhenjie/nohttp/rest/Request<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v7, Lcom/yanzhenjie/nohttp/rest/ImageRequest;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/yanzhenjie/nohttp/rest/ImageRequest;-><init>(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;IILandroid/graphics/Bitmap$Config;Landroid/widget/ImageView$ScaleType;)V

    return-object v7
.end method

.method public static createJsonArrayRequest(Ljava/lang/String;)Lcom/yanzhenjie/nohttp/rest/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/yanzhenjie/nohttp/rest/Request<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/yanzhenjie/nohttp/rest/JsonArrayRequest;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/nohttp/rest/JsonArrayRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createJsonArrayRequest(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;)Lcom/yanzhenjie/nohttp/rest/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yanzhenjie/nohttp/RequestMethod;",
            ")",
            "Lcom/yanzhenjie/nohttp/rest/Request<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/yanzhenjie/nohttp/rest/JsonArrayRequest;

    invoke-direct {v0, p0, p1}, Lcom/yanzhenjie/nohttp/rest/JsonArrayRequest;-><init>(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;)V

    return-object v0
.end method

.method public static createJsonObjectRequest(Ljava/lang/String;)Lcom/yanzhenjie/nohttp/rest/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/yanzhenjie/nohttp/rest/Request<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/yanzhenjie/nohttp/rest/JsonObjectRequest;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/nohttp/rest/JsonObjectRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createJsonObjectRequest(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;)Lcom/yanzhenjie/nohttp/rest/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yanzhenjie/nohttp/RequestMethod;",
            ")",
            "Lcom/yanzhenjie/nohttp/rest/Request<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/yanzhenjie/nohttp/rest/JsonObjectRequest;

    invoke-direct {v0, p0, p1}, Lcom/yanzhenjie/nohttp/rest/JsonObjectRequest;-><init>(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;)V

    return-object v0
.end method

.method public static createStringRequest(Ljava/lang/String;)Lcom/yanzhenjie/nohttp/rest/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/yanzhenjie/nohttp/rest/Request<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/yanzhenjie/nohttp/rest/StringRequest;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/nohttp/rest/StringRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createStringRequest(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;)Lcom/yanzhenjie/nohttp/rest/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yanzhenjie/nohttp/RequestMethod;",
            ")",
            "Lcom/yanzhenjie/nohttp/rest/Request<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/yanzhenjie/nohttp/rest/StringRequest;

    invoke-direct {v0, p0, p1}, Lcom/yanzhenjie/nohttp/rest/StringRequest;-><init>(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;)V

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-static {}, Lcom/yanzhenjie/nohttp/NoHttp;->testInitialize()V

    .line 2
    sget-object v0, Lcom/yanzhenjie/nohttp/NoHttp;->sInitializeConfig:Lcom/yanzhenjie/nohttp/InitializationConfig;

    invoke-virtual {v0}, Lcom/yanzhenjie/nohttp/InitializationConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getDownloadQueueInstance()Lcom/yanzhenjie/nohttp/download/DownloadQueue;
    .locals 2

    .line 1
    sget-object v0, Lcom/yanzhenjie/nohttp/NoHttp;->sDownloadQueueInstance:Lcom/yanzhenjie/nohttp/download/DownloadQueue;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/yanzhenjie/nohttp/NoHttp;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/yanzhenjie/nohttp/NoHttp;->sDownloadQueueInstance:Lcom/yanzhenjie/nohttp/download/DownloadQueue;

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Lcom/yanzhenjie/nohttp/NoHttp;->newDownloadQueue()Lcom/yanzhenjie/nohttp/download/DownloadQueue;

    move-result-object v1

    sput-object v1, Lcom/yanzhenjie/nohttp/NoHttp;->sDownloadQueueInstance:Lcom/yanzhenjie/nohttp/download/DownloadQueue;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/yanzhenjie/nohttp/NoHttp;->sDownloadQueueInstance:Lcom/yanzhenjie/nohttp/download/DownloadQueue;

    return-object v0
.end method

.method public static getInitializeConfig()Lcom/yanzhenjie/nohttp/InitializationConfig;
    .locals 1

    .line 1
    invoke-static {}, Lcom/yanzhenjie/nohttp/NoHttp;->testInitialize()V

    .line 2
    sget-object v0, Lcom/yanzhenjie/nohttp/NoHttp;->sInitializeConfig:Lcom/yanzhenjie/nohttp/InitializationConfig;

    return-object v0
.end method

.method public static getRequestQueueInstance()Lcom/yanzhenjie/nohttp/rest/RequestQueue;
    .locals 2

    .line 1
    sget-object v0, Lcom/yanzhenjie/nohttp/NoHttp;->sRequestQueueInstance:Lcom/yanzhenjie/nohttp/rest/RequestQueue;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/yanzhenjie/nohttp/NoHttp;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/yanzhenjie/nohttp/NoHttp;->sRequestQueueInstance:Lcom/yanzhenjie/nohttp/rest/RequestQueue;

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Lcom/yanzhenjie/nohttp/NoHttp;->newRequestQueue()Lcom/yanzhenjie/nohttp/rest/RequestQueue;

    move-result-object v1

    sput-object v1, Lcom/yanzhenjie/nohttp/NoHttp;->sRequestQueueInstance:Lcom/yanzhenjie/nohttp/rest/RequestQueue;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/yanzhenjie/nohttp/NoHttp;->sRequestQueueInstance:Lcom/yanzhenjie/nohttp/rest/RequestQueue;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/yanzhenjie/nohttp/InitializationConfig;->newBuilder(Landroid/content/Context;)Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/InitializationConfig$Builder;->build()Lcom/yanzhenjie/nohttp/InitializationConfig;

    move-result-object p0

    invoke-static {p0}, Lcom/yanzhenjie/nohttp/NoHttp;->initialize(Lcom/yanzhenjie/nohttp/InitializationConfig;)V

    return-void
.end method

.method public static initialize(Lcom/yanzhenjie/nohttp/InitializationConfig;)V
    .locals 0

    .line 2
    sput-object p0, Lcom/yanzhenjie/nohttp/NoHttp;->sInitializeConfig:Lcom/yanzhenjie/nohttp/InitializationConfig;

    return-void
.end method

.method public static newDownloadQueue()Lcom/yanzhenjie/nohttp/download/DownloadQueue;
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Lcom/yanzhenjie/nohttp/NoHttp;->newDownloadQueue(I)Lcom/yanzhenjie/nohttp/download/DownloadQueue;

    move-result-object v0

    return-object v0
.end method

.method public static newDownloadQueue(I)Lcom/yanzhenjie/nohttp/download/DownloadQueue;
    .locals 1

    .line 2
    new-instance v0, Lcom/yanzhenjie/nohttp/download/DownloadQueue;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/nohttp/download/DownloadQueue;-><init>(I)V

    .line 3
    invoke-virtual {v0}, Lcom/yanzhenjie/nohttp/download/DownloadQueue;->start()V

    return-object v0
.end method

.method public static newRequestQueue()Lcom/yanzhenjie/nohttp/rest/RequestQueue;
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Lcom/yanzhenjie/nohttp/NoHttp;->newRequestQueue(I)Lcom/yanzhenjie/nohttp/rest/RequestQueue;

    move-result-object v0

    return-object v0
.end method

.method public static newRequestQueue(I)Lcom/yanzhenjie/nohttp/rest/RequestQueue;
    .locals 1

    .line 2
    new-instance v0, Lcom/yanzhenjie/nohttp/rest/RequestQueue;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/nohttp/rest/RequestQueue;-><init>(I)V

    .line 3
    invoke-virtual {v0}, Lcom/yanzhenjie/nohttp/rest/RequestQueue;->start()V

    return-object v0
.end method

.method public static startRequestSync(Lcom/yanzhenjie/nohttp/rest/Request;)Lcom/yanzhenjie/nohttp/rest/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/yanzhenjie/nohttp/rest/Request<",
            "TT;>;)",
            "Lcom/yanzhenjie/nohttp/rest/Response<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/yanzhenjie/nohttp/rest/SyncRequestExecutor;->INSTANCE:Lcom/yanzhenjie/nohttp/rest/SyncRequestExecutor;

    invoke-virtual {v0, p0}, Lcom/yanzhenjie/nohttp/rest/SyncRequestExecutor;->execute(Lcom/yanzhenjie/nohttp/rest/Request;)Lcom/yanzhenjie/nohttp/rest/Response;

    move-result-object p0

    return-object p0
.end method

.method private static testInitialize()V
    .locals 2

    .line 1
    sget-object v0, Lcom/yanzhenjie/nohttp/NoHttp;->sInitializeConfig:Lcom/yanzhenjie/nohttp/InitializationConfig;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    const-string v1, "Please invoke NoHttp.initialize(Application) on Application#onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v0
.end method
