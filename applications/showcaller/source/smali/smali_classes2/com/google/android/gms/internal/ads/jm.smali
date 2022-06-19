.class final Lcom/google/android/gms/internal/ads/jm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/d$b;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/vi0;

.field final synthetic b:Lcom/google/android/gms/internal/ads/km;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/km;Lcom/google/android/gms/internal/ads/vi0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jm;->b:Lcom/google/android/gms/internal/ads/km;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/jm;->a:Lcom/google/android/gms/internal/ads/vi0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final D0(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/jm;->b:Lcom/google/android/gms/internal/ads/km;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/km;->d(Lcom/google/android/gms/internal/ads/km;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jm;->a:Lcom/google/android/gms/internal/ads/vi0;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Connection failed."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vi0;->f(Ljava/lang/Throwable;)Z

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
