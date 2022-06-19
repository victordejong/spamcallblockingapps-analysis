.class final Lio/objectbox/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/c/b;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/c/b<",
        "Ljava/lang/Class;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final a:Lio/objectbox/BoxStore;

.field final b:Lorg/a/a/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/a/a/a/c<",
            "Ljava/lang/Integer;",
            "Lio/objectbox/c/a<",
            "Ljava/lang/Class;",
            ">;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "[I>;"
        }
    .end annotation
.end field

.field volatile d:Z


# direct methods
.method constructor <init>(Lio/objectbox/BoxStore;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lorg/a/a/a/c$a;->THREAD_SAFE:Lorg/a/a/a/c$a;

    invoke-static {v0}, Lorg/a/a/a/c;->a(Lorg/a/a/a/c$a;)Lorg/a/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lio/objectbox/f;->b:Lorg/a/a/a/c;

    .line 39
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/objectbox/f;->c:Ljava/util/Deque;

    .line 43
    iput-object p1, p0, Lio/objectbox/f;->a:Lio/objectbox/BoxStore;

    return-void
.end method

.method private a(Lio/objectbox/c/a;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/c/a<",
            "Ljava/lang/Class;",
            ">;I)V"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lio/objectbox/f;->b:Lorg/a/a/a/c;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/a/a/a/c;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    .line 75
    invoke-static {p2, p1}, Lio/objectbox/c/c;->a(Ljava/util/Set;Lio/objectbox/c/a;)V

    return-void
.end method

.method private static a(Ljava/lang/Class;)V
    .locals 3

    .line 94
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Observer failed while processing data for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ". Consider using an ErrorObserver"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 99
    throw v0
.end method

.method private synthetic a(Ljava/lang/Object;Lio/objectbox/c/a;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 81
    check-cast p1, Ljava/lang/Class;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lio/objectbox/f;->a:Lio/objectbox/BoxStore;

    .line 82
    invoke-virtual {p1}, Lio/objectbox/BoxStore;->c()Ljava/util/Collection;

    move-result-object p1

    .line 83
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 85
    :try_start_0
    invoke-interface {p2, v0}, Lio/objectbox/c/a;->onData(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 87
    :catch_0
    invoke-static {v0}, Lio/objectbox/f;->a(Ljava/lang/Class;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static synthetic lambda$iAJx0cLqGkktLvgIUnh7HTNL5ns(Lio/objectbox/f;Ljava/lang/Object;Lio/objectbox/c/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/objectbox/f;->a(Ljava/lang/Object;Lio/objectbox/c/a;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/objectbox/c/a;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/c/a<",
            "Ljava/lang/Class;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_1

    .line 49
    iget-object p2, p0, Lio/objectbox/f;->a:Lio/objectbox/BoxStore;

    .line 1471
    iget-object p2, p2, Lio/objectbox/BoxStore;->d:[I

    .line 49
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p2, v1

    .line 50
    iget-object v3, p0, Lio/objectbox/f;->b:Lorg/a/a/a/c;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2, p1}, Lorg/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lio/objectbox/f;->a:Lio/objectbox/BoxStore;

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {v0, p2}, Lio/objectbox/BoxStore;->b(Ljava/lang/Class;)I

    move-result p2

    .line 54
    iget-object v0, p0, Lio/objectbox/f;->b:Lorg/a/a/a/c;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lorg/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    return-void
.end method

.method public final b(Lio/objectbox/c/a;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/c/a<",
            "Ljava/lang/Class;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 64
    iget-object v0, p0, Lio/objectbox/f;->a:Lio/objectbox/BoxStore;

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {v0, p2}, Lio/objectbox/BoxStore;->b(Ljava/lang/Class;)I

    move-result p2

    .line 65
    invoke-direct {p0, p1, p2}, Lio/objectbox/f;->a(Lio/objectbox/c/a;I)V

    return-void

    .line 67
    :cond_0
    iget-object p2, p0, Lio/objectbox/f;->a:Lio/objectbox/BoxStore;

    .line 2471
    iget-object p2, p2, Lio/objectbox/BoxStore;->d:[I

    .line 67
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p2, v1

    .line 68
    invoke-direct {p0, p1, v2}, Lio/objectbox/f;->a(Lio/objectbox/c/a;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c(Lio/objectbox/c/a;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/c/a<",
            "Ljava/lang/Class;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lio/objectbox/f;->a:Lio/objectbox/BoxStore;

    new-instance v1, Lio/objectbox/-$$Lambda$f$iAJx0cLqGkktLvgIUnh7HTNL5ns;

    invoke-direct {v1, p0, p2, p1}, Lio/objectbox/-$$Lambda$f$iAJx0cLqGkktLvgIUnh7HTNL5ns;-><init>(Lio/objectbox/f;Ljava/lang/Object;Lio/objectbox/c/a;)V

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->c(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final run()V
    .locals 12

    :cond_0
    const/4 v0, 0x0

    .line 122
    :try_start_0
    iget-object v1, p0, Lio/objectbox/f;->c:Ljava/util/Deque;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 123
    :try_start_1
    iget-object v2, p0, Lio/objectbox/f;->c:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    if-nez v2, :cond_1

    .line 125
    iput-boolean v0, p0, Lio/objectbox/f;->d:Z

    .line 126
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    iput-boolean v0, p0, Lio/objectbox/f;->d:Z

    return-void

    .line 128
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    :try_start_3
    array-length v1, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget v4, v2, v3

    .line 130
    iget-object v5, p0, Lio/objectbox/f;->b:Lorg/a/a/a/c;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/a/a/a/c;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 131
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 132
    iget-object v6, p0, Lio/objectbox/f;->a:Lio/objectbox/BoxStore;

    .line 2476
    iget-object v6, v6, Lio/objectbox/BoxStore;->c:Lorg/a/a/a/b;

    int-to-long v7, v4

    const/16 v9, 0x20

    ushr-long v9, v7, v9

    long-to-int v10, v9

    long-to-int v9, v7

    xor-int/2addr v9, v10

    const v10, 0x7fffffff

    and-int/2addr v9, v10

    .line 3085
    iget v10, v6, Lorg/a/a/a/b;->b:I

    rem-int/2addr v9, v10

    .line 3086
    iget-object v6, v6, Lorg/a/a/a/b;->a:[Lorg/a/a/a/b$a;

    aget-object v6, v6, v9

    :goto_1
    if-eqz v6, :cond_3

    .line 3087
    iget-wide v9, v6, Lorg/a/a/a/b$a;->a:J

    cmp-long v11, v9, v7

    if-nez v11, :cond_2

    .line 3088
    iget-object v6, v6, Lorg/a/a/a/b$a;->b:Ljava/lang/Object;

    goto :goto_2

    .line 3086
    :cond_2
    iget-object v6, v6, Lorg/a/a/a/b$a;->c:Lorg/a/a/a/b$a;

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    .line 2476
    :goto_2
    check-cast v6, Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v6, :cond_4

    .line 134
    :try_start_4
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/objectbox/c/a;

    .line 135
    invoke-interface {v5, v6}, Lio/objectbox/c/a;->onData(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 138
    :catch_0
    :try_start_5
    invoke-static {v6}, Lio/objectbox/f;->a(Ljava/lang/Class;)V

    goto :goto_4

    .line 2478
    :cond_4
    new-instance v1, Lio/objectbox/exception/DbSchemaException;

    const-string v2, "No entity registered for type ID "

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/objectbox/exception/DbSchemaException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 128
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v1

    .line 145
    iput-boolean v0, p0, Lio/objectbox/f;->d:Z

    .line 146
    throw v1
.end method
