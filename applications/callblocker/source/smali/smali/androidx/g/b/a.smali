.class public abstract Landroidx/g/b/a;
.super Landroidx/g/b/b;
.source "AsyncTaskLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/g/b/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/g/b/b",
        "<TD;>;"
    }
.end annotation


# instance fields
.field volatile a:Landroidx/g/b/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/g/b/a",
            "<TD;>.a;"
        }
    .end annotation
.end field

.field volatile b:Landroidx/g/b/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/g/b/a",
            "<TD;>.a;"
        }
    .end annotation
.end field

.field c:J

.field d:J

.field e:Landroid/os/Handler;

.field private final o:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 128
    sget-object v0, Landroidx/g/b/c;->c:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1, v0}, Landroidx/g/b/a;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    .line 129
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 2

    .prologue
    .line 132
    invoke-direct {p0, p1}, Landroidx/g/b/b;-><init>(Landroid/content/Context;)V

    .line 124
    const-wide/16 v0, -0x2710

    iput-wide v0, p0, Landroidx/g/b/a;->d:J

    .line 133
    iput-object p2, p0, Landroidx/g/b/a;->o:Ljava/util/concurrent/Executor;

    .line 134
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Landroidx/g/b/b;->a()V

    .line 153
    invoke-virtual {p0}, Landroidx/g/b/a;->k()Z

    .line 154
    new-instance v0, Landroidx/g/b/a$a;

    invoke-direct {v0, p0}, Landroidx/g/b/a$a;-><init>(Landroidx/g/b/a;)V

    iput-object v0, p0, Landroidx/g/b/a;->a:Landroidx/g/b/a$a;

    .line 156
    invoke-virtual {p0}, Landroidx/g/b/a;->c()V

    .line 157
    return-void
.end method

.method a(Landroidx/g/b/a$a;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/g/b/a",
            "<TD;>.a;TD;)V"
        }
    .end annotation

    .prologue
    .line 233
    invoke-virtual {p0, p2}, Landroidx/g/b/a;->a(Ljava/lang/Object;)V

    .line 234
    iget-object v0, p0, Landroidx/g/b/a;->b:Landroidx/g/b/a$a;

    if-ne v0, p1, :cond_0

    .line 236
    invoke-virtual {p0}, Landroidx/g/b/a;->t()V

    .line 237
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/g/b/a;->d:J

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/g/b/a;->b:Landroidx/g/b/a$a;

    .line 240
    invoke-virtual {p0}, Landroidx/g/b/a;->g()V

    .line 241
    invoke-virtual {p0}, Landroidx/g/b/a;->c()V

    .line 243
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

    .prologue
    .line 207
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 356
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/g/b/b;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Landroidx/g/b/a;->a:Landroidx/g/b/a$a;

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTask="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/g/b/a;->a:Landroidx/g/b/a$a;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 359
    const-string/jumbo v0, " waiting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/g/b/a;->a:Landroidx/g/b/a$a;

    iget-boolean v0, v0, Landroidx/g/b/a$a;->a:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 361
    :cond_0
    iget-object v0, p0, Landroidx/g/b/a;->b:Landroidx/g/b/a$a;

    if-eqz v0, :cond_1

    .line 362
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCancellingTask="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/g/b/a;->b:Landroidx/g/b/a$a;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 363
    const-string/jumbo v0, " waiting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/g/b/a;->b:Landroidx/g/b/a$a;

    iget-boolean v0, v0, Landroidx/g/b/a$a;->a:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 365
    :cond_1
    iget-wide v0, p0, Landroidx/g/b/a;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 366
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUpdateThrottle="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 367
    iget-wide v0, p0, Landroidx/g/b/a;->c:J

    invoke-static {v0, v1, p3}, Landroidx/core/g/g;->a(JLjava/io/PrintWriter;)V

    .line 368
    const-string/jumbo v0, " mLastLoadCompleteTime="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 369
    iget-wide v0, p0, Landroidx/g/b/a;->d:J

    .line 370
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 369
    invoke-static {v0, v1, v2, v3, p3}, Landroidx/core/g/g;->a(JJLjava/io/PrintWriter;)V

    .line 371
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 373
    :cond_2
    return-void
.end method

