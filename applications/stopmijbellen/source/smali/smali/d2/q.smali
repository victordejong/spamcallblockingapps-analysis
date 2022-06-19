.class public Ld2/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld2/q$b;
    }
.end annotation


# instance fields
.field public a:Landroid/support/v4/media/a;

.field public b:Ld2/q$b;

.field public c:Ld2/j0;

.field public d:Ld2/g;

.field public e:Ld2/t1;

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:I

.field public m:Z

.field public n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/support/v4/media/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Ld2/q;->a:Landroid/support/v4/media/a;

    .line 3
    iput-object p3, p0, Ld2/q;->i:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Ld2/q;->g:Ljava/lang/String;

    const/4 p1, 0x1

    .line 5
    iput p1, p0, Ld2/q;->l:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld2/q;->e:Ld2/t1;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()V
    .locals 2

    .line 1
    monitor-enter p0

    const/4 v0, 0x6

    .line 2
    :try_start_0
    iput v0, p0, Ld2/q;->l:I

    .line 3
    iget-object v0, p0, Ld2/q;->b:Ld2/q$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    iput-object v1, p0, Ld2/q;->b:Ld2/q$b;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 5
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 6
    check-cast v0, Ld2/k1;

    .line 7
    iget-object v0, v0, Ld2/k1;->a:Ld2/f1;

    .line 8
    iget v1, v0, Ld2/f1;->W:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Ld2/f1;->W:I

    if-nez v1, :cond_1

    .line 9
    invoke-virtual {v0}, Ld2/f1;->d()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public c()Z
    .locals 2

    const/4 v0, 0x4

    .line 1
    iput v0, p0, Ld2/q;->l:I

    .line 2
    iget-object v0, p0, Ld2/q;->a:Landroid/support/v4/media/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_0
    new-instance v1, Ld2/q$a;

    invoke-direct {v1, p0, v0}, Ld2/q$a;-><init>(Ld2/q;Landroid/support/v4/media/a;)V

    invoke-static {v1}, Ld2/i3;->s(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 8

    .line 1
    invoke-static {}, Ld2/t;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    .line 3
    new-instance v2, Ld2/f4;

    invoke-direct {v2}, Ld2/f4;-><init>()V

    .line 4
    iget-object v3, p0, Ld2/q;->i:Ljava/lang/String;

    const-string v4, "zone_id"

    invoke-static {v2, v4, v3}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v3, "type"

    .line 5
    invoke-static {v2, v3, v1}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 6
    iget-object v3, p0, Ld2/q;->g:Ljava/lang/String;

    const-string v4, "id"

    invoke-static {v2, v4, v3}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7
    iget v3, p0, Ld2/q;->l:I

    const/4 v4, 0x5

    const-string v5, "request_fail_reason"

    const/4 v6, 0x1

    if-ne v3, v4, :cond_1

    const/16 v3, 0x18

    .line 8
    invoke-static {v2, v5, v3}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 9
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v3

    invoke-virtual {v3}, Ld2/f1;->p()Ld2/h0;

    move-result-object v3

    const-string v4, "This ad object has already been shown. Please request a new ad via AdColony.requestInterstitial."

    .line 10
    invoke-virtual {v3, v1, v6, v4, v1}, Ld2/h0;->e(IILjava/lang/String;Z)V

    goto/16 :goto_4

    :cond_1
    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    const/16 v3, 0x11

    .line 11
    invoke-static {v2, v5, v3}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 12
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v3

    invoke-virtual {v3}, Ld2/f1;->p()Ld2/h0;

    move-result-object v3

    const-string v4, "This ad object has expired. Please request a new ad via AdColony.requestInterstitial."

    .line 13
    invoke-virtual {v3, v1, v6, v4, v1}, Ld2/h0;->e(IILjava/lang/String;Z)V

    goto/16 :goto_4

    .line 14
    :cond_2
    iget-boolean v3, v0, Ld2/f1;->A:Z

    if-eqz v3, :cond_3

    const/16 v3, 0x17

    .line 15
    invoke-static {v2, v5, v3}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 16
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v3

    invoke-virtual {v3}, Ld2/f1;->p()Ld2/h0;

    move-result-object v3

    const-string v4, "Can not show ad while an interstitial is already active."

    .line 17
    invoke-virtual {v3, v1, v6, v4, v1}, Ld2/h0;->e(IILjava/lang/String;Z)V

    goto/16 :goto_4

    .line 18
    :cond_3
    iget-object v3, v0, Ld2/f1;->u:Ljava/util/HashMap;

    .line 19
    iget-object v4, p0, Ld2/q;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld2/s;

    if-eqz v3, :cond_6

    .line 20
    iget v4, v3, Ld2/s;->d:I

    invoke-virtual {v3, v4}, Ld2/s;->a(I)I

    move-result v4

    if-gt v4, v6, :cond_4

    goto :goto_0

    .line 21
    :cond_4
    iget v4, v3, Ld2/s;->f:I

    if-nez v4, :cond_5

    .line 22
    iget v4, v3, Ld2/s;->d:I

    invoke-virtual {v3, v4}, Ld2/s;->a(I)I

    move-result v4

    sub-int/2addr v4, v6

    .line 23
    iput v4, v3, Ld2/s;->f:I

    :goto_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    sub-int/2addr v4, v6

    .line 24
    iput v4, v3, Ld2/s;->f:I

    :cond_6
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_7

    const/16 v3, 0xb

    .line 25
    invoke-static {v2, v5, v3}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    goto :goto_4

    .line 26
    :cond_7
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v3

    invoke-virtual {v3}, Ld2/f1;->r()Ld2/d1;

    move-result-object v3

    invoke-virtual {v3}, Ld2/d1;->b()Ljava/lang/String;

    move-result-object v3

    .line 27
    iget-object v4, p0, Ld2/q;->n:Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 28
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "all"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "online"

    .line 29
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "wifi"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "cell"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    :cond_8
    const-string v7, "offline"

    .line 30
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_2

    :cond_9
    const/4 v3, 0x0

    goto :goto_3

    :cond_a
    :goto_2
    const/4 v3, 0x1

    :goto_3
    if-nez v3, :cond_b

    const/16 v3, 0x9

    .line 31
    invoke-static {v2, v5, v3}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 32
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v3

    invoke-virtual {v3}, Ld2/f1;->p()Ld2/h0;

    move-result-object v3

    const-string v4, "Tried to show interstitial ad during unacceptable network conditions."

    .line 33
    invoke-virtual {v3, v1, v6, v4, v1}, Ld2/h0;->e(IILjava/lang/String;Z)V

    :goto_4
    const/4 v3, 0x0

    goto :goto_5

    :cond_b
    const/4 v3, 0x1

    .line 34
    :goto_5
    iget-object v4, p0, Ld2/q;->d:Ld2/g;

    if-eqz v4, :cond_c

    .line 35
    iget-boolean v4, v4, Ld2/g;->a:Z

    const-string v5, "pre_popup"

    invoke-static {v2, v5, v4}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 36
    iget-object v4, p0, Ld2/q;->d:Ld2/g;

    iget-boolean v4, v4, Ld2/g;->b:Z

    const-string v5, "post_popup"

    invoke-static {v2, v5, v4}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 37
    :cond_c
    iget-object v4, v0, Ld2/f1;->u:Ljava/util/HashMap;

    .line 38
    iget-object v5, p0, Ld2/q;->i:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld2/s;

    if-eqz v4, :cond_d

    .line 39
    iget-boolean v4, v4, Ld2/s;->g:Z

    if-eqz v4, :cond_d

    .line 40
    iget-object v0, v0, Ld2/f1;->p:Ld2/r;

    if-nez v0, :cond_d

    const-string v0, "Rewarded ad: show() called with no reward listener set."

    .line 41
    invoke-static {v1, v6, v0, v1}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    .line 42
    :cond_d
    new-instance v0, Ld2/t0;

    const-string v1, "AdSession.launch_ad_unit"

    invoke-direct {v0, v1, v6, v2}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v0}, Ld2/t0;->b()V

    return v3
.end method
