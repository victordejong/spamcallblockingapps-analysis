.class public Lcom/mopub/mobileads/GooglePlayServicesBanner;
.super Lcom/mopub/mobileads/BaseAd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/GooglePlayServicesBanner$a;
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String; = "GooglePlayServicesBanner"


# instance fields
.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Ljava/lang/String;

.field private f:D

.field private h:Lcom/google/android/gms/ads/AdView;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/Integer;

.field private k:Ljava/lang/Integer;

.field private final l:Lcom/mopub/mobileads/GooglePlayServicesAdapterConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Lcom/mopub/mobileads/BaseAd;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 75
    new-instance v0, Lcom/mopub/mobileads/GooglePlayServicesAdapterConfiguration;

    invoke-direct {v0}, Lcom/mopub/mobileads/GooglePlayServicesAdapterConfiguration;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->l:Lcom/mopub/mobileads/GooglePlayServicesAdapterConfiguration;

    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/GooglePlayServicesBanner;)Lcom/google/android/gms/ads/AdView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->h:Lcom/google/android/gms/ads/AdView;

    return-object p0
.end method

.method static synthetic b(Lcom/mopub/mobileads/GooglePlayServicesBanner;)Ljava/lang/Integer;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->j:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic c(Lcom/mopub/mobileads/GooglePlayServicesBanner;)Ljava/lang/Integer;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->k:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/mopub/mobileads/GooglePlayServicesBanner;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic e(Lcom/mopub/mobileads/GooglePlayServicesBanner;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/mopub/mobileads/GooglePlayServicesBanner;)D
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->f:D

    return-wide v0
.end method


# virtual methods
.method public getAdNetworkId()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method protected getAdView()Landroid/view/View;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->h:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method

.method public getProviderTag()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected load(Landroid/content/Context;Lcom/mopub/mobileads/AdData;)V
    .locals 7

    .line 80
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->l:Lcom/mopub/mobileads/GooglePlayServicesAdapterConfiguration;

    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getExtras()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mopub/mobileads/GooglePlayServicesAdapterConfiguration;->initializeNetwork(Landroid/content/Context;Ljava/util/Map;)V

    .line 82
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 83
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getAdWidth()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->j:Ljava/lang/Integer;

    .line 86
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getAdHeight()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->k:Ljava/lang/Integer;

    .line 88
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getExtras()Ljava/util/Map;

    move-result-object p2

    const-string v0, "adUnitID"

    .line 90
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->i:Ljava/lang/String;

    .line 92
    invoke-static {p2}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Ljava/util/Map;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->f:D

    const-string v0, "google"

    .line 93
    invoke-static {p2, v0}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->e:Ljava/lang/String;

    .line 95
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->h:Lcom/google/android/gms/ads/AdView;

    .line 96
    new-instance v1, Lcom/mopub/mobileads/GooglePlayServicesBanner$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mopub/mobileads/GooglePlayServicesBanner$a;-><init>(Lcom/mopub/mobileads/GooglePlayServicesBanner;Lcom/mopub/mobileads/GooglePlayServicesBanner$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 97
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->h:Lcom/google/android/gms/ads/AdView;

    iget-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->j:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->k:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->k:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/android/gms/ads/AdSize;

    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->j:Ljava/lang/Integer;

    .line 101
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->k:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v2, :cond_a

    .line 104
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v3

    const-string v4, "GoogleAdaptiveBannerEnabled"

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "callapp_adaptive_ad_width"

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 105
    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v4

    sget-object v5, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v5}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    if-ne v4, v5, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v4

    sget-object v5, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v5}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 106
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    cmpl-float v4, v3, v6

    if-lez v4, :cond_3

    float-to-int v2, v3

    .line 108
    invoke-static {p1, v2}, Lcom/google/android/gms/ads/AdSize;->getCurrentOrientationAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;

    move-result-object v2

    goto :goto_1

    .line 110
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v4

    sget-object v5, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v5}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v5

    if-ne v4, v5, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v4

    sget-object v5, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v5}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 111
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    cmpl-float v4, v3, v6

    if-lez v4, :cond_3

    float-to-int v2, v3

    .line 113
    invoke-static {p1, v2}, Lcom/google/android/gms/ads/AdSize;->getCurrentOrientationInlineAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;

    move-result-object v2

    .line 118
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->h:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 130
    new-instance p1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {p1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    const-string v2, "MoPub"

    .line 131
    invoke-virtual {p1, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->setRequestAgent(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    const-string v2, "contentUrl"

    .line 134
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 136
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 137
    invoke-virtual {p1, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->setContentUrl(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 140
    :cond_4
    new-instance v2, Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;-><init>()V

    const-string v3, "testDevices"

    .line 143
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 145
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 146
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTestDeviceIds(Ljava/util/List;)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    :cond_5
    const-string v3, "tagForChildDirectedTreatment"

    .line 151
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, -0x1

    if-eqz v3, :cond_7

    .line 154
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 155
    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForChildDirectedTreatment(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    goto :goto_2

    .line 157
    :cond_6
    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForChildDirectedTreatment(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    goto :goto_2

    .line 160
    :cond_7
    invoke-virtual {v2, v4}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForChildDirectedTreatment(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    :goto_2
    const-string v3, "tagForUnderAgeOfConsent"

    .line 165
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_9

    .line 168
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 169
    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForUnderAgeOfConsent(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    goto :goto_3

    .line 171
    :cond_8
    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForUnderAgeOfConsent(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    goto :goto_3

    .line 174
    :cond_9
    invoke-virtual {v2, v4}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForUnderAgeOfConsent(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    .line 177
    :goto_3
    invoke-virtual {v2}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object p2

    .line 178
    invoke-static {p2}, Lcom/google/android/gms/ads/MobileAds;->setRequestConfiguration(Lcom/google/android/gms/ads/RequestConfiguration;)V

    .line 180
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p1

    .line 181
    iget-object p2, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->h:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 183
    invoke-virtual {p0}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/GooglePlayServicesBanner;->g:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {p1, p2, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 120
    :cond_a
    invoke-virtual {p0}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/mopub/mobileads/GooglePlayServicesBanner;->g:Ljava/lang/String;

    aput-object v3, v2, v1

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 121
    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v1, v2, v0

    .line 120
    invoke-static {p1, p2, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 124
    iget-object p1, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p1, :cond_b

    .line 125
    iget-object p1, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_b
    return-void
.end method

.method protected onInvalidate()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->h:Lcom/google/android/gms/ads/AdView;

    invoke-static {v0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 201
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->h:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 202
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 203
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->h:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    :cond_0
    return-void
.end method
