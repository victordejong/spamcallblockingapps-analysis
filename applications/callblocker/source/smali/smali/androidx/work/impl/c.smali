.class public Landroidx/work/impl/c;
.super Ljava/lang/Object;
.source "Processor.java"

# interfaces
.implements Landroidx/work/impl/a;
.implements Landroidx/work/impl/foreground/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/os/PowerManager$WakeLock;

.field private c:Landroid/content/Context;

.field private d:Landroidx/work/b;

.field private e:Landroidx/work/impl/utils/b/a;

.field private f:Landroidx/work/impl/WorkDatabase;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroidx/work/impl/j;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroidx/work/impl/j;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/work/impl/d;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/work/impl/a;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string/jumbo v0, "Processor"

    invoke-static {v0}, Landroidx/work/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/b;Landroidx/work/impl/utils/b/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/work/b;",
            "Landroidx/work/impl/utils/b/a;",
            "Landroidx/work/impl/WorkDatabase;",
            "Ljava/util/List",
            "<",
            "Landroidx/work/impl/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Landroidx/work/impl/c;->c:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Landroidx/work/impl/c;->d:Landroidx/work/b;

    .line 81
    iput-object p3, p0, Landroidx/work/impl/c;->e:Landroidx/work/impl/utils/b/a;

    .line 82
    iput-object p4, p0, Landroidx/work/impl/c;->f:Landroidx/work/impl/WorkDatabase;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/c;->h:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/c;->g:Ljava/util/Map;

    .line 85
    iput-object p5, p0, Landroidx/work/impl/c;->i:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/c;->j:Ljava/util/Set;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/c;->k:Ljava/util/List;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/work/impl/c;->b:Landroid/os/PowerManager$WakeLock;

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/c;->l:Ljava/lang/Object;

    .line 90
    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 308
    iget-object v1, p0, Landroidx/work/impl/c;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 309
    :try_start_0
    iget-object v2, p0, Landroidx/work/impl/c;->g:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 310
    :cond_0
    if-nez v0, :cond_1

    .line 311
    invoke-static {}, Landroidx/work/impl/foreground/SystemForegroundService;->d()Landroidx/work/impl/foreground/SystemForegroundService;

    move-result-object v0

    .line 312
    if-eqz v0, :cond_2

    .line 313
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/c;->a:Ljava/lang/String;

    const-string/jumbo v4, "No more foreground work. Stopping SystemForegroundService"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4, v5}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 315
    invoke-virtual {v0}, Landroidx/work/impl/foreground/SystemForegroundService;->c()V

    .line 321
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/c;->b:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Landroidx/work/impl/c;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/work/impl/c;->b:Landroid/os/PowerManager$WakeLock;

    .line 326
    :cond_1
    monitor-exit v1

    .line 327
    return-void

    .line 317
    :cond_2
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/c;->a:Ljava/lang/String;

    const-string/jumbo v3, "No more foreground work. SystemForegroundService is already stopped"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v3, v4}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_0

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Ljava/lang/String;Landroidx/work/impl/j;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 337
    if-eqz p1, :cond_0

    .line 338
    invoke-virtual {p1}, Landroidx/work/impl/j;->c()V

    .line 339
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/c;->a:Ljava/lang/String;

    const-string/jumbo v4, "WorkerWrapper interrupted for %s"

    new-array v5, v0, [Ljava/lang/Object;

    aput-object p0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4, v1}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 343
    :goto_0
    return v0

    .line 342
    :cond_0
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/c;->a:Ljava/lang/String;

    const-string/jumbo v4, "WorkerWrapper could not be found for %s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v0, v4}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move v0, v1

    .line 343
    goto :goto_0
.end method


