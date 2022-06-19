.class Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$GooglePostBidderListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GooglePostBidderListener"
.end annotation


# instance fields
.field private final googlePostBidder:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

.field private nativeAd:Lcom/mopub/nativeads/GooglePlayServicesNativeAd;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$GooglePostBidderListener;->googlePostBidder:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    return-void
.end method


# virtual methods
.method public onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$GooglePostBidderListener;->googlePostBidder:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$000(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoaded()V
    .locals 5

    .line 136
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$GooglePostBidderListener;->googlePostBidder:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$GooglePostBidderListener;->nativeAd:Lcom/mopub/nativeads/GooglePlayServicesNativeAd;

    invoke-virtual {v1}, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->getPublisherAdView()Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$102(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;Lcom/google/android/gms/ads/doubleclick/PublisherAdView;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    .line 139
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$GooglePostBidderListener;->googlePostBidder:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$100(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setMinimumHeight(I)V

    .line 140
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$GooglePostBidderListener;->googlePostBidder:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$100(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setMinimumWidth(I)V

    const/4 v0, 0x0

    .line 141
    :goto_0
    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$GooglePostBidderListener;->googlePostBidder:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$100(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 142
    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$GooglePostBidderListener;->googlePostBidder:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$100(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 144
    invoke-virtual {v2, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 145
    invoke-virtual {v2, v1}, Landroid/view/View;->setMinimumWidth(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$GooglePostBidderListener;->googlePostBidder:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$200(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$GooglePostBidderListener;->googlePostBidder:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$100(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->destroy()V

    return-void

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$GooglePostBidderListener;->googlePostBidder:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$400(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$GooglePostBidderListener;->googlePostBidder:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$500(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Landroid/content/Context;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$302(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;Lcom/mopub/mobileads/MoPubView;)Lcom/mopub/mobileads/MoPubView;

    .line 153
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$GooglePostBidderListener;->googlePostBidder:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$300(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$GooglePostBidderListener;->googlePostBidder:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$100(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setAdContentView(Landroid/view/View;)V

    .line 154
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$GooglePostBidderListener;->googlePostBidder:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$300(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$GooglePostBidderListener;->googlePostBidder:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$600(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setAdUnitId(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$GooglePostBidderListener;->googlePostBidder:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$000(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$GooglePostBidderListener;->googlePostBidder:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$700(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)D

    move-result-wide v1

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    add-double/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(D)V

    return-void
.end method

.method public setNativeAd(Lcom/mopub/nativeads/GooglePlayServicesNativeAd;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$GooglePostBidderListener;->nativeAd:Lcom/mopub/nativeads/GooglePlayServicesNativeAd;

    return-void
.end method
