.class public Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;
.super Lcom/mopub/mobileads/BaseAd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;
    }
.end annotation


# static fields
.field public static final KEY_EXTRA_CALLAPP_ADAPTIVE_AD_WIDTH:Ljava/lang/String; = "callapp_adaptive_ad_width"

.field private static final g:Ljava/lang/String; = "GooglePlayServicesDfpBanner"


# instance fields
.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Ljava/lang/String;

.field private f:D

.field private h:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

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

    .line 79
    invoke-direct {p0}, Lcom/mopub/mobileads/BaseAd;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    new-instance v0, Lcom/mopub/mobileads/GooglePlayServicesAdapterConfiguration;

    invoke-direct {v0}, Lcom/mopub/mobileads/GooglePlayServicesAdapterConfiguration;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->l:Lcom/mopub/mobileads/GooglePlayServicesAdapterConfiguration;

    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->h:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    return-object p0
.end method

.method static synthetic b(Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;)Ljava/lang/Integer;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->j:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic c(Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;)Ljava/lang/Integer;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->k:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic e(Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;)D
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->f:D

    return-wide v0
.end method


# virtual methods
.method public getAdNetworkId()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method protected getAdView()Landroid/view/View;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->h:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    return-object v0
.end method

.method public getProviderTag()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected load(Landroid/content/Context;Lcom/mopub/mobileads/AdData;)V
    .locals 8

    .line 85
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->l:Lcom/mopub/mobileads/GooglePlayServicesAdapterConfiguration;

    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getExtras()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mopub/mobileads/GooglePlayServicesAdapterConfiguration;->initializeNetwork(Landroid/content/Context;Ljava/util/Map;)V

    .line 87
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 88
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getAdWidth()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->j:Ljava/lang/Integer;

    .line 91
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getAdHeight()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->k:Ljava/lang/Integer;

    .line 93
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getExtras()Ljava/util/Map;

    move-result-object p2

    const-string v0, "adUnitID"

    .line 95
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->i:Ljava/lang/String;

    .line 97
    invoke-static {p2}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Ljava/util/Map;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->f:D

    const-string v0, "google"

    .line 98
    invoke-static {p2, v0}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->e:Ljava/lang/String;

    .line 100
    new-instance v0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->h:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    .line 101
    new-instance v1, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;-><init>(Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 102
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->h:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    iget-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdUnitId(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->j:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->k:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->k:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/android/gms/ads/AdSize;

    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->j:Ljava/lang/Integer;

    .line 106
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->k:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v2, :cond_c

    .line 109
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 110
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v4

    const-string v5, "GoogleAdaptiveBannerEnabled"

    invoke-virtual {v4, v5}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "callapp_adaptive_ad_width"

    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 111
    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v5

    sget-object v6, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v6}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    if-ne v5, v6, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v5

    sget-object v6, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v6}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 112
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    cmpl-float v5, v4, v7

    if-lez v5, :cond_2

    float-to-int v2, v4

    .line 114
    invoke-static {p1, v2}, Lcom/google/android/gms/ads/AdSize;->getCurrentOrientationAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;

    move-result-object v2

    .line 116
    :cond_2
    sget-object p1, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object p1, Lcom/google/android/gms/ads/AdSize;->LARGE_BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 118
    :cond_3
    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v5

    sget-object v6, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v6}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v6

    if-ne v5, v6, :cond_5

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v5

    sget-object v6, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v6}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v6

    if-ne v5, v6, :cond_5

    .line 119
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    cmpl-float v5, v4, v7

    if-lez v5, :cond_4

    float-to-int v2, v4

    .line 121
    invoke-static {p1, v2}, Lcom/google/android/gms/ads/AdSize;->getCurrentOrientationInlineAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;

    move-result-object p1

    move-object v2, p1

    .line 123
    :cond_4
    sget-object p1, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object p1, Lcom/google/android/gms/ads/AdSize;->LARGE_BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object p1, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_5
    :goto_1
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object p1, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->h:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    new-array v2, v1, [Lcom/google/android/gms/ads/AdSize;

    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdSizes([Lcom/google/android/gms/ads/AdSize;)V

    .line 143
    new-instance p1, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    invoke-direct {p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;-><init>()V

    const-string v2, "MoPub"

    .line 144
    invoke-virtual {p1, v2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->setRequestAgent(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    const-string v2, "contentUrl"

    .line 147
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 149
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 150
    invoke-virtual {p1, v2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->setContentUrl(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    .line 153
    :cond_6
    new-instance v2, Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;-><init>()V

    const-string v3, "testDevices"

    .line 156
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 158
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 159
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTestDeviceIds(Ljava/util/List;)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    :cond_7
    const-string v3, "tagForChildDirectedTreatment"

    .line 164
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, -0x1

    if-eqz v3, :cond_9

    .line 167
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 168
    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForChildDirectedTreatment(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    goto :goto_2

    .line 170
    :cond_8
    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForChildDirectedTreatment(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    goto :goto_2

    .line 173
    :cond_9
    invoke-virtual {v2, v4}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForChildDirectedTreatment(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    :goto_2
    const-string v3, "tagForUnderAgeOfConsent"

    .line 178
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_b

    .line 181
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 182
    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForUnderAgeOfConsent(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    goto :goto_3

    .line 184
    :cond_a
    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForUnderAgeOfConsent(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    goto :goto_3

    .line 187
    :cond_b
    invoke-virtual {v2, v4}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForUnderAgeOfConsent(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    .line 190
    :goto_3
    invoke-virtual {v2}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object p2

    .line 191
    invoke-static {p2}, Lcom/google/android/gms/ads/MobileAds;->setRequestConfiguration(Lcom/google/android/gms/ads/RequestConfiguration;)V

    .line 193
    invoke-virtual {p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->build()Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    move-result-object p1

    .line 194
    iget-object p2, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->h:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V

    .line 196
    invoke-virtual {p0}, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->g:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {p1, p2, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 133
    :cond_c
    invoke-virtual {p0}, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->g:Ljava/lang/String;

    aput-object v3, v2, v1

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 134
    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v1, v2, v0

    .line 133
    invoke-static {p1, p2, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 137
    iget-object p1, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p1, :cond_d

    .line 138
    iget-object p1, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_d
    return-void
.end method

.method protected onInvalidate()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->h:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-static {v0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 214
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->h:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 215
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 216
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->h:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->destroy()V

    :cond_0
    return-void
.end method