# virtual methods
.method public a(Landroidx/work/impl/a;)V
    .locals 2

    .prologue
    .line 275
    iget-object v1, p0, Landroidx/work/impl/c;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 276
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/c;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    monitor-exit v1

    .line 278
    return-void

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 296
    iget-object v1, p0, Landroidx/work/impl/c;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 297
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/c;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/c;->a:Ljava/lang/String;

    const-string/jumbo v3, "%s %s executed; reschedule = %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 299
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    .line 298
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v3, v4}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 301
    iget-object v0, p0, Landroidx/work/impl/c;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/a;

    .line 302
    invoke-interface {v0, p1, p2}, Landroidx/work/impl/a;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/work/impl/c;->a(Ljava/lang/String;Landroidx/work/WorkerParameters$a;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Landroidx/work/WorkerParameters$a;)Z
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 114
    iget-object v9, p0, Landroidx/work/impl/c;->l:Ljava/lang/Object;

    monitor-enter v9

    .line 117
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/c;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/c;->a:Ljava/lang/String;

    const-string/jumbo v2, "Work %s is already enqueued for processing"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 120
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Throwable;

    .line 118
    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 121
    monitor-exit v9

    move v0, v7

    .line 143
    :goto_0
    return v0

    .line 124
    :cond_0
    new-instance v0, Landroidx/work/impl/j$a;

    iget-object v1, p0, Landroidx/work/impl/c;->c:Landroid/content/Context;

    iget-object v2, p0, Landroidx/work/impl/c;->d:Landroidx/work/b;

    iget-object v3, p0, Landroidx/work/impl/c;->e:Landroidx/work/impl/utils/b/a;

    iget-object v5, p0, Landroidx/work/impl/c;->f:Landroidx/work/impl/WorkDatabase;

    move-object v4, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Landroidx/work/impl/j$a;-><init>(Landroid/content/Context;Landroidx/work/b;Landroidx/work/impl/utils/b/a;Landroidx/work/impl/foreground/a;Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/work/impl/c;->i:Ljava/util/List;

    .line 132
    invoke-virtual {v0, v1}, Landroidx/work/impl/j$a;->a(Ljava/util/List;)Landroidx/work/impl/j$a;

    move-result-object v0

    .line 133
    invoke-virtual {v0, p2}, Landroidx/work/impl/j$a;->a(Landroidx/work/WorkerParameters$a;)Landroidx/work/impl/j$a;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroidx/work/impl/j$a;->a()Landroidx/work/impl/j;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Landroidx/work/impl/j;->a()Lcom/google/a/a/a/a;

    move-result-object v1

    .line 136
    new-instance v2, Landroidx/work/impl/c$a;

    invoke-direct {v2, p0, p1, v1}, Landroidx/work/impl/c$a;-><init>(Landroidx/work/impl/a;Ljava/lang/String;Lcom/google/a/a/a/a;)V

    iget-object v3, p0, Landroidx/work/impl/c;->e:Landroidx/work/impl/utils/b/a;

    .line 138
    invoke-interface {v3}, Landroidx/work/impl/utils/b/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 136
    invoke-interface {v1, v2, v3}, Lcom/google/a/a/a/a;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 139
    iget-object v1, p0, Landroidx/work/impl/c;->h:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    iget-object v1, p0, Landroidx/work/impl/c;->e:Landroidx/work/impl/utils/b/a;

    invoke-interface {v1}, Landroidx/work/impl/utils/b/a;->b()Landroidx/work/impl/utils/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/work/impl/utils/f;->execute(Ljava/lang/Runnable;)V

    .line 142
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/c;->a:Ljava/lang/String;

    const-string/jumbo v2, "%s: processing %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object p1, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move v0, v8

    .line 143
    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Landroidx/work/impl/a;)V
    .locals 2

    .prologue
    .line 286
    iget-object v1, p0, Landroidx/work/impl/c;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 287
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/c;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 288
    monitor-exit v1

    .line 289
    return-void

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 171
    iget-object v1, p0, Landroidx/work/impl/c;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 172
    :try_start_0
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/c;->a:Ljava/lang/String;

    const-string/jumbo v3, "Processor stopping foreground work %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v3, v4}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 173
    iget-object v0, p0, Landroidx/work/impl/c;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/j;

    .line 174
    invoke-static {p1, v0}, Landroidx/work/impl/c;->a(Ljava/lang/String;Landroidx/work/impl/j;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 185
    iget-object v1, p0, Landroidx/work/impl/c;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 186
    :try_start_0
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/c;->a:Ljava/lang/String;

    const-string/jumbo v3, "Processor stopping background work %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v3, v4}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 187
    iget-object v0, p0, Landroidx/work/impl/c;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/j;

    .line 188
    invoke-static {p1, v0}, Landroidx/work/impl/c;->a(Ljava/lang/String;Landroidx/work/impl/j;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 199
    iget-object v3, p0, Landroidx/work/impl/c;->l:Ljava/lang/Object;

    monitor-enter v3

    .line 200
    :try_start_0
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v4, Landroidx/work/impl/c;->a:Ljava/lang/String;

    const-string/jumbo v5, "Processor cancelling %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Throwable;

    invoke-virtual {v0, v4, v5, v6}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 201
    iget-object v0, p0, Landroidx/work/impl/c;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v0, p0, Landroidx/work/impl/c;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/j;

    .line 205
    if-eqz v0, :cond_2

    .line 206
    :goto_0
    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Landroidx/work/impl/c;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/j;

    .line 210
    :cond_0
    invoke-static {p1, v0}, Landroidx/work/impl/c;->a(Ljava/lang/String;Landroidx/work/impl/j;)Z

    move-result v0

    .line 211
    if-eqz v1, :cond_1

    .line 212
    invoke-direct {p0}, Landroidx/work/impl/c;->a()V

    .line 214
    :cond_1
    monitor-exit v3

    return v0

    :cond_2
    move v1, v2

    .line 205
    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 220
    iget-object v1, p0, Landroidx/work/impl/c;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 221
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/c;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-direct {p0}, Landroidx/work/impl/c;->a()V

    .line 223
    monitor-exit v1

    .line 224
    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 233
    iget-object v1, p0, Landroidx/work/impl/c;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 234
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/c;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 253
    iget-object v1, p0, Landroidx/work/impl/c;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 254
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/c;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/c;->g:Ljava/util/Map;

    .line 255
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    .line 254
    return v0

    .line 255
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public h(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 264
    iget-object v1, p0, Landroidx/work/impl/c;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 265
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/c;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
