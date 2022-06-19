.class public Landroidx/work/impl/background/systemalarm/d;
.super Ljava/lang/Object;
.source "DelayMetCommandHandler.java"

# interfaces
.implements Landroidx/work/impl/a;
.implements Landroidx/work/impl/a/c;
.implements Landroidx/work/impl/utils/l$a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Landroidx/work/impl/background/systemalarm/e;

.field private final f:Landroidx/work/impl/a/d;

.field private final g:Ljava/lang/Object;

.field private h:I

.field private i:Landroid/os/PowerManager$WakeLock;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string/jumbo v0, "DelayMetCommandHandler"

    invoke-static {v0}, Landroidx/work/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemalarm/d;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILjava/lang/String;Landroidx/work/impl/background/systemalarm/e;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/d;->b:Landroid/content/Context;

    .line 103
    iput p2, p0, Landroidx/work/impl/background/systemalarm/d;->c:I

    .line 104
    iput-object p4, p0, Landroidx/work/impl/background/systemalarm/d;->e:Landroidx/work/impl/background/systemalarm/e;

    .line 105
    iput-object p3, p0, Landroidx/work/impl/background/systemalarm/d;->d:Ljava/lang/String;

    .line 106
    invoke-virtual {p4}, Landroidx/work/impl/background/systemalarm/e;->e()Landroidx/work/impl/utils/b/a;

    move-result-object v0

    .line 107
    new-instance v1, Landroidx/work/impl/a/d;

    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/d;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v0, p0}, Landroidx/work/impl/a/d;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/b/a;Landroidx/work/impl/a/c;)V

    iput-object v1, p0, Landroidx/work/impl/background/systemalarm/d;->f:Landroidx/work/impl/a/d;

    .line 108
    iput-boolean v3, p0, Landroidx/work/impl/background/systemalarm/d;->j:Z

    .line 109
    iput v3, p0, Landroidx/work/impl/background/systemalarm/d;->h:I

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/background/systemalarm/d;->g:Ljava/lang/Object;

    .line 111
    return-void
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v2, 0x2

    .line 226
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/d;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 227
    :try_start_0
    iget v0, p0, Landroidx/work/impl/background/systemalarm/d;->h:I

    if-ge v0, v2, :cond_1

    .line 228
    const/4 v0, 0x2

    iput v0, p0, Landroidx/work/impl/background/systemalarm/d;->h:I

    .line 229
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/background/systemalarm/d;->a:Ljava/lang/String;

    const-string/jumbo v3, "Stopping work for WorkSpec %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Landroidx/work/impl/background/systemalarm/d;->d:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 231
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Throwable;

    .line 229
    invoke-virtual {v0, v2, v3, v4}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 232
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/d;->b:Landroid/content/Context;

    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/d;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Landroidx/work/impl/background/systemalarm/b;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 233
    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/d;->e:Landroidx/work/impl/background/systemalarm/e;

    new-instance v3, Landroidx/work/impl/background/systemalarm/e$a;

    iget-object v4, p0, Landroidx/work/impl/background/systemalarm/d;->e:Landroidx/work/impl/background/systemalarm/e;

    iget v5, p0, Landroidx/work/impl/background/systemalarm/d;->c:I

    invoke-direct {v3, v4, v0, v5}, Landroidx/work/impl/background/systemalarm/e$a;-><init>(Landroidx/work/impl/background/systemalarm/e;Landroid/content/Intent;I)V

    invoke-virtual {v2, v3}, Landroidx/work/impl/background/systemalarm/e;->a(Ljava/lang/Runnable;)V

    .line 239
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/d;->e:Landroidx/work/impl/background/systemalarm/e;

    invoke-virtual {v0}, Landroidx/work/impl/background/systemalarm/e;->b()Landroidx/work/impl/c;

    move-result-object v0

    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroidx/work/impl/c;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/background/systemalarm/d;->a:Ljava/lang/String;

    const-string/jumbo v3, "WorkSpec %s needs to be rescheduled"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Landroidx/work/impl/background/systemalarm/d;->d:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 241
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Throwable;

    .line 240
    invoke-virtual {v0, v2, v3, v4}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 242
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/d;->b:Landroid/content/Context;

    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/d;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Landroidx/work/impl/background/systemalarm/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 244
    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/d;->e:Landroidx/work/impl/background/systemalarm/e;

    new-instance v3, Landroidx/work/impl/background/systemalarm/e$a;

    iget-object v4, p0, Landroidx/work/impl/background/systemalarm/d;->e:Landroidx/work/impl/background/systemalarm/e;

    iget v5, p0, Landroidx/work/impl/background/systemalarm/d;->c:I

    invoke-direct {v3, v4, v0, v5}, Landroidx/work/impl/background/systemalarm/e$a;-><init>(Landroidx/work/impl/background/systemalarm/e;Landroid/content/Intent;I)V

    invoke-virtual {v2, v3}, Landroidx/work/impl/background/systemalarm/e;->a(Ljava/lang/Runnable;)V

    .line 255
    :goto_0
    monitor-exit v1

    .line 256
    return-void

    .line 248
    :cond_0
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/background/systemalarm/d;->a:Ljava/lang/String;

    const-string/jumbo v3, "Processor does not have WorkSpec %s. No need to reschedule "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Landroidx/work/impl/background/systemalarm/d;->d:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v3, v4}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_0

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 253
    :cond_1
    :try_start_1
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/background/systemalarm/d;->a:Ljava/lang/String;

    const-string/jumbo v3, "Already stopped work for %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Landroidx/work/impl/background/systemalarm/d;->d:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v3, v4}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private c()V
    .locals 7

    .prologue
    .line 265
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/d;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 267
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/d;->f:Landroidx/work/impl/a/d;

    invoke-virtual {v0}, Landroidx/work/impl/a/d;->a()V

    .line 269
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/d;->e:Landroidx/work/impl/background/systemalarm/e;

    invoke-virtual {v0}, Landroidx/work/impl/background/systemalarm/e;->c()Landroidx/work/impl/utils/l;

    move-result-object v0

    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroidx/work/impl/utils/l;->a(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/d;->i:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/d;->i:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/background/systemalarm/d;->a:Ljava/lang/String;

    const-string/jumbo v3, "Releasing wakelock %s for WorkSpec %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Landroidx/work/impl/background/systemalarm/d;->i:Landroid/os/PowerManager$WakeLock;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Landroidx/work/impl/background/systemalarm/d;->d:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v3, v4}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 275
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/d;->i:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 277
    :cond_0
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


# virtual methods
.method a()V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 186
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/d;->b:Landroid/content/Context;

    const-string/jumbo v1, "%s (%s)"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/d;->d:Ljava/lang/String;

    aput-object v3, v2, v5

    iget v3, p0, Landroidx/work/impl/background/systemalarm/d;->c:I

    .line 188
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-static {v0, v1}, Landroidx/work/impl/utils/i;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/background/systemalarm/d;->i:Landroid/os/PowerManager$WakeLock;

    .line 189
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemalarm/d;->a:Ljava/lang/String;

    const-string/jumbo v2, "Acquiring wakelock %s for WorkSpec %s"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Landroidx/work/impl/background/systemalarm/d;->i:Landroid/os/PowerManager$WakeLock;

    aput-object v4, v3, v5

    iget-object v4, p0, Landroidx/work/impl/background/systemalarm/d;->d:Ljava/lang/String;

    aput-object v4, v3, v6

    .line 190
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    .line 189
    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 191
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/d;->i:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 193
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/d;->e:Landroidx/work/impl/background/systemalarm/e;

    invoke-virtual {v0}, Landroidx/work/impl/background/systemalarm/e;->d()Landroidx/work/impl/i;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Landroidx/work/impl/i;->c()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->o()Landroidx/work/impl/b/q;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/d;->d:Ljava/lang/String;

    .line 196
    invoke-interface {v0, v1}, Landroidx/work/impl/b/q;->b(Ljava/lang/String;)Landroidx/work/impl/b/p;

    move-result-object v0

    .line 201
    if-nez v0, :cond_0

    .line 202
    invoke-direct {p0}, Landroidx/work/impl/background/systemalarm/d;->b()V

    .line 217
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-virtual {v0}, Landroidx/work/impl/b/p;->d()Z

    move-result v1

    iput-boolean v1, p0, Landroidx/work/impl/background/systemalarm/d;->j:Z

    .line 210
    iget-boolean v1, p0, Landroidx/work/impl/background/systemalarm/d;->j:Z

    if-nez v1, :cond_1

    .line 211
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemalarm/d;->a:Ljava/lang/String;

    const-string/jumbo v2, "No constraints for %s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Landroidx/work/impl/background/systemalarm/d;->d:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 212
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/d;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/work/impl/background/systemalarm/d;->a(Ljava/util/List;)V

    goto :goto_0

    .line 215
    :cond_1
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/d;->f:Landroidx/work/impl/a/d;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/work/impl/a/d;->a(Ljava/lang/Iterable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 173
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemalarm/d;->a:Ljava/lang/String;

    const-string/jumbo v2, "Exceeded time limits on execution for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    .line 175
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Throwable;

    .line 173
    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 176
    invoke-direct {p0}, Landroidx/work/impl/background/systemalarm/d;->b()V

    .line 177
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 150
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemalarm/d;->a:Ljava/lang/String;

    const-string/jumbo v2, "onExecuted %s, %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 151
    invoke-direct {p0}, Landroidx/work/impl/background/systemalarm/d;->c()V

    .line 153
    if-eqz p2, :cond_0

    .line 156
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/d;->b:Landroid/content/Context;

    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/d;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/work/impl/background/systemalarm/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 157
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/d;->e:Landroidx/work/impl/background/systemalarm/e;

    new-instance v2, Landroidx/work/impl/background/systemalarm/e$a;

    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/d;->e:Landroidx/work/impl/background/systemalarm/e;

    iget v4, p0, Landroidx/work/impl/background/systemalarm/d;->c:I

    invoke-direct {v2, v3, v0, v4}, Landroidx/work/impl/background/systemalarm/e$a;-><init>(Landroidx/work/impl/background/systemalarm/e;Landroid/content/Intent;I)V

    invoke-virtual {v1, v2}, Landroidx/work/impl/background/systemalarm/e;->a(Ljava/lang/Runnable;)V

    .line 161
    :cond_0
    iget-boolean v0, p0, Landroidx/work/impl/background/systemalarm/d;->j:Z

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/d;->b:Landroid/content/Context;

    invoke-static {v0}, Landroidx/work/impl/background/systemalarm/b;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 166
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/d;->e:Landroidx/work/impl/background/systemalarm/e;

    new-instance v2, Landroidx/work/impl/background/systemalarm/e$a;

    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/d;->e:Landroidx/work/impl/background/systemalarm/e;

    iget v4, p0, Landroidx/work/impl/background/systemalarm/d;->c:I

    invoke-direct {v2, v3, v0, v4}, Landroidx/work/impl/background/systemalarm/e$a;-><init>(Landroidx/work/impl/background/systemalarm/e;Landroid/content/Intent;I)V

    invoke-virtual {v1, v2}, Landroidx/work/impl/background/systemalarm/e;->a(Ljava/lang/Runnable;)V

    .line 169
    :cond_1
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/d;->d:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/d;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 123
    :try_start_0
    iget v0, p0, Landroidx/work/impl/background/systemalarm/d;->h:I

    if-nez v0, :cond_2

    .line 124
    const/4 v0, 0x1

    iput v0, p0, Landroidx/work/impl/background/systemalarm/d;->h:I

    .line 126
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/background/systemalarm/d;->a:Ljava/lang/String;

    const-string/jumbo v3, "onAllConstraintsMet for %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Landroidx/work/impl/background/systemalarm/d;->d:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v3, v4}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 130
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/d;->e:Landroidx/work/impl/background/systemalarm/e;

    invoke-virtual {v0}, Landroidx/work/impl/background/systemalarm/e;->b()Landroidx/work/impl/c;

    move-result-object v0

    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroidx/work/impl/c;->a(Ljava/lang/String;)Z

    move-result v0

    .line 132
    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/d;->e:Landroidx/work/impl/background/systemalarm/e;

    invoke-virtual {v0}, Landroidx/work/impl/background/systemalarm/e;->c()Landroidx/work/impl/utils/l;

    move-result-object v0

    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/d;->d:Ljava/lang/String;

    const-wide/32 v4, 0x927c0

    .line 136
    invoke-virtual {v0, v2, v4, v5, p0}, Landroidx/work/impl/utils/l;->a(Ljava/lang/String;JLandroidx/work/impl/utils/l$a;)V

    .line 145
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 140
    :cond_1
    :try_start_1
    invoke-direct {p0}, Landroidx/work/impl/background/systemalarm/d;->c()V

    goto :goto_1

    .line 143
    :cond_2
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/background/systemalarm/d;->a:Ljava/lang/String;

    const-string/jumbo v3, "Already started work for %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Landroidx/work/impl/background/systemalarm/d;->d:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v3, v4}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    invoke-direct {p0}, Landroidx/work/impl/background/systemalarm/d;->b()V

    .line 182
    return-void
.end method
