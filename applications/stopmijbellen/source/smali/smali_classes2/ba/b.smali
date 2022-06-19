.class public Lba/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lba/b$c;
    }
.end annotation


# static fields
.field public static volatile q:Lba/b;

.field public static final r:Lba/c;

.field public static final s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lba/o;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lba/b$c;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lba/f;

.field public final f:Lba/j;

.field public final g:Lba/a;

.field public final h:Li2/y;

.field public final i:Lba/n;

.field public final j:Ljava/util/concurrent/ExecutorService;

.field public final k:Z

.field public final l:Z

.field public final m:Z

.field public final n:Z

.field public final o:Z

.field public final p:Lba/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lba/c;

    invoke-direct {v0}, Lba/c;-><init>()V

    sput-object v0, Lba/b;->r:Lba/c;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lba/b;->s:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    sget-object v0, Lba/b;->r:Lba/c;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v1, Lba/b$a;

    invoke-direct {v1, p0}, Lba/b$a;-><init>(Lba/b;)V

    iput-object v1, p0, Lba/b;->d:Ljava/lang/ThreadLocal;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-boolean v1, Lca/a;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 6
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_0

    .line 7
    new-instance v1, Lca/a;

    const-string v3, "EventBus"

    invoke-direct {v1, v3}, Lca/a;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_0
    new-instance v1, Lba/e$a;

    invoke-direct {v1}, Lba/e$a;-><init>()V

    .line 9
    :goto_1
    iput-object v1, p0, Lba/b;->p:Lba/e;

    .line 10
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lba/b;->a:Ljava/util/Map;

    .line 11
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lba/b;->b:Ljava/util/Map;

    .line 12
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lba/b;->c:Ljava/util/Map;

    .line 13
    sget-boolean v1, Lca/a;->a:Z

    if-eqz v1, :cond_2

    .line 14
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-object v1, v2

    :goto_2
    if-nez v1, :cond_1

    goto :goto_3

    .line 15
    :cond_1
    new-instance v3, Lba/f$a;

    invoke-direct {v3, v1}, Lba/f$a;-><init>(Landroid/os/Looper;)V

    goto :goto_4

    :cond_2
    :goto_3
    move-object v3, v2

    .line 16
    :goto_4
    iput-object v3, p0, Lba/b;->e:Lba/f;

    if-eqz v3, :cond_3

    .line 17
    new-instance v1, Lba/d;

    iget-object v3, v3, Lba/f$a;->a:Landroid/os/Looper;

    const/16 v4, 0xa

    invoke-direct {v1, p0, v3, v4}, Lba/d;-><init>(Lba/b;Landroid/os/Looper;I)V

    goto :goto_5

    :cond_3
    move-object v1, v2

    .line 18
    :goto_5
    iput-object v1, p0, Lba/b;->f:Lba/j;

    .line 19
    new-instance v1, Lba/a;

    invoke-direct {v1, p0}, Lba/a;-><init>(Lba/b;)V

    iput-object v1, p0, Lba/b;->g:Lba/a;

    .line 20
    new-instance v1, Li2/y;

    invoke-direct {v1, p0}, Li2/y;-><init>(Lba/b;)V

    iput-object v1, p0, Lba/b;->h:Li2/y;

    const/4 v1, 0x0

    .line 21
    new-instance v3, Lba/n;

    invoke-direct {v3, v2, v1, v1}, Lba/n;-><init>(Ljava/util/List;ZZ)V

    iput-object v3, p0, Lba/b;->i:Lba/n;

    const/4 v1, 0x1

    .line 22
    iput-boolean v1, p0, Lba/b;->k:Z

    .line 23
    iput-boolean v1, p0, Lba/b;->l:Z

    .line 24
    iput-boolean v1, p0, Lba/b;->m:Z

    .line 25
    iput-boolean v1, p0, Lba/b;->n:Z

    .line 26
    iput-boolean v1, p0, Lba/b;->o:Z

    .line 27
    iget-object v0, v0, Lba/c;->a:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lba/b;->j:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a(Ljava/util/List;[Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 2
    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, v2}, Lba/b;->a(Ljava/util/List;[Ljava/lang/Class;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static b()Lba/b;
    .locals 2

    .line 1
    sget-object v0, Lba/b;->q:Lba/b;

    if-nez v0, :cond_1

    .line 2
    const-class v1, Lba/b;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lba/b;->q:Lba/b;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lba/b;

    invoke-direct {v0}, Lba/b;-><init>()V

    sput-object v0, Lba/b;->q:Lba/b;

    .line 5
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public c(Lba/h;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lba/h;->a:Ljava/lang/Object;

    .line 2
    iget-object v1, p1, Lba/h;->b:Lba/o;

    const/4 v2, 0x0

    .line 3
    iput-object v2, p1, Lba/h;->a:Ljava/lang/Object;

    .line 4
    iput-object v2, p1, Lba/h;->b:Lba/o;

    .line 5
    iput-object v2, p1, Lba/h;->c:Lba/h;

    .line 6
    sget-object v2, Lba/h;->d:Ljava/util/List;

    monitor-enter v2

    .line 7
    :try_start_0
    move-object v3, v2

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x2710

    if-ge v3, v4, :cond_0

    .line 8
    move-object v3, v2

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-boolean p1, v1, Lba/o;->c:Z

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p0, v1, v0}, Lba/b;->d(Lba/o;Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public d(Lba/o;Ljava/lang/Object;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p1, Lba/o;->b:Lba/m;

    iget-object v0, v0, Lba/m;->a:Ljava/lang/reflect/Method;

    iget-object v1, p1, Lba/o;->a:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected exception"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 4
    instance-of v1, p2, Lba/l;

    if-eqz v1, :cond_0

    .line 5
    iget-boolean v1, p0, Lba/b;->k:Z

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p0, Lba/b;->p:Lba/e;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "SubscriberExceptionEvent subscriber "

    invoke-static {v3}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object p1, p1, Lba/o;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " threw an exception"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1, v0}, Lba/e;->b(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    check-cast p2, Lba/l;

    .line 8
    iget-object p1, p0, Lba/b;->p:Lba/e;

    const-string v0, "Initial event "

    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lba/l;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " caused exception in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lba/l;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p2, p2, Lba/l;->a:Ljava/lang/Throwable;

    invoke-interface {p1, v2, v0, p2}, Lba/e;->b(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-boolean v1, p0, Lba/b;->k:Z

    if-eqz v1, :cond_1

    .line 10
    iget-object v1, p0, Lba/b;->p:Lba/e;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Could not dispatch event: "

    invoke-static {v3}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to subscribing class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lba/o;->a:Ljava/lang/Object;

    .line 11
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-interface {v1, v2, v3, v0}, Lba/e;->b(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :cond_1
    iget-boolean v1, p0, Lba/b;->m:Z

    if-eqz v1, :cond_2

    .line 14
    new-instance v1, Lba/l;

    iget-object p1, p1, Lba/o;->a:Ljava/lang/Object;

    invoke-direct {v1, p0, v0, p2, p1}, Lba/l;-><init>(Lba/b;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    invoke-virtual {p0, v1}, Lba/b;->g(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final e()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lba/b;->e:Lba/f;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    check-cast v0, Lba/f$a;

    .line 2
    iget-object v0, v0, Lba/f$a;->a:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public declared-synchronized f(Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lba/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public g(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lba/b;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lba/b$c;

    .line 2
    iget-object v1, v0, Lba/b$c;->a:Ljava/util/List;

    .line 3
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-boolean p1, v0, Lba/b$c;->b:Z

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lba/b;->e()Z

    move-result p1

    iput-boolean p1, v0, Lba/b$c;->c:Z

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, v0, Lba/b$c;->b:Z

    :goto_0
    const/4 p1, 0x0

    .line 7
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8
    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lba/b;->h(Ljava/lang/Object;Lba/b$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 9
    :cond_0
    iput-boolean p1, v0, Lba/b$c;->b:Z

    .line 10
    iput-boolean p1, v0, Lba/b$c;->c:Z

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 11
    iput-boolean p1, v0, Lba/b$c;->b:Z

    .line 12
    iput-boolean p1, v0, Lba/b$c;->c:Z

    .line 13
    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method public final h(Ljava/lang/Object;Lba/b$c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lba/b;->o:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 3
    sget-object v1, Lba/b;->s:Ljava/util/Map;

    monitor-enter v1

    .line 4
    :try_start_0
    move-object v3, v1

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_1

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    :goto_0
    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v4}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v5

    invoke-static {v3, v5}, Lba/b;->a(Ljava/util/List;[Ljava/lang/Class;)V

    .line 8
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_0

    .line 9
    :cond_0
    sget-object v4, Lba/b;->s:Ljava/util/Map;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v4, v1, :cond_3

    .line 12
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    .line 13
    invoke-virtual {p0, p1, p2, v6}, Lba/b;->i(Ljava/lang/Object;Lba/b$c;Ljava/lang/Class;)Z

    move-result v6

    or-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 15
    :cond_2
    invoke-virtual {p0, p1, p2, v0}, Lba/b;->i(Ljava/lang/Object;Lba/b$c;Ljava/lang/Class;)Z

    move-result v5

    :cond_3
    if-nez v5, :cond_5

    .line 16
    iget-boolean p2, p0, Lba/b;->l:Z

    if-eqz p2, :cond_4

    .line 17
    iget-object p2, p0, Lba/b;->p:Lba/e;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No subscribers registered for event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v1, v3}, Lba/e;->a(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 18
    :cond_4
    iget-boolean p2, p0, Lba/b;->n:Z

    if-eqz p2, :cond_5

    const-class p2, Lba/g;

    if-eq v0, p2, :cond_5

    const-class p2, Lba/l;

    if-eq v0, p2, :cond_5

    .line 19
    new-instance p2, Lba/g;

    invoke-direct {p2, p0, p1, v2}, Lba/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, p2}, Lba/b;->g(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public final i(Ljava/lang/Object;Lba/b$c;Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lba/b$c;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lba/b;->a:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 4
    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lba/o;

    .line 6
    iput-object p1, p2, Lba/b$c;->d:Ljava/lang/Object;

    .line 7
    :try_start_1
    iget-boolean v1, p2, Lba/b$c;->c:Z

    invoke-virtual {p0, v0, p1, v1}, Lba/b;->j(Lba/o;Ljava/lang/Object;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    throw p1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v0

    :catchall_1
    move-exception p1

    .line 9
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final j(Lba/o;Ljava/lang/Object;Z)V
    .locals 2

    .line 1
    sget-object v0, Lba/b$b;->a:[I

    iget-object v1, p1, Lba/o;->b:Lba/m;

    iget-object v1, v1, Lba/m;->b:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 p3, 0x5

    if-ne v0, p3, :cond_0

    .line 2
    iget-object p3, p0, Lba/b;->h:Li2/y;

    invoke-virtual {p3, p1, p2}, Li2/y;->a(Lba/o;Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Unknown thread mode: "

    invoke-static {p3}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p1, p1, Lba/o;->b:Lba/m;

    iget-object p1, p1, Lba/m;->b:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    if-eqz p3, :cond_2

    .line 4
    iget-object p3, p0, Lba/b;->g:Lba/a;

    invoke-virtual {p3, p1, p2}, Lba/a;->a(Lba/o;Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0, p1, p2}, Lba/b;->d(Lba/o;Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_3
    iget-object p3, p0, Lba/b;->f:Lba/j;

    if-eqz p3, :cond_4

    .line 7
    invoke-interface {p3, p1, p2}, Lba/j;->a(Lba/o;Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_4
    invoke-virtual {p0, p1, p2}, Lba/b;->d(Lba/o;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    if-eqz p3, :cond_6

    .line 9
    invoke-virtual {p0, p1, p2}, Lba/b;->d(Lba/o;Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_6
    iget-object p3, p0, Lba/b;->f:Lba/j;

    invoke-interface {p3, p1, p2}, Lba/j;->a(Lba/o;Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_7
    invoke-virtual {p0, p1, p2}, Lba/b;->d(Lba/o;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public k(Ljava/lang/Object;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lba/b;->i:Lba/n;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v2, Lba/n;->a:Ljava/util/Map;

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    goto :goto_3

    .line 4
    :cond_0
    invoke-virtual {v1}, Lba/n;->c()Lba/n$a;

    move-result-object v2

    .line 5
    iput-object v0, v2, Lba/n$a;->e:Ljava/lang/Class;

    const/4 v3, 0x0

    .line 6
    iput-boolean v3, v2, Lba/n$a;->f:Z

    const/4 v4, 0x0

    .line 7
    iput-object v4, v2, Lba/n$a;->g:Lda/a;

    .line 8
    :goto_0
    iget-object v5, v2, Lba/n$a;->e:Ljava/lang/Class;

    if-eqz v5, :cond_5

    .line 9
    iget-object v5, v2, Lba/n$a;->g:Lda/a;

    if-eqz v5, :cond_1

    invoke-interface {v5}, Lda/a;->c()Lda/a;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 10
    iget-object v5, v2, Lba/n$a;->g:Lda/a;

    invoke-interface {v5}, Lda/a;->c()Lda/a;

    move-result-object v5

    .line 11
    iget-object v6, v2, Lba/n$a;->e:Ljava/lang/Class;

    invoke-interface {v5}, Lda/a;->b()Ljava/lang/Class;

    move-result-object v7

    if-ne v6, v7, :cond_1

    goto :goto_1

    :cond_1
    move-object v5, v4

    .line 12
    :goto_1
    iput-object v5, v2, Lba/n$a;->g:Lda/a;

    if-eqz v5, :cond_3

    .line 13
    invoke-interface {v5}, Lda/a;->a()[Lba/m;

    move-result-object v5

    .line 14
    array-length v6, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_4

    aget-object v8, v5, v7

    .line 15
    iget-object v9, v8, Lba/m;->a:Ljava/lang/reflect/Method;

    iget-object v10, v8, Lba/m;->c:Ljava/lang/Class;

    invoke-virtual {v2, v9, v10}, Lba/n$a;->a(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 16
    iget-object v9, v2, Lba/n$a;->a:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 17
    :cond_3
    invoke-virtual {v1, v2}, Lba/n;->a(Lba/n$a;)V

    .line 18
    :cond_4
    invoke-virtual {v2}, Lba/n$a;->c()V

    goto :goto_0

    .line 19
    :cond_5
    invoke-virtual {v1, v2}, Lba/n;->b(Lba/n$a;)Ljava/util/List;

    move-result-object v2

    .line 20
    move-object v1, v2

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 21
    sget-object v1, Lba/n;->a:Ljava/util/Map;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :goto_3
    monitor-enter p0

    .line 23
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lba/m;

    .line 24
    invoke-virtual {p0, p1, v1}, Lba/b;->l(Ljava/lang/Object;Lba/m;)V

    goto :goto_4

    .line 25
    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 26
    :cond_7
    new-instance p1, Lorg/greenrobot/eventbus/EventBusException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscriber "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " and its super classes have no public methods with the @Subscribe annotation"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/greenrobot/eventbus/EventBusException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final l(Ljava/lang/Object;Lba/m;)V
    .locals 7

    .line 1
    iget-object v0, p2, Lba/m;->c:Ljava/lang/Class;

    .line 2
    new-instance v1, Lba/o;

    invoke-direct {v1, p1, p2}, Lba/o;-><init>(Ljava/lang/Object;Lba/m;)V

    .line 3
    iget-object v2, p0, Lba/b;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 5
    iget-object v3, p0, Lba/b;->a:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 7
    :goto_0
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-gt v4, v3, :cond_3

    if-eq v4, v3, :cond_2

    .line 8
    iget v5, p2, Lba/m;->d:I

    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lba/o;

    iget-object v6, v6, Lba/o;->b:Lba/m;

    iget v6, v6, Lba/m;->d:I

    if-le v5, v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 9
    :cond_2
    :goto_2
    invoke-virtual {v2, v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 10
    :cond_3
    iget-object v2, p0, Lba/b;->b:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_4

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iget-object v3, p0, Lba/b;->b:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_4
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-boolean p1, p2, Lba/m;->e:Z

    if-eqz p1, :cond_7

    .line 15
    iget-boolean p1, p0, Lba/b;->o:Z

    if-eqz p1, :cond_6

    .line 16
    iget-object p1, p0, Lba/b;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 17
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 18
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 20
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 21
    invoke-virtual {p0}, Lba/b;->e()Z

    move-result v2

    invoke-virtual {p0, v1, p2, v2}, Lba/b;->j(Lba/o;Ljava/lang/Object;Z)V

    goto :goto_3

    .line 22
    :cond_6
    iget-object p1, p0, Lba/b;->c:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 23
    invoke-virtual {p0}, Lba/b;->e()Z

    move-result p2

    invoke-virtual {p0, v1, p1, p2}, Lba/b;->j(Lba/o;Ljava/lang/Object;Z)V

    :cond_7
    return-void

    .line 24
    :cond_8
    new-instance p2, Lorg/greenrobot/eventbus/EventBusException;

    const-string v1, "Subscriber "

    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already registered to event "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/greenrobot/eventbus/EventBusException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public declared-synchronized m(Ljava/lang/Object;)V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lba/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 3
    iget-object v2, p0, Lba/b;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 5
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lba/o;

    .line 6
    iget-object v6, v5, Lba/o;->a:Ljava/lang/Object;

    if-ne v6, p1, :cond_1

    .line 7
    iput-boolean v3, v5, Lba/o;->c:Z

    .line 8
    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lba/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 10
    :cond_3
    iget-object v0, p0, Lba/b;->p:Lba/e;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Subscriber to unregister was not registered before: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lba/e;->a(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "EventBus[indexCount="

    const/4 v1, 0x0

    const-string v2, ", eventInheritance="

    .line 1
    invoke-static {v0, v1, v2}, Landroid/support/v4/media/b;->k(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lba/b;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
