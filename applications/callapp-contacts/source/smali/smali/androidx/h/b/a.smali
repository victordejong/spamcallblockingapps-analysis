.class public abstract Landroidx/h/b/a;
.super Landroidx/h/b/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/h/b/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/h/b/c<",
        "TD;>;"
    }
.end annotation


# instance fields
.field volatile a:Landroidx/h/b/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/h/b/a<",
            "TD;>.a;"
        }
    .end annotation
.end field

.field b:J

.field private c:Ljava/util/concurrent/Executor;

.field private volatile d:Landroidx/h/b/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/h/b/a<",
            "TD;>.a;"
        }
    .end annotation
.end field

.field private e:J

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 108
    invoke-direct {p0, p1}, Landroidx/h/b/c;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, -0x2710

    .line 104
    iput-wide v0, p0, Landroidx/h/b/a;->b:J

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .line 127
    invoke-super {p0}, Landroidx/h/b/c;->a()V

    .line 128
    invoke-virtual {p0}, Landroidx/h/b/a;->n()Z

    .line 129
    new-instance v0, Landroidx/h/b/a$a;

    invoke-direct {v0, p0}, Landroidx/h/b/a$a;-><init>(Landroidx/h/b/a;)V

    iput-object v0, p0, Landroidx/h/b/a;->a:Landroidx/h/b/a$a;

    .line 131
    invoke-virtual {p0}, Landroidx/h/b/a;->c()V

    return-void
.end method

.method final a(Landroidx/h/b/a$a;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/h/b/a<",
            "TD;>.a;TD;)V"
        }
    .end annotation

    .line 213
    invoke-virtual {p0, p2}, Landroidx/h/b/a;->a(Ljava/lang/Object;)V

    .line 214
    iget-object p2, p0, Landroidx/h/b/a;->d:Landroidx/h/b/a$a;

    if-ne p2, p1, :cond_0

    .line 216
    invoke-virtual {p0}, Landroidx/h/b/a;->s()V

    .line 217
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/h/b/a;->b:J

    const/4 p1, 0x0

    .line 218
    iput-object p1, p0, Landroidx/h/b/a;->d:Landroidx/h/b/a$a;

    .line 221
    invoke-virtual {p0}, Landroidx/h/b/a;->c()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 340
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/h/b/c;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 341
    iget-object p2, p0, Landroidx/h/b/a;->a:Landroidx/h/b/a$a;

    const-string p4, " waiting="

    if-eqz p2, :cond_0

    .line 342
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mTask="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/h/b/a;->a:Landroidx/h/b/a$a;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 343
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/h/b/a;->a:Landroidx/h/b/a$a;

    iget-boolean p2, p2, Landroidx/h/b/a$a;->a:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 345
    :cond_0
    iget-object p2, p0, Landroidx/h/b/a;->d:Landroidx/h/b/a$a;

    if-eqz p2, :cond_1

    .line 346
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mCancellingTask="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/h/b/a;->d:Landroidx/h/b/a$a;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 347
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/h/b/a;->d:Landroidx/h/b/a$a;

    iget-boolean p2, p2, Landroidx/h/b/a$a;->a:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 349
    :cond_1
    iget-wide v0, p0, Landroidx/h/b/a;->e:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_3

    .line 350
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mUpdateThrottle="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 351
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v0, p0, Landroidx/h/b/a;->e:J

    .line 352
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    .line 351
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, " mLastLoadCompleteTime="

    .line 353
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 354
    iget-wide p1, p0, Landroidx/h/b/a;->b:J

    const-wide/16 v0, -0x2710

    cmp-long p4, p1, v0

    if-nez p4, :cond_2

    const-string p1, "--"

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 357
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/h/b/a;->b:J

    sub-long/2addr v0, v2

    .line 356
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 354
    :goto_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    :cond_3
    return-void
.end method

