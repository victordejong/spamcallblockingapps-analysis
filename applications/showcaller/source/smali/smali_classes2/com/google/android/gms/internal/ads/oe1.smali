.class public final Lcom/google/android/gms/internal/ads/oe1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/dz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ce1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oe1;->a:Lcom/google/android/gms/internal/ads/dz;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/google/android/gms/internal/ads/dz;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oe1;->a:Lcom/google/android/gms/internal/ads/dz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/google/android/gms/internal/ads/dz;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oe1;->a:Lcom/google/android/gms/internal/ads/dz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
