.class public Lcom/kedlin/cca/core/CallScreeningService;
.super Landroid/telecom/CallScreeningService;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/telecom/CallScreeningService;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/telecom/CallScreeningService;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/telecom/CallScreeningService;->onDestroy()V

    return-void
.end method

.method public onScreenCall(Landroid/telecom/Call$Details;)V
    .locals 9

    new-instance v0, Landroid/telecom/CallScreeningService$CallResponse$Builder;

    invoke-direct {v0}, Landroid/telecom/CallScreeningService$CallResponse$Builder;-><init>()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-static {v1}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, " +"

    const-string v4, " "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_4

    invoke-virtual {v1}, Li91;->p()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Li91;->q()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Li91;->n()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Li91;->s()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Li91;->o()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Li91;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Li91;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Ln81;

    invoke-direct {v3}, Ln81;-><init>()V

    invoke-virtual {v3, v1}, Ln81;->G(Li91;)Ln81;

    iput-object v1, v3, Ln81;->f:Li91;

    iput-object v2, v3, Ln81;->g:Ljava/lang/String;

    invoke-virtual {v3}, Lv71;->z()Z

    new-instance v3, Lu81;

    invoke-direct {v3}, Lu81;-><init>()V

    invoke-virtual {v3, v1, v4}, Lu81;->F(Li91;Ljava/lang/String;)Lu81;

    iget-object v5, v3, Lu81;->d:Ljava/lang/String;

    if-nez v5, :cond_3

    sget-object v5, Lu81$a;->a:Lu81$a;

    invoke-virtual {v3, v1, v2, v5}, Lu81;->G(Li91;Ljava/lang/String;Lu81$a;)V

    invoke-virtual {v3}, Lu81;->z()Z

    :cond_3
    invoke-static {v1}, Lo71;->j(Li91;)V

    :cond_4
    sget-object v2, Lr71$a;->d:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->a()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {}, Lr71;->m()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_5

    goto/16 :goto_7

    :cond_5
    const-string v2, "CACHING"

    invoke-static {v2}, Lj91;->C(Ljava/lang/String;)V

    invoke-static {v1}, Lo71;->e(Li91;)Ln91$b;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Time to check cache for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lj91;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    if-eqz v3, :cond_6

    iget-object v2, v3, Ln91$b;->a:Ln91$a;

    sget-object v5, Ln91$a;->A:Ln91$a;

    if-ne v2, v5, :cond_6

    invoke-static {v1}, Lo71;->j(Li91;)V

    goto :goto_1

    :cond_6
    move-object v4, v3

    :goto_1
    if-nez v4, :cond_8

    const-string v2, "FILTERING"

    invoke-static {v2}, Lj91;->C(Ljava/lang/String;)V

    sget-object v3, Lq71$e;->b:Lq71$e;

    invoke-static {v1, v3}, Ln91;->a(Li91;Lq71$e;)Ln91$b;

    move-result-object v4

    const-string v3, "Time to filter $number"

    invoke-static {v2, v3}, Lj91;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    iget-object v2, v4, Ln91$b;->a:Ln91$a;

    sget-object v3, Ln91$a;->q:Ln91$a;

    if-eq v2, v3, :cond_8

    sget-object v3, Ln91$a;->y:Ln91$a;

    if-eq v2, v3, :cond_8

    const-string v2, "CACHE_SAVE"

    invoke-static {v2}, Lj91;->C(Ljava/lang/String;)V

    iget-object v3, v4, Ln91$b;->a:Ln91$a;

    sget-object v5, Ln91$a;->p:Ln91$a;

    if-ne v3, v5, :cond_7

    const-wide/32 v5, 0x5265c00

    goto :goto_2

    :cond_7
    const-wide/16 v5, -0x1

    :goto_2
    invoke-static {v1, v4, v5, v6}, Lo71;->h(Li91;Ln91$b;J)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time to save "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to cache"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lj91;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    :cond_8
    iget-object v2, v4, Ln91$b;->a:Ln91$a;

    sget-object v3, Ln91$a;->q:Ln91$a;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v2, v3, :cond_b

    invoke-virtual {v1}, Li91;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lu71;->E(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Lq71$e;->b:Lq71$e;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v2, v3}, Ln91;->b(Li91;Lq71$e;Ljava/lang/Boolean;)Ln91$b;

    move-result-object v2

    iget-boolean v3, v2, Ln91$b;->b:Z

    iput-boolean v3, v4, Ln91$b;->b:Z

    iget-boolean v3, v2, Ln91$b;->b:Z

    if-eqz v3, :cond_9

    iget-object v2, v2, Ln91$b;->a:Ln91$a;

    goto :goto_3

    :cond_9
    sget-object v2, Ln91$a;->r:Ln91$a;

    :goto_3
    iput-object v2, v4, Ln91$b;->a:Ln91$a;

    :cond_a
    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-static {}, Lfa1$e;->f()I

    move-result v3

    iget-boolean v7, v4, Ln91$b;->b:Z

    if-eqz v7, :cond_f

    if-gtz v3, :cond_d

    iget-object v7, v4, Ln91$b;->c:Lq71$a;

    invoke-virtual {v7}, Lq71$a;->d()Lq71$a;

    move-result-object v7

    sget-object v8, Lq71$a;->g:Lq71$a;

    if-eq v7, v8, :cond_d

    iget-object v7, v4, Ln91$b;->c:Lq71$a;

    invoke-virtual {v7}, Lq71$a;->d()Lq71$a;

    move-result-object v7

    sget-object v8, Lq71$a;->d:Lq71$a;

    if-ne v7, v8, :cond_f

    sget-object v7, Lr71$a;->Y:Lr71$a;

    invoke-virtual {v7}, Lr71$a;->a()Z

    move-result v7

    if-nez v7, :cond_f

    invoke-static {}, Lfa1;->e()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-static {}, Lfa1;->t()Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_c
    sget-object v7, Lr71$a;->v:Lr71$a;

    invoke-virtual {v7}, Lr71$a;->a()Z

    move-result v7

    if-nez v7, :cond_f

    :cond_d
    if-lez v3, :cond_e

    invoke-static {}, Lq71$a;->b()Lq71$a;

    move-result-object v2

    iput-object v2, v4, Ln91$b;->c:Lq71$a;

    invoke-virtual {v2}, Lq71$a;->d()Lq71$a;

    move-result-object v2

    sget-object v3, Lq71$a;->f:Lq71$a;

    if-ne v2, v3, :cond_e

    const/4 v2, 0x0

    goto :goto_5

    :cond_e
    const/4 v2, 0x1

    :goto_5
    sget-object v3, Lq71$e;->b:Lq71$e;

    invoke-static {v1, v4, v3}, Lz91;->o(Li91;Ln91$b;Lq71$e;)V

    invoke-virtual {v0, v6}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->setSkipCallLog(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;

    invoke-virtual {v0, v6}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->setSkipNotification(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;

    invoke-virtual {v0, v6}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->setDisallowCall(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;

    invoke-virtual {v0, v2}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->setRejectCall(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;

    invoke-static {v1, v4}, Lz91;->q(Li91;Ln91$b;)V

    sget-object v2, Lw91$a;->a:Lw91$a;

    invoke-static {p0, v2}, Lw91;->b(Ljava/lang/Object;Lw91$a;)V

    sget-object v2, Lw91$a;->d:Lw91$a;

    iget-object v6, v4, Ln91$b;->a:Ln91$a;

    invoke-static {p0, v2, v6}, Lw91;->d(Ljava/lang/Object;Lw91$a;Ln91$a;)V

    invoke-static {v3, v1, v4}, Lfa1;->D(Lq71$e;Li91;Ln91$b;)V

    invoke-static {}, Lca1;->a()V

    invoke-virtual {v1}, Li91;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lu71;->F(Ljava/lang/String;)V

    goto :goto_6

    :cond_f
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v3, v5, :cond_10

    iget-boolean v3, v4, Ln91$b;->b:Z

    if-eqz v3, :cond_10

    iget-object v3, v4, Ln91$b;->c:Lq71$a;

    invoke-virtual {v3}, Lq71$a;->d()Lq71$a;

    move-result-object v3

    sget-object v4, Lq71$a;->f:Lq71$a;

    if-ne v3, v4, :cond_10

    invoke-virtual {v0, v6}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->setSilenceCall(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;

    :cond_10
    move v5, v2

    :goto_6
    if-eqz v5, :cond_11

    invoke-virtual {v1}, Li91;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lu71;->t(Ljava/lang/String;)V

    :cond_11
    :goto_7
    invoke-virtual {v0}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->build()Landroid/telecom/CallScreeningService$CallResponse;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/telecom/CallScreeningService;->respondToCall(Landroid/telecom/Call$Details;Landroid/telecom/CallScreeningService$CallResponse;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/telecom/CallScreeningService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/telecom/CallScreeningService;->onTaskRemoved(Landroid/content/Intent;)V

    return-void
.end method
