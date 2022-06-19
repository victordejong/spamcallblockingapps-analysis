.class final Lcom/mopub/nativeads/BidMachineNativeAd$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/nativead/NativeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/BidMachineNativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/nativeads/BidMachineNativeAd;

.field private final b:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/BidMachineNativeAd;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/mopub/nativeads/BidMachineNativeAd$a;->a:Lcom/mopub/nativeads/BidMachineNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p2, p0, Lcom/mopub/nativeads/BidMachineNativeAd$a;->b:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    return-void
.end method


# virtual methods
.method public final bridge synthetic onAdClicked(Lio/bidmachine/IAd;)V
    .locals 0

    .line 90
    check-cast p1, Lio/bidmachine/nativead/NativeAd;

    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/BidMachineNativeAd$a;->onAdClicked(Lio/bidmachine/nativead/NativeAd;)V

    return-void
.end method

.method public final onAdClicked(Lio/bidmachine/nativead/NativeAd;)V
    .locals 3

    .line 129
    iget-object p1, p0, Lcom/mopub/nativeads/BidMachineNativeAd$a;->a:Lcom/mopub/nativeads/BidMachineNativeAd;

    invoke-virtual {p1}, Lcom/mopub/nativeads/BidMachineNativeAd;->notifyAdClicked()V

    .line 130
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CLICKED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/mopub/nativeads/BidMachineNative;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 132
    iget-object p1, p0, Lcom/mopub/nativeads/BidMachineNativeAd$a;->a:Lcom/mopub/nativeads/BidMachineNativeAd;

    invoke-static {p1}, Lcom/mopub/nativeads/BidMachineNativeAd;->a(Lcom/mopub/nativeads/BidMachineNativeAd;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->NATIVE:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    iget-object v1, p0, Lcom/mopub/nativeads/BidMachineNativeAd$a;->a:Lcom/mopub/nativeads/BidMachineNativeAd;

    invoke-static {v1}, Lcom/mopub/nativeads/BidMachineNativeAd;->c(Lcom/mopub/nativeads/BidMachineNativeAd;)Ljava/lang/String;

    const-string v1, "bidmachine"

    invoke-static {v1, p1, v0}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->c(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;)V

    return-void
.end method

.method public final bridge synthetic onAdExpired(Lio/bidmachine/IAd;)V
    .locals 0

    .line 90
    check-cast p1, Lio/bidmachine/nativead/NativeAd;

    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/BidMachineNativeAd$a;->onAdExpired(Lio/bidmachine/nativead/NativeAd;)V

    return-void
.end method

.method public final onAdExpired(Lio/bidmachine/nativead/NativeAd;)V
    .locals 3

    .line 137
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->EXPIRED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/mopub/nativeads/BidMachineNative;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic onAdImpression(Lio/bidmachine/IAd;)V
    .locals 0

    .line 90
    check-cast p1, Lio/bidmachine/nativead/NativeAd;

    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/BidMachineNativeAd$a;->onAdImpression(Lio/bidmachine/nativead/NativeAd;)V

    return-void
.end method

.method public final onAdImpression(Lio/bidmachine/nativead/NativeAd;)V
    .locals 6

    .line 121
    iget-object p1, p0, Lcom/mopub/nativeads/BidMachineNativeAd$a;->a:Lcom/mopub/nativeads/BidMachineNativeAd;

    invoke-virtual {p1}, Lcom/mopub/nativeads/BidMachineNativeAd;->notifyAdImpressed()V

    .line 122
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/mopub/nativeads/BidMachineNative;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 124
    iget-object p1, p0, Lcom/mopub/nativeads/BidMachineNativeAd$a;->a:Lcom/mopub/nativeads/BidMachineNativeAd;

    invoke-static {p1}, Lcom/mopub/nativeads/BidMachineNativeAd;->a(Lcom/mopub/nativeads/BidMachineNativeAd;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/mopub/nativeads/BidMachineNativeAd$a;->a:Lcom/mopub/nativeads/BidMachineNativeAd;

    invoke-static {p1}, Lcom/mopub/nativeads/BidMachineNativeAd;->b(Lcom/mopub/nativeads/BidMachineNativeAd;)D

    move-result-wide v2

    sget-object v4, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->NATIVE:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    iget-object p1, p0, Lcom/mopub/nativeads/BidMachineNativeAd$a;->a:Lcom/mopub/nativeads/BidMachineNativeAd;

    invoke-static {p1}, Lcom/mopub/nativeads/BidMachineNativeAd;->c(Lcom/mopub/nativeads/BidMachineNativeAd;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "bidmachine"

    invoke-static/range {v0 .. v5}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;DLcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic onAdLoadFailed(Lio/bidmachine/IAd;Lio/bidmachine/utils/BMError;)V
    .locals 0

    .line 90
    check-cast p1, Lio/bidmachine/nativead/NativeAd;

    invoke-virtual {p0, p1, p2}, Lcom/mopub/nativeads/BidMachineNativeAd$a;->onAdLoadFailed(Lio/bidmachine/nativead/NativeAd;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public final onAdLoadFailed(Lio/bidmachine/nativead/NativeAd;Lio/bidmachine/utils/BMError;)V
    .locals 3

    .line 106
    invoke-static {p2}, Lcom/mopub/mobileads/BidMachineUtils;->transformToMoPubNativeErrorCode(Lio/bidmachine/utils/BMError;)Lcom/mopub/nativeads/NativeErrorCode;

    move-result-object p1

    .line 107
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/mopub/nativeads/BidMachineNative;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 109
    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeErrorCode;->getIntCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 107
    invoke-static {p2, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 111
    iget-object p2, p0, Lcom/mopub/nativeads/BidMachineNativeAd$a;->b:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    invoke-interface {p2, p1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void
.end method

.method public final bridge synthetic onAdLoaded(Lio/bidmachine/IAd;)V
    .locals 0

    .line 90
    check-cast p1, Lio/bidmachine/nativead/NativeAd;

    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/BidMachineNativeAd$a;->onAdLoaded(Lio/bidmachine/nativead/NativeAd;)V

    return-void
.end method

.method public final onAdLoaded(Lio/bidmachine/nativead/NativeAd;)V
    .locals 3

    .line 100
    iget-object p1, p0, Lcom/mopub/nativeads/BidMachineNativeAd$a;->b:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    iget-object v0, p0, Lcom/mopub/nativeads/BidMachineNativeAd$a;->a:Lcom/mopub/nativeads/BidMachineNativeAd;

    invoke-interface {p1, v0}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdLoaded(Lcom/mopub/nativeads/BaseNativeAd;)V

    .line 101
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/mopub/nativeads/BidMachineNative;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic onAdShown(Lio/bidmachine/IAd;)V
    .locals 0

    .line 90
    check-cast p1, Lio/bidmachine/nativead/NativeAd;

    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/BidMachineNativeAd$a;->onAdShown(Lio/bidmachine/nativead/NativeAd;)V

    return-void
.end method

.method public final onAdShown(Lio/bidmachine/nativead/NativeAd;)V
    .locals 0

    return-void
.end method
