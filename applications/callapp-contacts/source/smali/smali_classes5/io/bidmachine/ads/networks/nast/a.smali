.class final Lio/bidmachine/ads/networks/nast/a;
.super Lio/bidmachine/unified/UnifiedNativeAd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/nast/a$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lio/bidmachine/unified/UnifiedNativeAd;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdCallback;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 15
    check-cast p2, Lio/bidmachine/unified/UnifiedNativeAdCallback;

    check-cast p3, Lio/bidmachine/unified/UnifiedNativeAdRequestParams;

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/ads/networks/nast/a;->load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedNativeAdCallback;Lio/bidmachine/unified/UnifiedNativeAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;)V

    return-void
.end method

.method public final load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedNativeAdCallback;Lio/bidmachine/unified/UnifiedNativeAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 22
    new-instance p1, Lio/bidmachine/ads/networks/nast/NastParams;

    invoke-direct {p1, p4}, Lio/bidmachine/ads/networks/nast/NastParams;-><init>(Lio/bidmachine/unified/UnifiedMediationParams;)V

    .line 23
    invoke-virtual {p1, p3, p2}, Lio/bidmachine/ads/networks/nast/NastParams;->isValid(Lio/bidmachine/unified/UnifiedNativeAdRequestParams;Lio/bidmachine/unified/UnifiedAdCallback;)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 26
    :cond_0
    new-instance p3, Lio/bidmachine/ads/networks/nast/a$a;

    invoke-direct {p3, p1}, Lio/bidmachine/ads/networks/nast/a$a;-><init>(Lio/bidmachine/ads/networks/nast/NastParams;)V

    invoke-interface {p2, p3}, Lio/bidmachine/unified/UnifiedNativeAdCallback;->onAdLoaded(Lio/bidmachine/nativead/NativeNetworkAdapter;)V

    return-void
.end method
