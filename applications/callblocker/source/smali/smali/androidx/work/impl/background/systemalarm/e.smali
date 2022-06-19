.class public Landroidx/work/impl/background/systemalarm/e;
.super Ljava/lang/Object;
.source "SystemAlarmDispatcher.java"

# interfaces
.implements Landroidx/work/impl/a;


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

.field final c:Landroidx/work/impl/background/systemalarm/b;

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field e:Landroid/content/Intent;

.field private final f:Landroidx/work/impl/utils/b/a;

.field private final g:Landroidx/work/impl/utils/l;

.field private final h:Landroidx/work/impl/c;

.field private final i:Landroidx/work/impl/i;

.field private final j:Landroid/os/Handler;

.field private k:Landroidx/work/impl/background/systemalarm/e$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string/jumbo v0, "SystemAlarmDispatcher"

    invoke-static {v0}, Landroidx/work/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemalarm/e;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0, v0}, Landroidx/work/impl/background/systemalarm/e;-><init>(Landroid/content/Context;Landroidx/work/impl/c;Landroidx/work/impl/i;)V

    .line 77
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/work/impl/c;Landroidx/work/impl/i;)V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->b:Landroid/content/Context;

    .line 86
    new-instance v0, Landroidx/work/impl/background/systemalarm/b;

    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/e;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/work/impl/background/systemalarm/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->c:Landroidx/work/impl/background/systemalarm/b;

    .line 87
    new-instance v0, Landroidx/work/impl/utils/l;

    invoke-direct {v0}, Landroidx/work/impl/utils/l;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->g:Landroidx/work/impl/utils/l;

    .line 88
    if-eqz p3, :cond_0

    :goto_0
    iput-object p3, p0, Landroidx/work/impl/background/systemalarm/e;->i:Landroidx/work/impl/i;

    .line 89
    if-eqz p2, :cond_1

    :goto_1
    iput-object p2, p0, Landroidx/work/impl/background/systemalarm/e;->h:Landroidx/work/impl/c;

    .line 90
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->i:Landroidx/work/impl/i;

    invoke-virtual {v0}, Landroidx/work/impl/i;->g()Landroidx/work/impl/utils/b/a;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->f:Landroidx/work/impl/utils/b/a;

    .line 91
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->h:Landroidx/work/impl/c;

    invoke-virtual {v0, p0}, Landroidx/work/impl/c;->a(Landroidx/work/impl/a;)V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->d:Ljava/util/List;

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->e:Landroid/content/Intent;

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->j:Landroid/os/Handler;

    .line 97
    return-void

    .line 88
    :cond_0
    invoke-static {p1}, Landroidx/work/impl/i;->b(Landroid/content/Context;)Landroidx/work/impl/i;

    move-result-object p3

    goto :goto_0

    .line 89
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->i:Landroidx/work/impl/i;

    invoke-virtual {v0}, Landroidx/work/impl/i;->f()Landroidx/work/impl/c;

    move-result-object p2

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 306
    invoke-direct {p0}, Landroidx/work/impl/background/systemalarm/e;->h()V

    .line 307
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/e;->d:Ljava/util/List;

    monitor-enter v1

    .line 308
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 309
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    const/4 v0, 0x1

    monitor-exit v1

    .line 313
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 247
    invoke-direct {p0}, Landroidx/work/impl/background/systemalarm/e;->h()V

    .line 248
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->b:Landroid/content/Context;

    const-string/jumbo v1, "ProcessCommand"

    .line 249
    invoke-static {v0, v1}, Landroidx/work/impl/utils/i;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 251
    :try_start_0
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 253
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->i:Landroidx/work/impl/i;

    invoke-virtual {v0}, Landroidx/work/impl/i;->g()Landroidx/work/impl/utils/b/a;

    move-result-object v0

    new-instance v2, Landroidx/work/impl/background/systemalarm/e$1;

    invoke-direct {v2, p0}, Landroidx/work/impl/background/systemalarm/e$1;-><init>(Landroidx/work/impl/background/systemalarm/e;)V

    invoke-interface {v0, v2}, Landroidx/work/impl/utils/b/a;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 302
    return-void

    .line 300
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 301
    throw v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->j:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 319
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Needs to be invoked on the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    .line 104
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemalarm/e;->a:Ljava/lang/String;

    const-string/jumbo v2, "Destroying SystemAlarmDispatcher"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 105
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->h:Landroidx/work/impl/c;

    invoke-virtual {v0, p0}, Landroidx/work/impl/c;->b(Landroidx/work/impl/a;)V

    .line 106
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->g:Landroidx/work/impl/utils/l;

    invoke-virtual {v0}, Landroidx/work/impl/utils/l;->a()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->k:Landroidx/work/impl/background/systemalarm/e$b;

    .line 108
    return-void
.end method

