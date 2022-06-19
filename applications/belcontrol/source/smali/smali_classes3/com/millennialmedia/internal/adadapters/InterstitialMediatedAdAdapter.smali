.class public Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;
.super Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter;
.implements Lcom/millennialmedia/internal/adadapters/SmartYieldAdapter;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter$CustomEventInterstitialListenerImpl;,
        Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter$InterstitialMediatedSmartYieldCustomEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InterstitialMediatedAdAdapter"


# instance fields
.field private adapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

.field private volatile customEventInterstitial:Lcom/millennialmedia/mediation/CustomEventInterstitial;

.field private customEventInterstitialListener:Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter$CustomEventInterstitialListenerImpl;

.field private mediationInfo:Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;)Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;)Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter$CustomEventInterstitialListenerImpl;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->customEventInterstitialListener:Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter$CustomEventInterstitialListenerImpl;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter$CustomEventInterstitialListenerImpl;)Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter$CustomEventInterstitialListenerImpl;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->customEventInterstitialListener:Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter$CustomEventInterstitialListenerImpl;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;)Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->buildMediationExtras()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;)Lcom/millennialmedia/mediation/CustomEventInterstitial;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->customEventInterstitial:Lcom/millennialmedia/mediation/CustomEventInterstitial;

    return-object p0
.end method

.method private buildMediationExtras()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->mediationInfo:Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;

    iget-object v1, v1, Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;->spaceId:Ljava/lang/String;

    const-string v2, "PLACEMENT_ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->mediationInfo:Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;

    iget-object v1, v1, Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;->siteId:Ljava/lang/String;

    const-string v2, "SITE_ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private declared-synchronized getCustomEventInterstitial()Lcom/millennialmedia/mediation/CustomEventInterstitial;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->customEventInterstitial:Lcom/millennialmedia/mediation/CustomEventInterstitial;

    if-nez v0, :cond_0

    const-class v0, Lcom/millennialmedia/InterstitialAd;

    iget-object v1, p0, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->mediationInfo:Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;

    iget-object v1, v1, Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;->networkId:Ljava/lang/String;

    const-class v2, Lcom/millennialmedia/mediation/CustomEventInterstitial;

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/mediation/CustomEventRegistry;->getCustomEvent(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/mediation/CustomEventInterstitial;

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->customEventInterstitial:Lcom/millennialmedia/mediation/CustomEventInterstitial;

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->customEventInterstitial:Lcom/millennialmedia/mediation/CustomEventInterstitial;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getImpressionDelay()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMinImpressionViewabilityPercentage()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public init(Landroid/content/Context;Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;)V
    .locals 1

    iput-object p2, p0, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->mediationInfo:Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;

    if-nez v0, :cond_0

    invoke-interface {p2}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->initFailed()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->getCustomEventInterstitial()Lcom/millennialmedia/mediation/CustomEventInterstitial;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->customEventInterstitial:Lcom/millennialmedia/mediation/CustomEventInterstitial;

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->customEventInterstitial:Lcom/millennialmedia/mediation/CustomEventInterstitial;

    if-nez v0, :cond_1

    invoke-interface {p2}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->initFailed()V

    return-void

    :cond_1
    new-instance p2, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter$1;

    invoke-direct {p2, p0, p1}, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter$1;-><init>(Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;Landroid/content/Context;)V

    invoke-static {p2}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->customEventInterstitial:Lcom/millennialmedia/mediation/CustomEventInterstitial;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->customEventInterstitial:Lcom/millennialmedia/mediation/CustomEventInterstitial;

    invoke-interface {v0}, Lcom/millennialmedia/mediation/CustomEventInterstitial;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->customEventInterstitial:Lcom/millennialmedia/mediation/CustomEventInterstitial;

    :cond_0
    return-void
.end method

.method public requestSmartYieldDecision(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 11

    move-object v1, p0

    move-object v10, p2

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->TAG:Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v10, v4, v3

    aput-object p3, v4, v2

    const/4 v5, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "requestSmartYieldDecision called with id: %s, bp: %s, width: %d, height: %d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->getCustomEventInterstitial()Lcom/millennialmedia/mediation/CustomEventInterstitial;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v4, v0, Lcom/millennialmedia/mediation/SmartYieldCustomEvent;

    if-eqz v4, :cond_1

    new-instance v9, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter$InterstitialMediatedSmartYieldCustomEventListener;

    const/4 v2, 0x0

    invoke-direct {v9, p0, p2, v2}, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter$InterstitialMediatedSmartYieldCustomEventListener;-><init>(Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;Ljava/lang/String;Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter$1;)V

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v2, "PLACEMENT_ID"

    iget-object v3, v1, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->mediationInfo:Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;

    iget-object v3, v3, Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;->spaceId:Ljava/lang/String;

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SITE_ID"

    iget-object v3, v1, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->mediationInfo:Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;

    iget-object v3, v3, Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;->siteId:Ljava/lang/String;

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Lcom/millennialmedia/mediation/SmartYieldCustomEvent;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move/from16 v7, p5

    invoke-interface/range {v2 .. v9}, Lcom/millennialmedia/mediation/SmartYieldCustomEvent;->requestSmartYieldDecision(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/os/Bundle;Lcom/millennialmedia/mediation/SmartYieldCustomEvent$SmartYieldCustomEventListener;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v0, :cond_2

    sget-object v0, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->TAG:Ljava/lang/String;

    const-string v2, "CustomEventInterstitial instance is null."

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->TAG:Ljava/lang/String;

    const-string v5, "CustomEventInterstitial class %s does not implement SmartYieldCustomEvent interface."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    invoke-static {p2}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->getActiveSmartYieldDecisionListener(Ljava/lang/String;)Lcom/millennialmedia/internal/adadapters/SmartYieldAdapter$SmartYieldDecisionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/SmartYieldAdapter$SmartYieldDecisionListener;->onBidLost()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v2, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->TAG:Ljava/lang/String;

    const-string v3, "Error occurred requesting bid decision."

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->getActiveSmartYieldDecisionListener(Ljava/lang/String;)Lcom/millennialmedia/internal/adadapters/SmartYieldAdapter$SmartYieldDecisionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/SmartYieldAdapter$SmartYieldDecisionListener;->onBidLost()V

    :goto_1
    return-void
.end method

.method public setMediationInfo(Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->mediationInfo:Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;

    return-void
.end method

.method public show(Landroid/content/Context;Lcom/millennialmedia/internal/AdPlacement$DisplayOptions;)V
    .locals 1

    iget-object p2, p0, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->customEventInterstitial:Lcom/millennialmedia/mediation/CustomEventInterstitial;

    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter;->buildMediationExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/millennialmedia/mediation/CustomEventInterstitial;->showInterstitial(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method
