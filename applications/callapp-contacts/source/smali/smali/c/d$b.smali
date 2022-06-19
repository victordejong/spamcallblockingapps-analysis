.class final Lc/d$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0000\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lokio/AsyncTimeout$Watchdog;",
        "Ljava/lang/Thread;",
        "()V",
        "run",
        "",
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
.method public constructor <init>()V
    .locals 1

    const-string v0, "Okio Watchdog"

    .line 177
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 179
    invoke-virtual {p0, v0}, Lc/d$b;->setDaemon(Z)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 186
    :catch_0
    :cond_0
    :goto_0
    :try_start_0
    const-class v0, Lc/d;

    .line 328
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :try_start_1
    sget-object v1, Lc/d;->Companion:Lc/d$a;

    .line 1295
    invoke-static {}, Lc/d;->access$getHead$cp()Lc/d;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-static {v1}, Lc/d;->access$getNext$p(Lc/d;)Lc/d;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1299
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 1300
    const-class v1, Lc/d;

    check-cast v1, Ljava/lang/Object;

    invoke-static {}, Lc/d;->access$getIDLE_TIMEOUT_MILLIS$cp()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 1301
    invoke-static {}, Lc/d;->access$getHead$cp()Lc/d;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-static {v1}, Lc/d;->access$getNext$p(Lc/d;)Lc/d;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-static {}, Lc/d;->access$getIDLE_TIMEOUT_NANOS$cp()J

    move-result-wide v3

    cmp-long v1, v5, v3

    if-ltz v1, :cond_2

    .line 1302
    invoke-static {}, Lc/d;->access$getHead$cp()Lc/d;

    move-result-object v1

    goto :goto_1

    .line 1308
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lc/d;->access$remainingNanos(Lc/d;J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_3

    const-wide/32 v5, 0xf4240

    .line 1314
    div-long v7, v3, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1315
    invoke-static {v7, v8}, Ljava/lang/Long;->signum(J)I

    mul-long v5, v5, v7

    sub-long/2addr v3, v5

    .line 1316
    :try_start_2
    const-class v1, Lc/d;

    check-cast v1, Ljava/lang/Object;

    long-to-int v4, v3

    invoke-virtual {v1, v7, v8, v4}, Ljava/lang/Object;->wait(JI)V

    :cond_2
    move-object v1, v2

    goto :goto_1

    .line 1321
    :cond_3
    invoke-static {}, Lc/d;->access$getHead$cp()Lc/d;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-static {v1}, Lc/d;->access$getNext$p(Lc/d;)Lc/d;

    move-result-object v4

    invoke-static {v3, v4}, Lc/d;->access$setNext$p(Lc/d;Lc/d;)V

    .line 1322
    invoke-static {v1, v2}, Lc/d;->access$setNext$p(Lc/d;Lc/d;)V

    .line 191
    :goto_1
    invoke-static {}, Lc/d;->access$getHead$cp()Lc/d;

    move-result-object v3

    if-ne v1, v3, :cond_4

    .line 192
    invoke-static {v2}, Lc/d;->access$setHead$cp(Lc/d;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    .line 195
    :cond_4
    :try_start_4
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v0

    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {v1}, Lc/d;->timedOut()V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    .line 195
    monitor-exit v0

    throw v1
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
.end method
