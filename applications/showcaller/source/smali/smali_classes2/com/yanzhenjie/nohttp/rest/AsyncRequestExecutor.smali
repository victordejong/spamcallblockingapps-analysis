.class public final enum Lcom/yanzhenjie/nohttp/rest/AsyncRequestExecutor;
.super Ljava/lang/Enum;
.source "AsyncRequestExecutor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yanzhenjie/nohttp/rest/AsyncRequestExecutor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yanzhenjie/nohttp/rest/AsyncRequestExecutor;

.field private static final EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final enum INSTANCE:Lcom/yanzhenjie/nohttp/rest/AsyncRequestExecutor;

.field private static final THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/yanzhenjie/nohttp/rest/AsyncRequestExecutor;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yanzhenjie/nohttp/rest/AsyncRequestExecutor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yanzhenjie/nohttp/rest/AsyncRequestExecutor;->INSTANCE:Lcom/yanzhenjie/nohttp/rest/AsyncRequestExecutor;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/yanzhenjie/nohttp/rest/AsyncRequestExecutor;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lcom/yanzhenjie/nohttp/rest/AsyncRequestExecutor;->$VALUES:[Lcom/yanzhenjie/nohttp/rest/AsyncRequestExecutor;

    .line 3
    new-instance v0, Lcom/yanzhenjie/nohttp/rest/AsyncRequestExecutor$1;

    invoke-direct {v0}, Lcom/yanzhenjie/nohttp/rest/AsyncRequestExecutor$1;-><init>()V

    sput-object v0, Lcom/yanzhenjie/nohttp/rest/AsyncRequestExecutor;->THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    .line 4
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/yanzhenjie/nohttp/rest/AsyncRequestExecutor;->EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yanzhenjie/nohttp/rest/AsyncRequestExecutor;
    .locals 1

    .line 1
    const-class v0, Lcom/yanzhenjie/nohttp/rest/AsyncRequestExecutor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yanzhenjie/nohttp/rest/AsyncRequestExecutor;

    return-object p0
.end method

.method public static values()[Lcom/yanzhenjie/nohttp/rest/AsyncRequestExecutor;
    .locals 1

    .line 1
    sget-object v0, Lcom/yanzhenjie/nohttp/rest/AsyncRequestExecutor;->$VALUES:[Lcom/yanzhenjie/nohttp/rest/AsyncRequestExecutor;

    invoke-virtual {v0}, [Lcom/yanzhenjie/nohttp/rest/AsyncRequestExecutor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yanzhenjie/nohttp/rest/AsyncRequestExecutor;

    return-object v0
.end method


# virtual methods
.method public execute(ILcom/yanzhenjie/nohttp/rest/Request;Lcom/yanzhenjie/nohttp/rest/OnResponseListener;)Lcom/yanzhenjie/nohttp/able/Cancelable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/yanzhenjie/nohttp/rest/Request<",
            "TT;>;",
            "Lcom/yanzhenjie/nohttp/rest/OnResponseListener<",
            "TT;>;)",
            "Lcom/yanzhenjie/nohttp/able/Cancelable;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/yanzhenjie/nohttp/rest/Worker;

    invoke-direct {v0, p2}, Lcom/yanzhenjie/nohttp/rest/Worker;-><init>(Lcom/yanzhenjie/nohttp/rest/Request;)V

    .line 2
    new-instance v1, Lcom/yanzhenjie/nohttp/rest/Work;

    invoke-direct {v1, v0, p1, p3}, Lcom/yanzhenjie/nohttp/rest/Work;-><init>(Lcom/yanzhenjie/nohttp/rest/Worker;ILcom/yanzhenjie/nohttp/rest/OnResponseListener;)V

    .line 3
    invoke-virtual {p2, v1}, Lcom/yanzhenjie/nohttp/BasicRequest;->setCancelable(Lcom/yanzhenjie/nohttp/able/Cancelable;)V

    .line 4
    sget-object p1, Lcom/yanzhenjie/nohttp/rest/AsyncRequestExecutor;->EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v1
.end method
