.class final Lcom/google/android/gms/internal/ads/rv2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/common/internal/b$b;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/fp;

.field final synthetic b:Lcom/google/android/gms/internal/ads/sv2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/sv2;Lcom/google/android/gms/internal/ads/fp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rv2;->b:Lcom/google/android/gms/internal/ads/sv2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/rv2;->a:Lcom/google/android/gms/internal/ads/fp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rv2;->b:Lcom/google/android/gms/internal/ads/sv2;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/sv2;->c(Lcom/google/android/gms/internal/ads/sv2;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rv2;->a:Lcom/google/android/gms/internal/ads/fp;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Connection failed."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/fp;->d(Ljava/lang/Throwable;)Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
