.class final Lokhttp3/MultipartReader$PartSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/MultipartReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PartSource"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0008H\u0016J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lokhttp3/MultipartReader$PartSource;",
        "Lokio/Source;",
        "(Lokhttp3/MultipartReader;)V",
        "timeout",
        "Lokio/Timeout;",
        "close",
        "",
        "read",
        "",
        "sink",
        "Lokio/Buffer;",
        "byteCount",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/MultipartReader;

.field private final timeout:Lc/ae;


# direct methods
.method public constructor <init>(Lokhttp3/MultipartReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance p1, Lc/ae;

    invoke-direct {p1}, Lc/ae;-><init>()V

    iput-object p1, p0, Lokhttp3/MultipartReader$PartSource;->timeout:Lc/ae;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 150
    iget-object v0, p0, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    invoke-static {v0}, Lokhttp3/MultipartReader;->access$getCurrentPart$p(Lokhttp3/MultipartReader;)Lokhttp3/MultipartReader$PartSource;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lokhttp3/MultipartReader$PartSource;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lokhttp3/MultipartReader;->access$setCurrentPart$p(Lokhttp3/MultipartReader;Lokhttp3/MultipartReader$PartSource;)V

    :cond_0
    return-void
.end method

.method public final read(Lc/f;J)J
    .locals 15

    move-object v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    const-string v4, "sink"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_b

    .line 157
    iget-object v6, v1, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    invoke-static {v6}, Lokhttp3/MultipartReader;->access$getCurrentPart$p(Lokhttp3/MultipartReader;)Lokhttp3/MultipartReader$PartSource;

    move-result-object v6

    move-object v7, v1

    check-cast v7, Lokhttp3/MultipartReader$PartSource;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 159
    iget-object v6, v1, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    invoke-static {v6}, Lokhttp3/MultipartReader;->access$getSource$p(Lokhttp3/MultipartReader;)Lc/h;

    move-result-object v6

    invoke-interface {v6}, Lc/h;->timeout()Lc/ae;

    move-result-object v6

    iget-object v7, v1, Lokhttp3/MultipartReader$PartSource;->timeout:Lc/ae;

    .line 212
    invoke-virtual {v6}, Lc/ae;->timeoutNanos()J

    move-result-wide v8

    .line 213
    invoke-virtual {v7}, Lc/ae;->timeoutNanos()J

    move-result-wide v10

    invoke-virtual {v6}, Lc/ae;->timeoutNanos()J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lc/ae$a;->a(JJ)J

    move-result-wide v10

    sget-object v12, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v10, v11, v12}, Lc/ae;->timeout(JLjava/util/concurrent/TimeUnit;)Lc/ae;

    .line 215
    invoke-virtual {v6}, Lc/ae;->hasDeadline()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 216
    invoke-virtual {v6}, Lc/ae;->deadlineNanoTime()J

    move-result-wide v13

    .line 217
    invoke-virtual {v7}, Lc/ae;->hasDeadline()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 218
    invoke-virtual {v6}, Lc/ae;->deadlineNanoTime()J

    move-result-wide v11

    invoke-virtual {v7}, Lc/ae;->deadlineNanoTime()J

    move-result-wide v4

    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v6, v4, v5}, Lc/ae;->deadlineNanoTime(J)Lc/ae;

    .line 160
    :cond_1
    :try_start_0
    iget-object v4, v1, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    invoke-static {v4, v2, v3}, Lokhttp3/MultipartReader;->access$currentPartBytesRemaining(Lokhttp3/MultipartReader;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v10, v2, v4

    if-nez v10, :cond_2

    const-wide/16 v11, -0x1

    goto :goto_1

    .line 162
    :cond_2
    iget-object v4, v1, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    invoke-static {v4}, Lokhttp3/MultipartReader;->access$getSource$p(Lokhttp3/MultipartReader;)Lc/h;

    move-result-object v4

    invoke-interface {v4, v0, v2, v3}, Lc/h;->read(Lc/f;J)J

    move-result-wide v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :goto_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v8, v9, v0}, Lc/ae;->timeout(JLjava/util/concurrent/TimeUnit;)Lc/ae;

    .line 224
    invoke-virtual {v7}, Lc/ae;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 225
    invoke-virtual {v6, v13, v14}, Lc/ae;->deadlineNanoTime(J)Lc/ae;

    :cond_3
    return-wide v11

    :catchall_0
    move-exception v0

    .line 223
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v8, v9, v2}, Lc/ae;->timeout(JLjava/util/concurrent/TimeUnit;)Lc/ae;

    .line 224
    invoke-virtual {v7}, Lc/ae;->hasDeadline()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 225
    invoke-virtual {v6, v13, v14}, Lc/ae;->deadlineNanoTime(J)Lc/ae;

    :cond_4
    throw v0

    .line 229
    :cond_5
    invoke-virtual {v7}, Lc/ae;->hasDeadline()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 230
    invoke-virtual {v7}, Lc/ae;->deadlineNanoTime()J

    move-result-wide v4

    invoke-virtual {v6, v4, v5}, Lc/ae;->deadlineNanoTime(J)Lc/ae;

    .line 160
    :cond_6
    :try_start_1
    iget-object v4, v1, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    invoke-static {v4, v2, v3}, Lokhttp3/MultipartReader;->access$currentPartBytesRemaining(Lokhttp3/MultipartReader;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v10, v2, v4

    if-nez v10, :cond_7

    const-wide/16 v11, -0x1

    goto :goto_2

    .line 162
    :cond_7
    iget-object v4, v1, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    invoke-static {v4}, Lokhttp3/MultipartReader;->access$getSource$p(Lokhttp3/MultipartReader;)Lc/h;

    move-result-object v4

    invoke-interface {v4, v0, v2, v3}, Lc/h;->read(Lc/f;J)J

    move-result-wide v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 235
    :goto_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v8, v9, v0}, Lc/ae;->timeout(JLjava/util/concurrent/TimeUnit;)Lc/ae;

    .line 236
    invoke-virtual {v7}, Lc/ae;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 237
    invoke-virtual {v6}, Lc/ae;->clearDeadline()Lc/ae;

    :cond_8
    return-wide v11

    :catchall_1
    move-exception v0

    .line 235
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v8, v9, v2}, Lc/ae;->timeout(JLjava/util/concurrent/TimeUnit;)Lc/ae;

    .line 236
    invoke-virtual {v7}, Lc/ae;->hasDeadline()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 237
    invoke-virtual {v6}, Lc/ae;->clearDeadline()Lc/ae;

    :cond_9
    throw v0

    .line 157
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 156
    :cond_b
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "byteCount < 0: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public final timeout()Lc/ae;
    .locals 1

    .line 169
    iget-object v0, p0, Lokhttp3/MultipartReader$PartSource;->timeout:Lc/ae;

    return-object v0
.end method
