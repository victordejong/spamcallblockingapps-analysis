.class public final Landroidx/work/impl/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/impl/b;
.implements Landroidx/work/impl/foreground/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/d$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/os/PowerManager$WakeLock;

.field private c:Landroid/content/Context;

.field private d:Landroidx/work/Configuration;

.field private e:Landroidx/work/impl/utils/b/a;

.field private f:Landroidx/work/impl/WorkDatabase;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/work/impl/k;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/work/impl/k;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/work/impl/e;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/work/impl/b;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Processor"

    .line 54
    invoke-static {v0}, Landroidx/work/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/b/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/work/Configuration;",
            "Landroidx/work/impl/utils/b/a;",
            "Landroidx/work/impl/WorkDatabase;",
            "Ljava/util/List<",
            "Landroidx/work/impl/e;",
            ">;)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Landroidx/work/impl/d;->c:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Landroidx/work/impl/d;->d:Landroidx/work/Configuration;

    .line 81
    iput-object p3, p0, Landroidx/work/impl/d;->e:Landroidx/work/impl/utils/b/a;

    .line 82
    iput-object p4, p0, Landroidx/work/impl/d;->f:Landroidx/work/impl/WorkDatabase;

    .line 83
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/d;->h:Ljava/util/Map;

    .line 84
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/d;->g:Ljava/util/Map;

    .line 85
    iput-object p5, p0, Landroidx/work/impl/d;->i:Ljava/util/List;

    .line 86
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/d;->j:Ljava/util/Set;

    .line 87
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/d;->k:Ljava/util/List;

    const/4 p1, 0x0

    .line 88
    iput-object p1, p0, Landroidx/work/impl/d;->b:Landroid/os/PowerManager$WakeLock;

    .line 89
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/d;->l:Ljava/lang/Object;

    return-void
.end method