.method b(Landroidx/g/b/a$a;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/g/b/a",
            "<TD;>.a;TD;)V"
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Landroidx/g/b/a;->a:Landroidx/g/b/a$a;

    if-eq v0, p1, :cond_0

    .line 248
    invoke-virtual {p0, p1, p2}, Landroidx/g/b/a;->a(Landroidx/g/b/a$a;Ljava/lang/Object;)V

    .line 261
    :goto_0
    return-void

    .line 250
    :cond_0
    invoke-virtual {p0}, Landroidx/g/b/a;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    invoke-virtual {p0, p2}, Landroidx/g/b/a;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 254
    :cond_1
    invoke-virtual {p0}, Landroidx/g/b/a;->s()V

    .line 255
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/g/b/a;->d:J

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/g/b/a;->a:Landroidx/g/b/a$a;

    .line 258
    invoke-virtual {p0, p2}, Landroidx/g/b/a;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected b()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 162
    iget-object v1, p0, Landroidx/g/b/a;->a:Landroidx/g/b/a$a;

    if-eqz v1, :cond_2

    .line 163
    iget-boolean v1, p0, Landroidx/g/b/a;->j:Z

    if-nez v1, :cond_0

    .line 164
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/g/b/a;->m:Z

    .line 166
    :cond_0
    iget-object v1, p0, Landroidx/g/b/a;->b:Landroidx/g/b/a$a;

    if-eqz v1, :cond_3

    .line 171
    iget-object v1, p0, Landroidx/g/b/a;->a:Landroidx/g/b/a$a;

    iget-boolean v1, v1, Landroidx/g/b/a$a;->a:Z

    if-eqz v1, :cond_1

    .line 172
    iget-object v1, p0, Landroidx/g/b/a;->a:Landroidx/g/b/a$a;

    iput-boolean v0, v1, Landroidx/g/b/a$a;->a:Z

    .line 173
    iget-object v1, p0, Landroidx/g/b/a;->e:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/g/b/a;->a:Landroidx/g/b/a$a;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 175
    :cond_1
    iput-object v3, p0, Landroidx/g/b/a;->a:Landroidx/g/b/a$a;

    .line 196
    :cond_2
    :goto_0
    return v0

    .line 177
    :cond_3
    iget-object v1, p0, Landroidx/g/b/a;->a:Landroidx/g/b/a$a;

    iget-boolean v1, v1, Landroidx/g/b/a$a;->a:Z

    if-eqz v1, :cond_4

    .line 181
    iget-object v1, p0, Landroidx/g/b/a;->a:Landroidx/g/b/a$a;

    iput-boolean v0, v1, Landroidx/g/b/a$a;->a:Z

    .line 182
    iget-object v1, p0, Landroidx/g/b/a;->e:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/g/b/a;->a:Landroidx/g/b/a$a;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 183
    iput-object v3, p0, Landroidx/g/b/a;->a:Landroidx/g/b/a$a;

    goto :goto_0

    .line 186
    :cond_4
    iget-object v1, p0, Landroidx/g/b/a;->a:Landroidx/g/b/a$a;

    invoke-virtual {v1, v0}, Landroidx/g/b/a$a;->a(Z)Z

    move-result v0

    .line 188
    if-eqz v0, :cond_5

    .line 189
    iget-object v1, p0, Landroidx/g/b/a;->a:Landroidx/g/b/a$a;

    iput-object v1, p0, Landroidx/g/b/a;->b:Landroidx/g/b/a$a;

    .line 190
    invoke-virtual {p0}, Landroidx/g/b/a;->f()V

    .line 192
    :cond_5
    iput-object v3, p0, Landroidx/g/b/a;->a:Landroidx/g/b/a$a;

    goto :goto_0
.end method

.method c()V
    .locals 6

    .prologue
    .line 210
    iget-object v0, p0, Landroidx/g/b/a;->b:Landroidx/g/b/a$a;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/g/b/a;->a:Landroidx/g/b/a$a;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Landroidx/g/b/a;->a:Landroidx/g/b/a$a;

    iget-boolean v0, v0, Landroidx/g/b/a$a;->a:Z

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Landroidx/g/b/a;->a:Landroidx/g/b/a$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/g/b/a$a;->a:Z

    .line 213
    iget-object v0, p0, Landroidx/g/b/a;->e:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/g/b/a;->a:Landroidx/g/b/a$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 215
    :cond_0
    iget-wide v0, p0, Landroidx/g/b/a;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 216
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 217
    iget-wide v2, p0, Landroidx/g/b/a;->d:J

    iget-wide v4, p0, Landroidx/g/b/a;->c:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 222
    iget-object v0, p0, Landroidx/g/b/a;->a:Landroidx/g/b/a$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/g/b/a$a;->a:Z

    .line 223
    iget-object v0, p0, Landroidx/g/b/a;->e:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/g/b/a;->a:Landroidx/g/b/a$a;

    iget-wide v2, p0, Landroidx/g/b/a;->d:J

    iget-wide v4, p0, Landroidx/g/b/a;->c:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 230
    :cond_1
    :goto_0
    return-void

    .line 228
    :cond_2
    iget-object v1, p0, Landroidx/g/b/a;->a:Landroidx/g/b/a$a;

    iget-object v2, p0, Landroidx/g/b/a;->o:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Landroidx/g/b/a$a;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroidx/g/b/c;

    goto :goto_0
.end method

.method public abstract d()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method protected e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .prologue
    .line 307
    invoke-virtual {p0}, Landroidx/g/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 0

    .prologue
    .line 322
    return-void
.end method
