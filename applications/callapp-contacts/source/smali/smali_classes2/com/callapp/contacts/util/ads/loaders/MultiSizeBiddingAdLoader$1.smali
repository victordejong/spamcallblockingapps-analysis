.class Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;->getAdRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader$1;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader$1;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;

    iget-boolean v0, v0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;->c:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader$1;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;->a(Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;)Lcom/callapp/contacts/util/ads/AppBidder;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader$1;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;->a(Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;)Lcom/callapp/contacts/util/ads/AppBidder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader$1;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;

    iget-boolean v1, v1, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;->f:Z

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader$1;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;

    iget-object v2, v2, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;->h:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/ads/AppBidder;->a(ZLcom/callapp/contacts/util/ads/AdUtils$AdEvents;)Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 63
    iget-object v2, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader$1;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;

    iput v1, v2, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;->d:I

    .line 64
    iget-object v2, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader$1;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;

    iput-boolean v1, v2, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;->e:Z

    .line 65
    iget-object v2, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader$1;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;

    iput-boolean v1, v2, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;->f:Z

    .line 67
    iget-boolean v1, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->disableRefresh:Z

    if-nez v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader$1;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;->d()V

    .line 71
    :cond_1
    iget-object v1, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->moPubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v1, :cond_2

    .line 72
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader$1$1;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader$1$1;-><init>(Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader$1;Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void

    .line 98
    :cond_2
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader$1;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;->h:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    iget-object v2, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->nativeAd:Lcom/mopub/nativeads/NativeAd;

    iget-boolean v0, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->disableRefresh:Z

    invoke-interface {v1, v2, v0}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onNativeAdLoaded(Lcom/mopub/nativeads/NativeAd;Z)V

    return-void

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader$1;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;

    iget v2, v0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;->d:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;->d:I

    .line 102
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader$1;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;->e:Z

    .line 103
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader$1;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;

    iput-boolean v1, v0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;->f:Z

    .line 105
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader$1;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;

    iget-boolean v0, v0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;->i:Z

    if-eqz v0, :cond_4

    .line 106
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader$1;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader$1;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;->d()V

    .line 109
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader$1;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;->h:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    sget-object v1, Lcom/mopub/nativeads/NativeErrorCode;->NATIVE_ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {v0, v1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 112
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader$1;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;->h:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    if-eqz v1, :cond_6

    .line 113
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader$1;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;->h:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    sget-object v2, Lcom/mopub/nativeads/NativeErrorCode;->NATIVE_ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {v1, v2}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    .line 115
    :cond_6
    invoke-static {v0}, Lcom/callapp/contacts/util/CrashlyticsUtils;->a(Ljava/lang/Throwable;)V

    .line 116
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader$1;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
