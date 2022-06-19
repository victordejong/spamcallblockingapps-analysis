.class abstract Lscala/concurrent/forkjoin/CountedCompleter;
.super Lscala/concurrent/forkjoin/ForkJoinTask;
.source "ForkJoinPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/concurrent/forkjoin/ForkJoinTask<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final PENDING:J

.field private static final U:Lsun/misc/Unsafe;

.field private static final serialVersionUID:J = 0x489d68f7081983ceL


# instance fields
.field final completer:Lscala/concurrent/forkjoin/CountedCompleter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/concurrent/forkjoin/CountedCompleter<",
            "*>;"
        }
    .end annotation
.end field

.field volatile pending:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 353
    :try_start_0
    invoke-static {}, Lscala/concurrent/forkjoin/CountedCompleter;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lscala/concurrent/forkjoin/CountedCompleter;->U:Lsun/misc/Unsafe;

    .line 354
    const-class v1, Lscala/concurrent/forkjoin/CountedCompleter;

    const-string v2, "pending"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lscala/concurrent/forkjoin/CountedCompleter;->PENDING:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 357
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lscala/concurrent/forkjoin/CountedCompleter;->completer:Lscala/concurrent/forkjoin/CountedCompleter;

    return-void
.end method

.method protected constructor <init>(Lscala/concurrent/forkjoin/CountedCompleter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;-><init>()V

    .line 54
    iput-object p1, p0, Lscala/concurrent/forkjoin/CountedCompleter;->completer:Lscala/concurrent/forkjoin/CountedCompleter;

    return-void
.end method

.method protected constructor <init>(Lscala/concurrent/forkjoin/CountedCompleter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/CountedCompleter<",
            "*>;I)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;-><init>()V

    .line 43
    iput-object p1, p0, Lscala/concurrent/forkjoin/CountedCompleter;->completer:Lscala/concurrent/forkjoin/CountedCompleter;

    .line 44
    iput p2, p0, Lscala/concurrent/forkjoin/CountedCompleter;->pending:I

    return-void
.end method

.method private static getUnsafe()Lsun/misc/Unsafe;
    .locals 1

    .line 369
    sget-object v0, Lscala/concurrent/util/Unsafe;->instance:Lsun/misc/Unsafe;

    return-object v0
.end method


# virtual methods
.method public final addToPendingCount(I)V
    .locals 6

    .line 141
    :cond_0
    sget-object v0, Lscala/concurrent/forkjoin/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lscala/concurrent/forkjoin/CountedCompleter;->PENDING:J

    iget v4, p0, Lscala/concurrent/forkjoin/CountedCompleter;->pending:I

    add-int v5, v4, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final compareAndSetPendingCount(II)Z
    .locals 6

    .line 153
    sget-object v0, Lscala/concurrent/forkjoin/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lscala/concurrent/forkjoin/CountedCompleter;->PENDING:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result p1

    return p1
.end method

.method public complete(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 245
    invoke-virtual {p0, p1}, Lscala/concurrent/forkjoin/CountedCompleter;->setRawResult(Ljava/lang/Object;)V

    .line 246
    invoke-virtual {p0, p0}, Lscala/concurrent/forkjoin/CountedCompleter;->onCompletion(Lscala/concurrent/forkjoin/CountedCompleter;)V

    .line 247
    invoke-virtual {p0}, Lscala/concurrent/forkjoin/CountedCompleter;->quietlyComplete()V

    .line 248
    iget-object p1, p0, Lscala/concurrent/forkjoin/CountedCompleter;->completer:Lscala/concurrent/forkjoin/CountedCompleter;

    if-eqz p1, :cond_0

    .line 249
    invoke-virtual {p1}, Lscala/concurrent/forkjoin/CountedCompleter;->tryComplete()V

    :cond_0
    return-void
.end method

.method public abstract compute()V
.end method

.method public final decrementPendingCountUnlessZero()I
    .locals 7

    .line 164
    :cond_0
    iget v6, p0, Lscala/concurrent/forkjoin/CountedCompleter;->pending:I

    if-eqz v6, :cond_1

    sget-object v0, Lscala/concurrent/forkjoin/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lscala/concurrent/forkjoin/CountedCompleter;->PENDING:J

    add-int/lit8 v5, v6, -0x1

    move-object v1, p0

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return v6
.end method

.method protected final exec()Z
    .locals 1

    .line 324
    invoke-virtual {p0}, Lscala/concurrent/forkjoin/CountedCompleter;->compute()V

    const/4 v0, 0x0

    return v0
.end method

.method public final firstComplete()Lscala/concurrent/forkjoin/CountedCompleter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/concurrent/forkjoin/CountedCompleter<",
            "*>;"
        }
    .end annotation

    .line 263
    :cond_0
    iget v4, p0, Lscala/concurrent/forkjoin/CountedCompleter;->pending:I

    if-nez v4, :cond_1

    return-object p0

    .line 265
    :cond_1
    sget-object v0, Lscala/concurrent/forkjoin/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lscala/concurrent/forkjoin/CountedCompleter;->PENDING:J

    add-int/lit8 v5, v4, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCompleter()Lscala/concurrent/forkjoin/CountedCompleter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/concurrent/forkjoin/CountedCompleter<",
            "*>;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lscala/concurrent/forkjoin/CountedCompleter;->completer:Lscala/concurrent/forkjoin/CountedCompleter;

    return-object v0
.end method

.method public final getPendingCount()I
    .locals 1

    .line 122
    iget v0, p0, Lscala/concurrent/forkjoin/CountedCompleter;->pending:I

    return v0
.end method

.method public getRawResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRoot()Lscala/concurrent/forkjoin/CountedCompleter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/concurrent/forkjoin/CountedCompleter<",
            "*>;"
        }
    .end annotation

    move-object v0, p0

    .line 177
    :goto_0
    iget-object v1, v0, Lscala/concurrent/forkjoin/CountedCompleter;->completer:Lscala/concurrent/forkjoin/CountedCompleter;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method internalPropagateException(Ljava/lang/Throwable;)V
    .locals 4

    move-object v0, p0

    move-object v1, v0

    .line 316
    :goto_0
    invoke-virtual {v0, p1, v1}, Lscala/concurrent/forkjoin/CountedCompleter;->onExceptionalCompletion(Ljava/lang/Throwable;Lscala/concurrent/forkjoin/CountedCompleter;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lscala/concurrent/forkjoin/CountedCompleter;->completer:Lscala/concurrent/forkjoin/CountedCompleter;

    if-eqz v1, :cond_0

    iget v2, v1, Lscala/concurrent/forkjoin/CountedCompleter;->status:I

    if-ltz v2, :cond_0

    .line 317
    invoke-virtual {v1, p1}, Lscala/concurrent/forkjoin/CountedCompleter;->recordExceptionalCompletion(Ljava/lang/Throwable;)I

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final nextComplete()Lscala/concurrent/forkjoin/CountedCompleter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/concurrent/forkjoin/CountedCompleter<",
            "*>;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lscala/concurrent/forkjoin/CountedCompleter;->completer:Lscala/concurrent/forkjoin/CountedCompleter;

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0}, Lscala/concurrent/forkjoin/CountedCompleter;->firstComplete()Lscala/concurrent/forkjoin/CountedCompleter;

    move-result-object v0

    return-object v0

    .line 292
    :cond_0
    invoke-virtual {p0}, Lscala/concurrent/forkjoin/CountedCompleter;->quietlyComplete()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCompletion(Lscala/concurrent/forkjoin/CountedCompleter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onExceptionalCompletion(Ljava/lang/Throwable;Lscala/concurrent/forkjoin/CountedCompleter;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lscala/concurrent/forkjoin/CountedCompleter<",
            "*>;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public final propagateCompletion()V
    .locals 7

    move-object v6, p0

    .line 215
    :cond_0
    :goto_0
    iget v4, v6, Lscala/concurrent/forkjoin/CountedCompleter;->pending:I

    if-nez v4, :cond_2

    .line 216
    iget-object v0, v6, Lscala/concurrent/forkjoin/CountedCompleter;->completer:Lscala/concurrent/forkjoin/CountedCompleter;

    if-nez v0, :cond_1

    .line 217
    invoke-virtual {v6}, Lscala/concurrent/forkjoin/CountedCompleter;->quietlyComplete()V

    return-void

    :cond_1
    move-object v6, v0

    goto :goto_0

    .line 221
    :cond_2
    sget-object v0, Lscala/concurrent/forkjoin/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lscala/concurrent/forkjoin/CountedCompleter;->PENDING:J

    add-int/lit8 v5, v4, -0x1

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final quietlyCompleteRoot()V
    .locals 2

    move-object v0, p0

    .line 302
    :goto_0
    iget-object v1, v0, Lscala/concurrent/forkjoin/CountedCompleter;->completer:Lscala/concurrent/forkjoin/CountedCompleter;

    if-nez v1, :cond_0

    .line 303
    invoke-virtual {v0}, Lscala/concurrent/forkjoin/CountedCompleter;->quietlyComplete()V

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final setPendingCount(I)V
    .locals 0

    .line 131
    iput p1, p0, Lscala/concurrent/forkjoin/CountedCompleter;->pending:I

    return-void
.end method

.method protected setRawResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public final tryComplete()V
    .locals 8

    move-object v6, p0

    move-object v7, v6

    .line 191
    :cond_0
    :goto_0
    iget v4, v6, Lscala/concurrent/forkjoin/CountedCompleter;->pending:I

    if-nez v4, :cond_2

    .line 192
    invoke-virtual {v6, v7}, Lscala/concurrent/forkjoin/CountedCompleter;->onCompletion(Lscala/concurrent/forkjoin/CountedCompleter;)V

    .line 193
    iget-object v0, v6, Lscala/concurrent/forkjoin/CountedCompleter;->completer:Lscala/concurrent/forkjoin/CountedCompleter;

    if-nez v0, :cond_1

    .line 194
    invoke-virtual {v6}, Lscala/concurrent/forkjoin/CountedCompleter;->quietlyComplete()V

    return-void

    :cond_1
    move-object v7, v6

    move-object v6, v0

    goto :goto_0

    .line 198
    :cond_2
    sget-object v0, Lscala/concurrent/forkjoin/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lscala/concurrent/forkjoin/CountedCompleter;->PENDING:J

    add-int/lit8 v5, v4, -0x1

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method
