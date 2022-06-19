.class public final Lcom/google/android/gms/internal/ads/zzboq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzq;


# instance fields
.field private final zzfwu:Lcom/google/android/gms/internal/ads/zzbsm;

.field private zzfwv:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbsm;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzboq;->zzfwv:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzboq;->zzfwu:Lcom/google/android/gms/internal/ads/zzbsm;

    return-void
.end method


# virtual methods
.method public final isClosed()Z
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboq;->zzfwv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final onPause()V
    .locals 0

    return-void
.end method

.method public final onResume()V
    .locals 0

    return-void
.end method

.method public final onUserLeaveHint()V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzn;)V
    .locals 1

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzboq;->zzfwv:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzboq;->zzfwu:Lcom/google/android/gms/internal/ads/zzbsm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbsm;->onAdClosed()V

    return-void
.end method

.method public final zzvo()V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboq;->zzfwu:Lcom/google/android/gms/internal/ads/zzbsm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbsm;->onAdOpened()V

    return-void
.end method
