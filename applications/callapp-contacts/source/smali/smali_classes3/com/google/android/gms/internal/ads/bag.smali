.class public final Lcom/google/android/gms/internal/ads/bag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzp;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/atj;

.field private final b:Lcom/google/android/gms/internal/ads/aye;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/atj;Lcom/google/android/gms/internal/ads/aye;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bag;->a:Lcom/google/android/gms/internal/ads/atj;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bag;->b:Lcom/google/android/gms/internal/ads/aye;

    return-void
.end method


# virtual methods
.method public final onPause()V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bag;->a:Lcom/google/android/gms/internal/ads/atj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/atj;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bag;->a:Lcom/google/android/gms/internal/ads/atj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/atj;->onResume()V

    return-void
.end method

.method public final onUserLeaveHint()V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bag;->a:Lcom/google/android/gms/internal/ads/atj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/atj;->onUserLeaveHint()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzl;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bag;->a:Lcom/google/android/gms/internal/ads/atj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/atj;->zza(Lcom/google/android/gms/ads/internal/overlay/zzl;)V

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bag;->b:Lcom/google/android/gms/internal/ads/aye;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aye;->b()V

    return-void
.end method

.method public final zzvz()V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bag;->a:Lcom/google/android/gms/internal/ads/atj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/atj;->zzvz()V

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bag;->b:Lcom/google/android/gms/internal/ads/aye;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aye;->a()V

    return-void
.end method
