.class public Lkotlinx/coroutines/l;
.super Lkotlinx/coroutines/ar;
.source "CancellableContinuationImpl.kt"

# interfaces
.implements Lkotlin/c/b/a/e;
.implements Lkotlinx/coroutines/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/ar<",
        "TT;>;",
        "Lkotlin/c/b/a/e;",
        "Lkotlinx/coroutines/k<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _decision:I

.field private volatile _state:Ljava/lang/Object;

.field private final a:Lkotlin/c/f;

.field private final d:Lkotlin/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/c/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile parentHandle:Lkotlinx/coroutines/au;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/l;

    const-string v1, "_decision"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    sput-object v1, Lkotlinx/coroutines/l;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/l;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlin/c/c;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-TT;>;I)V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p2}, Lkotlinx/coroutines/ar;-><init>(I)V

    iput-object p1, p0, Lkotlinx/coroutines/l;->d:Lkotlin/c/c;

    .line 25
    iget-object p1, p0, Lkotlinx/coroutines/l;->d:Lkotlin/c/c;

    invoke-interface {p1}, Lkotlin/c/c;->a()Lkotlin/c/f;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/l;->a:Lkotlin/c/f;

    const/4 p1, 0x0

    .line 53
    iput p1, p0, Lkotlinx/coroutines/l;->_decision:I

    .line 64
    sget-object p1, Lkotlinx/coroutines/b;->a:Lkotlinx/coroutines/b;

    iput-object p1, p0, Lkotlinx/coroutines/l;->_state:Ljava/lang/Object;

    return-void
.end method

.method private final a(I)V
    .locals 1

    .line 216
    invoke-direct {p0}, Lkotlinx/coroutines/l;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 218
    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/aq;->a(Lkotlinx/coroutines/ar;I)V

    return-void
.end method

.method private final a(Ljava/lang/Object;I)V
    .locals 2

    .line 376
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/l;->_state:Ljava/lang/Object;

    .line 224
    instance-of v1, v0, Lkotlinx/coroutines/bx;

    if-eqz v1, :cond_1

    .line 225
    sget-object v1, Lkotlinx/coroutines/l;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/l;->n()V

    .line 227
    invoke-direct {p0, p2}, Lkotlinx/coroutines/l;->a(I)V

    return-void

    .line 230
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/n;

    if-eqz v1, :cond_2

    .line 236
    check-cast v0, Lkotlinx/coroutines/n;

    invoke-virtual {v0}, Lkotlinx/coroutines/n;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 239
    :cond_2
    invoke-direct {p0, p1}, Lkotlinx/coroutines/l;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private final a(Lkotlin/e/a/b;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/e/a/b<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/o;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "It\'s prohibited to register multiple handlers, tried to register "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", already has "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method private final b(Lkotlin/e/a/b;)Lkotlinx/coroutines/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/e/a/b<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/o;",
            ">;)",
            "Lkotlinx/coroutines/i;"
        }
    .end annotation

    .line 213
    instance-of v0, p1, Lkotlinx/coroutines/i;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/i;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/bh;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/bh;-><init>(Lkotlin/e/a/b;)V

    move-object p1, v0

    check-cast p1, Lkotlinx/coroutines/i;

    :goto_0
    return-object p1
.end method

.method private final d(Ljava/lang/Object;)V
    .locals 2

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already resumed, but proposed with update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private final k()V
    .locals 7

    .line 83
    invoke-virtual {p0}, Lkotlinx/coroutines/l;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/l;->d:Lkotlin/c/c;

    invoke-interface {v0}, Lkotlin/c/c;->a()Lkotlin/c/f;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/bk;->b:Lkotlinx/coroutines/bk$b;

    check-cast v1, Lkotlin/c/f$c;

    invoke-interface {v0, v1}, Lkotlin/c/f;->get(Lkotlin/c/f$c;)Lkotlin/c/f$b;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/bk;

    if-eqz v1, :cond_1

    .line 85
    invoke-interface {v1}, Lkotlinx/coroutines/bk;->n()Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 88
    new-instance v0, Lkotlinx/coroutines/o;

    invoke-direct {v0, v1, p0}, Lkotlinx/coroutines/o;-><init>(Lkotlinx/coroutines/bk;Lkotlinx/coroutines/l;)V

    check-cast v0, Lkotlinx/coroutines/w;

    .line 347
    move-object v4, v0

    check-cast v4, Lkotlin/e/a/b;

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 86
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/bk$a;->a(Lkotlinx/coroutines/bk;ZZLkotlin/e/a/b;ILjava/lang/Object;)Lkotlinx/coroutines/au;

    move-result-object v0

    .line 90
    iput-object v0, p0, Lkotlinx/coroutines/l;->parentHandle:Lkotlinx/coroutines/au;

    .line 92
    invoke-virtual {p0}, Lkotlinx/coroutines/l;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    invoke-interface {v0}, Lkotlinx/coroutines/au;->a()V

    .line 94
    sget-object v0, Lkotlinx/coroutines/bw;->a:Lkotlinx/coroutines/bw;

    check-cast v0, Lkotlinx/coroutines/au;

    iput-object v0, p0, Lkotlinx/coroutines/l;->parentHandle:Lkotlinx/coroutines/au;

    :cond_1
    return-void
