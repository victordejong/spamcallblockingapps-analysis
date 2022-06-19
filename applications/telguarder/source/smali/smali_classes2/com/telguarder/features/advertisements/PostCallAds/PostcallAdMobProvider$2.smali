.class Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider$2;
.super Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;
.source "PostcallAdMobProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->populateAppInstallAdView(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;


# direct methods
.method constructor <init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider$2;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;

    invoke-direct {p0}, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoEnd()V
    .locals 1

    const-string v0, "Video status: Video playback has ended."

    .line 379
    invoke-static {v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;)V

    .line 380
    invoke-super {p0}, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;->onVideoEnd()V

    return-void
.end method
