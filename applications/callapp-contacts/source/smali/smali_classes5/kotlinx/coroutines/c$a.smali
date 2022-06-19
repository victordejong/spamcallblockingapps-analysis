.class final Lkotlinx/coroutines/c$a;
.super Lkotlinx/coroutines/bz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\u0008\u0082\u0004\u0018\u00002\u00020\u001cB\u001b\u0012\u0012\u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00020\u0001\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001a\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0096\u0002\u00a2\u0006\u0004\u0008\t\u0010\nR\"\u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00020\u00018\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u000bR<\u0010\u0013\u001a\u000e\u0018\u00010\u000cR\u0008\u0012\u0004\u0012\u00028\u00000\r2\u0012\u0010\u000e\u001a\u000e\u0018\u00010\u000cR\u0008\u0012\u0004\u0012\u00028\u00000\r8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\"\u0010\u0015\u001a\u00020\u00148\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "Lkotlinx/coroutines/AwaitAll$AwaitAllNode;",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "",
        "continuation",
        "<init>",
        "(Lkotlinx/coroutines/AwaitAll;Lkotlinx/coroutines/CancellableContinuation;)V",
        "",
        "cause",
        "",
        "invoke",
        "(Ljava/lang/Throwable;)V",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;",
        "Lkotlinx/coroutines/AwaitAll;",
        "value",
        "getDisposer",
        "()Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;",
        "setDisposer",
        "(Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;)V",
        "disposer",
        "Lkotlinx/coroutines/DisposableHandle;",
        "handle",
        "Lkotlinx/coroutines/DisposableHandle;",
        "getHandle",
        "()Lkotlinx/coroutines/DisposableHandle;",
        "setHandle",
        "(Lkotlinx/coroutines/DisposableHandle;)V",
        "kotlinx-coroutines-core",
        "Lkotlinx/coroutines/JobNode;"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field volatile synthetic _disposer:Ljava/lang/Object;

.field public a:Lkotlinx/coroutines/bb;

.field final synthetic b:Lkotlinx/coroutines/c;

.field private final f:Lkotlinx/coroutines/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/n<",
            "Ljava/util/List<",
            "+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/c;Lkotlinx/coroutines/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n<",
            "-",
            "Ljava/util/List<",
            "+TT;>;>;)V"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lkotlinx/coroutines/c$a;->b:Lkotlinx/coroutines/c;

    invoke-direct {p0}, Lkotlinx/coroutines/bz;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/c$a;->f:Lkotlinx/coroutines/n;

    const/4 p1, 0x0

    .line 106
    iput-object p1, p0, Lkotlinx/coroutines/c$a;->_disposer:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 113
    iget-object v0, p0, Lkotlinx/coroutines/c$a;->f:Lkotlinx/coroutines/n;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 115
    iget-object v0, p0, Lkotlinx/coroutines/c$a;->f:Lkotlinx/coroutines/n;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/n;->a(Ljava/lang/Object;)V

    .line 1108
    iget-object p1, p0, Lkotlinx/coroutines/c$a;->_disposer:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/c$b;

    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {p1}, Lkotlinx/coroutines/c$b;->a()V

    :cond_0
    return-void

    .line 120
    :cond_1
    iget-object p1, p0, Lkotlinx/coroutines/c$a;->b:Lkotlinx/coroutines/c;

    sget-object v0, Lkotlinx/coroutines/c;->a:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_3

    .line 121
    iget-object p1, p0, Lkotlinx/coroutines/c$a;->f:Lkotlinx/coroutines/n;

    check-cast p1, Lkotlin/c/d;

    iget-object v0, p0, Lkotlinx/coroutines/c$a;->b:Lkotlinx/coroutines/c;

    invoke-static {v0}, Lkotlinx/coroutines/c;->a(Lkotlinx/coroutines/c;)[Lkotlinx/coroutines/as;

    move-result-object v0

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 129
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 121
    invoke-interface {v4}, Lkotlinx/coroutines/as;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 131
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 121
    sget-object v0, Lkotlin/o;->a:Lkotlin/o$a;

    invoke-static {v1}, Lkotlin/o;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/c/d;->b(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final aw_()Lkotlinx/coroutines/bb;
    .locals 2

    .line 104
    iget-object v0, p0, Lkotlinx/coroutines/c$a;->a:Lkotlinx/coroutines/bb;

    if-nez v0, :cond_0

    const-string v1, "handle"

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 103
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/c$a;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
