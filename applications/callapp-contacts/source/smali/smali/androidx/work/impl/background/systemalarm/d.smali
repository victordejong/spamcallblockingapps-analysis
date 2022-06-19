.class public final Landroidx/work/impl/background/systemalarm/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/impl/a/c;
.implements Landroidx/work/impl/b;
.implements Landroidx/work/impl/utils/n$a;


# static fields
.field private static final h:Ljava/lang/String;


# instance fields
.field final a:Landroid/content/Context;

.field final b:I

.field final c:Ljava/lang/String;

.field final d:Landroidx/work/impl/background/systemalarm/e;

.field final e:Landroidx/work/impl/a/d;

.field f:Landroid/os/PowerManager$WakeLock;

.field g:Z

.field private final i:Ljava/lang/Object;

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DelayMetCommandHandler"

    .line 53
    invoke-static {v0}, Landroidx/work/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemalarm/d;->h:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILjava/lang/String;Landroidx/work/impl/background/systemalarm/e;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/d;->a:Landroid/content/Context;

    .line 103
    iput p2, p0, Landroidx/work/impl/background/systemalarm/d;->b:I

    .line 104
    iput-object p4, p0, Landroidx/work/impl/background/systemalarm/d;->d:Landroidx/work/impl/background/systemalarm/e;

    .line 105
    iput-object p3, p0, Landroidx/work/impl/background/systemalarm/d;->c:Ljava/lang/String;

    .line 1189
    iget-object p2, p4, Landroidx/work/impl/background/systemalarm/e;->c:Landroidx/work/impl/utils/b/a;

    .line 107
    new-instance p3, Landroidx/work/impl/a/d;

    invoke-direct {p3, p1, p2, p0}, Landroidx/work/impl/a/d;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/b/a;Landroidx/work/impl/a/c;)V

    iput-object p3, p0, Landroidx/work/impl/background/systemalarm/d;->e:Landroidx/work/impl/a/d;

    const/4 p1, 0x0

    .line 108
    iput-boolean p1, p0, Landroidx/work/impl/background/systemalarm/d;->g:Z

    .line 109
    iput p1, p0, Landroidx/work/impl/background/systemalarm/d;->j:I

    .line 110
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/d;->i:Ljava/lang/Object;

    return-void
.end method