.end method

.method private final l()Z
    .locals 3

    .line 360
    :cond_0
    iget v0, p0, Lkotlinx/coroutines/l;->_decision:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    return v1

    .line 142
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already suspended"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 140
    :cond_2
    sget-object v0, Lkotlinx/coroutines/l;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method

.method private final m()Z
    .locals 4

    .line 362
    :cond_0
    iget v0, p0, Lkotlinx/coroutines/l;->_decision:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    return v1

    .line 152
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already resumed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 150
    :cond_2
    sget-object v0, Lkotlinx/coroutines/l;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, 0x2

    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method

.method private final n()V
    .locals 1

    .line 249
    iget-object v0, p0, Lkotlinx/coroutines/l;->parentHandle:Lkotlinx/coroutines/au;

    if-eqz v0, :cond_0

    .line 250
    invoke-interface {v0}, Lkotlinx/coroutines/au;->a()V

    .line 251
    sget-object v0, Lkotlinx/coroutines/bw;->a:Lkotlinx/coroutines/bw;

    check-cast v0, Lkotlinx/coroutines/au;

    iput-object v0, p0, Lkotlinx/coroutines/l;->parentHandle:Lkotlinx/coroutines/au;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lkotlinx/coroutines/bk;)Ljava/lang/Throwable;
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-interface {p1}, Lkotlinx/coroutines/bk;->m()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    return-object p1
.end method

