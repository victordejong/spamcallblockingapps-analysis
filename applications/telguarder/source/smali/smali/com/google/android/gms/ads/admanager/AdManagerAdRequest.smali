.class public final Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;
.super Lcom/google/android/gms/ads/AdRequest;
.source "com.google.android.gms:play-services-ads-lite@@19.7.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/AdRequest;-><init>(Lcom/google/android/gms/ads/AdRequest$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;Lcom/google/android/gms/ads/admanager/zza;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;-><init>(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public final getCustomTargeting()Landroid/os/Bundle;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;->zzacw:Lcom/google/android/gms/internal/ads/zzzk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzk;->getCustomTargeting()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getPublisherProvidedId()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;->zzacw:Lcom/google/android/gms/internal/ads/zzzk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzk;->getPublisherProvidedId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzds()Lcom/google/android/gms/internal/ads/zzzk;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;->zzacw:Lcom/google/android/gms/internal/ads/zzzk;

    return-object v0
.end method
