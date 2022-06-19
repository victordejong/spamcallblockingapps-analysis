.class final Lcom/google/android/gms/internal/ads/ax0;
.super Lcom/google/android/gms/internal/ads/xw0;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final i:Landroid/content/Context;

.field private final j:Landroid/view/View;

.field private final k:Lcom/google/android/gms/internal/ads/wn0;

.field private final l:Lcom/google/android/gms/internal/ads/hj2;

.field private final m:Lcom/google/android/gms/internal/ads/vy0;

.field private final n:Lcom/google/android/gms/internal/ads/cf1;

.field private final o:Lcom/google/android/gms/internal/ads/sa1;

.field private final p:Lcom/google/android/gms/internal/ads/vi3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/vi3<",
            "Lcom/google/android/gms/internal/ads/a32;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Ljava/util/concurrent/Executor;

.field private r:Lcom/google/android/gms/internal/ads/zzbdl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/wy0;Landroid/content/Context;Lcom/google/android/gms/internal/ads/hj2;Landroid/view/View;Lcom/google/android/gms/internal/ads/wn0;Lcom/google/android/gms/internal/ads/vy0;Lcom/google/android/gms/internal/ads/cf1;Lcom/google/android/gms/internal/ads/sa1;Lcom/google/android/gms/internal/ads/vi3;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/wy0;",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/hj2;",
            "Landroid/view/View;",
            "Lcom/google/android/gms/internal/ads/wn0;",
            "Lcom/google/android/gms/internal/ads/vy0;",
            "Lcom/google/android/gms/internal/ads/cf1;",
            "Lcom/google/android/gms/internal/ads/sa1;",
            "Lcom/google/android/gms/internal/ads/vi3<",
            "Lcom/google/android/gms/internal/ads/a32;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/xw0;-><init>(Lcom/google/android/gms/internal/ads/wy0;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ax0;->i:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ax0;->j:Landroid/view/View;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/ax0;->k:Lcom/google/android/gms/internal/ads/wn0;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ax0;->l:Lcom/google/android/gms/internal/ads/hj2;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/ax0;->m:Lcom/google/android/gms/internal/ads/vy0;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/ax0;->n:Lcom/google/android/gms/internal/ads/cf1;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/ax0;->o:Lcom/google/android/gms/internal/ads/sa1;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/ax0;->p:Lcom/google/android/gms/internal/ads/vi3;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/ax0;->q:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ax0;->q:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zw0;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zw0;-><init>(Lcom/google/android/gms/internal/ads/ax0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/xy0;->a()V

    return-void
.end method

.method public final g()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ax0;->j:Landroid/view/View;

    return-object v0
.end method

.method public final h(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzbdl;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ax0;->k:Lcom/google/android/gms/internal/ads/wn0;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/mp0;->a(Lcom/google/android/gms/internal/ads/zzbdl;)Lcom/google/android/gms/internal/ads/mp0;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/wn0;->I0(Lcom/google/android/gms/internal/ads/mp0;)V

    .line 2
    iget v0, p2, Lcom/google/android/gms/internal/ads/zzbdl;->f:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 3
    iget v0, p2, Lcom/google/android/gms/internal/ads/zzbdl;->i:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ax0;->r:Lcom/google/android/gms/internal/ads/zzbdl;

    :cond_0
    return-void
.end method

.method public final i()Lcom/google/android/gms/internal/ads/ju;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ax0;->m:Lcom/google/android/gms/internal/ads/vy0;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/vy0;->zza()Lcom/google/android/gms/internal/ads/ju;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfaw; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/internal/ads/hj2;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ax0;->r:Lcom/google/android/gms/internal/ads/zzbdl;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bk2;->c(Lcom/google/android/gms/internal/ads/zzbdl;)Lcom/google/android/gms/internal/ads/hj2;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xy0;->b:Lcom/google/android/gms/internal/ads/ej2;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/ej2;->Y:Z

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ej2;->a:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "FirstParty"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/hj2;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ax0;->j:Landroid/view/View;

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ax0;->j:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/hj2;-><init>(IIZ)V

    return-object v0

    .line 6
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xy0;->b:Lcom/google/android/gms/internal/ads/ej2;

    .line 7
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ej2;->r:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ax0;->l:Lcom/google/android/gms/internal/ads/hj2;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/bk2;->a(Ljava/util/List;Lcom/google/android/gms/internal/ads/hj2;)Lcom/google/android/gms/internal/ads/hj2;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lcom/google/android/gms/internal/ads/hj2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ax0;->l:Lcom/google/android/gms/internal/ads/hj2;

    return-object v0
.end method

.method public final l()I
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->B5:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xy0;->b:Lcom/google/android/gms/internal/ads/ej2;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/ej2;->d0:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->C5:Lcom/google/android/gms/internal/ads/cw;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xy0;->a:Lcom/google/android/gms/internal/ads/rj2;

    .line 6
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/rj2;->b:Lcom/google/android/gms/internal/ads/qj2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qj2;->b:Lcom/google/android/gms/internal/ads/jj2;

    iget v0, v0, Lcom/google/android/gms/internal/ads/jj2;->c:I

    return v0
.end method

.method public final m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ax0;->o:Lcom/google/android/gms/internal/ads/sa1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sa1;->zza()V

    return-void
.end method

.method final bridge synthetic n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ax0;->n:Lcom/google/android/gms/internal/ads/cf1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cf1;->d()Lcom/google/android/gms/internal/ads/q00;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ax0;->n:Lcom/google/android/gms/internal/ads/cf1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cf1;->d()Lcom/google/android/gms/internal/ads/q00;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ax0;->p:Lcom/google/android/gms/internal/ads/vi3;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/vi3;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/ts;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ax0;->i:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/b;->m2(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/q00;->a2(Lcom/google/android/gms/internal/ads/ts;Lcom/google/android/gms/dynamic/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "RemoteException when notifyAdLoad is called"

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