.method public a()Lkotlin/c/f;
    .locals 1

    .line 25
    iget-object v0, p0, Lkotlinx/coroutines/l;->a:Lkotlin/c/f;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 168
    invoke-static {p1}, Lkotlinx/coroutines/u;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget v0, p0, Lkotlinx/coroutines/l;->e:I

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/l;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;I)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    new-instance v0, Lkotlinx/coroutines/t;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/t;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0, p2}, Lkotlinx/coroutines/l;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method public a(Lkotlin/e/a/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/e/a/b<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 174
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/i;

    .line 364
    :cond_0
    :goto_0
    iget-object v2, p0, Lkotlinx/coroutines/l;->_state:Ljava/lang/Object;

    .line 177
    instance-of v3, v2, Lkotlinx/coroutines/b;

    if-eqz v3, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    .line 178
    :cond_1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/l;->b(Lkotlin/e/a/b;)Lkotlinx/coroutines/i;

    move-result-object v1

    .line 179
    :goto_1
    sget-object v3, Lkotlinx/coroutines/l;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 181
    :cond_2
    instance-of v3, v2, Lkotlinx/coroutines/i;

    if-eqz v3, :cond_3

    invoke-direct {p0, p1, v2}, Lkotlinx/coroutines/l;->a(Lkotlin/e/a/b;Ljava/lang/Object;)V

    goto :goto_0

    .line 182
    :cond_3
    instance-of v1, v2, Lkotlinx/coroutines/n;

    if-eqz v1, :cond_7

    .line 188
    move-object v1, v2

    check-cast v1, Lkotlinx/coroutines/n;

    invoke-virtual {v1}, Lkotlinx/coroutines/n;->b()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0, p1, v2}, Lkotlinx/coroutines/l;->a(Lkotlin/e/a/b;Ljava/lang/Object;)V

    .line 193
    :cond_4
    :try_start_0
    instance-of v1, v2, Lkotlinx/coroutines/t;

    if-nez v1, :cond_5

    move-object v2, v0

    :cond_5
    check-cast v2, Lkotlinx/coroutines/t;

    if-eqz v2, :cond_6

    iget-object v1, v2, Lkotlinx/coroutines/t;->a:Ljava/lang/Throwable;

    goto :goto_2

    :cond_6
    move-object v1, v0

    .line 367
    :goto_2
    invoke-interface {p1, v1}, Lkotlin/e/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 370
    invoke-virtual {p0}, Lkotlinx/coroutines/l;->a()Lkotlin/c/f;

    move-result-object v1

    .line 371
    new-instance v2, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in cancellation handler for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v2, Ljava/lang/Throwable;

    const/4 p1, 0x4

    .line 369
    invoke-static {v1, v2, v0, p1, v0}, Lkotlinx/coroutines/aa;->a(Lkotlin/c/f;Ljava/lang/Throwable;Lkotlinx/coroutines/bk;ILjava/lang/Object;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public a(Lkotlinx/coroutines/y;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/y;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lkotlinx/coroutines/l;->d:Lkotlin/c/c;

    instance-of v1, v0, Lkotlinx/coroutines/ao;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lkotlinx/coroutines/ao;

    if-eqz v0, :cond_1

    .line 299
    iget-object v2, v0, Lkotlinx/coroutines/ao;->c:Lkotlinx/coroutines/y;

    :cond_1
    if-ne v2, p1, :cond_2

    const/4 p1, 0x3

    goto :goto_0

    :cond_2
    iget p1, p0, Lkotlinx/coroutines/l;->e:I

    :goto_0
    invoke-direct {p0, p2, p1}, Lkotlinx/coroutines/l;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)Z
    .locals 5

    .line 349
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/l;->_state:Ljava/lang/Object;

    .line 107
    instance-of v1, v0, Lkotlinx/coroutines/bx;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 109
    :cond_0
    new-instance v1, Lkotlinx/coroutines/n;

    move-object v3, p0

    check-cast v3, Lkotlin/c/c;

    instance-of v4, v0, Lkotlinx/coroutines/i;

    invoke-direct {v1, v3, p1, v4}, Lkotlinx/coroutines/n;-><init>(Lkotlin/c/c;Ljava/lang/Throwable;Z)V

    .line 110
    sget-object v3, Lkotlinx/coroutines/l;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    .line 112
    :try_start_0
    check-cast v0, Lkotlinx/coroutines/i;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/i;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 354
    invoke-virtual {p0}, Lkotlinx/coroutines/l;->a()Lkotlin/c/f;

    move-result-object v0

    .line 355
    new-instance v1, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in cancellation handler for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v1, Ljava/lang/Throwable;

    const/4 p1, 0x4

    const/4 v3, 0x0

    .line 353
    invoke-static {v0, v1, v3, p1, v3}, Lkotlinx/coroutines/aa;->a(Lkotlin/c/f;Ljava/lang/Throwable;Lkotlinx/coroutines/bk;ILjava/lang/Object;)V

    .line 114
    :cond_2
    :goto_1
    invoke-direct {p0}, Lkotlinx/coroutines/l;->n()V

    .line 115
    invoke-direct {p0, v2}, Lkotlinx/coroutines/l;->a(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .line 69
    iget-object v0, p0, Lkotlinx/coroutines/l;->_state:Ljava/lang/Object;

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 309
    instance-of v0, p1, Lkotlinx/coroutines/v;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/v;

    iget-object p1, p1, Lkotlinx/coroutines/v;->a:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public c()Lkotlin/c/b/a/e;
    .locals 2

    .line 99
    iget-object v0, p0, Lkotlinx/coroutines/l;->d:Lkotlin/c/c;

    instance-of v1, v0, Lkotlin/c/b/a/e;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lkotlin/c/b/a/e;

    return-object v0
.end method

.method public d()Ljava/lang/StackTraceElement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 73
    invoke-virtual {p0}, Lkotlinx/coroutines/l;->b()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/bx;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    .line 103
    invoke-virtual {p0}, Lkotlinx/coroutines/l;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/Object;
    .locals 2

    .line 159
    invoke-direct {p0}, Lkotlinx/coroutines/l;->k()V

    .line 160
    invoke-direct {p0}, Lkotlinx/coroutines/l;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 162
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/l;->b()Ljava/lang/Object;

    move-result-object v0

    .line 163
    instance-of v1, v0, Lkotlinx/coroutines/t;

    if-nez v1, :cond_1

    .line 164
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 163
    :cond_1
    check-cast v0, Lkotlinx/coroutines/t;

    iget-object v0, v0, Lkotlinx/coroutines/t;->a:Ljava/lang/Throwable;

    move-object v1, p0

    check-cast v1, Lkotlin/c/c;

    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/t;->a(Ljava/lang/Throwable;Lkotlin/c/c;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method protected h()Ljava/lang/String;
    .locals 1

    const-string v0, "CancellableContinuation"

    return-object v0
.end method

.method public final i()Lkotlin/c/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/c/c<",
            "TT;>;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lkotlinx/coroutines/l;->d:Lkotlin/c/c;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlinx/coroutines/l;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/l;->d:Lkotlin/c/c;

    invoke-static {v1}, Lkotlinx/coroutines/ag;->a(Lkotlin/c/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/l;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/ag;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
