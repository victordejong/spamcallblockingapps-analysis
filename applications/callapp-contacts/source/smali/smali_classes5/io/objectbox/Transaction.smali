.class public Lio/objectbox/Transaction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static a:Z


# instance fields
.field final b:J

.field final c:Lio/objectbox/BoxStore;

.field final d:Z

.field e:I

.field volatile f:Z

.field private final g:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lio/objectbox/BoxStore;JI)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lio/objectbox/Transaction;->c:Lio/objectbox/BoxStore;

    .line 74
    iput-wide p2, p0, Lio/objectbox/Transaction;->b:J

    .line 75
    iput p4, p0, Lio/objectbox/Transaction;->e:I

    .line 76
    invoke-virtual {p0, p2, p3}, Lio/objectbox/Transaction;->nativeIsReadOnly(J)Z

    move-result p1

    iput-boolean p1, p0, Lio/objectbox/Transaction;->d:Z

    .line 78
    sget-boolean p1, Lio/objectbox/Transaction;->a:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lio/objectbox/Transaction;->g:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lio/objectbox/Cursor;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lio/objectbox/Cursor<",
            "TT;>;"
        }
    .end annotation

    .line 183
    invoke-virtual {p0}, Lio/objectbox/Transaction;->a()V

    .line 184
    iget-object v0, p0, Lio/objectbox/Transaction;->c:Lio/objectbox/BoxStore;

    invoke-virtual {v0, p1}, Lio/objectbox/BoxStore;->c(Ljava/lang/Class;)Lio/objectbox/c;

    move-result-object v0

    .line 185
    invoke-interface {v0}, Lio/objectbox/c;->getCursorFactory()Lio/objectbox/b/b;

    move-result-object v1

    .line 186
    iget-wide v2, p0, Lio/objectbox/Transaction;->b:J

    invoke-interface {v0}, Lio/objectbox/c;->getDbName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v3, v0, p1}, Lio/objectbox/Transaction;->nativeCreateCursor(JLjava/lang/String;Ljava/lang/Class;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_0

    .line 188
    iget-object p1, p0, Lio/objectbox/Transaction;->c:Lio/objectbox/BoxStore;

    invoke-interface {v1, p0, v2, v3, p1}, Lio/objectbox/b/b;->createCursor(Lio/objectbox/Transaction;JLio/objectbox/BoxStore;)Lio/objectbox/Cursor;

    move-result-object p1

    return-object p1

    .line 187
    :cond_0
    new-instance p1, Lio/objectbox/exception/DbException;

    const-string v0, "Could not create native cursor"

    invoke-direct {p1, v0}, Lio/objectbox/exception/DbException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final a()V
    .locals 2

    .line 92
    iget-boolean v0, p0, Lio/objectbox/Transaction;->f:Z

    if-nez v0, :cond_0

    return-void

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Transaction is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()V
    .locals 2

    .line 134
    invoke-virtual {p0}, Lio/objectbox/Transaction;->a()V

    .line 135
    iget-wide v0, p0, Lio/objectbox/Transaction;->b:J

    invoke-virtual {p0, v0, v1}, Lio/objectbox/Transaction;->nativeCommit(J)[I

    move-result-object v0

    .line 136
    iget-object v1, p0, Lio/objectbox/Transaction;->c:Lio/objectbox/BoxStore;

    invoke-virtual {v1, v0}, Lio/objectbox/BoxStore;->a([I)V

    return-void
.end method

.method public final c()Z
    .locals 2

    .line 201
    invoke-virtual {p0}, Lio/objectbox/Transaction;->a()V

    .line 202
    iget-wide v0, p0, Lio/objectbox/Transaction;->b:J

    invoke-virtual {p0, v0, v1}, Lio/objectbox/Transaction;->nativeIsRecycled(J)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized close()V
    .locals 3

    monitor-enter p0

    .line 99
    :try_start_0
    iget-boolean v0, p0, Lio/objectbox/Transaction;->f:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lio/objectbox/Transaction;->f:Z

    .line 102
    iget-object v0, p0, Lio/objectbox/Transaction;->c:Lio/objectbox/BoxStore;

    .line 1729
    iget-object v1, v0, Lio/objectbox/BoxStore;->f:Ljava/util/Set;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1730
    :try_start_1
    iget-object v0, v0, Lio/objectbox/BoxStore;->f:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1731
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :try_start_2
    iget-wide v0, p0, Lio/objectbox/Transaction;->b:J

    invoke-virtual {p0, v0, v1}, Lio/objectbox/Transaction;->nativeIsOwnerThread(J)Z

    move-result v0

    if-nez v0, :cond_3

    .line 105
    iget-wide v0, p0, Lio/objectbox/Transaction;->b:J

    invoke-virtual {p0, v0, v1}, Lio/objectbox/Transaction;->nativeIsActive(J)Z

    move-result v0

    .line 106
    iget-wide v1, p0, Lio/objectbox/Transaction;->b:J

    invoke-virtual {p0, v1, v2}, Lio/objectbox/Transaction;->nativeIsRecycled(J)Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_3

    .line 108
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " (initial commit count: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lio/objectbox/Transaction;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 110
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Transaction is still active"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Hint: use closeThreadResources() to avoid finalizing recycled transactions"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 115
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 117
    :goto_0
    iget-object v0, p0, Lio/objectbox/Transaction;->g:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 118
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Transaction was initially created here:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lio/objectbox/Transaction;->g:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 121
    :cond_2
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 127
    :cond_3
    iget-object v0, p0, Lio/objectbox/Transaction;->c:Lio/objectbox/BoxStore;

    .line 2537
    iget-boolean v0, v0, Lio/objectbox/BoxStore;->m:Z

    if-nez v0, :cond_4

    .line 128
    iget-wide v0, p0, Lio/objectbox/Transaction;->b:J

    invoke-virtual {p0, v0, v1}, Lio/objectbox/Transaction;->nativeDestroy(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 1731
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 131
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lio/objectbox/Transaction;->close()V

    .line 88
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method native nativeAbort(J)V
.end method

.method native nativeCommit(J)[I
.end method

.method native nativeCreateCursor(JLjava/lang/String;Ljava/lang/Class;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)J"
        }
    .end annotation
.end method

.method native nativeDestroy(J)V
.end method

.method native nativeIsActive(J)Z
.end method

.method native nativeIsOwnerThread(J)Z
.end method

.method native nativeIsReadOnly(J)Z
.end method

.method native nativeIsRecycled(J)Z
.end method

.method native nativeRecycle(J)V
.end method

.method native nativeRenew(J)V
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TX "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lio/objectbox/Transaction;->b:J

    const/16 v3, 0x10

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/objectbox/Transaction;->d:Z

    if-eqz v1, :cond_0

    const-string v1, "read-only"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "write"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", initialCommitCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/objectbox/Transaction;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
