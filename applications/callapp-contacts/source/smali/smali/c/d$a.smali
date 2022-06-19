.class public final Lc/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000f\u0010\n\u001a\u0004\u0018\u00010\tH\u0000\u00a2\u0006\u0002\u0008\u000bJ\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\tH\u0002J \u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\rH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lokio/AsyncTimeout$Companion;",
        "",
        "()V",
        "IDLE_TIMEOUT_MILLIS",
        "",
        "IDLE_TIMEOUT_NANOS",
        "TIMEOUT_WRITE_SIZE",
        "",
        "head",
        "Lokio/AsyncTimeout;",
        "awaitTimeout",
        "awaitTimeout$okio",
        "cancelScheduledTimeout",
        "",
        "node",
        "scheduleTimeout",
        "",
        "timeoutNanos",
        "hasDeadline",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 205
    invoke-direct {p0}, Lc/d$a;-><init>()V

    return-void
.end method

.method static a(Lc/d;JZ)V
    .locals 6

    .line 228
    const-class v0, Lc/d;

    .line 328
    monitor-enter v0

    .line 230
    :try_start_0
    invoke-static {}, Lc/d;->access$getHead$cp()Lc/d;

    move-result-object v1

    if-nez v1, :cond_0

    .line 231
    new-instance v1, Lc/d;

    invoke-direct {v1}, Lc/d;-><init>()V

    invoke-static {v1}, Lc/d;->access$setHead$cp(Lc/d;)V

    .line 232
    new-instance v1, Lc/d$b;

    invoke-direct {v1}, Lc/d$b;-><init>()V

    invoke-virtual {v1}, Lc/d$b;->start()V

    .line 235
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-eqz v5, :cond_1

    if-eqz p3, :cond_1

    .line 239
    invoke-virtual {p0}, Lc/d;->deadlineNanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    add-long/2addr p1, v1

    invoke-static {p0, p1, p2}, Lc/d;->access$setTimeoutAt$p(Lc/d;J)V

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_2

    add-long/2addr p1, v1

    .line 241
    invoke-static {p0, p1, p2}, Lc/d;->access$setTimeoutAt$p(Lc/d;J)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_6

    .line 243
    invoke-virtual {p0}, Lc/d;->deadlineNanoTime()J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lc/d;->access$setTimeoutAt$p(Lc/d;J)V

    .line 249
    :goto_0
    invoke-static {p0, v1, v2}, Lc/d;->access$remainingNanos(Lc/d;J)J

    move-result-wide p1

    .line 250
    invoke-static {}, Lc/d;->access$getHead$cp()Lc/d;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    .line 252
    :goto_1
    invoke-static {p3}, Lc/d;->access$getNext$p(Lc/d;)Lc/d;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {p3}, Lc/d;->access$getNext$p(Lc/d;)Lc/d;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-static {v3, v1, v2}, Lc/d;->access$remainingNanos(Lc/d;J)J

    move-result-wide v3

    cmp-long v5, p1, v3

    if-gez v5, :cond_3

    goto :goto_2

    .line 261
    :cond_3
    invoke-static {p3}, Lc/d;->access$getNext$p(Lc/d;)Lc/d;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 253
    :cond_4
    :goto_2
    invoke-static {p3}, Lc/d;->access$getNext$p(Lc/d;)Lc/d;

    move-result-object p1

    invoke-static {p0, p1}, Lc/d;->access$setNext$p(Lc/d;Lc/d;)V

    .line 254
    invoke-static {p3, p0}, Lc/d;->access$setNext$p(Lc/d;Lc/d;)V

    .line 255
    invoke-static {}, Lc/d;->access$getHead$cp()Lc/d;

    move-result-object p0

    if-ne p3, p0, :cond_5

    .line 257
    const-class p0, Lc/d;

    check-cast p0, Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 263
    :cond_5
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    .line 245
    :cond_6
    :try_start_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 263
    monitor-exit v0

    throw p0
.end method

.method static a(Lc/d;)Z
    .locals 3

    .line 268
    const-class v0, Lc/d;

    .line 329
    monitor-enter v0

    .line 270
    :try_start_0
    invoke-static {}, Lc/d;->access$getHead$cp()Lc/d;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 272
    invoke-static {v1}, Lc/d;->access$getNext$p(Lc/d;)Lc/d;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 273
    invoke-static {p0}, Lc/d;->access$getNext$p(Lc/d;)Lc/d;

    move-result-object v2

    invoke-static {v1, v2}, Lc/d;->access$setNext$p(Lc/d;Lc/d;)V

    const/4 v1, 0x0

    .line 274
    invoke-static {p0, v1}, Lc/d;->access$setNext$p(Lc/d;Lc/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    .line 277
    :cond_0
    :try_start_1
    invoke-static {v1}, Lc/d;->access$getNext$p(Lc/d;)Lc/d;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 281
    :cond_1
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
