.class final Lcom/google/android/gms/internal/ads/x10;
.super Lcom/google/android/gms/internal/ads/u10;
.source ""


# instance fields
.field private final i:Landroid/content/Context;

.field private final j:Landroid/view/View;

.field private final k:Lcom/google/android/gms/internal/ads/jt;

.field private final l:Lcom/google/android/gms/internal/ads/bl1;

.field private final m:Lcom/google/android/gms/internal/ads/s30;

.field private final n:Lcom/google/android/gms/internal/ads/ej0;

.field private final o:Lcom/google/android/gms/internal/ads/te0;

.field private final p:Lcom/google/android/gms/internal/ads/yg2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/yg2<",
            "Lcom/google/android/gms/internal/ads/h61;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Ljava/util/concurrent/Executor;

.field private r:Lcom/google/android/gms/internal/ads/zzyx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/t30;Landroid/content/Context;Lcom/google/android/gms/internal/ads/bl1;Landroid/view/View;Lcom/google/android/gms/internal/ads/jt;Lcom/google/android/gms/internal/ads/s30;Lcom/google/android/gms/internal/ads/ej0;Lcom/google/android/gms/internal/ads/te0;Lcom/google/android/gms/internal/ads/yg2;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/t30;",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/bl1;",
            "Landroid/view/View;",
            "Lcom/google/android/gms/internal/ads/jt;",
            "Lcom/google/android/gms/internal/ads/s30;",
            "Lcom/google/android/gms/internal/ads/ej0;",
            "Lcom/google/android/gms/internal/ads/te0;",
            "Lcom/google/android/gms/internal/ads/yg2<",
            "Lcom/google/android/gms/internal/ads/h61;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/u10;-><init>(Lcom/google/android/gms/internal/ads/t30;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/x10;->i:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/x10;->j:Landroid/view/View;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/x10;->k:Lcom/google/android/gms/internal/ads/jt;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/x10;->l:Lcom/google/android/gms/internal/ads/bl1;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/x10;->m:Lcom/google/android/gms/internal/ads/s30;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/x10;->n:Lcom/google/android/gms/internal/ads/ej0;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/x10;->o:Lcom/google/android/gms/internal/ads/te0;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/x10;->p:Lcom/google/android/gms/internal/ads/yg2;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/x10;->q:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x10;->q:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/w10;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/w10;-><init>(Lcom/google/android/gms/internal/ads/x10;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/u30;->a()V

    return-void
.end method

.method public final g()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x10;->j:Landroid/view/View;

    return-object v0
.end method

.method public final h(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzyx;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x10;->k:Lcom/google/android/gms/internal/ads/jt;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/yu;->a(Lcom/google/android/gms/internal/ads/zzyx;)Lcom/google/android/gms/internal/ads/yu;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/jt;->D0(Lcom/google/android/gms/internal/ads/yu;)V

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzyx;->d:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzyx;->g:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/x10;->r:Lcom/google/android/gms/internal/ads/zzyx;

    :cond_0
    return-void
.end method

.method public final i()Lcom/google/android/gms/internal/ads/m1;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x10;->m:Lcom/google/android/gms/internal/ads/s30;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/s30;->zza()Lcom/google/android/gms/internal/ads/m1;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdrl; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/internal/ads/bl1;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x10;->r:Lcom/google/android/gms/internal/ads/zzyx;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/wl1;->c(Lcom/google/android/gms/internal/ads/zzyx;)Lcom/google/android/gms/internal/ads/bl1;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u30;->b:Lcom/google/android/gms/internal/ads/al1;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/al1;->W:Z

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/al1;->a:Ljava/util/List;

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

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/bl1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/x10;->j:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/x10;->j:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/bl1;-><init>(IIZ)V

    return-object v0

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u30;->b:Lcom/google/android/gms/internal/ads/al1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/al1;->q:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/x10;->l:Lcom/google/android/gms/internal/ads/bl1;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/wl1;->a(Ljava/util/List;Lcom/google/android/gms/internal/ads/bl1;)Lcom/google/android/gms/internal/ads/bl1;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lcom/google/android/gms/internal/ads/bl1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x10;->l:Lcom/google/android/gms/internal/ads/bl1;

    return-object v0
.end method

.method public final l()I
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->A4:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u30;->b:Lcom/google/android/gms/internal/ads/al1;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/al1;->b0:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->B4:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u30;->a:Lcom/google/android/gms/internal/ads/ml1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ml1;->b:Lcom/google/android/gms/internal/ads/kl1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kl1;->b:Lcom/google/android/gms/internal/ads/dl1;

    iget v0, v0, Lcom/google/android/gms/internal/ads/dl1;->c:I

    return v0
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x10;->o:Lcom/google/android/gms/internal/ads/te0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/te0;->zza()V

    return-void
.end method

.method final bridge synthetic n()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x10;->n:Lcom/google/android/gms/internal/ads/ej0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ej0;->d()Lcom/google/android/gms/internal/ads/n7;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x10;->n:Lcom/google/android/gms/internal/ads/ej0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ej0;->d()Lcom/google/android/gms/internal/ads/n7;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/x10;->p:Lcom/google/android/gms/internal/ads/yg2;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/yg2;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/w;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/x10;->i:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/b;->g3(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/n7;->X5(Lcom/google/android/gms/internal/ads/w;Lcom/google/android/gms/dynamic/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "RemoteException when notifyAdLoad is called"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/po;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
