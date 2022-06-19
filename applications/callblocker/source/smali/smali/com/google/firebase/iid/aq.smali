.class final Lcom/google/firebase/iid/aq;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.1.5"


# static fields
.field private static final a:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/google/firebase/iid/ap;->a:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/google/firebase/iid/aq;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static a()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/firebase/iid/aq;->a:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static b()Ljava/util/concurrent/ExecutorService;
    .locals 9

    .prologue
    .line 2
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/google/android/gms/common/util/a/a;

    const-string/jumbo v0, "firebase-iid-executor"

    invoke-direct {v8, v0}, Lcom/google/android/gms/common/util/a/a;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v1
.end method
