.class final Lcom/google/android/gms/internal/ads/ady;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzp;


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/adt;

.field private b:Lcom/google/android/gms/ads/internal/overlay/zzp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/adt;Lcom/google/android/gms/ads/internal/overlay/zzp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ady;->a:Lcom/google/android/gms/internal/ads/adt;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ady;->b:Lcom/google/android/gms/ads/internal/overlay/zzp;

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
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ady;->b:Lcom/google/android/gms/ads/internal/overlay/zzp;

    if-eqz v0, :cond_0

    .line 14
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzp;->onUserLeaveHint()V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzl;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ady;->b:Lcom/google/android/gms/ads/internal/overlay/zzp;

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzp;->zza(Lcom/google/android/gms/ads/internal/overlay/zzl;)V

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ady;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/adt;->t()V

    return-void
.end method

.method public final zzvz()V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ady;->b:Lcom/google/android/gms/ads/internal/overlay/zzp;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzvz()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ady;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->u()V

    return-void
.end method
