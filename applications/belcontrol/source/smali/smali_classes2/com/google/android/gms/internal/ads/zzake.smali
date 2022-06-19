.class public final Lcom/google/android/gms/internal/ads/zzake;
.super Lcom/google/android/gms/internal/ads/zzaka;
.source ""


# instance fields
.field private final zzdjc:Lcom/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaka;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzake;->zzdjc:Lcom/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback;

    return-void
.end method


# virtual methods
.method public final onInstreamAdFailedToLoad(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzake;->zzdjc:Lcom/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback;->onInstreamAdFailedToLoad(I)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzajv;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzake;->zzdjc:Lcom/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzakc;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzakc;-><init>(Lcom/google/android/gms/internal/ads/zzajv;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback;->onInstreamAdLoaded(Lcom/google/android/gms/ads/instream/InstreamAd;)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzvg;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzake;->zzdjc:Lcom/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzvg;->zzqc()Lcom/google/android/gms/ads/LoadAdError;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback;->onInstreamAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    return-void
.end method
