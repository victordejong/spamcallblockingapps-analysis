.class public Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;
.super Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;
.source "SourceFile"


# static fields
.field public static final ERROR_ADCOLONY_NOT_INITIALIZED:I = 0x67

.field public static final ERROR_ADCOLONY_SDK:I = 0x64

.field public static final ERROR_AD_ALREADY_REQUESTED:I = 0x66

.field public static final ERROR_BANNER_SIZE_MISMATCH:I = 0x68

.field public static final ERROR_CONTEXT_NOT_ACTIVITY:I = 0x6a

.field public static final ERROR_INVALID_SERVER_PARAMETERS:I = 0x65

.field public static final ERROR_PRESENTATION_AD_NOT_LOADED:I = 0x69

.field public static final TAG:Ljava/lang/String; = "AdColonyMediationAdapter"

.field public static a:Ld2/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ld2/l;

    invoke-direct {v0}, Ld2/l;-><init>()V

    sput-object v0, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;->a:Ld2/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;-><init>()V

    return-void
.end method

.method public static createAdapterError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/AdError;

    const-string v1, "com.google.ads.mediation.adcolony"

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createSdkError()Lcom/google/android/gms/ads/AdError;
    .locals 2

    const/16 v0, 0x64

    const-string v1, "AdColony SDK returned a failure callback."

    .line 1
    invoke-static {v0, v1}, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;->createSdkError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;

    move-result-object v0

    return-object v0
.end method

.method public static createSdkError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/gms/ads/AdError;

    const-string v1, "com.jirbo.adcolony"

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getAppOptions()Ld2/l;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;->a:Ld2/l;

    return-object v0
.end method


