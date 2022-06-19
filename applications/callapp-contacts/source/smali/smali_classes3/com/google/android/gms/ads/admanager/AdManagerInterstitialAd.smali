.class public abstract Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;
.super Lcom/google/android/gms/ads/interstitial/InterstitialAd;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;-><init>()V

    return-void
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAdLoadCallback;)V
    .locals 1

    const-string v0, "Context cannot be null."

    .line 2
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AdUnitId cannot be null."

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AdManagerAdRequest cannot be null."

    .line 4
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LoadCallback cannot be null."

    .line 5
    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/jn;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/jn;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdRequest;->zzdt()Lcom/google/android/gms/internal/ads/emr;

    move-result-object p0

    invoke-virtual {v0, p0, p3}, Lcom/google/android/gms/internal/ads/jn;->a(Lcom/google/android/gms/internal/ads/emr;Lcom/google/android/gms/ads/AdLoadCallback;)V

    return-void
.end method


# virtual methods
.method public abstract getAppEventListener()Lcom/google/android/gms/ads/admanager/AppEventListener;
.end method

.method public abstract setAppEventListener(Lcom/google/android/gms/ads/admanager/AppEventListener;)V
.end method
