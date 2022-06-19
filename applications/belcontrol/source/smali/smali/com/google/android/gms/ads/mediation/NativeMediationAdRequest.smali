.class public interface abstract Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationAdRequest;


# virtual methods
.method public abstract getAdVolume()F
.end method

.method public abstract getNativeAdOptions()Lcom/google/android/gms/ads/formats/NativeAdOptions;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getNativeAdRequestOptions()Lcom/google/android/gms/ads/nativead/NativeAdOptions;
.end method

.method public abstract isAdMuted()Z
.end method

.method public abstract isAppInstallAdRequested()Z
.end method

.method public abstract isContentAdRequested()Z
.end method

.method public abstract isUnifiedNativeAdRequested()Z
.end method

.method public abstract zzvl()Z
.end method

.method public abstract zzvm()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method
