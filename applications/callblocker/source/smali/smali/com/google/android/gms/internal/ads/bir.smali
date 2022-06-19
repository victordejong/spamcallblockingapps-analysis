.class final Lcom/google/android/gms/internal/ads/bir;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/crh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/crh",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/bij;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bij;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bir;->a:Lcom/google/android/gms/internal/ads/bij;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 9
    check-cast p1, Ljava/lang/String;

    .line 10
    monitor-enter p0

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bir;->a:Lcom/google/android/gms/internal/ads/bij;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/bij;->a(Lcom/google/android/gms/internal/ads/bij;Z)Z

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bir;->a:Lcom/google/android/gms/internal/ads/bij;

    const-string/jumbo v1, "com.google.android.gms.ads.MobileAds"

    const/4 v2, 0x1

    const-string/jumbo v3, ""

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/bir;->a:Lcom/google/android/gms/internal/ads/bij;

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/bij;->a(Lcom/google/android/gms/internal/ads/bij;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v4, v4

    .line 14
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/bij;->a(Lcom/google/android/gms/internal/ads/bij;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bir;->a:Lcom/google/android/gms/internal/ads/bij;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bij;->b(Lcom/google/android/gms/internal/ads/bij;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/biu;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/biu;-><init>(Lcom/google/android/gms/internal/ads/bir;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 16
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 8

    .prologue
    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bir;->a:Lcom/google/android/gms/internal/ads/bij;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/bij;->a(Lcom/google/android/gms/internal/ads/bij;Z)Z

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bir;->a:Lcom/google/android/gms/internal/ads/bij;

    const-string/jumbo v1, "com.google.android.gms.ads.MobileAds"

    const/4 v2, 0x0

    const-string/jumbo v3, "Internal Error."

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/bir;->a:Lcom/google/android/gms/internal/ads/bij;

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/bij;->a(Lcom/google/android/gms/internal/ads/bij;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v4, v4

    .line 6
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/bij;->a(Lcom/google/android/gms/internal/ads/bij;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bir;->a:Lcom/google/android/gms/internal/ads/bij;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bij;->c(Lcom/google/android/gms/internal/ads/bij;)Lcom/google/android/gms/internal/ads/yo;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yo;->a(Ljava/lang/Throwable;)Z

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
