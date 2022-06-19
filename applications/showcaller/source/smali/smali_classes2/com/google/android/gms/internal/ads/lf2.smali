.class final Lcom/google/android/gms/internal/ads/lf2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/f03;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/f03<",
        "Lcom/google/android/gms/internal/ads/xw0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/p42;

.field final synthetic b:Lcom/google/android/gms/internal/ads/vx0;

.field final synthetic c:Lcom/google/android/gms/internal/ads/mf2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/mf2;Lcom/google/android/gms/internal/ads/p42;Lcom/google/android/gms/internal/ads/vx0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lf2;->c:Lcom/google/android/gms/internal/ads/mf2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/lf2;->a:Lcom/google/android/gms/internal/ads/p42;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/lf2;->b:Lcom/google/android/gms/internal/ads/vx0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lf2;->b:Lcom/google/android/gms/internal/ads/vx0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vx0;->b()Lcom/google/android/gms/internal/ads/b01;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/b01;->h(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lf2;->c:Lcom/google/android/gms/internal/ads/mf2;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/lf2;->c:Lcom/google/android/gms/internal/ads/mf2;

    const/4 v3, 0x0

    .line 2
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/mf2;->h(Lcom/google/android/gms/internal/ads/mf2;Lcom/google/android/gms/internal/ads/r03;)Lcom/google/android/gms/internal/ads/r03;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/lf2;->b:Lcom/google/android/gms/internal/ads/vx0;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/vx0;->a()Lcom/google/android/gms/internal/ads/a31;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/a31;->O(Lcom/google/android/gms/internal/ads/zzbcz;)V

    .line 4
    sget-object v2, Lcom/google/android/gms/internal/ads/kw;->O5:Lcom/google/android/gms/internal/ads/cw;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/lf2;->c:Lcom/google/android/gms/internal/ads/mf2;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/mf2;->c(Lcom/google/android/gms/internal/ads/mf2;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/kf2;

    .line 7
    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/kf2;-><init>(Lcom/google/android/gms/internal/ads/lf2;Lcom/google/android/gms/internal/ads/zzbcz;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/lf2;->c:Lcom/google/android/gms/internal/ads/mf2;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/mf2;->g(Lcom/google/android/gms/internal/ads/mf2;)Lcom/google/android/gms/internal/ads/o51;

    move-result-object v2

    const/16 v3, 0x3c

    .line 8
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/o51;->S0(I)V

    .line 9
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbcz;->d:I

    const-string v2, "BannerAdLoader.onFailure"

    invoke-static {v0, p1, v2}, Lcom/google/android/gms/internal/ads/nk2;->a(ILjava/lang/Throwable;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lf2;->a:Lcom/google/android/gms/internal/ads/p42;

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/p42;->zza()V

    .line 11
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/xw0;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lf2;->c:Lcom/google/android/gms/internal/ads/mf2;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lf2;->c:Lcom/google/android/gms/internal/ads/mf2;

    const/4 v2, 0x0

    .line 2
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/mf2;->h(Lcom/google/android/gms/internal/ads/mf2;Lcom/google/android/gms/internal/ads/r03;)Lcom/google/android/gms/internal/ads/r03;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lf2;->c:Lcom/google/android/gms/internal/ads/mf2;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/mf2;->f(Lcom/google/android/gms/internal/ads/mf2;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/xw0;->g()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/xw0;->g()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 6
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    const-string v2, ""

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/xy0;->d()Lcom/google/android/gms/internal/ads/q21;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/xy0;->d()Lcom/google/android/gms/internal/ads/q21;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/q21;->a()Ljava/lang/String;

    move-result-object v2

    .line 9
    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Banner view provided from "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already has a parent view. Removing its old parent."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    .line 10
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/xw0;->g()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 11
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/kw;->O5:Lcom/google/android/gms/internal/ads/cw;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v2

    .line 13
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/xy0;->f()Lcom/google/android/gms/internal/ads/i71;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/lf2;->c:Lcom/google/android/gms/internal/ads/mf2;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/mf2;->d(Lcom/google/android/gms/internal/ads/mf2;)Lcom/google/android/gms/internal/ads/a42;

    move-result-object v3

    .line 15
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/i71;->a(Lcom/google/android/gms/internal/ads/a42;)Lcom/google/android/gms/internal/ads/i71;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/lf2;->c:Lcom/google/android/gms/internal/ads/mf2;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/mf2;->e(Lcom/google/android/gms/internal/ads/mf2;)Lcom/google/android/gms/internal/ads/e42;

    move-result-object v3

    .line 16
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/i71;->b(Lcom/google/android/gms/internal/ads/e42;)Lcom/google/android/gms/internal/ads/i71;

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/lf2;->c:Lcom/google/android/gms/internal/ads/mf2;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/mf2;->f(Lcom/google/android/gms/internal/ads/mf2;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/xw0;->g()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/lf2;->a:Lcom/google/android/gms/internal/ads/p42;

    .line 18
    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/p42;->b(Ljava/lang/Object;)V

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lf2;->c:Lcom/google/android/gms/internal/ads/mf2;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/mf2;->c(Lcom/google/android/gms/internal/ads/mf2;)Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/lf2;->c:Lcom/google/android/gms/internal/ads/mf2;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/mf2;->d(Lcom/google/android/gms/internal/ads/mf2;)Lcom/google/android/gms/internal/ads/a42;

    move-result-object v2

    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jf2;->a(Lcom/google/android/gms/internal/ads/a42;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lf2;->c:Lcom/google/android/gms/internal/ads/mf2;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/mf2;->g(Lcom/google/android/gms/internal/ads/mf2;)Lcom/google/android/gms/internal/ads/o51;

    move-result-object v1

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/xw0;->l()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/o51;->S0(I)V

    .line 23
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
