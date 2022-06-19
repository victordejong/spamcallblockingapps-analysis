.class final Lcom/google/android/gms/internal/ads/x42;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/f03;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/f03<",
        "Lcom/google/android/gms/internal/ads/xy0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/p42;

.field final synthetic b:Lcom/google/android/gms/internal/ads/fd1;

.field final synthetic c:Lcom/google/android/gms/internal/ads/y42;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/y42;Lcom/google/android/gms/internal/ads/p42;Lcom/google/android/gms/internal/ads/fd1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/x42;->c:Lcom/google/android/gms/internal/ads/y42;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/x42;->a:Lcom/google/android/gms/internal/ads/p42;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/x42;->b:Lcom/google/android/gms/internal/ads/fd1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x42;->b:Lcom/google/android/gms/internal/ads/fd1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fd1;->a()Lcom/google/android/gms/internal/ads/b01;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/b01;->h(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/x42;->b:Lcom/google/android/gms/internal/ads/fd1;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/fd1;->b()Lcom/google/android/gms/internal/ads/a31;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/a31;->O(Lcom/google/android/gms/internal/ads/zzbcz;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/x42;->c:Lcom/google/android/gms/internal/ads/y42;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/y42;->c(Lcom/google/android/gms/internal/ads/y42;)Lcom/google/android/gms/internal/ads/sp0;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/sp0;->h()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/w42;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/w42;-><init>(Lcom/google/android/gms/internal/ads/x42;Lcom/google/android/gms/internal/ads/zzbcz;)V

    .line 4
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbcz;->d:I

    const-string v1, "NativeAdLoader.onFailure"

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/nk2;->a(ILjava/lang/Throwable;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/x42;->a:Lcom/google/android/gms/internal/ads/p42;

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/p42;->zza()V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/xy0;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x42;->c:Lcom/google/android/gms/internal/ads/y42;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/xy0;->f()Lcom/google/android/gms/internal/ads/i71;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/x42;->c:Lcom/google/android/gms/internal/ads/y42;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/y42;->d(Lcom/google/android/gms/internal/ads/y42;)Lcom/google/android/gms/internal/ads/n42;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/n42;->c()Lcom/google/android/gms/internal/ads/a42;

    move-result-object v2

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/i71;->a(Lcom/google/android/gms/internal/ads/a42;)Lcom/google/android/gms/internal/ads/i71;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/x42;->a:Lcom/google/android/gms/internal/ads/p42;

    .line 4
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/p42;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/x42;->c:Lcom/google/android/gms/internal/ads/y42;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/y42;->c(Lcom/google/android/gms/internal/ads/y42;)Lcom/google/android/gms/internal/ads/sp0;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sp0;->h()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/v42;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/v42;-><init>(Lcom/google/android/gms/internal/ads/x42;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
