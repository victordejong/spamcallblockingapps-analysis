.class public Lcom/allinone/callerid/util/e1;
.super Ljava/lang/Object;
.source "ThreadPoolUtils.java"


# static fields
.field private static final a:Ljava/util/concurrent/ExecutorService;

.field private static final b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/allinone/callerid/util/e1;->a:Ljava/util/concurrent/ExecutorService;

    .line 2
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/allinone/callerid/util/e1;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static a()Ljava/util/concurrent/Executor;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/allinone/callerid/util/e1;->b:Ljava/util/concurrent/Executor;

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Lcom/allinone/callerid/util/e1;->a:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
