.class public final Lb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcoroutinesrunner/CoroutinesRunner;",
        "",
        "()V",
        "Companion",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final a:Lb/a$a;

.field private static final b:Lkotlinx/coroutines/bk;

.field private static final c:Lkotlinx/coroutines/bk;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lb/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lb/a;->a:Lb/a$a;

    .line 17
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v1, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v1}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    move-object v8, v1

    check-cast v8, Ljava/util/concurrent/BlockingQueue;

    const v4, 0x7fffffff

    const-wide/16 v5, 0x3c

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-static {v0}, Lkotlinx/coroutines/bn;->a(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/bk;

    move-result-object v0

    sput-object v0, Lb/a;->b:Lkotlinx/coroutines/bk;

    .line 18
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    div-int/2addr v1, v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v7, v1

    check-cast v7, Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v8, 0x3c

    move-object v1, v0

    move v2, v3

    move v3, v4

    move-wide v4, v8

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-static {v0}, Lkotlinx/coroutines/bn;->a(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/bk;

    move-result-object v0

    sput-object v0, Lb/a;->c:Lkotlinx/coroutines/bk;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lkotlinx/coroutines/bk;
    .locals 1

    .line 15
    sget-object v0, Lb/a;->b:Lkotlinx/coroutines/bk;

    return-object v0
.end method

.method public static final synthetic b()Lkotlinx/coroutines/bk;
    .locals 1

    .line 15
    sget-object v0, Lb/a;->c:Lkotlinx/coroutines/bk;

    return-object v0
.end method
