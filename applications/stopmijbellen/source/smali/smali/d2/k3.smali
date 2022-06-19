.class public Ld2/k3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ld2/i3$c;

.field public final synthetic b:Ld2/j3;


# direct methods
.method public constructor <init>(Ld2/j3;Ld2/i3$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/k3;->b:Ld2/j3;

    iput-object p2, p0, Ld2/k3;->a:Ld2/i3$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Ld2/k3;->b:Ld2/j3;

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Ld2/j3;->c:Ljava/lang/Runnable;

    .line 3
    invoke-static {}, Ld2/t;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    .line 5
    iget-object v2, p0, Ld2/k3;->a:Ld2/i3$c;

    invoke-virtual {v2}, Ld2/i3$c;->a()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 6
    iget-boolean v2, v0, Ld2/f1;->D:Z

    if-eqz v2, :cond_6

    .line 7
    iget-object v2, v0, Ld2/f1;->d:Ld2/k0;

    .line 8
    iget-object v3, v2, Ld2/k0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld2/q;

    if-eqz v4, :cond_1

    .line 9
    iget v7, v4, Ld2/q;->l:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_1

    .line 10
    iget-object v3, v4, Ld2/q;->i:Ljava/lang/String;

    .line 11
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v7

    .line 12
    iget-object v7, v7, Ld2/f1;->u:Ljava/util/HashMap;

    .line 13
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld2/s;

    if-eqz v3, :cond_3

    .line 14
    iget-boolean v7, v3, Ld2/s;->g:Z

    if-eqz v7, :cond_3

    .line 15
    new-instance v7, Ld2/f4;

    invoke-direct {v7}, Ld2/f4;-><init>()V

    .line 16
    iget v8, v3, Ld2/s;->e:I

    invoke-virtual {v3, v8}, Ld2/s;->a(I)I

    move-result v8

    const-string v9, "reward_amount"

    .line 17
    invoke-static {v7, v9, v8}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 18
    iget-object v8, v3, Ld2/s;->b:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ld2/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "reward_name"

    .line 19
    invoke-static {v7, v8, v3}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v3, "success"

    .line 20
    invoke-static {v7, v3, v6}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 21
    iget-object v3, v4, Ld2/q;->i:Ljava/lang/String;

    const-string v8, "zone_id"

    .line 22
    invoke-static {v7, v8, v3}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 23
    new-instance v3, Ld2/t0;

    const-string v8, "AdColony.v4vc_reward"

    invoke-direct {v3, v8, v5, v7}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    goto :goto_1

    :cond_3
    move-object v3, v1

    .line 24
    :goto_1
    iget-object v4, v4, Ld2/q;->g:Ljava/lang/String;

    .line 25
    new-instance v7, Ld2/o0;

    invoke-direct {v7, v2, v4, v3}, Ld2/o0;-><init>(Ld2/k0;Ljava/lang/String;Ld2/t0;)V

    invoke-static {v7}, Ld2/i3;->s(Ljava/lang/Runnable;)Z

    .line 26
    :cond_4
    invoke-virtual {v0}, Ld2/f1;->d()V

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Controller heartbeat timeout occurred. "

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Timeout set to: "

    .line 29
    invoke-static {v3}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ld2/k3;->a:Ld2/i3$c;

    .line 30
    iget-wide v7, v4, Ld2/i3$c;->a:J

    .line 31
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Interval set to: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-wide v7, v0, Ld2/f1;->U:J

    .line 35
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Heartbeat last reply: "

    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-object v0, p0, Ld2/k3;->b:Ld2/j3;

    .line 39
    iget-object v0, v0, Ld2/j3;->d:Ld2/j3$b;

    if-eqz v0, :cond_5

    .line 40
    invoke-virtual {v0}, Ld2/j3$b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const-string v0, "null"

    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {v5, v5, v0, v6}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    .line 44
    iget-object v0, p0, Ld2/k3;->b:Ld2/j3;

    .line 45
    iput-boolean v6, v0, Ld2/j3;->a:Z

    .line 46
    iget-object v2, v0, Ld2/j3;->b:Ljava/lang/Runnable;

    invoke-static {v2}, Ld2/i3;->v(Ljava/lang/Runnable;)Z

    .line 47
    iget-object v2, v0, Ld2/j3;->c:Ljava/lang/Runnable;

    invoke-static {v2}, Ld2/i3;->v(Ljava/lang/Runnable;)Z

    .line 48
    iput-object v1, v0, Ld2/j3;->c:Ljava/lang/Runnable;

    goto :goto_3

    .line 49
    :cond_6
    iget-object v1, p0, Ld2/k3;->b:Ld2/j3;

    .line 50
    iget-object v1, v1, Ld2/j3;->b:Ljava/lang/Runnable;

    .line 51
    iget-wide v2, v0, Ld2/f1;->U:J

    .line 52
    invoke-static {v1, v2, v3}, Ld2/i3;->k(Ljava/lang/Runnable;J)Z

    :goto_3
    return-void
.end method
