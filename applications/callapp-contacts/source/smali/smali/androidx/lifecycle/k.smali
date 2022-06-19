.class public final Landroidx/lifecycle/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0001\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\r\u001a\u00020\u000eH\u0007J\u0011\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0008\u001a\u00020\tH\u0082\u0008R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/lifecycle/LifecycleController;",
        "",
        "lifecycle",
        "Landroidx/lifecycle/Lifecycle;",
        "minState",
        "Landroidx/lifecycle/Lifecycle$State;",
        "dispatchQueue",
        "Landroidx/lifecycle/DispatchQueue;",
        "parentJob",
        "Lkotlinx/coroutines/Job;",
        "(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Landroidx/lifecycle/DispatchQueue;Lkotlinx/coroutines/Job;)V",
        "observer",
        "Landroidx/lifecycle/LifecycleEventObserver;",
        "finish",
        "",
        "handleDestroy",
        "lifecycle-runtime-ktx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final a:Landroidx/lifecycle/j$b;

.field final b:Landroidx/lifecycle/d;

.field private final c:Landroidx/lifecycle/n;

.field private final d:Landroidx/lifecycle/j;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/j;Landroidx/lifecycle/j$b;Landroidx/lifecycle/d;Lkotlinx/coroutines/bv;)V
    .locals 1

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "minState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatchQueue"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentJob"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/k;->d:Landroidx/lifecycle/j;

    iput-object p2, p0, Landroidx/lifecycle/k;->a:Landroidx/lifecycle/j$b;

    iput-object p3, p0, Landroidx/lifecycle/k;->b:Landroidx/lifecycle/d;

    .line 32
    new-instance p2, Landroidx/lifecycle/LifecycleController$observer$1;

    invoke-direct {p2, p0, p4}, Landroidx/lifecycle/LifecycleController$observer$1;-><init>(Landroidx/lifecycle/k;Lkotlinx/coroutines/bv;)V

    check-cast p2, Landroidx/lifecycle/n;

    iput-object p2, p0, Landroidx/lifecycle/k;->c:Landroidx/lifecycle/n;

    .line 48
    invoke-virtual {p1}, Landroidx/lifecycle/j;->getCurrentState()Landroidx/lifecycle/j$b;

    move-result-object p3

    sget-object v0, Landroidx/lifecycle/j$b;->DESTROYED:Landroidx/lifecycle/j$b;

    if-ne p3, v0, :cond_0

    const/4 p1, 0x0

    .line 1192
    invoke-interface {p4, p1}, Lkotlinx/coroutines/bv;->a(Ljava/util/concurrent/CancellationException;)V

    .line 72
    invoke-virtual {p0}, Landroidx/lifecycle/k;->a()V

    return-void

    .line 51
    :cond_0
    check-cast p2, Landroidx/lifecycle/o;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/j;->addObserver(Landroidx/lifecycle/o;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 67
    iget-object v0, p0, Landroidx/lifecycle/k;->d:Landroidx/lifecycle/j;

    iget-object v1, p0, Landroidx/lifecycle/k;->c:Landroidx/lifecycle/n;

    check-cast v1, Landroidx/lifecycle/o;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/j;->removeObserver(Landroidx/lifecycle/o;)V

    .line 68
    iget-object v0, p0, Landroidx/lifecycle/k;->b:Landroidx/lifecycle/d;

    const/4 v1, 0x1

    .line 1059
    iput-boolean v1, v0, Landroidx/lifecycle/d;->b:Z

    .line 1060
    invoke-virtual {v0}, Landroidx/lifecycle/d;->a()V

    return-void
.end method
