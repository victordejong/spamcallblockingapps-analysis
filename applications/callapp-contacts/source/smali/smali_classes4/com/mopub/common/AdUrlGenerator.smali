.class public abstract Lcom/mopub/common/AdUrlGenerator;
.super Lcom/mopub/common/BaseUrlGenerator;
.source "SourceFile"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Landroid/graphics/Point;

.field protected f:Landroid/view/WindowInsets;

.field private final g:Lcom/mopub/common/privacy/PersonalInfoManager;

.field private final h:Lcom/mopub/common/privacy/ConsentData;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 142
    invoke-direct {p0}, Lcom/mopub/common/BaseUrlGenerator;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->a:Landroid/content/Context;

    .line 144
    invoke-static {}, Lcom/mopub/common/MoPub;->getPersonalInformationManager()Lcom/mopub/common/privacy/PersonalInfoManager;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->g:Lcom/mopub/common/privacy/PersonalInfoManager;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 146
    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->h:Lcom/mopub/common/privacy/ConsentData;

    return-void

    .line 148
    :cond_0
    invoke-virtual {p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->getConsentData()Lcom/mopub/common/privacy/ConsentData;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->h:Lcom/mopub/common/privacy/ConsentData;

    return-void
.end method

.method private static c(Ljava/lang/String;)I
    .locals 1

    .line 366
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x3

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    const-string v0, "mr"

    const-string v1, "1"

    .line 226
    invoke-virtual {p0, v0, v1}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final a(Lcom/mopub/common/ClientMetadata;)V
    .locals 5

    .line 308
    iget-object v0, p0, Lcom/mopub/common/AdUrlGenerator;->b:Ljava/lang/String;

    const-string v1, "id"

    .line 1178
    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nv"

    .line 1182
    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Lcom/mopub/common/AdUrlGenerator;->d()V

    .line 312
    invoke-virtual {p0}, Lcom/mopub/common/AdUrlGenerator;->e()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 313
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 314
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 315
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceProduct()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 313
    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->a([Ljava/lang/String;)V

    .line 316
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1258
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "bundle"

    .line 1259
    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/AdUrlGenerator;->c:Ljava/lang/String;

    const-string v1, "q"

    .line 2186
    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/mopub/common/AdUrlGenerator;->d:Ljava/lang/String;

    .line 2190
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "user_data_q"

    .line 2193
    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2197
    :cond_1
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2201
    iget-object v0, p0, Lcom/mopub/common/AdUrlGenerator;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/LocationService;->getLastKnownLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ll"

    invoke-virtual {p0, v3, v1}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "lla"

    invoke-virtual {p0, v3, v1}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2370
    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 2371
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    .line 2372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    long-to-int v0, v3

    .line 2207
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "llf"

    .line 2206
    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "llsdk"

    const-string v1, "1"

    .line 2208
    invoke-virtual {p0, v0, v1}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_2
    invoke-static {}, Lcom/mopub/common/util/DateAndTime;->getTimeZoneOffsetString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "z"

    .line 3213
    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getOrientationString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "o"

    .line 3217
    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceDimensions()Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/common/AdUrlGenerator;->e:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/mopub/common/AdUrlGenerator;->f:Landroid/view/WindowInsets;

    invoke-virtual {p0, v0, v1, v3}, Lcom/mopub/common/AdUrlGenerator;->a(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/view/WindowInsets;)V

    .line 329
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDensity()F

    move-result v0

    .line 3221
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sc"

    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getNetworkOperatorForUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_3

    move-object v3, v1

    goto :goto_0

    .line 3233
    :cond_3
    invoke-static {v0}, Lcom/mopub/common/AdUrlGenerator;->c(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string v4, "mcc"

    .line 3234
    invoke-virtual {p0, v4, v3}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_4

    goto :goto_1

    .line 3241
    :cond_4
    invoke-static {v0}, Lcom/mopub/common/AdUrlGenerator;->c(Ljava/lang/String;)I

    move-result v1

    .line 3240
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v0, "mnc"

    .line 3242
    invoke-virtual {p0, v0, v1}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getIsoCountryCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iso"

    .line 3246
    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cn"

    .line 3250
    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getActiveNetworkType()Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    move-result-object v0

    .line 3362
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ct"

    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getAppVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;)V

    .line 4271
    iget-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mopub/common/MoPub;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "abt"

    .line 4272
    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Lcom/mopub/common/AdUrlGenerator;->c()V

    .line 4276
    iget-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->g:Lcom/mopub/common/privacy/PersonalInfoManager;

    if-eqz p1, :cond_5

    .line 4277
    invoke-virtual {p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->gdprApplies()Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "gdpr_applies"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4282
    :cond_5
    iget-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->h:Lcom/mopub/common/privacy/ConsentData;

    if-eqz p1, :cond_6

    .line 4283
    invoke-interface {p1}, Lcom/mopub/common/privacy/ConsentData;->isForceGdprApplies()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "force_gdpr_applies"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4288
    :cond_6
    iget-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->g:Lcom/mopub/common/privacy/PersonalInfoManager;

    if-eqz p1, :cond_7

    .line 4289
    invoke-virtual {p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->getPersonalInfoConsentStatus()Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object p1

    .line 4290
    invoke-virtual {p1}, Lcom/mopub/common/privacy/ConsentStatus;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "current_consent_status"

    .line 4289
    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4295
    :cond_7
    iget-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->h:Lcom/mopub/common/privacy/ConsentData;

    if-eqz p1, :cond_8

    .line 4297
    invoke-interface {p1}, Lcom/mopub/common/privacy/ConsentData;->getConsentedPrivacyPolicyVersion()Ljava/lang/String;

    move-result-object p1

    const-string v0, "consented_privacy_policy_version"

    .line 4296
    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4302
    :cond_8
    iget-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->h:Lcom/mopub/common/privacy/ConsentData;

    if-eqz p1, :cond_9

    .line 4303
    invoke-interface {p1}, Lcom/mopub/common/privacy/ConsentData;->getConsentedVendorListVersion()Ljava/lang/String;

    move-result-object p1

    const-string v0, "consented_vendor_list_version"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4377
    :cond_9
    invoke-static {}, Lcom/mopub/network/RequestRateTracker;->getInstance()Lcom/mopub/network/RequestRateTracker;

    move-result-object p1

    .line 4378
    iget-object v0, p0, Lcom/mopub/common/AdUrlGenerator;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mopub/network/RequestRateTracker;->getRecordForAdUnit(Ljava/lang/String;)Lcom/mopub/network/RequestRateTracker$TimeRecord;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 4379
    iget v0, p1, Lcom/mopub/network/RequestRateTracker$TimeRecord;->mBlockIntervalMs:I

    if-gtz v0, :cond_a

    goto :goto_2

    .line 4383
    :cond_a
    iget v0, p1, Lcom/mopub/network/RequestRateTracker$TimeRecord;->mBlockIntervalMs:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "backoff_ms"

    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4384
    iget-object p1, p1, Lcom/mopub/network/RequestRateTracker$TimeRecord;->mReason:Ljava/lang/String;

    const-string v0, "backoff_reason"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5264
    :cond_b
    :goto_2
    invoke-static {}, Lcom/mopub/common/ViewabilityManager;->isViewabilityEnabled()Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 v2, 0x4

    .line 5265
    :cond_c
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "vv"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5267
    invoke-static {}, Lcom/mopub/common/ViewabilityManager;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "vver"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public withAdUnitId(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->b:Ljava/lang/String;

    return-object p0
.end method

.method public withFacebookSupported(Z)Lcom/mopub/common/AdUrlGenerator;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public withKeywords(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->c:Ljava/lang/String;

    return-object p0
.end method

.method public withRequestedAdSize(Landroid/graphics/Point;)Lcom/mopub/common/AdUrlGenerator;
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->e:Landroid/graphics/Point;

    return-object p0
.end method

.method public withUserDataKeywords(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->d:Ljava/lang/String;

    return-object p0
.end method

.method public withWindowInsets(Landroid/view/WindowInsets;)Lcom/mopub/common/AdUrlGenerator;
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->f:Landroid/view/WindowInsets;

    return-object p0
.end method
