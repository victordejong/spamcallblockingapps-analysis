.class public final Landroidx/work/impl/background/systemalarm/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/impl/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/background/systemalarm/e$b;,
        Landroidx/work/impl/background/systemalarm/e$a;,
        Landroidx/work/impl/background/systemalarm/e$c;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field final b:Landroid/content/Context;

.field final c:Landroidx/work/impl/utils/b/a;

.field final d:Landroidx/work/impl/utils/n;

.field final e:Landroidx/work/impl/d;

.field final f:Landroidx/work/impl/j;

.field final g:Landroidx/work/impl/background/systemalarm/b;

.field final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field i:Landroid/content/Intent;

.field j:Landroidx/work/impl/background/systemalarm/e$b;

.field private final k:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemAlarmDispatcher"

    .line 53
    invoke-static {v0}, Landroidx/work/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemalarm/e;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0, v0}, Landroidx/work/impl/background/systemalarm/e;-><init>(Landroid/content/Context;Landroidx/work/impl/d;Landroidx/work/impl/j;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/work/impl/d;Landroidx/work/impl/j;)V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->b:Landroid/content/Context;

    .line 86
    new-instance v1, Landroidx/work/impl/background/systemalarm/b;

    invoke-direct {v1, v0}, Landroidx/work/impl/background/systemalarm/b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/work/impl/background/systemalarm/e;->g:Landroidx/work/impl/background/systemalarm/b;

    .line 87
    new-instance v0, Landroidx/work/impl/utils/n;

    invoke-direct {v0}, Landroidx/work/impl/utils/n;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->d:Landroidx/work/impl/utils/n;

    if-eqz p3, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    invoke-static {p1}, Landroidx/work/impl/j;->b(Landroid/content/Context;)Landroidx/work/impl/j;

    move-result-object p3

    :goto_0
    iput-object p3, p0, Landroidx/work/impl/background/systemalarm/e;->f:Landroidx/work/impl/j;

    if-eqz p2, :cond_1

    goto :goto_1

    .line 1346
    :cond_1
    iget-object p2, p3, Landroidx/work/impl/j;->f:Landroidx/work/impl/d;

    .line 89
    :goto_1
    iput-object p2, p0, Landroidx/work/impl/background/systemalarm/e;->e:Landroidx/work/impl/d;

    .line 1355
    iget-object p1, p3, Landroidx/work/impl/j;->d:Landroidx/work/impl/utils/b/a;

    .line 90
    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/e;->c:Landroidx/work/impl/utils/b/a;

    .line 91
    invoke-virtual {p2, p0}, Landroidx/work/impl/d;->a(Landroidx/work/impl/b;)V

    .line 93
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/e;->h:Ljava/util/List;

    const/4 p1, 0x0

    .line 95
    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/e;->i:Landroid/content/Intent;

    .line 96
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/e;->k:Landroid/os/Handler;

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    .line 306
    invoke-virtual {p0}, Landroidx/work/impl/background/systemalarm/e;->c()V

    .line 307
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->h:Ljava/util/List;

    monitor-enter v0

    .line 308
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/e;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 309
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    .line 310
    monitor-exit v0

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 313
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 314
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 104
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    .line 105
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->e:Landroidx/work/impl/d;

    invoke-virtual {v0, p0}, Landroidx/work/impl/d;->b(Landroidx/work/impl/b;)V

    .line 106
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->d:Landroidx/work/impl/utils/n;

    .line 2116
    iget-object v1, v0, Landroidx/work/impl/utils/n;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2119
    iget-object v0, v0, Landroidx/work/impl/utils/n;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->j:Landroidx/work/impl/background/systemalarm/e$b;

    return-void
.end method

.method final a(Landroidx/work/impl/background/systemalarm/e$b;)V
    .locals 3

    .line 167
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->j:Landroidx/work/impl/background/systemalarm/e$b;

    if-eqz v0, :cond_0

    .line 168
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    move-result-object p1

    sget-object v0, Landroidx/work/impl/background/systemalarm/e;->a:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Throwable;

    const-string v2, "A completion listener for SystemAlarmDispatcher already exists."

    invoke-virtual {p1, v0, v2, v1}, Landroidx/work/k;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void

    .line 173
    :cond_0
    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/e;->j:Landroidx/work/impl/background/systemalarm/e$b;

    return-void
.end method

.method final a(Ljava/lang/Runnable;)V
    .locals 1

    .line 193
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->k:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 2

    .line 117
    new-instance v0, Landroidx/work/impl/background/systemalarm/e$a;

    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/e;->b:Landroid/content/Context;

    .line 120
    invoke-static {v1, p1, p2}, Landroidx/work/impl/background/systemalarm/b;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v0, p0, p1, p2}, Landroidx/work/impl/background/systemalarm/e$a;-><init>(Landroidx/work/impl/background/systemalarm/e;Landroid/content/Intent;I)V

    .line 117
    invoke-virtual {p0, v0}, Landroidx/work/impl/background/systemalarm/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Landroid/content/Intent;I)Z
    .locals 5

    .line 136
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v0, "Adding command %s (%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    invoke-virtual {p0}, Landroidx/work/impl/background/systemalarm/e;->c()V

    .line 138
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    move-result-object p1

    sget-object p2, Landroidx/work/impl/background/systemalarm/e;->a:Ljava/lang/String;

    const-string v0, "Unknown command. Ignoring"

    invoke-virtual {p1, p2, v0}, Landroidx/work/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    const-string v1, "ACTION_CONSTRAINTS_CHANGED"

    .line 147
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ACTION_CONSTRAINTS_CHANGED"

    .line 148
    invoke-direct {p0, v0}, Landroidx/work/impl/background/systemalarm/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const-string v0, "KEY_START_ID"

    .line 152
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    iget-object p2, p0, Landroidx/work/impl/background/systemalarm/e;->h:Ljava/util/List;

    monitor-enter p2

    .line 154
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v2, 0x1

    .line 155
    :cond_2
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_3

    .line 160
    invoke-virtual {p0}, Landroidx/work/impl/background/systemalarm/e;->b()V

    .line 162
    :cond_3
    monitor-exit p2

    return v4

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final b()V
    .locals 3

    .line 247
    invoke-virtual {p0}, Landroidx/work/impl/background/systemalarm/e;->c()V

    .line 248
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->b:Landroid/content/Context;

    const-string v1, "ProcessCommand"

    .line 249
    invoke-static {v0, v1}, Landroidx/work/impl/utils/k;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 251
    :try_start_0
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 253
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/e;->f:Landroidx/work/impl/j;

    .line 2355
    iget-object v1, v1, Landroidx/work/impl/j;->d:Landroidx/work/impl/utils/b/a;

    .line 253
    new-instance v2, Landroidx/work/impl/background/systemalarm/e$1;

    invoke-direct {v2, p0}, Landroidx/work/impl/background/systemalarm/e$1;-><init>(Landroidx/work/impl/background/systemalarm/e;)V

    invoke-interface {v1, v2}, Landroidx/work/impl/utils/b/a;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 301
    throw v1
.end method

.method final c()V
    .locals 2

    .line 318
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->k:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    .line 319
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Needs to be invoked on the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
