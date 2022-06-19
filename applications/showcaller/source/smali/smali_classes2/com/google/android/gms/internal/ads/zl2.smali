.class final Lcom/google/android/gms/internal/ads/zl2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/f03;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/f03<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/cm2;

.field final synthetic b:Lcom/google/android/gms/internal/ads/dm2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dm2;Lcom/google/android/gms/internal/ads/cm2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zl2;->b:Lcom/google/android/gms/internal/ads/dm2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zl2;->a:Lcom/google/android/gms/internal/ads/cm2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zl2;->b:Lcom/google/android/gms/internal/ads/dm2;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zl2;->b:Lcom/google/android/gms/internal/ads/dm2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dm2;->b(Lcom/google/android/gms/internal/ads/dm2;Lcom/google/android/gms/internal/ads/km2;)Lcom/google/android/gms/internal/ads/km2;

    .line 2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zl2;->b:Lcom/google/android/gms/internal/ads/dm2;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zl2;->b:Lcom/google/android/gms/internal/ads/dm2;

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dm2;->b(Lcom/google/android/gms/internal/ads/dm2;Lcom/google/android/gms/internal/ads/km2;)Lcom/google/android/gms/internal/ads/km2;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zl2;->b:Lcom/google/android/gms/internal/ads/dm2;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dm2;->a(Lcom/google/android/gms/internal/ads/dm2;)Ljava/util/ArrayDeque;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zl2;->a:Lcom/google/android/gms/internal/ads/cm2;

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zl2;->b:Lcom/google/android/gms/internal/ads/dm2;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dm2;->g(Lcom/google/android/gms/internal/ads/dm2;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zl2;->b:Lcom/google/android/gms/internal/ads/dm2;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dm2;->e(Lcom/google/android/gms/internal/ads/dm2;)V

    .line 5
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
