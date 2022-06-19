.class final Lcom/google/android/gms/internal/ads/fh2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/f03;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/f03<",
        "Lcom/google/android/gms/internal/ads/lb1;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/p42;

.field final synthetic b:Lcom/google/android/gms/internal/ads/jc1;

.field final synthetic c:Lcom/google/android/gms/internal/ads/gh2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/gh2;Lcom/google/android/gms/internal/ads/p42;Lcom/google/android/gms/internal/ads/jc1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fh2;->c:Lcom/google/android/gms/internal/ads/gh2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/fh2;->a:Lcom/google/android/gms/internal/ads/p42;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/fh2;->b:Lcom/google/android/gms/internal/ads/jc1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fh2;->b:Lcom/google/android/gms/internal/ads/jc1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jc1;->b()Lcom/google/android/gms/internal/ads/b01;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/b01;->h(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fh2;->c:Lcom/google/android/gms/internal/ads/gh2;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fh2;->c:Lcom/google/android/gms/internal/ads/gh2;

    const/4 v3, 0x0

    .line 2
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/gh2;->f(Lcom/google/android/gms/internal/ads/gh2;Lcom/google/android/gms/internal/ads/r03;)Lcom/google/android/gms/internal/ads/r03;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fh2;->b:Lcom/google/android/gms/internal/ads/jc1;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jc1;->a()Lcom/google/android/gms/internal/ads/a31;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/a31;->O(Lcom/google/android/gms/internal/ads/zzbcz;)V

    .line 4
    sget-object v2, Lcom/google/android/gms/internal/ads/kw;->Q5:Lcom/google/android/gms/internal/ads/cw;

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

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fh2;->c:Lcom/google/android/gms/internal/ads/gh2;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/gh2;->c(Lcom/google/android/gms/internal/ads/gh2;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/dh2;

    .line 7
    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/dh2;-><init>(Lcom/google/android/gms/internal/ads/fh2;Lcom/google/android/gms/internal/ads/zzbcz;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fh2;->c:Lcom/google/android/gms/internal/ads/gh2;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/gh2;->c(Lcom/google/android/gms/internal/ads/gh2;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/eh2;

    .line 8
    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/eh2;-><init>(Lcom/google/android/gms/internal/ads/fh2;Lcom/google/android/gms/internal/ads/zzbcz;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    :cond_0
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbcz;->d:I

    const-string v2, "InterstitialAdLoader.onFailure"

    invoke-static {v0, p1, v2}, Lcom/google/android/gms/internal/ads/nk2;->a(ILjava/lang/Throwable;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/fh2;->a:Lcom/google/android/gms/internal/ads/p42;

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
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/lb1;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fh2;->c:Lcom/google/android/gms/internal/ads/gh2;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fh2;->c:Lcom/google/android/gms/internal/ads/gh2;

    const/4 v2, 0x0

    .line 2
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/gh2;->f(Lcom/google/android/gms/internal/ads/gh2;Lcom/google/android/gms/internal/ads/r03;)Lcom/google/android/gms/internal/ads/r03;

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/kw;->Q5:Lcom/google/android/gms/internal/ads/cw;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/xy0;->f()Lcom/google/android/gms/internal/ads/i71;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/fh2;->c:Lcom/google/android/gms/internal/ads/gh2;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/gh2;->d(Lcom/google/android/gms/internal/ads/gh2;)Lcom/google/android/gms/internal/ads/a42;

    move-result-object v3

    .line 7
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/i71;->a(Lcom/google/android/gms/internal/ads/a42;)Lcom/google/android/gms/internal/ads/i71;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/fh2;->c:Lcom/google/android/gms/internal/ads/gh2;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/gh2;->e(Lcom/google/android/gms/internal/ads/gh2;)Lcom/google/android/gms/internal/ads/hi2;

    move-result-object v3

    .line 8
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/i71;->d(Lcom/google/android/gms/internal/ads/hi2;)Lcom/google/android/gms/internal/ads/i71;

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fh2;->a:Lcom/google/android/gms/internal/ads/p42;

    .line 9
    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/p42;->b(Ljava/lang/Object;)V

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/fh2;->c:Lcom/google/android/gms/internal/ads/gh2;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gh2;->c(Lcom/google/android/gms/internal/ads/gh2;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/bh2;

    .line 12
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/bh2;-><init>(Lcom/google/android/gms/internal/ads/fh2;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/fh2;->c:Lcom/google/android/gms/internal/ads/gh2;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gh2;->c(Lcom/google/android/gms/internal/ads/gh2;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/ch2;

    .line 13
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/ch2;-><init>(Lcom/google/android/gms/internal/ads/fh2;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
