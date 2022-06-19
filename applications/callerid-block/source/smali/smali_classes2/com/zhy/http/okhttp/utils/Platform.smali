.class public Lcom/zhy/http/okhttp/utils/Platform;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhy/http/okhttp/utils/Platform$Android;
    }
.end annotation


# static fields
.field private static final PLATFORM:Lcom/zhy/http/okhttp/utils/Platform;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/zhy/http/okhttp/utils/Platform;->findPlatform()Lcom/zhy/http/okhttp/utils/Platform;

    move-result-object v0

    sput-object v0, Lcom/zhy/http/okhttp/utils/Platform;->PLATFORM:Lcom/zhy/http/okhttp/utils/Platform;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findPlatform()Lcom/zhy/http/okhttp/utils/Platform;
    .locals 1

    :try_start_0
    const-string v0, "android.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zhy/http/okhttp/utils/Platform$Android;

    invoke-direct {v0}, Lcom/zhy/http/okhttp/utils/Platform$Android;-><init>()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    new-instance v0, Lcom/zhy/http/okhttp/utils/Platform;

    invoke-direct {v0}, Lcom/zhy/http/okhttp/utils/Platform;-><init>()V

    return-object v0
.end method

.method public static get()Lcom/zhy/http/okhttp/utils/Platform;
    .locals 2

    sget-object v0, Lcom/zhy/http/okhttp/utils/Platform;->PLATFORM:Lcom/zhy/http/okhttp/utils/Platform;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zhy/http/okhttp/utils/L;->e(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public defaultCallbackExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/zhy/http/okhttp/utils/Platform;->defaultCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
