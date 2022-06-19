.class final Lcom/google/android/gms/internal/ads/emw;
.super Lcom/google/android/gms/internal/ads/eka;
.source "SourceFile"


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/emt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/emt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/emw;->a:Lcom/google/android/gms/internal/ads/emt;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/eka;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdFailedToLoad(I)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emw;->a:Lcom/google/android/gms/internal/ads/emt;

    .line 2281
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/emt;->a:Lcom/google/android/gms/ads/VideoController;

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emw;->a:Lcom/google/android/gms/internal/ads/emt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/emt;->j()Lcom/google/android/gms/internal/ads/emk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/internal/ads/emk;)V

    .line 6
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/eka;->onAdFailedToLoad(I)V

    return-void
.end method

.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emw;->a:Lcom/google/android/gms/internal/ads/emt;

    .line 3281
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/emt;->a:Lcom/google/android/gms/ads/VideoController;

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emw;->a:Lcom/google/android/gms/internal/ads/emt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/emt;->j()Lcom/google/android/gms/internal/ads/emk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/internal/ads/emk;)V

    .line 9
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/eka;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    return-void
.end method

.method public final onAdLoaded()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emw;->a:Lcom/google/android/gms/internal/ads/emt;

    .line 1281
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/emt;->a:Lcom/google/android/gms/ads/VideoController;

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emw;->a:Lcom/google/android/gms/internal/ads/emt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/emt;->j()Lcom/google/android/gms/internal/ads/emk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/internal/ads/emk;)V

    .line 3
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/eka;->onAdLoaded()V

    return-void
.end method