.method private a()V
    .locals 7

    .line 308
    iget-object v0, p0, Landroidx/work/impl/d;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 309
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/d;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 311
    iget-object v1, p0, Landroidx/work/impl/d;->c:Landroid/content/Context;

    invoke-static {v1}, Landroidx/work/impl/foreground/b;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 316
    :try_start_1
    iget-object v3, p0, Landroidx/work/impl/d;->c:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 318
    :try_start_2
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    move-result-object v3

    sget-object v4, Landroidx/work/impl/d;->a:Ljava/lang/String;

    const-string v5, "Unable to stop foreground service"

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v6, 0x0

    aput-object v1, v2, v6

    invoke-virtual {v3, v4, v5, v2}, Landroidx/work/k;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 321
    :goto_0
    iget-object v1, p0, Landroidx/work/impl/d;->b:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 322
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v1, 0x0

    .line 323
    iput-object v1, p0, Landroidx/work/impl/d;->b:Landroid/os/PowerManager$WakeLock;

    .line 326
    :cond_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private static a(Ljava/lang/String;Landroidx/work/impl/k;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 338
    invoke-virtual {p1}, Landroidx/work/impl/k;->b()V

    .line 339
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v0

    const-string p0, "WorkerWrapper interrupted for %s"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v1

    .line 342
    :cond_0
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v0

    const-string p0, "WorkerWrapper could not be found for %s"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v0
.end method


# virtual methods
.method public final a(Landroidx/work/impl/b;)V
    .locals 2

    .line 275
    iget-object v0, p0, Landroidx/work/impl/d;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/d;->k:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/String;Landroidx/work/f;)V
    .locals 4

    .line 148
    iget-object v0, p0, Landroidx/work/impl/d;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_0
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v1, "Moving WorkSpec (%s) to the foreground"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 151
    iget-object v1, p0, Landroidx/work/impl/d;->h:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/k;

    if-eqz v1, :cond_1

    .line 153
    iget-object v2, p0, Landroidx/work/impl/d;->b:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    .line 154
    iget-object v2, p0, Landroidx/work/impl/d;->c:Landroid/content/Context;

    const-string v3, "ProcessorForegroundLck"

    invoke-static {v2, v3}, Landroidx/work/impl/utils/k;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Landroidx/work/impl/d;->b:Landroid/os/PowerManager$WakeLock;

    .line 155
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 157
    :cond_0
    iget-object v2, p0, Landroidx/work/impl/d;->g:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v1, p0, Landroidx/work/impl/d;->c:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Landroidx/work/impl/foreground/b;->a(Landroid/content/Context;Ljava/lang/String;Landroidx/work/f;)Landroid/content/Intent;

    move-result-object p1

    .line 159
    iget-object p2, p0, Landroidx/work/impl/d;->c:Landroid/content/Context;

    invoke-static {p2, p1}, Landroidx/core/content/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 161
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 5

    .line 296
    iget-object v0, p0, Landroidx/work/impl/d;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/d;->h:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v1, "%s %s executed; reschedule = %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 299
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 298
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 301
    iget-object v1, p0, Landroidx/work/impl/d;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/work/impl/b;

    .line 302
    invoke-interface {v2, p1, p2}, Landroidx/work/impl/b;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 304
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 4

    .line 171
    iget-object v0, p0, Landroidx/work/impl/d;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 172
    :try_start_0
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v1, "Processor stopping foreground work %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 173
    iget-object v1, p0, Landroidx/work/impl/d;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/k;

    .line 174
    invoke-static {p1, v1}, Landroidx/work/impl/d;->a(Ljava/lang/String;Landroidx/work/impl/k;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 175
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/String;Landroidx/work/WorkerParameters$a;)Z
    .locals 11

    .line 114
    iget-object v0, p0, Landroidx/work/impl/d;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/work/impl/d;->f(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 118
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string p2, "Work %s is already enqueued for processing"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    .line 120
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    monitor-exit v0

    return v2

    .line 124
    :cond_0
    new-instance v1, Landroidx/work/impl/k$a;

    iget-object v5, p0, Landroidx/work/impl/d;->c:Landroid/content/Context;

    iget-object v6, p0, Landroidx/work/impl/d;->d:Landroidx/work/Configuration;

    iget-object v7, p0, Landroidx/work/impl/d;->e:Landroidx/work/impl/utils/b/a;

    iget-object v9, p0, Landroidx/work/impl/d;->f:Landroidx/work/impl/WorkDatabase;

    move-object v4, v1

    move-object v8, p0

    move-object v10, p1

    invoke-direct/range {v4 .. v10}, Landroidx/work/impl/k$a;-><init>(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/b/a;Landroidx/work/impl/foreground/a;Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V

    iget-object v4, p0, Landroidx/work/impl/d;->i:Ljava/util/List;

    .line 1652
    iput-object v4, v1, Landroidx/work/impl/k$a;->h:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 1665
    iput-object p2, v1, Landroidx/work/impl/k$a;->i:Landroidx/work/WorkerParameters$a;

    .line 1686
    :cond_1
    new-instance p2, Landroidx/work/impl/k;

    invoke-direct {p2, v1}, Landroidx/work/impl/k;-><init>(Landroidx/work/impl/k$a;)V

    .line 2128
    iget-object v1, p2, Landroidx/work/impl/k;->f:Landroidx/work/impl/utils/a/c;

    .line 136
    new-instance v4, Landroidx/work/impl/d$a;

    invoke-direct {v4, p0, p1, v1}, Landroidx/work/impl/d$a;-><init>(Landroidx/work/impl/b;Ljava/lang/String;Lcom/google/common/util/concurrent/a;)V

    iget-object v5, p0, Landroidx/work/impl/d;->e:Landroidx/work/impl/utils/b/a;

    .line 138
    invoke-interface {v5}, Landroidx/work/impl/utils/b/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v5

    .line 136
    invoke-interface {v1, v4, v5}, Lcom/google/common/util/concurrent/a;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 139
    iget-object v1, p0, Landroidx/work/impl/d;->h:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    iget-object v0, p0, Landroidx/work/impl/d;->e:Landroidx/work/impl/utils/b/a;

    invoke-interface {v0}, Landroidx/work/impl/utils/b/a;->b()Landroidx/work/impl/utils/g;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/work/impl/utils/g;->execute(Ljava/lang/Runnable;)V

    .line 142
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string p2, "%s: processing %s"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    aput-object p1, v0, v3

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v3

    :catchall_0
    move-exception p1

    .line 140
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b(Landroidx/work/impl/b;)V
    .locals 2

    .line 286
    iget-object v0, p0, Landroidx/work/impl/d;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/d;->k:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 288
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 4

    .line 185
    iget-object v0, p0, Landroidx/work/impl/d;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    :try_start_0
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v1, "Processor stopping background work %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 187
    iget-object v1, p0, Landroidx/work/impl/d;->h:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/k;

    .line 188
    invoke-static {p1, v1}, Landroidx/work/impl/d;->a(Ljava/lang/String;Landroidx/work/impl/k;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 189
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 5

    .line 199
    iget-object v0, p0, Landroidx/work/impl/d;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_0
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v1, "Processor cancelling %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 201
    iget-object v1, p0, Landroidx/work/impl/d;->j:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v1, p0, Landroidx/work/impl/d;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/k;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 208
    iget-object v1, p0, Landroidx/work/impl/d;->h:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/k;

    .line 210
    :cond_1
    invoke-static {p1, v1}, Landroidx/work/impl/d;->a(Ljava/lang/String;Landroidx/work/impl/k;)Z

    move-result p1

    if-eqz v2, :cond_2

    .line 212
    invoke-direct {p0}, Landroidx/work/impl/d;->a()V

    .line 214
    :cond_2
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 215
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    .line 220
    iget-object v0, p0, Landroidx/work/impl/d;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/d;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-direct {p0}, Landroidx/work/impl/d;->a()V

    .line 223
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 2

    .line 233
    iget-object v0, p0, Landroidx/work/impl/d;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/d;->j:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 235
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 2

    .line 253
    iget-object v0, p0, Landroidx/work/impl/d;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/d;->h:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/work/impl/d;->g:Ljava/util/Map;

    .line 255
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 256
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final g(Ljava/lang/String;)Z
    .locals 2

    .line 264
    iget-object v0, p0, Landroidx/work/impl/d;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 265
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/d;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 266
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
