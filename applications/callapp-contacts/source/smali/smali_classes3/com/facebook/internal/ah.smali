.class public final Lcom/facebook/internal/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/ah$c;,
        Lcom/facebook/internal/ah$b;,
        Lcom/facebook/internal/ah$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\u0018\u0000 \u001a2\u00020\u0001:\u0003\u001a\u001b\u001cB\u001b\u0008\u0007\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001a\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012H\u0007J\u0014\u0010\u0013\u001a\u00020\u00142\n\u0010\u0015\u001a\u00060\u0008R\u00020\u0000H\u0002J\u0016\u0010\u0016\u001a\u00020\u00142\u000c\u0010\u0017\u001a\u0008\u0018\u00010\u0008R\u00020\u0000H\u0002J\u0008\u0010\u0018\u001a\u00020\u0014H\u0002J\u0006\u0010\u0019\u001a\u00020\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0018\u00010\u0008R\u00020\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0018\u00010\u0008R\u00020\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/facebook/internal/WorkQueue;",
        "",
        "maxConcurrent",
        "",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "(ILjava/util/concurrent/Executor;)V",
        "pendingJobs",
        "Lcom/facebook/internal/WorkQueue$WorkNode;",
        "runningCount",
        "runningJobs",
        "workLock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "addActiveWorkItem",
        "Lcom/facebook/internal/WorkQueue$WorkItem;",
        "callback",
        "Ljava/lang/Runnable;",
        "addToFront",
        "",
        "execute",
        "",
        "node",
        "finishItemAndStartNew",
        "finished",
        "startItem",
        "validate",
        "Companion",
        "WorkItem",
        "WorkNode",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lcom/facebook/internal/ah$a;


# instance fields
.field private final b:Ljava/util/concurrent/locks/ReentrantLock;

.field private c:Lcom/facebook/internal/ah$c;

.field private d:Lcom/facebook/internal/ah$c;

.field private e:I

.field private final f:I

.field private final g:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/internal/ah$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/internal/ah$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/internal/ah;->a:Lcom/facebook/internal/ah$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/facebook/internal/ah;-><init>(ILjava/util/concurrent/Executor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/facebook/internal/ah;-><init>(ILjava/util/concurrent/Executor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/Executor;)V
    .locals 1

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/facebook/internal/ah;->f:I

    iput-object p2, p0, Lcom/facebook/internal/ah;->g:Ljava/util/concurrent/Executor;

    .line 39
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/ah;->b:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/concurrent/Executor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/16 p1, 0x8

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 37
    invoke-static {}, Lcom/facebook/g;->f()Ljava/util/concurrent/Executor;

    move-result-object p2

    const-string p3, "FacebookSdk.getExecutor()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/ah;-><init>(ILjava/util/concurrent/Executor;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;Z)Lcom/facebook/internal/ah$b;
    .locals 2

    const-string p2, "callback"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance p2, Lcom/facebook/internal/ah$c;

    invoke-direct {p2, p0, p1}, Lcom/facebook/internal/ah$c;-><init>(Lcom/facebook/internal/ah;Ljava/lang/Runnable;)V

    .line 56
    iget-object p1, p0, Lcom/facebook/internal/ah;->b:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast p1, Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/facebook/internal/ah;->c:Lcom/facebook/internal/ah$c;

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/facebook/internal/ah$c;->a(Lcom/facebook/internal/ah$c;Z)Lcom/facebook/internal/ah$c;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/ah;->c:Lcom/facebook/internal/ah$c;

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, 0x0

    .line 1079
    invoke-direct {p0, p1}, Lcom/facebook/internal/ah;->a(Lcom/facebook/internal/ah$c;)V

    .line 58
    check-cast p2, Lcom/facebook/internal/ah$b;

    return-object p2

    :catchall_0
    move-exception p2

    .line 56
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p2
.end method

.method private final a(Lcom/facebook/internal/ah$c;)V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/facebook/internal/ah;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    if-eqz p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/facebook/internal/ah;->d:Lcom/facebook/internal/ah$c;

    invoke-virtual {p1, v0}, Lcom/facebook/internal/ah$c;->a(Lcom/facebook/internal/ah$c;)Lcom/facebook/internal/ah$c;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/internal/ah;->d:Lcom/facebook/internal/ah$c;

    .line 88
    iget p1, p0, Lcom/facebook/internal/ah;->e:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/facebook/internal/ah;->e:I

    .line 90
    :cond_0
    iget p1, p0, Lcom/facebook/internal/ah;->e:I

    iget v0, p0, Lcom/facebook/internal/ah;->f:I

    if-ge p1, v0, :cond_1

    .line 91
    iget-object p1, p0, Lcom/facebook/internal/ah;->c:Lcom/facebook/internal/ah$c;

    if-eqz p1, :cond_2

    .line 96
    invoke-virtual {p1, p1}, Lcom/facebook/internal/ah$c;->a(Lcom/facebook/internal/ah$c;)Lcom/facebook/internal/ah$c;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/ah;->c:Lcom/facebook/internal/ah$c;

    .line 97
    iget-object v0, p0, Lcom/facebook/internal/ah;->d:Lcom/facebook/internal/ah$c;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/internal/ah$c;->a(Lcom/facebook/internal/ah$c;Z)Lcom/facebook/internal/ah$c;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/ah;->d:Lcom/facebook/internal/ah$c;

    .line 98
    iget v0, p0, Lcom/facebook/internal/ah;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/internal/ah;->e:I

    .line 2122
    iput-boolean v1, p1, Lcom/facebook/internal/ah$c;->a:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 102
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/facebook/internal/ah;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz p1, :cond_3

    .line 104
    invoke-direct {p0, p1}, Lcom/facebook/internal/ah;->b(Lcom/facebook/internal/ah$c;)V

    :cond_3
    return-void
.end method

.method public static final synthetic a(Lcom/facebook/internal/ah;Lcom/facebook/internal/ah$c;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/facebook/internal/ah;->a(Lcom/facebook/internal/ah$c;)V

    return-void
.end method

.method private final b(Lcom/facebook/internal/ah$c;)V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/facebook/internal/ah;->g:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/facebook/internal/ah$d;

    invoke-direct {v1, p0, p1}, Lcom/facebook/internal/ah$d;-><init>(Lcom/facebook/internal/ah;Lcom/facebook/internal/ah$c;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)Lcom/facebook/internal/ah$b;
    .locals 1

    const/4 v0, 0x1

    .line 2054
    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/ah;->a(Ljava/lang/Runnable;Z)Lcom/facebook/internal/ah$b;

    move-result-object p1

    return-object p1
.end method
