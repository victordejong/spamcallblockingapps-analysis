.class final Lkotlinx/coroutines/ap;
.super Lkotlinx/coroutines/internal/r;
.source "Builders.common.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/r<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile _decision:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/ap;

    const-string v1, "_decision"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/ap;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlin/c/f;Lkotlin/c/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/f;",
            "Lkotlin/c/c<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uCont"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/internal/r;-><init>(Lkotlin/c/f;Lkotlin/c/c;)V

    const/4 p1, 0x0

    .line 200
    iput p1, p0, Lkotlinx/coroutines/ap;->_decision:I

    return-void
.end method

.method private final v()Z
    .locals 3

    .line 239
    :cond_0
    iget v0, p0, Lkotlinx/coroutines/ap;->_decision:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    return v1

    .line 207
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already suspended"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 205
    :cond_2
    sget-object v0, Lkotlinx/coroutines/ap;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method

.method private final w()Z
    .locals 4

    .line 241
    :cond_0
    iget v0, p0, Lkotlinx/coroutines/ap;->_decision:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    return v1

    .line 217
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already resumed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 215
    :cond_2
    sget-object v0, Lkotlinx/coroutines/ap;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, 0x2

    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method


# virtual methods
.method public a(Ljava/lang/Object;IZ)V
    .locals 1

    .line 223
    invoke-direct {p0}, Lkotlinx/coroutines/ap;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 225
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lkotlinx/coroutines/internal/r;->a(Ljava/lang/Object;IZ)V

    return-void
.end method

.method public i()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final k()Ljava/lang/Object;
    .locals 2

    .line 229
    invoke-direct {p0}, Lkotlinx/coroutines/ap;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 231
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/ap;->p()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/br;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 232
    instance-of v1, v0, Lkotlinx/coroutines/t;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    check-cast v0, Lkotlinx/coroutines/t;

    iget-object v0, v0, Lkotlinx/coroutines/t;->a:Ljava/lang/Throwable;

    throw v0
.end method
