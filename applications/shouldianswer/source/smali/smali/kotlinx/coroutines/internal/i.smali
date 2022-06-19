.class public Lkotlinx/coroutines/internal/i;
.super Ljava/lang/Object;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/internal/i$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field static final c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field static final d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field volatile _next:Ljava/lang/Object;

.field volatile _prev:Ljava/lang/Object;

.field private volatile _removedRef:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/internal/i;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_next"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Lkotlinx/coroutines/internal/i;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_prev"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Lkotlinx/coroutines/internal/i;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_removedRef"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/i;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p0, p0, Lkotlinx/coroutines/internal/i;->_next:Ljava/lang/Object;

    .line 60
    iput-object p0, p0, Lkotlinx/coroutines/internal/i;->_prev:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lkotlinx/coroutines/internal/i;->_removedRef:Ljava/lang/Object;

    return-void
.end method

.method private final a(Lkotlinx/coroutines/internal/i;Lkotlinx/coroutines/internal/p;)Lkotlinx/coroutines/internal/i;
    .locals 7

    const/4 v0, 0x0

    .line 615
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/internal/i;

    :goto_0
    move-object v2, v1

    .line 618
    :cond_0
    :goto_1
    iget-object v3, p1, Lkotlinx/coroutines/internal/i;->_next:Ljava/lang/Object;

    if-ne v3, p2, :cond_1

    return-object p1

    .line 620
    :cond_1
    instance-of v4, v3, Lkotlinx/coroutines/internal/p;

    if-eqz v4, :cond_2

    .line 621
    check-cast v3, Lkotlinx/coroutines/internal/p;

    invoke-virtual {v3, p1}, Lkotlinx/coroutines/internal/p;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 624
    :cond_2
    instance-of v4, v3, Lkotlinx/coroutines/internal/q;

    if-eqz v4, :cond_4

    if-eqz v2, :cond_3

    .line 626
    invoke-direct {p1}, Lkotlinx/coroutines/internal/i;->k()Lkotlinx/coroutines/internal/i;

    .line 627
    sget-object v4, Lkotlinx/coroutines/internal/i;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    check-cast v3, Lkotlinx/coroutines/internal/q;

    iget-object v3, v3, Lkotlinx/coroutines/internal/q;->a:Lkotlinx/coroutines/internal/i;

    invoke-virtual {v4, v2, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-object p1, v2

    goto :goto_0

    .line 631
    :cond_3
    iget-object p1, p1, Lkotlinx/coroutines/internal/i;->_prev:Ljava/lang/Object;

    invoke-static {p1}, Lkotlinx/coroutines/internal/h;->a(Ljava/lang/Object;)Lkotlinx/coroutines/internal/i;

    move-result-object p1

    goto :goto_1

    .line 635
    :cond_4
    iget-object v4, p0, Lkotlinx/coroutines/internal/i;->_prev:Ljava/lang/Object;

    .line 636
    instance-of v5, v4, Lkotlinx/coroutines/internal/q;

    if-eqz v5, :cond_5

    return-object v0

    .line 637
    :cond_5
    move-object v5, p0

    check-cast v5, Lkotlinx/coroutines/internal/i;

    if-eq v3, v5, :cond_7

    if-eqz v3, :cond_6

    .line 640
    move-object v2, v3

    check-cast v2, Lkotlinx/coroutines/internal/i;

    move-object v6, v2

    move-object v2, p1

    move-object p1, v6

    goto :goto_1

    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    if-ne v4, p1, :cond_8

    return-object v0

    .line 644
    :cond_8
    sget-object v3, Lkotlinx/coroutines/internal/i;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v4, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 645
    iget-object v3, p1, Lkotlinx/coroutines/internal/i;->_prev:Ljava/lang/Object;

    instance-of v3, v3, Lkotlinx/coroutines/internal/q;

    if-nez v3, :cond_0

    return-object v0
.end method

.method public static final synthetic a(Lkotlinx/coroutines/internal/i;Lkotlinx/coroutines/internal/i;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lkotlinx/coroutines/internal/i;->b(Lkotlinx/coroutines/internal/i;)V

    return-void
.end method

.method private final b(Lkotlinx/coroutines/internal/i;)V
    .locals 2

    .line 713
    :cond_0
    iget-object v0, p1, Lkotlinx/coroutines/internal/i;->_prev:Ljava/lang/Object;

    .line 513
    instance-of v1, v0, Lkotlinx/coroutines/internal/q;

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/i;->e()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_1

    goto :goto_0

    .line 514
    :cond_1
    sget-object v1, Lkotlinx/coroutines/internal/i;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 515
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/i;->e()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lkotlinx/coroutines/internal/q;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    .line 517
    check-cast v0, Lkotlinx/coroutines/internal/i;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lkotlinx/coroutines/internal/i;->a(Lkotlinx/coroutines/internal/i;Lkotlinx/coroutines/internal/p;)Lkotlinx/coroutines/internal/i;

    goto :goto_0

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method private final c(Lkotlinx/coroutines/internal/i;)V
    .locals 2

    .line 525
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/i;->i()V

    .line 526
    iget-object v0, p0, Lkotlinx/coroutines/internal/i;->_prev:Ljava/lang/Object;

    invoke-static {v0}, Lkotlinx/coroutines/internal/h;->a(Ljava/lang/Object;)Lkotlinx/coroutines/internal/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lkotlinx/coroutines/internal/i;->a(Lkotlinx/coroutines/internal/i;Lkotlinx/coroutines/internal/p;)Lkotlinx/coroutines/internal/i;

    return-void
.end method

.method private final j()Lkotlinx/coroutines/internal/q;
    .locals 2

    .line 64
    iget-object v0, p0, Lkotlinx/coroutines/internal/i;->_removedRef:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/q;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/internal/q;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/internal/q;-><init>(Lkotlinx/coroutines/internal/i;)V

    sget-object v1, Lkotlinx/coroutines/internal/i;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method private final k()Lkotlinx/coroutines/internal/i;
    .locals 3

    .line 715
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/i;->_prev:Ljava/lang/Object;

    .line 531
    instance-of v1, v0, Lkotlinx/coroutines/internal/q;

    if-eqz v1, :cond_1

    check-cast v0, Lkotlinx/coroutines/internal/q;

    iget-object v0, v0, Lkotlinx/coroutines/internal/q;->a:Lkotlinx/coroutines/internal/i;

    return-object v0

    .line 535
    :cond_1
    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/internal/i;

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lkotlinx/coroutines/internal/i;->l()Lkotlinx/coroutines/internal/i;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/internal/i;

    :goto_0
    invoke-direct {v1}, Lkotlinx/coroutines/internal/i;->j()Lkotlinx/coroutines/internal/q;

    move-result-object v1

    .line 536
    sget-object v2, Lkotlinx/coroutines/internal/i;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/internal/i;

    return-object v0

    .line 535
    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final l()Lkotlinx/coroutines/internal/i;
    .locals 3

    .line 563
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/internal/i;

    move-object v1, v0

    .line 565
    :goto_0
    instance-of v2, v1, Lkotlinx/coroutines/internal/g;

    if-eqz v2, :cond_0

    return-object v1

    .line 566
    :cond_0
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/i;->f()Lkotlinx/coroutines/internal/i;

    move-result-object v1

    if-eq v1, v0, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    goto :goto_0

    .line 567
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot loop to this while looking for list head"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/internal/i;Lkotlinx/coroutines/internal/i;Lkotlinx/coroutines/internal/i$a;)I
    .locals 1

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "condAdd"

    invoke-static {p3, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    sget-object v0, Lkotlinx/coroutines/internal/i;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 221
    sget-object v0, Lkotlinx/coroutines/internal/i;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 222
    iput-object p2, p3, Lkotlinx/coroutines/internal/i$a;->d:Lkotlinx/coroutines/internal/i;

    .line 223
    sget-object p1, Lkotlinx/coroutines/internal/i;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 225
    :cond_0
    invoke-virtual {p3, p0}, Lkotlinx/coroutines/internal/i$a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    return p1
.end method

.method public final a(Lkotlinx/coroutines/internal/i;)Z
    .locals 2

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    sget-object v0, Lkotlinx/coroutines/internal/i;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    sget-object v0, Lkotlinx/coroutines/internal/i;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/i;->e()Ljava/lang/Object;

    move-result-object v0

    .line 121
    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/internal/i;

    if-eq v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 122
    :cond_1
    sget-object v0, Lkotlinx/coroutines/internal/i;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-direct {p1, p0}, Lkotlinx/coroutines/internal/i;->b(Lkotlinx/coroutines/internal/i;)V

    const/4 p1, 0x1

    return p1
.end method

.method public c()Z
    .locals 4

    .line 240
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/i;->e()Ljava/lang/Object;

    move-result-object v0

    .line 241
    instance-of v1, v0, Lkotlinx/coroutines/internal/q;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    .line 242
    :cond_1
    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/internal/i;

    if-ne v0, v1, :cond_2

    return v2

    :cond_2
    if-eqz v0, :cond_3

    .line 243
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/internal/i;

    invoke-direct {v1}, Lkotlinx/coroutines/internal/i;->j()Lkotlinx/coroutines/internal/q;

    move-result-object v2

    .line 244
    sget-object v3, Lkotlinx/coroutines/internal/i;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-direct {p0, v1}, Lkotlinx/coroutines/internal/i;->c(Lkotlinx/coroutines/internal/i;)V

    const/4 v0, 0x1

    return v0

    .line 243
    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()Z
    .locals 1

    .line 88
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/i;->e()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/internal/q;

    return v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 2

    .line 703
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/i;->_next:Ljava/lang/Object;

    .line 93
    instance-of v1, v0, Lkotlinx/coroutines/internal/p;

    if-nez v1, :cond_0

    return-object v0

    .line 94
    :cond_0
    check-cast v0, Lkotlinx/coroutines/internal/p;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/p;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final f()Lkotlinx/coroutines/internal/i;
    .locals 1

    .line 99
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/i;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/internal/h;->a(Ljava/lang/Object;)Lkotlinx/coroutines/internal/i;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/Object;
    .locals 4

    .line 705
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/i;->_prev:Ljava/lang/Object;

    .line 104
    instance-of v1, v0, Lkotlinx/coroutines/internal/q;

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    if-eqz v0, :cond_2

    .line 105
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/internal/i;

    .line 106
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/i;->e()Ljava/lang/Object;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Lkotlinx/coroutines/internal/i;

    if-ne v2, v3, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, v1, v0}, Lkotlinx/coroutines/internal/i;->a(Lkotlinx/coroutines/internal/i;Lkotlinx/coroutines/internal/p;)Lkotlinx/coroutines/internal/i;

    goto :goto_0

    .line 105
    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h()Lkotlinx/coroutines/internal/i;
    .locals 1

    .line 112
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/i;->g()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/internal/h;->a(Ljava/lang/Object;)Lkotlinx/coroutines/internal/i;

    move-result-object v0

    return-object v0
.end method

.method public final i()V
    .locals 7

    const/4 v0, 0x0

    .line 574
    check-cast v0, Lkotlinx/coroutines/internal/i;

    .line 575
    invoke-direct {p0}, Lkotlinx/coroutines/internal/i;->k()Lkotlinx/coroutines/internal/i;

    move-result-object v1

    .line 576
    iget-object v2, p0, Lkotlinx/coroutines/internal/i;->_next:Ljava/lang/Object;

    if-eqz v2, :cond_7

    check-cast v2, Lkotlinx/coroutines/internal/q;

    iget-object v2, v2, Lkotlinx/coroutines/internal/q;->a:Lkotlinx/coroutines/internal/i;

    :goto_0
    move-object v3, v0

    .line 579
    :cond_0
    :goto_1
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/i;->e()Ljava/lang/Object;

    move-result-object v4

    .line 580
    instance-of v5, v4, Lkotlinx/coroutines/internal/q;

    if-eqz v5, :cond_1

    .line 581
    invoke-direct {v2}, Lkotlinx/coroutines/internal/i;->k()Lkotlinx/coroutines/internal/i;

    .line 582
    check-cast v4, Lkotlinx/coroutines/internal/q;

    iget-object v2, v4, Lkotlinx/coroutines/internal/q;->a:Lkotlinx/coroutines/internal/i;

    goto :goto_1

    .line 586
    :cond_1
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/i;->e()Ljava/lang/Object;

    move-result-object v4

    .line 587
    instance-of v5, v4, Lkotlinx/coroutines/internal/q;

    if-eqz v5, :cond_3

    if-eqz v3, :cond_2

    .line 589
    invoke-direct {v1}, Lkotlinx/coroutines/internal/i;->k()Lkotlinx/coroutines/internal/i;

    .line 590
    sget-object v5, Lkotlinx/coroutines/internal/i;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    check-cast v4, Lkotlinx/coroutines/internal/q;

    iget-object v4, v4, Lkotlinx/coroutines/internal/q;->a:Lkotlinx/coroutines/internal/i;

    invoke-virtual {v5, v3, v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-object v1, v3

    goto :goto_0

    .line 594
    :cond_2
    iget-object v1, v1, Lkotlinx/coroutines/internal/i;->_prev:Ljava/lang/Object;

    invoke-static {v1}, Lkotlinx/coroutines/internal/h;->a(Ljava/lang/Object;)Lkotlinx/coroutines/internal/i;

    move-result-object v1

    goto :goto_1

    .line 598
    :cond_3
    move-object v5, p0

    check-cast v5, Lkotlinx/coroutines/internal/i;

    if-eq v4, v5, :cond_6

    if-eqz v4, :cond_5

    .line 601
    move-object v3, v4

    check-cast v3, Lkotlinx/coroutines/internal/i;

    if-ne v3, v2, :cond_4

    return-void

    :cond_4
    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    goto :goto_1

    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 606
    :cond_6
    sget-object v4, Lkotlinx/coroutines/internal/i;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, v1, p0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 576
    :cond_7
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.Removed"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
