.class public Lcom/mopub/mobileads/GooglePlayServicesInterstitial;
.super Lcom/mopub/mobileads/BaseAd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/GooglePlayServicesInterstitial$a;
    }
.end annotation


# static fields
.field public static final AD_UNIT_ID_KEY:Ljava/lang/String; = "adUnitID"

.field public static final CONTENT_URL_KEY:Ljava/lang/String; = "contentUrl"

.field public static final KEY_EXTRA_CALLAPP_BID_PRICE:Ljava/lang/String; = "callapp_bid_price"

.field public static final TAG_FOR_CHILD_DIRECTED_KEY:Ljava/lang/String; = "tagForChildDirectedTreatment"

.field public static final TAG_FOR_UNDER_AGE_OF_CONSENT_KEY:Ljava/lang/String; = "tagForUnderAgeOfConsent"

.field public static final TEST_DEVICES_KEY:Ljava/lang/String; = "testDevices"

.field private static final f:Ljava/lang/String; = "GooglePlayServicesInterstitial"


# instance fields
.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Ljava/lang/String;

.field private g:Lcom/mopub/mobileads/GooglePlayServicesAdapterConfiguration;

.field private h:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

.field private i:Ljava/lang/String;

.field private j:D

.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Lcom/mopub/mobileads/BaseAd;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    .line 66
    iput-wide v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->j:D

    .line 70
    new-instance v0, Lcom/mopub/mobileads/GooglePlayServicesAdapterConfiguration;

    invoke-direct {v0}, Lcom/mopub/mobileads/GooglePlayServicesAdapterConfiguration;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->g:Lcom/mopub/mobileads/GooglePlayServicesAdapterConfiguration;

    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/GooglePlayServicesInterstitial;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic b(Lcom/mopub/mobileads/GooglePlayServicesInterstitial;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/mopub/mobileads/GooglePlayServicesInterstitial;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/mopub/mobileads/GooglePlayServicesInterstitial;)D
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->j:D

    return-wide v0
.end method

.method static synthetic e(Lcom/mopub/mobileads/GooglePlayServicesInterstitial;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->k:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected final a()V
    .locals 6

    .line 176
    invoke-virtual {p0}, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v4, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->f:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->h:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->h:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->show()V

    return-void

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v5

    sget-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 182
    invoke-virtual {v4}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x2

    sget-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v4, v3, v2

    .line 181
    invoke-static {v0, v1, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_1
    return-void
.end method

.method public getAdNetworkId()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getProviderTag()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected load(Landroid/content/Context;Lcom/mopub/mobileads/AdData;)V
    .locals 5

    .line 75
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->g:Lcom/mopub/mobileads/GooglePlayServicesAdapterConfiguration;

    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getExtras()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mopub/mobileads/GooglePlayServicesAdapterConfiguration;->initializeNetwork(Landroid/content/Context;Ljava/util/Map;)V

    .line 77
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 78
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1053
    iput-boolean v0, p0, Lcom/mopub/mobileads/BaseAd;->a:Z

    .line 83
    invoke-static {}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->get()Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;

    invoke-static {}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->b()Z

    move-result v1

    .line 85
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getExtras()Ljava/util/Map;

    move-result-object p2

    const/4 v2, 0x1

    if-nez v1, :cond_7

    const-string v1, "adUnitID"

    .line 1211
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 87
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->i:Ljava/lang/String;

    .line 89
    iget-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->g:Lcom/mopub/mobileads/GooglePlayServicesAdapterConfiguration;

    invoke-virtual {v1, p1, p2}, Lcom/mopub/mobileads/GooglePlayServicesAdapterConfiguration;->setCachedInitializationParameters(Landroid/content/Context;Ljava/util/Map;)V

    const-string v1, "google"

    .line 102
    invoke-static {p2, v1}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->e:Ljava/lang/String;

    .line 104
    new-instance v1, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->h:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    .line 105
    new-instance p1, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$a;

    const/4 v3, 0x0

    invoke-direct {p1, p0, v3}, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$a;-><init>(Lcom/mopub/mobileads/GooglePlayServicesInterstitial;Lcom/mopub/mobileads/GooglePlayServicesInterstitial$1;)V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 106
    iget-object p1, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->h:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    iget-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->i:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 108
    new-instance p1, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    invoke-direct {p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;-><init>()V

    const-string v1, "MoPub"

    .line 109
    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->setRequestAgent(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    const-string v1, "contentUrl"

    .line 112
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 114
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 115
    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->setContentUrl(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    .line 118
    :cond_0
    new-instance v1, Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;-><init>()V

    const-string v3, "testDevices"

    .line 121
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 123
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 124
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTestDeviceIds(Ljava/util/List;)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    :cond_1
    const-string v3, "tagForChildDirectedTreatment"

    .line 129
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, -0x1

    if-eqz v3, :cond_3

    .line 132
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 133
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForChildDirectedTreatment(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    goto :goto_0

    .line 135
    :cond_2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForChildDirectedTreatment(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    goto :goto_0

    .line 138
    :cond_3
    invoke-virtual {v1, v4}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForChildDirectedTreatment(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    :goto_0
    const-string v3, "tagForUnderAgeOfConsent"

    .line 143
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 146
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 147
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForUnderAgeOfConsent(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    goto :goto_1

    .line 149
    :cond_4
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForUnderAgeOfConsent(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    goto :goto_1

    .line 152
    :cond_5
    invoke-virtual {v1, v4}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForUnderAgeOfConsent(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    .line 155
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v1

    .line 156
    invoke-static {v1}, Lcom/google/android/gms/ads/MobileAds;->setRequestConfiguration(Lcom/google/android/gms/ads/RequestConfiguration;)V

    const-string v1, "callapp_bid_price"

    .line 158
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 159
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 160
    invoke-static {v1}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "bid_price"

    .line 161
    invoke-virtual {p1, v3, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->addCustomTargeting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    .line 164
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->build()Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    move-result-object p1

    .line 166
    invoke-static {p2}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Ljava/util/Map;)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->j:D

    const-string v1, "app_bidder_request_id"

    .line 167
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->k:Ljava/lang/String;

    .line 169
    iget-object p2, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->h:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V

    .line 171
    invoke-virtual {p0}, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v1, v2, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->f:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-static {p1, p2, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 91
    :cond_7
    invoke-virtual {p0}, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->f:Ljava/lang/String;

    aput-object v3, v1, v0

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 92
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x2

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v2, v1, v0

    .line 91
    invoke-static {p1, p2, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 95
    iget-object p1, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p1, :cond_8

    .line 96
    iget-object p1, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_8
    return-void
.end method

.method protected onInvalidate()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->h:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 199
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 200
    iput-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->h:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    :cond_0
    return-void
.end method
