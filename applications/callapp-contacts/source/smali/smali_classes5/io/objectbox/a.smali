.class public final Lio/objectbox/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lio/objectbox/BoxStore;

.field public final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lio/objectbox/Cursor<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lio/objectbox/Cursor<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final e:Lio/objectbox/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/b/c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/objectbox/BoxStore;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/BoxStore;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lio/objectbox/a;->c:Ljava/lang/ThreadLocal;

    .line 54
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lio/objectbox/a;->d:Ljava/lang/ThreadLocal;

    .line 62
    iput-object p1, p0, Lio/objectbox/a;->a:Lio/objectbox/BoxStore;

    .line 63
    iput-object p2, p0, Lio/objectbox/a;->b:Ljava/lang/Class;

    .line 64
    invoke-virtual {p1, p2}, Lio/objectbox/BoxStore;->c(Ljava/lang/Class;)Lio/objectbox/c;

    move-result-object p1

    invoke-interface {p1}, Lio/objectbox/c;->getIdGetter()Lio/objectbox/b/c;

    move-result-object p1

    iput-object p1, p0, Lio/objectbox/a;->e:Lio/objectbox/b/c;

    return-void
.end method

.method private a(Lio/objectbox/Cursor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/Cursor<",
            "TT;>;)V"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lio/objectbox/a;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p1}, Lio/objectbox/Cursor;->close()V

    .line 123
    invoke-virtual {p1}, Lio/objectbox/Cursor;->getTx()Lio/objectbox/Transaction;

    move-result-object p1

    .line 4140
    invoke-virtual {p1}, Lio/objectbox/Transaction;->b()V

    .line 4141
    invoke-virtual {p1}, Lio/objectbox/Transaction;->close()V

    :cond_0
    return-void
.end method

.method private b(Lio/objectbox/Cursor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/Cursor<",
            "TT;>;)V"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lio/objectbox/a;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p1}, Lio/objectbox/Cursor;->getTx()Lio/objectbox/Transaction;

    move-result-object v0

    .line 4206
    iget-boolean v1, v0, Lio/objectbox/Transaction;->f:Z

    if-nez v1, :cond_0

    .line 132
    invoke-virtual {p1}, Lio/objectbox/Cursor;->close()V

    .line 5145
    invoke-virtual {v0}, Lio/objectbox/Transaction;->a()V

    .line 5146
    iget-wide v1, v0, Lio/objectbox/Transaction;->b:J

    invoke-virtual {v0, v1, v2}, Lio/objectbox/Transaction;->nativeAbort(J)V

    .line 134
    invoke-virtual {v0}, Lio/objectbox/Transaction;->close()V

    :cond_0
    return-void
.end method

