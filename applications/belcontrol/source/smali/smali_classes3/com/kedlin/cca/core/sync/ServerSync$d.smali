.class public final Lcom/kedlin/cca/core/sync/ServerSync$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kedlin/cca/core/sync/ServerSync;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lr71$a;->Y0:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->g()J

    move-result-wide v3

    sub-long/2addr v0, v3

    const-wide/32 v3, 0x2932e00

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    :try_start_0
    invoke-static {}, Lk61;->r()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lr71$a;->n(Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    const-wide/32 v0, 0x5265c00

    :try_start_1
    invoke-static {}, Lcom/kedlin/cca/core/sync/ServerSync;->e()J

    move-result-wide v2

    sget-object v4, Lr71$a;->u0:Lr71$a;

    invoke-virtual {v4}, Lr71$a;->g()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    invoke-static {}, Lcom/kedlin/cca/core/sync/ServerSync;->e()J

    move-result-wide v2

    sget-object v4, Lr71$a;->v0:Lr71$a;

    invoke-virtual {v4}, Lr71$a;->g()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    invoke-static {}, Lcom/kedlin/cca/core/sync/ServerSync;->e()J

    move-result-wide v2

    sget-object v4, Lr71$a;->w0:Lr71$a;

    invoke-virtual {v4}, Lr71$a;->g()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lr71$a;->X0:Lr71$a;

    invoke-virtual {v4}, Lr71$a;->g()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    invoke-static {}, Lcom/kedlin/cca/core/sync/ServerSync;->g()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/kedlin/cca/core/sync/ServerSync;->h()Ljava/lang/String;

    return-void

    :cond_1
    invoke-static {}, Lk61;->z()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/kedlin/cca/core/sync/ServerSync;->f(J)J

    sget-object v2, Lr71$a;->Z0:Lr71$a;

    invoke-static {}, Lcom/kedlin/cca/core/sync/ServerSync;->e()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lr71$a;->n(Ljava/lang/Long;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    instance-of v3, v2, Lk61$a;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Lk61$a;

    invoke-virtual {v3}, Lk61$a;->b()I

    move-result v3

    const/16 v4, -0x1f4

    if-ne v3, v4, :cond_2

    invoke-static {}, Lcom/kedlin/cca/core/sync/ServerSync;->h()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Unable to synchronize with server"

    invoke-static {v3, v4, v2}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kedlin/cca/core/sync/ServerSync;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Unable to synchronize with server"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lj91;->v(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    :try_start_2
    invoke-static {}, Lk61;->v()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    nop

    :goto_1
    sget-object v2, Lm91$c;->d:Lm91$c;

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lm91;->a(Ljava/lang/Object;Lm91$c;Ljava/lang/Object;)V

    invoke-static {}, Lcom/kedlin/cca/core/sync/ServerSync;->g()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v0, Lm91$c;->f:Lm91$c;

    invoke-static {p0, v0, v3}, Lm91;->a(Ljava/lang/Object;Lm91$c;Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-static {}, Lcom/kedlin/cca/core/sync/ServerSync;->d()V

    :try_start_3
    invoke-static {}, Lka1;->l()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v2

    invoke-static {}, Lcom/kedlin/cca/core/sync/ServerSync;->h()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to deliver stats - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lr71$a;->a1:Lr71$a;

    invoke-virtual {v4}, Lr71$a;->g()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-ltz v4, :cond_4

    invoke-static {}, Lk61;->f()V

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lr71$a;->b1:Lr71$a;

    invoke-virtual {v4}, Lr71$a;->g()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-ltz v4, :cond_5

    :try_start_4
    invoke-static {}, Lk61;->u()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    :cond_5
    new-instance v0, Lj81;

    invoke-direct {v0}, Lj81;-><init>()V

    invoke-virtual {v0}, Lj81;->F()V

    new-instance v0, Ln81;

    invoke-direct {v0}, Ln81;-><init>()V

    invoke-virtual {v0}, Ln81;->F()V

    return-void
.end method
