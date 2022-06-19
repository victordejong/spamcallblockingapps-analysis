.class public final Lcom/google/android/gms/internal/ads/auu;
.super Lcom/google/android/gms/internal/ads/ate;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/ate",
        "<",
        "Lcom/google/android/gms/internal/ads/auv;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/ads/auq",
            "<",
            "Lcom/google/android/gms/internal/ads/auv;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ate;-><init>(Ljava/util/Set;)V

    .line 2
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 3
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/aut;->a:Lcom/google/android/gms/internal/ads/atg;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ate;->a(Lcom/google/android/gms/internal/ads/atg;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    .line 3
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