.method protected final b()Z
    .locals 5

    .line 137
    iget-object v0, p0, Landroidx/h/b/a;->a:Landroidx/h/b/a$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 138
    invoke-virtual {p0}, Landroidx/h/b/a;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    invoke-virtual {p0}, Landroidx/h/b/a;->t()V

    .line 141
    :cond_0
    iget-object v0, p0, Landroidx/h/b/a;->d:Landroidx/h/b/a$a;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Landroidx/h/b/a;->a:Landroidx/h/b/a$a;

    iget-boolean v0, v0, Landroidx/h/b/a$a;->a:Z

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Landroidx/h/b/a;->a:Landroidx/h/b/a$a;

    iput-boolean v1, v0, Landroidx/h/b/a$a;->a:Z

    .line 148
    iget-object v0, p0, Landroidx/h/b/a;->f:Landroid/os/Handler;

    iget-object v3, p0, Landroidx/h/b/a;->a:Landroidx/h/b/a$a;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 150
    :cond_1
    iput-object v2, p0, Landroidx/h/b/a;->a:Landroidx/h/b/a$a;

    return v1

    .line 152
    :cond_2
    iget-object v0, p0, Landroidx/h/b/a;->a:Landroidx/h/b/a$a;

    iget-boolean v0, v0, Landroidx/h/b/a$a;->a:Z

    if-eqz v0, :cond_3

    .line 156
    iget-object v0, p0, Landroidx/h/b/a;->a:Landroidx/h/b/a$a;

    iput-boolean v1, v0, Landroidx/h/b/a$a;->a:Z

    .line 157
    iget-object v0, p0, Landroidx/h/b/a;->f:Landroid/os/Handler;

    iget-object v3, p0, Landroidx/h/b/a;->a:Landroidx/h/b/a$a;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 158
    iput-object v2, p0, Landroidx/h/b/a;->a:Landroidx/h/b/a$a;

    return v1

    .line 161
    :cond_3
    iget-object v0, p0, Landroidx/h/b/a;->a:Landroidx/h/b/a$a;

    .line 1228
    iget-object v3, v0, Landroidx/h/b/d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1229
    iget-object v0, v0, Landroidx/h/b/d;->c:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 164
    iget-object v1, p0, Landroidx/h/b/a;->a:Landroidx/h/b/a$a;

    iput-object v1, p0, Landroidx/h/b/a;->d:Landroidx/h/b/a$a;

    .line 165
    invoke-virtual {p0}, Landroidx/h/b/a;->e()V

    .line 167
    :cond_4
    iput-object v2, p0, Landroidx/h/b/a;->a:Landroidx/h/b/a$a;

    return v0

    :cond_5
    return v1
.end method

.method final c()V
    .locals 6

    .line 186
    iget-object v0, p0, Landroidx/h/b/a;->d:Landroidx/h/b/a$a;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/h/b/a;->a:Landroidx/h/b/a$a;

    if-eqz v0, :cond_3

    .line 187
    iget-object v0, p0, Landroidx/h/b/a;->a:Landroidx/h/b/a$a;

    iget-boolean v0, v0, Landroidx/h/b/a$a;->a:Z

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Landroidx/h/b/a;->a:Landroidx/h/b/a$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/h/b/a$a;->a:Z

    .line 189
    iget-object v0, p0, Landroidx/h/b/a;->f:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/h/b/a;->a:Landroidx/h/b/a$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 191
    :cond_0
    iget-wide v0, p0, Landroidx/h/b/a;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 192
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 193
    iget-wide v2, p0, Landroidx/h/b/a;->b:J

    iget-wide v4, p0, Landroidx/h/b/a;->e:J

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 198
    iget-object v0, p0, Landroidx/h/b/a;->a:Landroidx/h/b/a$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/h/b/a$a;->a:Z

    .line 199
    iget-object v0, p0, Landroidx/h/b/a;->f:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/h/b/a;->a:Landroidx/h/b/a$a;

    iget-wide v2, p0, Landroidx/h/b/a;->b:J

    iget-wide v4, p0, Landroidx/h/b/a;->e:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Landroidx/h/b/a;->c:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_2

    .line 1329
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 205
    iput-object v0, p0, Landroidx/h/b/a;->c:Ljava/util/concurrent/Executor;

    .line 207
    :cond_2
    iget-object v0, p0, Landroidx/h/b/a;->a:Landroidx/h/b/a$a;

    iget-object v1, p0, Landroidx/h/b/a;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Landroidx/h/b/a$a;->a(Ljava/util/concurrent/Executor;)V

    :cond_3
    return-void
.end method

.method public abstract d()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public final f()Z
    .locals 1

    .line 313
    iget-object v0, p0, Landroidx/h/b/a;->d:Landroidx/h/b/a$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
