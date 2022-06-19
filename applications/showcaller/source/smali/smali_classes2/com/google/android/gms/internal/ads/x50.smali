.class public final Lcom/google/android/gms/internal/ads/x50;
.super Lcom/google/android/gms/internal/ads/cj0;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/cj0<",
        "Lcom/google/android/gms/internal/ads/e60;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Ljava/lang/Object;

.field private final d:Lcom/google/android/gms/internal/ads/c60;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/c60;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cj0;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/x50;->c:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/x50;->d:Lcom/google/android/gms/internal/ads/c60;

    return-void
.end method

.method static synthetic f(Lcom/google/android/gms/internal/ads/x50;)Lcom/google/android/gms/internal/ads/c60;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/x50;->d:Lcom/google/android/gms/internal/ads/c60;

    return-object p0
.end method


# virtual methods
.method public final g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x50;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/x50;->e:Z

    if-eqz v1, :cond_0

    .line 2
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/x50;->e:Z

    new-instance v1, Lcom/google/android/gms/internal/ads/u50;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/u50;-><init>(Lcom/google/android/gms/internal/ads/x50;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/yi0;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/yi0;-><init>()V

    .line 3
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/cj0;->b(Lcom/google/android/gms/internal/ads/zi0;Lcom/google/android/gms/internal/ads/xi0;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/v50;

    .line 4
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/v50;-><init>(Lcom/google/android/gms/internal/ads/x50;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/w50;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/w50;-><init>(Lcom/google/android/gms/internal/ads/x50;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/cj0;->b(Lcom/google/android/gms/internal/ads/zi0;Lcom/google/android/gms/internal/ads/xi0;)V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
