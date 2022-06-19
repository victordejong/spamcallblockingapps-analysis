.class Lcom/bytedance/sdk/openadsdk/core/p$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/adnet/core/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/p;->b(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/e/j;ILcom/bytedance/sdk/openadsdk/core/o$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/adnet/core/m$a<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/o$a;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic d:I

.field final synthetic e:Lcom/bytedance/sdk/openadsdk/core/e/j;

.field final synthetic f:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic g:J

.field final synthetic h:Lcom/bytedance/sdk/openadsdk/core/p;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/p;Ljava/util/concurrent/atomic/AtomicLong;Lcom/bytedance/sdk/openadsdk/core/o$a;Lcom/bytedance/sdk/openadsdk/AdSlot;ILcom/bytedance/sdk/openadsdk/core/e/j;Ljava/util/concurrent/atomic/AtomicLong;J)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->h:Lcom/bytedance/sdk/openadsdk/core/p;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->a:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->b:Lcom/bytedance/sdk/openadsdk/core/o$a;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iput p5, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->d:I

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->e:Lcom/bytedance/sdk/openadsdk/core/e/j;

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->f:Ljava/util/concurrent/atomic/AtomicLong;

    iput-wide p8, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->g:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/adnet/core/m;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 407
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 409
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->h:Lcom/bytedance/sdk/openadsdk/core/p;

    iget-object v1, p1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->h:Lcom/bytedance/sdk/openadsdk/core/p;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->b:Lcom/bytedance/sdk/openadsdk/core/o$a;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/core/o$a;)V

    .line 413
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->h:Lcom/bytedance/sdk/openadsdk/core/p;

    iget-wide v3, p1, Lcom/bytedance/sdk/adnet/core/m;->e:J

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->d:I

    const/4 v7, 0x0

    const/4 v8, -0x1

    const-string v9, "mate parse_fail"

    invoke-static/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/p;JLjava/lang/String;ILcom/bytedance/sdk/openadsdk/core/p$a;ILjava/lang/String;)V

    return-void

    .line 418
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->e:Lcom/bytedance/sdk/openadsdk/core/e/j;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/p$a;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/e/j;)Lcom/bytedance/sdk/openadsdk/core/p$a;

    move-result-object v8

    .line 420
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->h:Lcom/bytedance/sdk/openadsdk/core/p;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/p;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v8, Lcom/bytedance/sdk/openadsdk/core/p$a;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/i;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 421
    iget v1, v8, Lcom/bytedance/sdk/openadsdk/core/p$a;->d:I

    const/16 v2, 0x4e20

    if-eq v1, v2, :cond_2

    .line 423
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/e;->l()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, v8, Lcom/bytedance/sdk/openadsdk/core/p$a;->d:I

    const v1, 0x9c5d

    if-ne v0, v1, :cond_1

    .line 425
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->b:Lcom/bytedance/sdk/openadsdk/core/o$a;

    const/16 v1, -0x64

    .line 426
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/f;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 425
    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/o$a;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->b:Lcom/bytedance/sdk/openadsdk/core/o$a;

    iget v1, v8, Lcom/bytedance/sdk/openadsdk/core/p$a;->d:I

    iget-object v2, v8, Lcom/bytedance/sdk/openadsdk/core/p$a;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/o$a;->a(ILjava/lang/String;)V

    .line 431
    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->h:Lcom/bytedance/sdk/openadsdk/core/p;

    iget-wide v4, p1, Lcom/bytedance/sdk/adnet/core/m;->e:J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->d:I

    iget v9, v8, Lcom/bytedance/sdk/openadsdk/core/p$a;->d:I

    iget v0, v8, Lcom/bytedance/sdk/openadsdk/core/p$a;->f:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v3 .. v10}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/p;JLjava/lang/String;ILcom/bytedance/sdk/openadsdk/core/p$a;ILjava/lang/String;)V

    return-void

    .line 435
    :cond_2
    iget-object v1, v8, Lcom/bytedance/sdk/openadsdk/core/p$a;->h:Lcom/bytedance/sdk/openadsdk/core/e/a;

    if-nez v1, :cond_3

    .line 436
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->h:Lcom/bytedance/sdk/openadsdk/core/p;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->b:Lcom/bytedance/sdk/openadsdk/core/o$a;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/core/o$a;)V

    .line 438
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->h:Lcom/bytedance/sdk/openadsdk/core/p;

    iget-wide v4, p1, Lcom/bytedance/sdk/adnet/core/m;->e:J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->d:I

    const/4 v9, -0x1

    const-string v10, "parse_fail"

    invoke-static/range {v3 .. v10}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/p;JLjava/lang/String;ILcom/bytedance/sdk/openadsdk/core/p$a;ILjava/lang/String;)V

    return-void

    .line 442
    :cond_3
    iget-object v1, v8, Lcom/bytedance/sdk/openadsdk/core/p$a;->h:Lcom/bytedance/sdk/openadsdk/core/e/a;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/e/a;->c(Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 444
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->b:Lcom/bytedance/sdk/openadsdk/core/o$a;

    iget-object v1, v8, Lcom/bytedance/sdk/openadsdk/core/p$a;->h:Lcom/bytedance/sdk/openadsdk/core/e/a;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o$a;->a(Lcom/bytedance/sdk/openadsdk/core/e/a;)V

    .line 447
    iget-object v0, v8, Lcom/bytedance/sdk/openadsdk/core/p$a;->h:Lcom/bytedance/sdk/openadsdk/core/e/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/e/a;->a(Lcom/bytedance/sdk/openadsdk/core/e/a;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 449
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/e/a;->a()Lcom/bytedance/sdk/openadsdk/e/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/e/a;->a(Ljava/util/Map;)V

    .line 454
    :cond_4
    iget-object v0, v8, Lcom/bytedance/sdk/openadsdk/core/p$a;->h:Lcom/bytedance/sdk/openadsdk/core/e/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/a;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, v8, Lcom/bytedance/sdk/openadsdk/core/p$a;->h:Lcom/bytedance/sdk/openadsdk/core/e/a;

    .line 455
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 456
    iget-object v0, v8, Lcom/bytedance/sdk/openadsdk/core/p$a;->h:Lcom/bytedance/sdk/openadsdk/core/e/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/a;->b()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/e/i;

    .line 457
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->d:I

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/af;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 458
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 471
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->e:Lcom/bytedance/sdk/openadsdk/core/e/j;

    if-eqz v3, :cond_5

    iget-wide v3, v3, Lcom/bytedance/sdk/openadsdk/core/e/j;->f:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_5

    const-string v3, "client_start_time"

    .line 472
    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->g:J

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->e:Lcom/bytedance/sdk/openadsdk/core/e/j;

    iget-wide v6, v6, Lcom/bytedance/sdk/openadsdk/core/e/j;->f:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "load_ts"

    .line 473
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->e:Lcom/bytedance/sdk/openadsdk/core/e/j;

    iget-wide v4, v4, Lcom/bytedance/sdk/openadsdk/core/e/j;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "total_time"

    .line 474
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->e:Lcom/bytedance/sdk/openadsdk/core/e/j;

    iget-wide v6, v6, Lcom/bytedance/sdk/openadsdk/core/e/j;->f:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v3, "request_ts"

    .line 478
    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "s_revice_ts"

    .line 479
    iget-wide v4, v8, Lcom/bytedance/sdk/openadsdk/core/p$a;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "s_send_ts"

    .line 480
    iget-wide v4, v8, Lcom/bytedance/sdk/openadsdk/core/p$a;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "c_revice_ts"

    .line 481
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "c_end_ts"

    .line 482
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "network_time"

    .line 485
    iget-wide v4, p1, Lcom/bytedance/sdk/adnet/core/m;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "go_time"

    .line 486
    iget-wide v4, v8, Lcom/bytedance/sdk/openadsdk/core/p$a;->b:J

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->g:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "sever_time"

    .line 487
    iget v4, v8, Lcom/bytedance/sdk/openadsdk/core/p$a;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "back_time"

    .line 488
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    iget-wide v6, v8, Lcom/bytedance/sdk/openadsdk/core/p$a;->c:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "client_end_time"

    .line 489
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "NetApiImpl"

    const-string v2, "get ad error: "

    .line 495
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 496
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->h:Lcom/bytedance/sdk/openadsdk/core/p;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->b:Lcom/bytedance/sdk/openadsdk/core/o$a;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/core/o$a;)V

    .line 499
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->h:Lcom/bytedance/sdk/openadsdk/core/p;

    iget-wide v3, p1, Lcom/bytedance/sdk/adnet/core/m;->e:J

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->d:I

    const/4 v7, 0x0

    const/4 v8, -0x1

    const-string v9, "parse_fail"

    invoke-static/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/p;JLjava/lang/String;ILcom/bytedance/sdk/openadsdk/core/p$a;ILjava/lang/String;)V

    return-void
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/m;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 507
    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/m;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    .line 508
    instance-of v1, v0, Lcom/bytedance/sdk/adnet/err/e;

    if-eqz v1, :cond_0

    .line 509
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->h:Lcom/bytedance/sdk/openadsdk/core/p;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->b:Lcom/bytedance/sdk/openadsdk/core/o$a;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/core/o$a;)V

    .line 512
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->h:Lcom/bytedance/sdk/openadsdk/core/p;

    iget-wide v3, p1, Lcom/bytedance/sdk/adnet/core/m;->e:J

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->d:I

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 p1, -0x1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/f;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/p;JLjava/lang/String;ILcom/bytedance/sdk/openadsdk/core/p$a;ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, -0x2

    .line 518
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/f;->a(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 520
    iget-wide v1, p1, Lcom/bytedance/sdk/adnet/core/m;->h:J

    long-to-int v1, v1

    .line 521
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/err/VAdError;->getMessage()Ljava/lang/String;

    move-result-object v2

    move v9, v1

    goto :goto_0

    :cond_1
    const/4 v9, -0x2

    .line 524
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->b:Lcom/bytedance/sdk/openadsdk/core/o$a;

    invoke-interface {v1, v9, v2}, Lcom/bytedance/sdk/openadsdk/core/o$a;->a(ILjava/lang/String;)V

    .line 527
    instance-of v0, v0, Lcom/bytedance/sdk/adnet/err/g;

    if-eqz v0, :cond_2

    const-string v0, "SocketTimeout"

    move-object v10, v0

    goto :goto_1

    :cond_2
    move-object v10, v2

    .line 530
    :goto_1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->h:Lcom/bytedance/sdk/openadsdk/core/p;

    iget-wide v4, p1, Lcom/bytedance/sdk/adnet/core/m;->e:J

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->d:I

    const/4 v8, 0x0

    invoke-static/range {v3 .. v10}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/p;JLjava/lang/String;ILcom/bytedance/sdk/openadsdk/core/p$a;ILjava/lang/String;)V

    return-void
.end method