.method private c(Lio/objectbox/Cursor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/Cursor<",
            "TT;>;)V"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lio/objectbox/a;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 142
    invoke-virtual {p1}, Lio/objectbox/Cursor;->getTx()Lio/objectbox/Transaction;

    move-result-object p1

    .line 5206
    iget-boolean v0, p1, Lio/objectbox/Transaction;->f:Z

    if-nez v0, :cond_0

    .line 143
    invoke-virtual {p1}, Lio/objectbox/Transaction;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5210
    iget-boolean v0, p1, Lio/objectbox/Transaction;->d:Z

    if-eqz v0, :cond_0

    .line 6165
    invoke-virtual {p1}, Lio/objectbox/Transaction;->a()V

    .line 6166
    iget-wide v0, p1, Lio/objectbox/Transaction;->b:J

    invoke-virtual {p1, v0, v1}, Lio/objectbox/Transaction;->nativeRecycle(J)V

    goto :goto_0

    .line 144
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Illegal reader TX state"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private f()Lio/objectbox/Cursor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/Cursor<",
            "TT;>;"
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lio/objectbox/a;->a()Lio/objectbox/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 72
    :cond_0
    iget-object v0, p0, Lio/objectbox/a;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/objectbox/Cursor;

    if-eqz v0, :cond_2

    .line 74
    iget-object v1, v0, Lio/objectbox/Cursor;->tx:Lio/objectbox/Transaction;

    .line 1206
    iget-boolean v2, v1, Lio/objectbox/Transaction;->f:Z

    if-nez v2, :cond_1

    .line 75
    invoke-virtual {v1}, Lio/objectbox/Transaction;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2171
    invoke-virtual {v1}, Lio/objectbox/Transaction;->a()V

    .line 2172
    iget-object v2, v1, Lio/objectbox/Transaction;->c:Lio/objectbox/BoxStore;

    iget v2, v2, Lio/objectbox/BoxStore;->o:I

    iput v2, v1, Lio/objectbox/Transaction;->e:I

    .line 2173
    iget-wide v2, v1, Lio/objectbox/Transaction;->b:J

    invoke-virtual {v1, v2, v3}, Lio/objectbox/Transaction;->nativeRenew(J)V

    .line 79
    invoke-virtual {v0}, Lio/objectbox/Cursor;->renew()V

    goto :goto_0

    .line 76
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal reader TX state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_2
    iget-object v0, p0, Lio/objectbox/a;->a:Lio/objectbox/BoxStore;

    invoke-virtual {v0}, Lio/objectbox/BoxStore;->e()Lio/objectbox/Transaction;

    move-result-object v0

    iget-object v1, p0, Lio/objectbox/a;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lio/objectbox/Transaction;->a(Ljava/lang/Class;)Lio/objectbox/Cursor;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lio/objectbox/a;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method private g()Lio/objectbox/Cursor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/Cursor<",
            "TT;>;"
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lio/objectbox/a;->a()Lio/objectbox/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 109
    :cond_0
    iget-object v0, p0, Lio/objectbox/a;->a:Lio/objectbox/BoxStore;

    invoke-virtual {v0}, Lio/objectbox/BoxStore;->d()Lio/objectbox/Transaction;

    move-result-object v0

    .line 111
    :try_start_0
    iget-object v1, p0, Lio/objectbox/a;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lio/objectbox/Transaction;->a(Ljava/lang/Class;)Lio/objectbox/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 113
    invoke-virtual {v0}, Lio/objectbox/Transaction;->close()V

    .line 114
    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)J
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .line 343
    invoke-direct {p0}, Lio/objectbox/a;->g()Lio/objectbox/Cursor;

    move-result-object v0

    .line 345
    :try_start_0
    invoke-virtual {v0, p1}, Lio/objectbox/Cursor;->put(Ljava/lang/Object;)J

    move-result-wide v1

    .line 346
    invoke-direct {p0, v0}, Lio/objectbox/a;->a(Lio/objectbox/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    invoke-direct {p0, v0}, Lio/objectbox/a;->b(Lio/objectbox/Cursor;)V

    return-wide v1

    :catchall_0
    move-exception p1

    invoke-direct {p0, v0}, Lio/objectbox/a;->b(Lio/objectbox/Cursor;)V

    .line 350
    throw p1
.end method

.method public final a()Lio/objectbox/Cursor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/Cursor<",
            "TT;>;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lio/objectbox/a;->a:Lio/objectbox/BoxStore;

    iget-object v0, v0, Lio/objectbox/BoxStore;->l:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/objectbox/Transaction;

    if-eqz v0, :cond_3

    .line 2206
    iget-boolean v1, v0, Lio/objectbox/Transaction;->f:Z

    if-nez v1, :cond_2

    .line 94
    iget-object v1, p0, Lio/objectbox/a;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/objectbox/Cursor;

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {v1}, Lio/objectbox/Cursor;->getTx()Lio/objectbox/Transaction;

    move-result-object v2

    .line 3206
    iget-boolean v2, v2, Lio/objectbox/Transaction;->f:Z

    if-eqz v2, :cond_1

    .line 96
    :cond_0
    iget-object v1, p0, Lio/objectbox/a;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lio/objectbox/Transaction;->a(Ljava/lang/Class;)Lio/objectbox/Cursor;

    move-result-object v1

    .line 97
    iget-object v0, p0, Lio/objectbox/a;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    return-object v1

    .line 92
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Active TX is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 207
    invoke-direct {p0}, Lio/objectbox/a;->f()Lio/objectbox/Cursor;

    move-result-object v0

    .line 209
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lio/objectbox/Cursor;->get(J)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    invoke-direct {p0, v0}, Lio/objectbox/a;->c(Lio/objectbox/Cursor;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-direct {p0, v0}, Lio/objectbox/a;->c(Lio/objectbox/Cursor;)V

    .line 212
    throw p1
.end method

.method public final a(Lio/objectbox/b/a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RESU",
            "LT:Ljava/lang/Object;",
            ">(",
            "Lio/objectbox/b/a<",
            "TRESU",
            "LT;",
            ">;)TRESU",
            "LT;"
        }
    .end annotation

    .line 684
    invoke-direct {p0}, Lio/objectbox/a;->f()Lio/objectbox/Cursor;

    move-result-object v0

    .line 686
    :try_start_0
    invoke-virtual {v0}, Lio/objectbox/Cursor;->internalHandle()J

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Lio/objectbox/b/a;->call(J)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    invoke-direct {p0, v0}, Lio/objectbox/a;->c(Lio/objectbox/Cursor;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-direct {p0, v0}, Lio/objectbox/a;->c(Lio/objectbox/Cursor;)V

    .line 689
    throw p1
.end method

.method public final a(IIJZ)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJZ)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 634
    invoke-direct {p0}, Lio/objectbox/a;->f()Lio/objectbox/Cursor;

    move-result-object v6

    move-object v0, v6

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    .line 636
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lio/objectbox/Cursor;->getRelationEntities(IIJZ)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 638
    invoke-direct {p0, v6}, Lio/objectbox/a;->c(Lio/objectbox/Cursor;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-direct {p0, v6}, Lio/objectbox/a;->c(Lio/objectbox/Cursor;)V

    .line 639
    throw p1
.end method

.method public final a(ILio/objectbox/g;J)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/objectbox/g<",
            "*>;J)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 624
    invoke-direct {p0}, Lio/objectbox/a;->f()Lio/objectbox/Cursor;

    move-result-object v0

    .line 626
    :try_start_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lio/objectbox/Cursor;->getBacklinkEntities(ILio/objectbox/g;J)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    invoke-direct {p0, v0}, Lio/objectbox/a;->c(Lio/objectbox/Cursor;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-direct {p0, v0}, Lio/objectbox/a;->c(Lio/objectbox/Cursor;)V

    .line 629
    throw p1
.end method

.method final a(Lio/objectbox/Transaction;)V
    .locals 2

    .line 179
    iget-object v0, p0, Lio/objectbox/a;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/objectbox/Cursor;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Lio/objectbox/Cursor;->getTx()Lio/objectbox/Transaction;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 181
    iget-object p1, p0, Lio/objectbox/a;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    .line 182
    invoke-virtual {v0}, Lio/objectbox/Cursor;->close()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 380
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 384
    :cond_0
    invoke-direct {p0}, Lio/objectbox/a;->g()Lio/objectbox/Cursor;

    move-result-object v0

    .line 386
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 387
    invoke-virtual {v0, v1}, Lio/objectbox/Cursor;->put(Ljava/lang/Object;)J

    goto :goto_0

    .line 389
    :cond_1
    invoke-direct {p0, v0}, Lio/objectbox/a;->a(Lio/objectbox/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    invoke-direct {p0, v0}, Lio/objectbox/a;->b(Lio/objectbox/Cursor;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0, v0}, Lio/objectbox/a;->b(Lio/objectbox/Cursor;)V

    .line 392
    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public final b()J
    .locals 3

    .line 289
    invoke-direct {p0}, Lio/objectbox/a;->f()Lio/objectbox/Cursor;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 291
    :try_start_0
    invoke-virtual {v0, v1, v2}, Lio/objectbox/Cursor;->count(J)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    invoke-direct {p0, v0}, Lio/objectbox/a;->c(Lio/objectbox/Cursor;)V

    return-wide v1

    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lio/objectbox/a;->c(Lio/objectbox/Cursor;)V

    .line 294
    throw v1
.end method

.method public final b(Lio/objectbox/b/a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RESU",
            "LT:Ljava/lang/Object;",
            ">(",
            "Lio/objectbox/b/a<",
            "TRESU",
            "LT;",
            ">;)TRESU",
            "LT;"
        }
    .end annotation

    .line 694
    invoke-direct {p0}, Lio/objectbox/a;->g()Lio/objectbox/Cursor;

    move-result-object v0

    .line 697
    :try_start_0
    invoke-virtual {v0}, Lio/objectbox/Cursor;->internalHandle()J

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Lio/objectbox/b/a;->call(J)Ljava/lang/Object;

    move-result-object p1

    .line 698
    invoke-direct {p0, v0}, Lio/objectbox/a;->a(Lio/objectbox/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 700
    invoke-direct {p0, v0}, Lio/objectbox/a;->b(Lio/objectbox/Cursor;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-direct {p0, v0}, Lio/objectbox/a;->b(Lio/objectbox/Cursor;)V

    .line 701
    throw p1
.end method

.method public final b(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 529
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 532
    :cond_0
    invoke-direct {p0}, Lio/objectbox/a;->g()Lio/objectbox/Cursor;

    move-result-object v0

    .line 534
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 535
    invoke-virtual {v0, v1}, Lio/objectbox/Cursor;->getId(Ljava/lang/Object;)J

    move-result-wide v1

    .line 536
    invoke-virtual {v0, v1, v2}, Lio/objectbox/Cursor;->deleteEntity(J)Z

    goto :goto_0

    .line 538
    :cond_1
    invoke-direct {p0, v0}, Lio/objectbox/a;->a(Lio/objectbox/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    invoke-direct {p0, v0}, Lio/objectbox/a;->b(Lio/objectbox/Cursor;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0, v0}, Lio/objectbox/a;->b(Lio/objectbox/Cursor;)V

    .line 541
    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public final b(J)Z
    .locals 1

    .line 430
    invoke-direct {p0}, Lio/objectbox/a;->g()Lio/objectbox/Cursor;

    move-result-object v0

    .line 433
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lio/objectbox/Cursor;->deleteEntity(J)Z

    move-result p1

    .line 434
    invoke-direct {p0, v0}, Lio/objectbox/a;->a(Lio/objectbox/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    invoke-direct {p0, v0}, Lio/objectbox/a;->b(Lio/objectbox/Cursor;)V

    return p1

    :catchall_0
    move-exception p1

    invoke-direct {p0, v0}, Lio/objectbox/a;->b(Lio/objectbox/Cursor;)V

    .line 437
    throw p1
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 491
    invoke-direct {p0}, Lio/objectbox/a;->g()Lio/objectbox/Cursor;

    move-result-object v0

    .line 494
    :try_start_0
    invoke-virtual {v0, p1}, Lio/objectbox/Cursor;->getId(Ljava/lang/Object;)J

    move-result-wide v1

    .line 495
    invoke-virtual {v0, v1, v2}, Lio/objectbox/Cursor;->deleteEntity(J)Z

    move-result p1

    .line 496
    invoke-direct {p0, v0}, Lio/objectbox/a;->a(Lio/objectbox/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    invoke-direct {p0, v0}, Lio/objectbox/a;->b(Lio/objectbox/Cursor;)V

    return p1

    :catchall_0
    move-exception p1

    invoke-direct {p0, v0}, Lio/objectbox/a;->b(Lio/objectbox/Cursor;)V

    .line 499
    throw p1
.end method

.method public final c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 308
    invoke-direct {p0}, Lio/objectbox/a;->f()Lio/objectbox/Cursor;

    move-result-object v1

    .line 310
    :try_start_0
    invoke-virtual {v1}, Lio/objectbox/Cursor;->first()Ljava/lang/Object;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    .line 311
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-virtual {v1}, Lio/objectbox/Cursor;->next()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 315
    :cond_0
    invoke-direct {p0, v1}, Lio/objectbox/a;->c(Lio/objectbox/Cursor;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1}, Lio/objectbox/a;->c(Lio/objectbox/Cursor;)V

    .line 316
    throw v0
.end method

.method public final d()V
    .locals 2

    .line 548
    invoke-direct {p0}, Lio/objectbox/a;->g()Lio/objectbox/Cursor;

    move-result-object v0

    .line 550
    :try_start_0
    invoke-virtual {v0}, Lio/objectbox/Cursor;->deleteAll()V

    .line 551
    invoke-direct {p0, v0}, Lio/objectbox/a;->a(Lio/objectbox/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    invoke-direct {p0, v0}, Lio/objectbox/a;->b(Lio/objectbox/Cursor;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lio/objectbox/a;->b(Lio/objectbox/Cursor;)V

    .line 554
    throw v1
.end method

.method public final e()Lio/objectbox/query/QueryBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/query/QueryBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 572
    new-instance v0, Lio/objectbox/query/QueryBuilder;

    iget-object v1, p0, Lio/objectbox/a;->a:Lio/objectbox/BoxStore;

    .line 7046
    iget-wide v1, v1, Lio/objectbox/BoxStore;->b:J

    .line 572
    iget-object v3, p0, Lio/objectbox/a;->a:Lio/objectbox/BoxStore;

    iget-object v4, p0, Lio/objectbox/a;->b:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Lio/objectbox/BoxStore;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lio/objectbox/query/QueryBuilder;-><init>(Lio/objectbox/a;JLjava/lang/String;)V

    return-object v0
.end method
