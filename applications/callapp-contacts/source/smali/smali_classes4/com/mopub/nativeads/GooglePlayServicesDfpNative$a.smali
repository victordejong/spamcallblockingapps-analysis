.class final Lcom/mopub/nativeads/GooglePlayServicesDfpNative$a;
.super Lcom/mopub/nativeads/GooglePlayServicesNative$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/GooglePlayServicesDfpNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;)V
    .locals 0

    .line 143
    invoke-direct {p0}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;-><init>()V

    .line 144
    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesDfpNative$a;->h:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    return-void
.end method


# virtual methods
.method public final loadAd(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;D)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "D)V"
        }
    .end annotation

    .line 156
    iput-object p2, p0, Lcom/mopub/nativeads/GooglePlayServicesDfpNative$a;->d:Ljava/lang/String;

    .line 157
    iput-object p4, p0, Lcom/mopub/nativeads/GooglePlayServicesDfpNative$a;->e:Ljava/lang/String;

    .line 158
    iput-wide p5, p0, Lcom/mopub/nativeads/GooglePlayServicesDfpNative$a;->b:D

    .line 161
    new-instance p4, Lcom/google/android/gms/ads/AdLoader$Builder;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p5

    invoke-direct {p4, p5, p2}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p2, "swap_margins"

    .line 163
    invoke-interface {p3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_0

    .line 164
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 165
    instance-of p5, p2, Ljava/lang/Boolean;

    if-eqz p5, :cond_0

    .line 166
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/mopub/nativeads/GooglePlayServicesDfpNative$a;->g:Z

    .line 170
    :cond_0
    new-instance p2, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    invoke-direct {p2}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;-><init>()V

    const/4 p5, 0x0

    .line 173
    invoke-virtual {p2, p5}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setRequestMultipleImages(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    const-string p6, "orientation_preference"

    .line 176
    invoke-interface {p3, p6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    invoke-interface {p3, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/nativeads/GooglePlayServicesDfpNative$a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    invoke-interface {p3, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Integer;

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6

    .line 178
    invoke-virtual {p2, p6}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setMediaAspectRatio(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    :cond_1
    const-string p6, "ad_choices_placement"

    .line 183
    invoke-interface {p3, p6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    invoke-interface {p3, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 184
    invoke-static {v0}, Lcom/mopub/nativeads/GooglePlayServicesDfpNative$a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    invoke-interface {p3, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Integer;

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6

    .line 186
    invoke-virtual {p2, p6}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setAdChoicesPlacement(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    .line 190
    :cond_2
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object p2

    .line 192
    new-instance p6, Lcom/mopub/nativeads/GooglePlayServicesDfpNative$a$2;

    invoke-direct {p6, p0, p1}, Lcom/mopub/nativeads/GooglePlayServicesDfpNative$a$2;-><init>(Lcom/mopub/nativeads/GooglePlayServicesDfpNative$a;Landroid/content/Context;)V

    .line 193
    invoke-virtual {p4, p6}, Lcom/google/android/gms/ads/AdLoader$Builder;->forUnifiedNativeAd(Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object p1

    new-instance p4, Lcom/mopub/nativeads/GooglePlayServicesDfpNative$a$1;

    invoke-direct {p4, p0}, Lcom/mopub/nativeads/GooglePlayServicesDfpNative$a$1;-><init>(Lcom/mopub/nativeads/GooglePlayServicesDfpNative$a;)V

    .line 229
    invoke-virtual {p1, p4}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object p1

    .line 276
    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/AdLoader$Builder;->withNativeAdOptions(Lcom/google/android/gms/ads/formats/NativeAdOptions;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object p1

    .line 278
    new-instance p2, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    invoke-direct {p2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;-><init>()V

    const-string p4, "MoPub"

    .line 279
    invoke-virtual {p2, p4}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->setRequestAgent(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    const-string p4, "contentUrl"

    .line 282
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 284
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-nez p6, :cond_3

    .line 285
    invoke-virtual {p2, p4}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->setContentUrl(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    :cond_3
    const-string p4, "testDevices"

    .line 289
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 291
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-nez p6, :cond_4

    .line 292
    invoke-virtual {p2, p4}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    .line 295
    :cond_4
    new-instance p4, Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    invoke-direct {p4}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;-><init>()V

    const-string p6, "tagForChildDirectedTreatment"

    .line 299
    invoke-interface {p3, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Boolean;

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eqz p6, :cond_6

    .line 302
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p6

    if-eqz p6, :cond_5

    .line 303
    invoke-virtual {p4, v1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForChildDirectedTreatment(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    goto :goto_0

    .line 305
    :cond_5
    invoke-virtual {p4, p5}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForChildDirectedTreatment(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    goto :goto_0

    .line 308
    :cond_6
    invoke-virtual {p4, v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForChildDirectedTreatment(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    :goto_0
    const-string p6, "tagForUnderAgeOfConsent"

    .line 313
    invoke-interface {p3, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    if-eqz p3, :cond_8

    .line 316
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 317
    invoke-virtual {p4, v1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForUnderAgeOfConsent(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    goto :goto_1

    .line 319
    :cond_7
    invoke-virtual {p4, p5}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForUnderAgeOfConsent(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    goto :goto_1

    .line 322
    :cond_8
    invoke-virtual {p4, v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForUnderAgeOfConsent(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    .line 325
    :goto_1
    invoke-virtual {p4}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object p3

    .line 326
    invoke-static {p3}, Lcom/google/android/gms/ads/MobileAds;->setRequestConfiguration(Lcom/google/android/gms/ads/RequestConfiguration;)V

    .line 328
    invoke-virtual {p2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->build()Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    move-result-object p2

    .line 329
    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V

    .line 331
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/nativeads/GooglePlayServicesDfpNative;->b()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, p5

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method