.method private b()V
    .locals 5

    .line 265
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/d;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/d;->e:Landroidx/work/impl/a/d;

    invoke-virtual {v1}, Landroidx/work/impl/a/d;->a()V

    .line 269
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/d;->d:Landroidx/work/impl/background/systemalarm/e;

    .line 4181
    iget-object v1, v1, Landroidx/work/impl/background/systemalarm/e;->d:Landroidx/work/impl/utils/n;

    .line 269
    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/work/impl/utils/n;->a(Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/d;->f:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v1, "Releasing wakelock %s for WorkSpec %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/work/impl/background/systemalarm/d;->f:Landroid/os/PowerManager$WakeLock;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Landroidx/work/impl/background/systemalarm/d;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 275
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/d;->f:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 277
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method final a()V
    .locals 7

    .line 226
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/d;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 227
    :try_start_0
    iget v1, p0, Landroidx/work/impl/background/systemalarm/d;->j:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_1

    .line 228
    iput v2, p0, Landroidx/work/impl/background/systemalarm/d;->j:I

    .line 229
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v1, "Stopping work for WorkSpec %s"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v5, p0, Landroidx/work/impl/background/systemalarm/d;->c:Ljava/lang/String;

    aput-object v5, v2, v3

    .line 231
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 232
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/d;->a:Landroid/content/Context;

    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/d;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Landroidx/work/impl/background/systemalarm/b;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 233
    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/d;->d:Landroidx/work/impl/background/systemalarm/e;

    new-instance v5, Landroidx/work/impl/background/systemalarm/e$a;

    iget v6, p0, Landroidx/work/impl/background/systemalarm/d;->b:I

    invoke-direct {v5, v2, v1, v6}, Landroidx/work/impl/background/systemalarm/e$a;-><init>(Landroidx/work/impl/background/systemalarm/e;Landroid/content/Intent;I)V

    invoke-virtual {v2, v5}, Landroidx/work/impl/background/systemalarm/e;->a(Ljava/lang/Runnable;)V

    .line 239
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/d;->d:Landroidx/work/impl/background/systemalarm/e;

    .line 4177
    iget-object v1, v1, Landroidx/work/impl/background/systemalarm/e;->e:Landroidx/work/impl/d;

    .line 239
    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/work/impl/d;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v1, "WorkSpec %s needs to be rescheduled"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v4, p0, Landroidx/work/impl/background/systemalarm/d;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 241
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 242
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/d;->a:Landroid/content/Context;

    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/d;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Landroidx/work/impl/background/systemalarm/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 244
    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/d;->d:Landroidx/work/impl/background/systemalarm/e;

    new-instance v3, Landroidx/work/impl/background/systemalarm/e$a;

    iget v4, p0, Landroidx/work/impl/background/systemalarm/d;->b:I

    invoke-direct {v3, v2, v1, v4}, Landroidx/work/impl/background/systemalarm/e$a;-><init>(Landroidx/work/impl/background/systemalarm/e;Landroid/content/Intent;I)V

    invoke-virtual {v2, v3}, Landroidx/work/impl/background/systemalarm/e;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 248
    :cond_0
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v1, "Processor does not have WorkSpec %s. No need to reschedule "

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v4, p0, Landroidx/work/impl/background/systemalarm/d;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0

    .line 253
    :cond_1
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v1, "Already stopped work for %s"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v4, p0, Landroidx/work/impl/background/systemalarm/d;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 255
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 173
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Exceeded time limits on execution for %s"

    .line 175
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 176
    invoke-virtual {p0}, Landroidx/work/impl/background/systemalarm/d;->a()V

    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 2

    .line 150
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "onExecuted %s, %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 151
    invoke-direct {p0}, Landroidx/work/impl/background/systemalarm/d;->b()V

    if-eqz p2, :cond_0

    .line 156
    iget-object p1, p0, Landroidx/work/impl/background/systemalarm/d;->a:Landroid/content/Context;

    iget-object p2, p0, Landroidx/work/impl/background/systemalarm/d;->c:Ljava/lang/String;

    invoke-static {p1, p2}, Landroidx/work/impl/background/systemalarm/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 157
    iget-object p2, p0, Landroidx/work/impl/background/systemalarm/d;->d:Landroidx/work/impl/background/systemalarm/e;

    new-instance v0, Landroidx/work/impl/background/systemalarm/e$a;

    iget v1, p0, Landroidx/work/impl/background/systemalarm/d;->b:I

    invoke-direct {v0, p2, p1, v1}, Landroidx/work/impl/background/systemalarm/e$a;-><init>(Landroidx/work/impl/background/systemalarm/e;Landroid/content/Intent;I)V

    invoke-virtual {p2, v0}, Landroidx/work/impl/background/systemalarm/e;->a(Ljava/lang/Runnable;)V

    .line 161
    :cond_0
    iget-boolean p1, p0, Landroidx/work/impl/background/systemalarm/d;->g:Z

    if-eqz p1, :cond_1

    .line 165
    iget-object p1, p0, Landroidx/work/impl/background/systemalarm/d;->a:Landroid/content/Context;

    invoke-static {p1}, Landroidx/work/impl/background/systemalarm/b;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 166
    iget-object p2, p0, Landroidx/work/impl/background/systemalarm/d;->d:Landroidx/work/impl/background/systemalarm/e;

    new-instance v0, Landroidx/work/impl/background/systemalarm/e$a;

    iget v1, p0, Landroidx/work/impl/background/systemalarm/d;->b:I

    invoke-direct {v0, p2, p1, v1}, Landroidx/work/impl/background/systemalarm/e$a;-><init>(Landroidx/work/impl/background/systemalarm/e;Landroid/content/Intent;I)V

    invoke-virtual {p2, v0}, Landroidx/work/impl/background/systemalarm/e;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/d;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 122
    :cond_0
    iget-object p1, p0, Landroidx/work/impl/background/systemalarm/d;->i:Ljava/lang/Object;

    monitor-enter p1

    .line 123
    :try_start_0
    iget v0, p0, Landroidx/work/impl/background/systemalarm/d;->j:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 124
    iput v2, p0, Landroidx/work/impl/background/systemalarm/d;->j:I

    .line 126
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v0, "onAllConstraintsMet for %s"

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Landroidx/work/impl/background/systemalarm/d;->c:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/d;->d:Landroidx/work/impl/background/systemalarm/e;

    .line 2177
    iget-object v0, v0, Landroidx/work/impl/background/systemalarm/e;->e:Landroidx/work/impl/d;

    .line 130
    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/d;->c:Ljava/lang/String;

    const/4 v4, 0x0

    .line 3099
    invoke-virtual {v0, v3, v4}, Landroidx/work/impl/d;->a(Ljava/lang/String;Landroidx/work/WorkerParameters$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/d;->d:Landroidx/work/impl/background/systemalarm/e;

    .line 3181
    iget-object v0, v0, Landroidx/work/impl/background/systemalarm/e;->d:Landroidx/work/impl/utils/n;

    .line 135
    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/d;->c:Ljava/lang/String;

    .line 4085
    iget-object v4, v0, Landroidx/work/impl/utils/n;->d:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4086
    :try_start_1
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v5, "Starting timer for %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 4088
    invoke-virtual {v0, v3}, Landroidx/work/impl/utils/n;->a(Ljava/lang/String;)V

    .line 4089
    new-instance v1, Landroidx/work/impl/utils/n$b;

    invoke-direct {v1, v0, v3}, Landroidx/work/impl/utils/n$b;-><init>(Landroidx/work/impl/utils/n;Ljava/lang/String;)V

    .line 4090
    iget-object v2, v0, Landroidx/work/impl/utils/n;->b:Ljava/util/Map;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4091
    iget-object v2, v0, Landroidx/work/impl/utils/n;->c:Ljava/util/Map;

    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4092
    iget-object v0, v0, Landroidx/work/impl/utils/n;->a:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/32 v2, 0x927c0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 4093
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 140
    :cond_1
    invoke-direct {p0}, Landroidx/work/impl/background/systemalarm/d;->b()V

    goto :goto_0

    .line 143
    :cond_2
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v0, "Already started work for %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/d;->c:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    :goto_0
    monitor-exit p1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 181
    invoke-virtual {p0}, Landroidx/work/impl/background/systemalarm/d;->a()V

    return-void
.end method
