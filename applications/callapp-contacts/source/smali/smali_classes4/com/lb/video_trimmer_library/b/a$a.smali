.class public abstract Lcom/lb/video_trimmer_library/b/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lb/video_trimmer_library/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008&\u0018\u00002\u00020\u0001B!\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010!\u001a\u00020\"H&J\r\u0010#\u001a\u00020\"H\u0000\u00a2\u0006\u0002\u0008$J\u0008\u0010%\u001a\u00020\"H\u0016R\u001a\u0010\u0008\u001a\u00020\tX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR \u0010\u000e\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u000fX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u0017X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0015R\u000e\u0010 \u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/lb/video_trimmer_library/utils/BackgroundExecutor$Task;",
        "Ljava/lang/Runnable;",
        "id",
        "",
        "delay",
        "",
        "serial",
        "(Ljava/lang/String;JLjava/lang/String;)V",
        "executionAsked",
        "",
        "getExecutionAsked$video_trimmer_library_release",
        "()Z",
        "setExecutionAsked$video_trimmer_library_release",
        "(Z)V",
        "future",
        "Ljava/util/concurrent/Future;",
        "getFuture$video_trimmer_library_release",
        "()Ljava/util/concurrent/Future;",
        "setFuture$video_trimmer_library_release",
        "(Ljava/util/concurrent/Future;)V",
        "getId",
        "()Ljava/lang/String;",
        "managed",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "getManaged$video_trimmer_library_release",
        "()Ljava/util/concurrent/atomic/AtomicBoolean;",
        "remainingDelay",
        "getRemainingDelay$video_trimmer_library_release",
        "()J",
        "setRemainingDelay$video_trimmer_library_release",
        "(J)V",
        "getSerial",
        "targetTimeMillis",
        "execute",
        "",
        "postExecute",
        "postExecute$video_trimmer_library_release",
        "run",
        "video_trimmer_library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field private final a:J

.field b:J

.field c:Z

.field d:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final f:Ljava/lang/String;

.field final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lb/video_trimmer_library/b/a$a;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/lb/video_trimmer_library/b/a$a;->g:Ljava/lang/String;

    .line 177
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/lb/video_trimmer_library/b/a$a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_0

    .line 184
    iput-wide p2, p0, Lcom/lb/video_trimmer_library/b/a$a;->b:J

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/lb/video_trimmer_library/b/a$a;->a:J

    return-void

    .line 186
    :cond_0
    iput-wide v0, p0, Lcom/lb/video_trimmer_library/b/a$a;->a:J

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final b()V
    .locals 8

    .line 210
    iget-object v0, p0, Lcom/lb/video_trimmer_library/b/a$a;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lb/video_trimmer_library/b/a$a;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 214
    :cond_0
    sget-object v0, Lcom/lb/video_trimmer_library/b/a;->a:Lcom/lb/video_trimmer_library/b/a;

    invoke-static {}, Lcom/lb/video_trimmer_library/b/a;->a()Ljava/lang/ThreadLocal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 215
    const-class v0, Lcom/lb/video_trimmer_library/b/a;

    monitor-enter v0

    .line 217
    :try_start_0
    sget-object v1, Lcom/lb/video_trimmer_library/b/a;->a:Lcom/lb/video_trimmer_library/b/a;

    invoke-static {}, Lcom/lb/video_trimmer_library/b/a;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 218
    iget-object v1, p0, Lcom/lb/video_trimmer_library/b/a$a;->g:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 219
    sget-object v1, Lcom/lb/video_trimmer_library/b/a;->a:Lcom/lb/video_trimmer_library/b/a;

    iget-object v1, p0, Lcom/lb/video_trimmer_library/b/a$a;->g:Ljava/lang/String;

    invoke-static {v1}, Lcom/lb/video_trimmer_library/b/a;->b(Ljava/lang/String;)Lcom/lb/video_trimmer_library/b/a$a;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 221
    iget-wide v2, v1, Lcom/lb/video_trimmer_library/b/a$a;->b:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    .line 223
    iget-wide v2, p0, Lcom/lb/video_trimmer_library/b/a$a;->a:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v2, v6

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/lb/video_trimmer_library/b/a$a;->b:J

    .line 226
    :cond_1
    sget-object v2, Lcom/lb/video_trimmer_library/b/a;->a:Lcom/lb/video_trimmer_library/b/a;

    invoke-virtual {v2, v1}, Lcom/lb/video_trimmer_library/b/a;->a(Lcom/lb/video_trimmer_library/b/a$a;)V

    .line 229
    :cond_2
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public run()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/lb/video_trimmer_library/b/a$a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 199
    :cond_0
    :try_start_0
    sget-object v0, Lcom/lb/video_trimmer_library/b/a;->a:Lcom/lb/video_trimmer_library/b/a;

    invoke-static {}, Lcom/lb/video_trimmer_library/b/a;->a()Ljava/lang/ThreadLocal;

    move-result-object v0

    iget-object v1, p0, Lcom/lb/video_trimmer_library/b/a$a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 200
    invoke-virtual {p0}, Lcom/lb/video_trimmer_library/b/a$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    invoke-virtual {p0}, Lcom/lb/video_trimmer_library/b/a$a;->b()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/lb/video_trimmer_library/b/a$a;->b()V

    throw v0
.end method
