.class public final synthetic Li2/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Li2/w;->a:I

    iput-object p1, p0, Li2/w;->b:Ljava/lang/Object;

    iput-object p2, p0, Li2/w;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Li2/w;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "BillingClient"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 1
    :pswitch_0
    iget-object v0, p0, Li2/w;->b:Ljava/lang/Object;

    check-cast v0, Lj4/q1;

    iget-object v1, p0, Li2/w;->c:Ljava/lang/Object;

    check-cast v1, Lj4/p1;

    .line 2
    iget-object v0, v0, Lj4/q1;->a:Lj4/w;

    iget-object v2, v1, Lj4/c1;->b:Ljava/lang/String;

    iget v3, v1, Lj4/p1;->c:I

    iget-wide v4, v1, Lj4/p1;->d:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lj4/w;->b(Ljava/lang/String;IJ)V

    return-void

    .line 3
    :pswitch_1
    iget-object v0, p0, Li2/w;->b:Ljava/lang/Object;

    check-cast v0, Lj4/t;

    iget-object v3, p0, Li2/w;->c:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 4
    iget-object v4, v0, Lj4/t;->g:Lj4/b1;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v5, Landroidx/appcompat/widget/z;

    invoke-direct {v5, v4, v3}, Landroidx/appcompat/widget/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Lj4/b1;->b(Lj4/a1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 6
    iget-object v0, v0, Lj4/t;->h:Lj4/o0;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v3, Lj4/o0;->k:Lp6/c;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "Run extractor loop"

    invoke-virtual {v3, v6, v5}, Lp6/c;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v5, v0, Lj4/o0;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    invoke-virtual {v5, v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_8

    :goto_0
    :try_start_0
    iget-object v3, v0, Lj4/o0;->i:Lj4/d1;

    .line 10
    invoke-virtual {v3}, Lj4/d1;->a()Lj4/c1;

    move-result-object v3
    :try_end_0
    .catch Lj4/n0; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 11
    sget-object v5, Lj4/o0;->k:Lp6/c;

    new-array v6, v1, [Ljava/lang/Object;

    .line 12
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const-string v7, "Error while getting next extraction task: %s"

    invoke-virtual {v5, v7, v6}, Lp6/c;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    iget v5, v3, Lj4/n0;->a:I

    if-ltz v5, :cond_0

    iget-object v5, v0, Lj4/o0;->h:Lo4/p;

    .line 13
    invoke-interface {v5}, Lo4/p;->zza()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lj4/l2;

    iget v6, v3, Lj4/n0;->a:I

    invoke-interface {v5, v6}, Lj4/l2;->zzi(I)V

    iget v5, v3, Lj4/n0;->a:I

    .line 14
    invoke-virtual {v0, v5, v3}, Lj4/o0;->a(ILjava/lang/Exception;)V

    :cond_0
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_7

    .line 15
    :try_start_1
    instance-of v5, v3, Lj4/j0;

    if-eqz v5, :cond_1

    iget-object v5, v0, Lj4/o0;->b:Lj4/k0;

    .line 16
    move-object v6, v3

    check-cast v6, Lj4/j0;

    invoke-virtual {v5, v6}, Lj4/k0;->a(Lj4/j0;)V

    goto :goto_0

    .line 17
    :cond_1
    instance-of v5, v3, Lj4/c2;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lj4/o0;->c:Lj4/d2;

    .line 18
    move-object v6, v3

    check-cast v6, Lj4/c2;

    invoke-virtual {v5, v6}, Lj4/d2;->a(Lj4/c2;)V

    goto :goto_0

    .line 19
    :cond_2
    instance-of v5, v3, Lj4/m1;

    if-eqz v5, :cond_3

    iget-object v5, v0, Lj4/o0;->d:Lj4/n1;

    .line 20
    move-object v6, v3

    check-cast v6, Lj4/m1;

    invoke-virtual {v5, v6}, Lj4/n1;->a(Lj4/m1;)V

    goto :goto_0

    .line 21
    :cond_3
    instance-of v5, v3, Lj4/p1;

    if-eqz v5, :cond_4

    iget-object v5, v0, Lj4/o0;->e:Lj4/q1;

    .line 22
    move-object v6, v3

    check-cast v6, Lj4/p1;

    invoke-virtual {v5, v6}, Lj4/q1;->a(Lj4/p1;)V

    goto :goto_0

    .line 23
    :cond_4
    instance-of v5, v3, Lj4/u1;

    if-eqz v5, :cond_5

    iget-object v5, v0, Lj4/o0;->f:Lj4/v1;

    .line 24
    move-object v6, v3

    check-cast v6, Lj4/u1;

    invoke-virtual {v5, v6}, Lj4/v1;->a(Lj4/u1;)V

    goto :goto_0

    .line 25
    :cond_5
    instance-of v5, v3, Lj4/w1;

    if-eqz v5, :cond_6

    iget-object v5, v0, Lj4/o0;->g:Lj4/x1;

    .line 26
    move-object v6, v3

    check-cast v6, Lj4/w1;

    invoke-virtual {v5, v6}, Lj4/x1;->a(Lj4/w1;)V

    goto :goto_0

    :cond_6
    sget-object v5, Lj4/o0;->k:Lp6/c;

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 27
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const-string v7, "Unknown task type: %s"

    invoke-virtual {v5, v7, v6}, Lp6/c;->c(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v5

    .line 28
    sget-object v6, Lj4/o0;->k:Lp6/c;

    new-array v7, v1, [Ljava/lang/Object;

    .line 29
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const-string v8, "Error during extraction task: %s"

    invoke-virtual {v6, v8, v7}, Lp6/c;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v6, v0, Lj4/o0;->h:Lo4/p;

    .line 30
    invoke-interface {v6}, Lo4/p;->zza()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lj4/l2;

    iget v7, v3, Lj4/c1;->a:I

    invoke-interface {v6, v7}, Lj4/l2;->zzi(I)V

    iget v3, v3, Lj4/c1;->a:I

    .line 31
    invoke-virtual {v0, v3, v5}, Lj4/o0;->a(ILjava/lang/Exception;)V

    goto/16 :goto_0

    .line 32
    :cond_7
    iget-object v0, v0, Lj4/o0;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2

    :cond_8
    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "runLoop already looping; return"

    .line 34
    invoke-virtual {v3, v1, v0}, Lp6/c;->f(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_9
    :goto_2
    return-void

    .line 35
    :pswitch_2
    iget-object v0, p0, Li2/w;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Future;

    iget-object v2, p0, Li2/w;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_a

    .line 36
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const-string v0, "Async task is taking too long, cancel it!"

    .line 37
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_a

    .line 38
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_a
    return-void

    .line 39
    :pswitch_3
    iget-object v0, p0, Li2/w;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/billingclient/api/b;

    iget-object v1, p0, Li2/w;->c:Ljava/lang/Object;

    check-cast v1, Li2/c;

    .line 40
    iget-object v4, v0, Lcom/android/billingclient/api/b;->d:Landroidx/appcompat/widget/z;

    .line 41
    iget-object v4, v4, Landroidx/appcompat/widget/z;->b:Ljava/lang/Object;

    check-cast v4, Li2/q;

    .line 42
    iget-object v4, v4, Li2/q;->a:Ls2/c;

    if-eqz v4, :cond_b

    .line 43
    iget-object v0, v0, Lcom/android/billingclient/api/b;->d:Landroidx/appcompat/widget/z;

    .line 44
    iget-object v0, v0, Landroidx/appcompat/widget/z;->b:Ljava/lang/Object;

    check-cast v0, Li2/q;

    .line 45
    iget-object v0, v0, Li2/q;->a:Ls2/c;

    .line 46
    invoke-virtual {v0, v1, v2}, Ls2/c;->e(Li2/c;Ljava/util/List;)V

    goto :goto_3

    :cond_b
    iget-object v0, v0, Lcom/android/billingclient/api/b;->d:Landroidx/appcompat/widget/z;

    .line 47
    iget-object v0, v0, Landroidx/appcompat/widget/z;->b:Ljava/lang/Object;

    check-cast v0, Li2/q;

    .line 48
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "No valid listener is set in BroadcastManager"

    .line 49
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void

    .line 50
    :goto_4
    iget-object v0, p0, Li2/w;->b:Ljava/lang/Object;

    check-cast v0, Lj4/x1;

    iget-object v1, p0, Li2/w;->c:Ljava/lang/Object;

    check-cast v1, Lj4/w1;

    .line 51
    iget-object v0, v0, Lj4/x1;->a:Lj4/w;

    iget-object v2, v1, Lj4/c1;->b:Ljava/lang/String;

    iget v3, v1, Lj4/w1;->d:I

    iget-wide v4, v1, Lj4/w1;->e:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lj4/w;->b(Ljava/lang/String;IJ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
