.class final Lcom/google/android/gms/internal/ads/k42;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/p42;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/p42<",
        "Lcom/google/android/gms/internal/ads/xy0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/l42;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/l42;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/k42;->a:Lcom/google/android/gms/internal/ads/l42;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k42;->a:Lcom/google/android/gms/internal/ads/l42;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k42;->a:Lcom/google/android/gms/internal/ads/l42;

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/xy0;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/xy0;->d()Lcom/google/android/gms/internal/ads/q21;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/l42;->a(Lcom/google/android/gms/internal/ads/l42;Lcom/google/android/gms/internal/ads/fu;)Lcom/google/android/gms/internal/ads/fu;

    check-cast p1, Lcom/google/android/gms/internal/ads/xy0;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/xy0;->a()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k42;->a:Lcom/google/android/gms/internal/ads/l42;

    monitor-enter v0

    :try_start_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
