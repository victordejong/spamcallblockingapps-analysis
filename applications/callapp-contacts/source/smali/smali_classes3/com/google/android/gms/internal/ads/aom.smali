.class public final Lcom/google/android/gms/internal/ads/aom;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzp;


# instance fields
.field a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Lcom/google/android/gms/internal/ads/asp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/asp;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aom;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aom;->b:Lcom/google/android/gms/internal/ads/asp;

    return-void
.end method


# virtual methods
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

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzl;)V
    .locals 1

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aom;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aom;->b:Lcom/google/android/gms/internal/ads/asp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/asp;->a()V

    return-void
.end method

.method public final zzvz()V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aom;->b:Lcom/google/android/gms/internal/ads/asp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/asp;->c()V

    return-void
.end method
