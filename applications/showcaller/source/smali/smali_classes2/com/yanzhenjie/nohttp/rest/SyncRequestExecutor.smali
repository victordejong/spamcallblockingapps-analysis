.class public final enum Lcom/yanzhenjie/nohttp/rest/SyncRequestExecutor;
.super Ljava/lang/Enum;
.source "SyncRequestExecutor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yanzhenjie/nohttp/rest/SyncRequestExecutor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yanzhenjie/nohttp/rest/SyncRequestExecutor;

.field public static final enum INSTANCE:Lcom/yanzhenjie/nohttp/rest/SyncRequestExecutor;


# instance fields
.field private mRequestHandler:Lcom/yanzhenjie/nohttp/rest/RequestHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/yanzhenjie/nohttp/rest/SyncRequestExecutor;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yanzhenjie/nohttp/rest/SyncRequestExecutor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yanzhenjie/nohttp/rest/SyncRequestExecutor;->INSTANCE:Lcom/yanzhenjie/nohttp/rest/SyncRequestExecutor;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/yanzhenjie/nohttp/rest/SyncRequestExecutor;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lcom/yanzhenjie/nohttp/rest/SyncRequestExecutor;->$VALUES:[Lcom/yanzhenjie/nohttp/rest/SyncRequestExecutor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    invoke-static {}, Lcom/yanzhenjie/nohttp/NoHttp;->getInitializeConfig()Lcom/yanzhenjie/nohttp/InitializationConfig;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/yanzhenjie/nohttp/rest/RequestHandler;

    .line 4
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/InitializationConfig;->getCacheStore()Lcom/yanzhenjie/nohttp/tools/CacheStore;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/InitializationConfig;->getNetworkExecutor()Lcom/yanzhenjie/nohttp/NetworkExecutor;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/InitializationConfig;->getInterceptor()Lcom/yanzhenjie/nohttp/rest/Interceptor;

    move-result-object p1

    invoke-direct {p2, v0, v1, p1}, Lcom/yanzhenjie/nohttp/rest/RequestHandler;-><init>(Lcom/yanzhenjie/nohttp/tools/CacheStore;Lcom/yanzhenjie/nohttp/NetworkExecutor;Lcom/yanzhenjie/nohttp/rest/Interceptor;)V

    iput-object p2, p0, Lcom/yanzhenjie/nohttp/rest/SyncRequestExecutor;->mRequestHandler:Lcom/yanzhenjie/nohttp/rest/RequestHandler;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yanzhenjie/nohttp/rest/SyncRequestExecutor;
    .locals 1

    .line 1
    const-class v0, Lcom/yanzhenjie/nohttp/rest/SyncRequestExecutor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yanzhenjie/nohttp/rest/SyncRequestExecutor;

    return-object p0
.end method

.method public static values()[Lcom/yanzhenjie/nohttp/rest/SyncRequestExecutor;
    .locals 1

    .line 1
    sget-object v0, Lcom/yanzhenjie/nohttp/rest/SyncRequestExecutor;->$VALUES:[Lcom/yanzhenjie/nohttp/rest/SyncRequestExecutor;

    invoke-virtual {v0}, [Lcom/yanzhenjie/nohttp/rest/SyncRequestExecutor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yanzhenjie/nohttp/rest/SyncRequestExecutor;

    return-object v0
.end method


# virtual methods
.method public execute(Lcom/yanzhenjie/nohttp/rest/Request;)Lcom/yanzhenjie/nohttp/rest/Response;
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
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/rest/SyncRequestExecutor;->mRequestHandler:Lcom/yanzhenjie/nohttp/rest/RequestHandler;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/nohttp/rest/RequestHandler;->handle(Lcom/yanzhenjie/nohttp/rest/Request;)Lcom/yanzhenjie/nohttp/rest/Response;

    move-result-object p1

    return-object p1
.end method