.method a(Landroidx/work/impl/background/systemalarm/e$b;)V
    .locals 4

    .prologue
    .line 167
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->k:Landroidx/work/impl/background/systemalarm/e$b;

    if-eqz v0, :cond_0

    .line 168
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemalarm/e;->a:Ljava/lang/String;

    const-string/jumbo v2, "A completion listener for SystemAlarmDispatcher already exists."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 174
    :goto_0
    return-void

    .line 173
    :cond_0
    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/e;->k:Landroidx/work/impl/background/systemalarm/e$b;

    goto :goto_0
.end method

.method a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->j:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 194
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 117
    new-instance v0, Landroidx/work/impl/background/systemalarm/e$a;

    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/e;->b:Landroid/content/Context;

    .line 120
    invoke-static {v1, p1, p2}, Landroidx/work/impl/background/systemalarm/b;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroidx/work/impl/background/systemalarm/e$a;-><init>(Landroidx/work/impl/background/systemalarm/e;Landroid/content/Intent;I)V

    .line 117
    invoke-virtual {p0, v0}, Landroidx/work/impl/background/systemalarm/e;->a(Ljava/lang/Runnable;)V

    .line 125
    return-void
.end method

.method public a(Landroid/content/Intent;I)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 136
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/background/systemalarm/e;->a:Ljava/lang/String;

    const-string/jumbo v4, "Adding command %s (%s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4, v5}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 137
    invoke-direct {p0}, Landroidx/work/impl/background/systemalarm/e;->h()V

    .line 138
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 140
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/background/systemalarm/e;->a:Ljava/lang/String;

    const-string/jumbo v3, "Unknown command. Ignoring"

    new-array v4, v0, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Landroidx/work/l;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 163
    :cond_0
    :goto_0
    return v0

    .line 147
    :cond_1
    const-string/jumbo v3, "ACTION_CONSTRAINTS_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "ACTION_CONSTRAINTS_CHANGED"

    .line 148
    invoke-direct {p0, v2}, Landroidx/work/impl/background/systemalarm/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 152
    :cond_2
    const-string/jumbo v2, "KEY_START_ID"

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/e;->d:Ljava/util/List;

    monitor-enter v2

    .line 154
    :try_start_0
    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/e;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    .line 155
    :cond_3
    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/e;->d:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    if-nez v0, :cond_4

    .line 160
    invoke-direct {p0}, Landroidx/work/impl/background/systemalarm/e;->g()V

    .line 162
    :cond_4
    monitor-exit v2

    move v0, v1

    .line 163
    goto :goto_0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method b()Landroidx/work/impl/c;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->h:Landroidx/work/impl/c;

    return-object v0
.end method

.method c()Landroidx/work/impl/utils/l;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->g:Landroidx/work/impl/utils/l;

    return-object v0
.end method

.method d()Landroidx/work/impl/i;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->i:Landroidx/work/impl/i;

    return-object v0
.end method

.method e()Landroidx/work/impl/utils/b/a;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->f:Landroidx/work/impl/utils/b/a;

    return-object v0
.end method

.method f()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 199
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemalarm/e;->a:Ljava/lang/String;

    const-string/jumbo v2, "Checking if commands are complete."

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 200
    invoke-direct {p0}, Landroidx/work/impl/background/systemalarm/e;->h()V

    .line 202
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/e;->d:Ljava/util/List;

    monitor-enter v1

    .line 219
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->e:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 220
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/background/systemalarm/e;->a:Ljava/lang/String;

    const-string/jumbo v3, "Removing command %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Landroidx/work/impl/background/systemalarm/e;->e:Landroid/content/Intent;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v3, v4}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 221
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->d:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/e;->e:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Dequeue-d command is not the first."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 224
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->e:Landroid/content/Intent;

    .line 226
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->f:Landroidx/work/impl/utils/b/a;

    invoke-interface {v0}, Landroidx/work/impl/utils/b/a;->b()Landroidx/work/impl/utils/f;

    move-result-object v0

    .line 227
    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/e;->c:Landroidx/work/impl/background/systemalarm/b;

    invoke-virtual {v2}, Landroidx/work/impl/background/systemalarm/b;->a()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/e;->d:Ljava/util/List;

    .line 228
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 229
    invoke-virtual {v0}, Landroidx/work/impl/utils/f;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 233
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/background/systemalarm/e;->a:Ljava/lang/String;

    const-string/jumbo v3, "No more commands & intents."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v3, v4}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 234
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->k:Landroidx/work/impl/background/systemalarm/e$b;

    if-eqz v0, :cond_2

    .line 235
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->k:Landroidx/work/impl/background/systemalarm/e$b;

    invoke-interface {v0}, Landroidx/work/impl/background/systemalarm/e$b;->a()V

    .line 241
    :cond_2
    :goto_0
    monitor-exit v1

    .line 242
    return-void

    .line 237
    :cond_3
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 239
    invoke-direct {p0}, Landroidx/work/impl/background/systemalarm/e;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