# virtual methods
.method public collectSignals(Lcom/google/android/gms/ads/mediation/rtb/RtbSignalData;Lcom/google/android/gms/ads/mediation/rtb/SignalCallbacks;)V
    .locals 3

    .line 1
    new-instance p1, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter$b;

    invoke-direct {p1, p2}, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter$b;-><init>(Lcom/google/android/gms/ads/mediation/rtb/SignalCallbacks;)V

    sget-object p2, Ld2/b;->a:Ljava/util/concurrent/ExecutorService;

    .line 2
    sget-boolean p2, Ld2/t;->c:Z

    if-nez p2, :cond_0

    .line 3
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object p2

    invoke-virtual {p2}, Ld2/f1;->p()Ld2/h0;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "Ignoring call to AdColony.collectSignals() as AdColony has not yet been configured."

    .line 4
    invoke-virtual {p2, v1, v0, v2, v1}, Ld2/h0;->e(IILjava/lang/String;Z)V

    .line 5
    invoke-virtual {p1}, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter$b;->z()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Ld2/f1;->a()Ld2/g2;

    move-result-object v0

    .line 8
    new-instance v1, Ld2/c;

    invoke-direct {v1, p2, v0, p1}, Ld2/c;-><init>(Ld2/f1;Ld2/g2;Landroid/support/v4/media/a;)V

    invoke-static {v1}, Ld2/b;->f(Ljava/lang/Runnable;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter$b;->z()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getSDKVersionInfo()Lcom/google/android/gms/ads/mediation/VersionInfo;
    .locals 6

    .line 1
    sget-object v0, Ld2/b;->a:Ljava/util/concurrent/ExecutorService;

    .line 2
    sget-boolean v0, Ld2/t;->c:Z

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f1;->m()Ld2/b2;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "4.6.5"

    :goto_0
    const-string v1, "\\."

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 5
    array-length v2, v1

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v2, v3, :cond_1

    .line 6
    aget-object v0, v1, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 7
    aget-object v2, v1, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    .line 8
    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 9
    new-instance v3, Lcom/google/android/gms/ads/mediation/VersionInfo;

    invoke-direct {v3, v0, v2, v1}, Lcom/google/android/gms/ads/mediation/VersionInfo;-><init>(III)V

    return-object v3

    :cond_1
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v5

    const-string v0, "Unexpected SDK version format: %s. Returning 0.0.0 for SDK version."

    .line 10
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 11
    sget-object v1, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    new-instance v0, Lcom/google/android/gms/ads/mediation/VersionInfo;

    invoke-direct {v0, v5, v5, v5}, Lcom/google/android/gms/ads/mediation/VersionInfo;-><init>(III)V

    return-object v0
.end method

.method public getVersionInfo()Lcom/google/android/gms/ads/mediation/VersionInfo;
    .locals 6

    const-string v0, "4.6.5.0"

    const-string v1, "\\."

    .line 1
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2
    array-length v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-lt v2, v5, :cond_0

    .line 3
    aget-object v0, v1, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4
    aget-object v2, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    .line 5
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    const/4 v4, 0x3

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v3

    .line 6
    new-instance v3, Lcom/google/android/gms/ads/mediation/VersionInfo;

    invoke-direct {v3, v0, v2, v1}, Lcom/google/android/gms/ads/mediation/VersionInfo;-><init>(III)V

    return-object v3

    :cond_0
    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v4

    const-string v0, "Unexpected adapter version format: %s. Returning 0.0.0 for adapter version."

    .line 7
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 8
    sget-object v1, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance v0, Lcom/google/android/gms/ads/mediation/VersionInfo;

    invoke-direct {v0, v4, v4, v4}, Lcom/google/android/gms/ads/mediation/VersionInfo;-><init>(III)V

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/mediation/MediationConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/app/Application;

    if-nez v0, :cond_0

    const/16 p1, 0x6a

    const-string p3, "AdColony SDK requires an Activity or Application context to initialize."

    .line 2
    invoke-static {p1, p3}, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;->createAdapterError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;->onInitializationFailed(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "app_id"

    if-eqz v1, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/mediation/MediationConfiguration;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/ads/mediation/MediationConfiguration;->getServerParameters()Landroid/os/Bundle;

    move-result-object v1

    .line 8
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 10
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_2
    invoke-static {}, Lcom/jirbo/adcolony/a;->d()Lcom/jirbo/adcolony/a;

    move-result-object v2

    .line 12
    invoke-virtual {v2, v1}, Lcom/jirbo/adcolony/a;->f(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 14
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p3

    if-gtz p3, :cond_4

    const/16 p1, 0x65

    const-string p3, "Missing or invalid AdColony app ID."

    .line 16
    invoke-static {p1, p3}, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;->createAdapterError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;->onInitializationFailed(Ljava/lang/String;)V

    return-void

    .line 18
    :cond_4
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    const/4 v1, 0x1

    if-le p3, v1, :cond_5

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, p3, v3

    .line 19
    invoke-virtual {v0}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v1

    const/4 v0, 0x2

    aput-object v4, p3, v0

    const-string v0, "Multiple \'%s\' entries found: %s. Using \'%s\' to initialize the AdColony SDK."

    .line 20
    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 21
    sget-object v0, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;->TAG:Ljava/lang/String;

    invoke-static {v0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_5
    sget-object p3, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;->a:Ld2/l;

    .line 23
    iget-object v0, p3, Ld2/l;->d:Ld2/f4;

    const-string v1, "mediation_network"

    const-string v2, "AdMob"

    invoke-static {v0, v1, v2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 24
    iget-object p3, p3, Ld2/l;->d:Ld2/f4;

    const-string v0, "mediation_network_version"

    const-string v1, "4.6.5.0"

    invoke-static {p3, v0, v1}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 25
    invoke-static {}, Lcom/jirbo/adcolony/a;->d()Lcom/jirbo/adcolony/a;

    move-result-object v1

    sget-object v3, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;->a:Ld2/l;

    new-instance v6, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter$a;

    invoke-direct {v6, p2}, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter$a;-><init>(Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;)V

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/jirbo/adcolony/a;->b(Landroid/content/Context;Ld2/l;Ljava/lang/String;Ljava/util/ArrayList;Lcom/jirbo/adcolony/a$a;)V

    return-void
.end method

.method public loadRewardedAd(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAd;",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lm2/e;

    invoke-direct {v0, p1, p2}, Lm2/e;-><init>(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V

    .line 2
    invoke-static {}, Lcom/jirbo/adcolony/a;->d()Lcom/jirbo/adcolony/a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getServerParameters()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/a;->f(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/jirbo/adcolony/a;->d()Lcom/jirbo/adcolony/a;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getMediationExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/jirbo/adcolony/a;->e(Ljava/util/ArrayList;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {}, Lm2/c;->M()Lm2/c;

    move-result-object v2

    .line 6
    invoke-virtual {v2, v1}, Lm2/c;->N(Ljava/lang/String;)Lm2/e;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getBidResponse()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 p1, 0x66

    const-string v0, "Failed to load ad from AdColony: Only a maximum of one ad can be loaded per Zone ID."

    .line 8
    invoke-static {p1, v0}, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;->createAdapterError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    .line 10
    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-static {}, Lcom/jirbo/adcolony/a;->d()Lcom/jirbo/adcolony/a;

    move-result-object p2

    new-instance v5, Lm2/d;

    invoke-direct {v5, v0, v1}, Lm2/d;-><init>(Lm2/e;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getServerParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "app_id"

    .line 14
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-virtual {p2, v0}, Lcom/jirbo/adcolony/a;->f(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v6

    .line 16
    invoke-static {}, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;->getAppOptions()Ld2/l;

    move-result-object v2

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->isTestRequest()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 18
    iget-object p1, v2, Ld2/l;->d:Ld2/f4;

    const-string v0, "test_mode"

    invoke-static {p1, v0, v3}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    :cond_2
    move-object v0, p2

    move-object v3, v4

    move-object v4, v6

    .line 19
    invoke-virtual/range {v0 .. v5}, Lcom/jirbo/adcolony/a;->b(Landroid/content/Context;Ld2/l;Ljava/lang/String;Ljava/util/ArrayList;Lcom/jirbo/adcolony/a$a;)V

    :goto_1
    return-void
.end method

.method public loadRtbBannerAd(Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/MediationBannerAd;",
            "Lcom/google/android/gms/ads/mediation/MediationBannerAdCallback;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lm2/a;

    invoke-direct {v0, p1, p2}, Lm2/a;-><init>(Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 p1, 0x65

    const-string v0, "Failed to request banner with unsupported size: null"

    .line 3
    invoke-static {p1, v0}, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;->createAdapterError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    .line 5
    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/jirbo/adcolony/a;->d()Lcom/jirbo/adcolony/a;

    move-result-object p2

    .line 7
    invoke-virtual {p2, p1}, Lcom/jirbo/adcolony/a;->c(Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;)Ld2/g;

    move-result-object p2

    .line 8
    invoke-static {}, Lcom/jirbo/adcolony/a;->d()Lcom/jirbo/adcolony/a;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getServerParameters()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/a;->f(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v1

    .line 10
    invoke-static {}, Lcom/jirbo/adcolony/a;->d()Lcom/jirbo/adcolony/a;

    move-result-object v2

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getMediationExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/jirbo/adcolony/a;->e(Ljava/util/ArrayList;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 12
    new-instance v2, Ld2/h;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    .line 14
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    .line 16
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, v4

    float-to-int p1, p1

    .line 17
    invoke-direct {v2, v3, p1}, Ld2/h;-><init>(II)V

    .line 18
    invoke-static {v1, v0, v2, p2}, Ld2/b;->j(Ljava/lang/String;Ld2/k;Ld2/h;Ld2/g;)Z

    :goto_0
    return-void
.end method

.method public loadRtbInterstitialAd(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;",
            "Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lm2/b;

    invoke-direct {v0, p1, p2}, Lm2/b;-><init>(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V

    .line 2
    invoke-static {}, Lcom/jirbo/adcolony/a;->d()Lcom/jirbo/adcolony/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/jirbo/adcolony/a;->c(Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;)Ld2/g;

    move-result-object p2

    .line 3
    invoke-static {}, Lcom/jirbo/adcolony/a;->d()Lcom/jirbo/adcolony/a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getServerParameters()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/a;->f(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/jirbo/adcolony/a;->d()Lcom/jirbo/adcolony/a;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getMediationExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Lcom/jirbo/adcolony/a;->e(Ljava/util/ArrayList;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1, v0, p2}, Ld2/b;->l(Ljava/lang/String;Landroid/support/v4/media/a;Ld2/g;)Z

    return-void
.end method

.method public loadRtbRewardedAd(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAd;",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;->loadRewardedAd(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V

    return-void
.end method
