.class public Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;
.super Lcom/millennialmedia/internal/adwrapper/AdWrapper;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/adadapters/SmartYieldAdapter$SmartYieldDecisionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmartYieldAdWrapper"
.end annotation


# instance fields
.field private bidderItems:Lorg/json/JSONArray;

.field private demandSources:Lorg/json/JSONArray;

.field private downstreamMediationAdapter:Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter;

.field private latch:Ljava/util/concurrent/CountDownLatch;

.field private mediationInlineAdapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

.field private mediationInterstitialAdapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

.field private final networkId:Ljava/lang/String;

.field private final siteId:Ljava/lang/String;

.field private smartYieldInlineAdapterListener:Lcom/millennialmedia/internal/adadapters/SmartYieldInlineAdapter$SmartYieldInlineAdapterListener;

.field private final smartYieldRequestId:Ljava/lang/String;

.field private smartYieldStatus:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

.field private final spaceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/adwrapper/AdWrapper;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;->UNDECIDED:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    iput-object p1, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->smartYieldStatus:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iput-object p2, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->networkId:Ljava/lang/String;

    iput-object p3, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->siteId:Ljava/lang/String;

    iput-object p4, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->spaceId:Ljava/lang/String;

    iput-object p5, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->smartYieldRequestId:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "networkId, siteId, spaceId, and smartYieldRequestId (usually the playlist response ID) are required"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$002(Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->demandSources:Lorg/json/JSONArray;

    return-object p1
.end method

.method public static synthetic access$102(Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->bidderItems:Lorg/json/JSONArray;

    return-object p1
.end method

.method private fireWinUrl(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper$1;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper$1;-><init>(Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private getAdAdapterForSmartYieldRequest(Lcom/millennialmedia/internal/AdPlacement;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;)Lcom/millennialmedia/internal/adadapters/AdAdapter;
    .locals 5

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getSmartYieldTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->waitForSmartYieldResponse(J)Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->smartYieldStatus:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    sget-object v3, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;->BID_WON:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_7

    invoke-direct {p0, p4}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->fireWinUrl(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->processDemandSources(Lcom/millennialmedia/internal/AdPlacement;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/millennialmedia/internal/adadapters/AdAdapter;

    move-result-object p1

    if-eqz p1, :cond_3

    instance-of p3, p1, Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    const/16 p4, 0x67

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->downstreamMediationAdapter:Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter;

    instance-of p3, p3, Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    if-eqz p3, :cond_1

    new-instance p3, Lcom/millennialmedia/internal/adadapters/SmartYieldInlineAdapter;

    check-cast p1, Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    iget-object v2, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->smartYieldInlineAdapterListener:Lcom/millennialmedia/internal/adadapters/SmartYieldInlineAdapter$SmartYieldInlineAdapterListener;

    iget-object v3, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->downstreamMediationAdapter:Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter;

    check-cast v3, Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    iget-object v4, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->mediationInlineAdapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    invoke-direct {p3, p1, v2, v3, v4}, Lcom/millennialmedia/internal/adadapters/SmartYieldInlineAdapter;-><init>(Lcom/millennialmedia/internal/adadapters/InlineAdapter;Lcom/millennialmedia/internal/adadapters/SmartYieldInlineAdapter$SmartYieldInlineAdapterListener;Lcom/millennialmedia/internal/adadapters/InlineAdapter;Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;)V

    invoke-virtual {p2}, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->getSuperAuction()Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;

    move-result-object p1

    iput p4, p1, Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;->status:I

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Smart yield demand processing success for inline item ID: "

    :goto_0
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/millennialmedia/internal/adwrapper/AdWrapper;->itemId:Ljava/lang/String;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v4, p3

    goto :goto_1

    :cond_1
    instance-of p3, p1, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->downstreamMediationAdapter:Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter;

    instance-of p3, p3, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

    if-eqz p3, :cond_2

    new-instance p3, Lcom/millennialmedia/internal/adadapters/SmartYieldInterstitialAdapter;

    check-cast p1, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

    iget-object v2, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->downstreamMediationAdapter:Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter;

    check-cast v2, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

    iget-object v3, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->mediationInterstitialAdapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    invoke-direct {p3, p1, v2, v3}, Lcom/millennialmedia/internal/adadapters/SmartYieldInterstitialAdapter;-><init>(Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;)V

    invoke-virtual {p2}, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->getSuperAuction()Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;

    move-result-object p1

    iput p4, p1, Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;->status:I

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Smart yield demand processing success for interstitial item ID: "

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Adapters are not all the correct type."

    invoke-static {p1, p3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v4, p1

    :goto_1
    if-nez v4, :cond_7

    invoke-virtual {p2}, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->getSuperAuction()Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;

    move-result-object p1

    const/16 p2, 0x6a

    iput p2, p1, Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;->status:I

    sget-object p1, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;->UNDECIDED:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    iput-object p1, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->smartYieldStatus:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Smart yield demand processing onFailure for item ID: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/millennialmedia/internal/adwrapper/AdWrapper;->itemId:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->mediationInlineAdapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->displayFailed()V

    :cond_5
    iget-object p1, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->mediationInterstitialAdapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->initFailed()V

    :cond_6
    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->waitForSmartYieldResponse(J)Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    move-result-object p1

    iput-object p1, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->smartYieldStatus:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    :cond_7
    return-object v4
.end method

.method private getSmartYieldMediationAdapter(Ljava/lang/String;Lcom/millennialmedia/internal/AdPlacement;)Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter;
    .locals 5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->getMediatedAdapterInstance(Ljava/lang/Class;)Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->access$200()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find ad adapter for network ID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p2, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    instance-of v2, v0, Lcom/millennialmedia/internal/adadapters/AdAdapter;

    const-string v3, "> for <"

    const-string v4, "Unable to use ad adapter <"

    if-nez v2, :cond_1

    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->access$200()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">, does not extend from AdAdapter"

    :goto_1
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    instance-of v2, v0, Lcom/millennialmedia/internal/adadapters/SmartYieldAdapter;

    if-nez v2, :cond_2

    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->access$200()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">, does not implement smart yield adapter interface"

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->access$200()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v3

    const/4 p2, 0x2

    aput-object p1, v2, p2

    const-string p1, "Found adapter %s for placement type %s and network id: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method private processDemandSources(Lcom/millennialmedia/internal/AdPlacement;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/millennialmedia/internal/adadapters/AdAdapter;
    .locals 9

    const-string v0, "price"

    const-string v1, "buyer"

    iget-object v2, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->demandSources:Lorg/json/JSONArray;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->demandSources:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    :try_start_0
    iget-object v4, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->demandSources:Lorg/json/JSONArray;

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->access$500(Ljava/lang/String;)Lcom/millennialmedia/internal/adwrapper/AdWrapperType;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, ">"

    if-nez v6, :cond_0

    :try_start_1
    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to process demand source type <"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v8, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->smartYieldRequestId:Ljava/lang/String;

    invoke-interface {v6, v4, v8}, Lcom/millennialmedia/internal/adwrapper/AdWrapperType;->createAdWrapperFromJSON(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/millennialmedia/internal/adwrapper/AdWrapper;

    move-result-object v6

    invoke-static {p2, v5, v6}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportDemandSource(Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;Ljava/lang/String;Lcom/millennialmedia/internal/adwrapper/AdWrapper;)Lcom/millennialmedia/internal/AdPlacementReporter$DemandSource;

    move-result-object v5

    invoke-virtual {v6, p1, p2, p3}, Lcom/millennialmedia/internal/adwrapper/AdWrapper;->getAdAdapter(Lcom/millennialmedia/internal/AdPlacement;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/millennialmedia/internal/adadapters/AdAdapter;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    iput v6, v5, Lcom/millennialmedia/internal/AdPlacementReporter$DemandSource;->status:I

    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No adapter found for demand source <"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v7, 0x1

    iput v7, v5, Lcom/millennialmedia/internal/AdPlacementReporter$DemandSource;->status:I

    invoke-virtual {p2}, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->getSuperAuction()Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;

    move-result-object v5

    iget-object v6, v6, Lcom/millennialmedia/internal/adwrapper/AdWrapper;->itemId:Ljava/lang/String;

    iput-object v6, v5, Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;->itemId:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->buyer:Ljava/lang/String;

    :cond_2
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->pru:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Error processing smart yield demand source"

    invoke-static {v5, v6, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    :goto_2
    return-object v3
.end method

.method private static declared-synchronized registerSmartYieldRequest(Ljava/lang/String;Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;)Z
    .locals 3

    const-class v0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->access$300()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A smart yield request is already in progress for the given smart yield request ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->access$300()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private waitForSmartYieldResponse(J)Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->latch:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->smartYieldStatus:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    return-object p1

    :cond_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Smart yield processing timed out."

    invoke-static {p1, p2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object p1, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;->ERROR:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Error during smart yield processing."

    invoke-static {p1, p2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;->ERROR:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    return-object p1
.end method


# virtual methods
.method public getAdAdapter(Lcom/millennialmedia/internal/AdPlacement;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/millennialmedia/internal/adadapters/AdAdapter;
    .locals 10

    iget-object v0, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->smartYieldRequestId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->registerSmartYieldRequest(Ljava/lang/String;Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "A smart yield request is already in progress for the given smart yield request ID: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->smartYieldRequestId:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing smart yield item ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/millennialmedia/internal/adwrapper/AdWrapper;->itemId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->networkId:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->getSmartYieldMediationAdapter(Ljava/lang/String;Lcom/millennialmedia/internal/AdPlacement;)Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->downstreamMediationAdapter:Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to find suitable smart yield mediation adapter for network ID: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->networkId:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->access$300()Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->smartYieldRequestId:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_2
    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Ad placement context must not be null for a smart yield request"

    invoke-static {p1, p2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->access$300()Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->smartYieldRequestId:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_3
    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement;->getAdPlacementMetaDataMap()Ljava/util/Map;

    move-result-object v0

    const/4 v2, -0x1

    if-eqz v0, :cond_6

    const-string v3, "width"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_4
    const/4 v3, -0x1

    :goto_0
    const-string v4, "height"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Ljava/lang/Integer;

    if-eqz v4, :cond_5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v9, v2

    move v8, v3

    goto :goto_2

    :cond_5
    move v8, v3

    goto :goto_1

    :cond_6
    const/4 v8, -0x1

    :goto_1
    const/4 v9, -0x1

    :goto_2
    iget-object v0, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->downstreamMediationAdapter:Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter;

    new-instance v2, Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;

    iget-object v3, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->networkId:Ljava/lang/String;

    iget-object v4, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->siteId:Ljava/lang/String;

    iget-object v5, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->spaceId:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter;->setMediationInfo(Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->bidderItems:Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->demandSources:Lorg/json/JSONArray;

    invoke-static {v0, v2, p2}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->access$400(Lorg/json/JSONArray;Lorg/json/JSONArray;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, "bidPrice"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "winUrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    move-object v0, v1

    :goto_3
    iget-object v2, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->downstreamMediationAdapter:Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter;

    move-object v4, v2

    check-cast v4, Lcom/millennialmedia/internal/adadapters/SmartYieldAdapter;

    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->smartYieldRequestId:Ljava/lang/String;

    move-object v7, v1

    invoke-interface/range {v4 .. v9}, Lcom/millennialmedia/internal/adadapters/SmartYieldAdapter;->requestSmartYieldDecision(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->getAdAdapterForSmartYieldRequest(Lcom/millennialmedia/internal/AdPlacement;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;)Lcom/millennialmedia/internal/adadapters/AdAdapter;

    move-result-object p1

    iget-object p3, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->smartYieldStatus:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    sget-object v0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;->BID_LOST:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    if-ne p3, v0, :cond_9

    iget-object p1, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->downstreamMediationAdapter:Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter;

    check-cast p1, Lcom/millennialmedia/internal/adadapters/AdAdapter;

    invoke-virtual {p2}, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->getSuperAuction()Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;

    move-result-object p3

    iget p3, p3, Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;->status:I

    if-nez p3, :cond_a

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    invoke-virtual {p2}, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->getSuperAuction()Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;

    move-result-object p2

    if-eqz p3, :cond_8

    const/16 p3, 0x66

    goto :goto_4

    :cond_8
    const/16 p3, 0x6b

    :goto_4
    iput p3, p2, Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;->status:I

    goto :goto_5

    :cond_9
    sget-object v0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;->BID_WON:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    if-eq p3, v0, :cond_a

    invoke-virtual {p2}, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->getSuperAuction()Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;

    move-result-object p3

    iget p3, p3, Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;->status:I

    if-nez p3, :cond_a

    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->access$200()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Smart yield processing failed to produce a valid result."

    invoke-static {p3, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->getSuperAuction()Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;

    move-result-object p2

    const/16 p3, 0x6c

    goto :goto_4

    :cond_a
    :goto_5
    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->access$300()Ljava/util/Map;

    move-result-object p2

    iget-object p3, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->smartYieldRequestId:Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public onBidLost()V
    .locals 3

    iget-object v0, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->smartYieldStatus:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    sget-object v1, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;->UNDECIDED:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Smart yield onBidLost for item ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/millennialmedia/internal/adwrapper/AdWrapper;->itemId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;->BID_LOST:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    iput-object v0, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->smartYieldStatus:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    iget-object v0, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    return-void
.end method

.method public onBidWin(Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;)V
    .locals 3

    iget-object v0, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->smartYieldStatus:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    sget-object v1, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;->UNDECIDED:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    if-ne v0, v1, :cond_2

    if-nez p1, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InterstitialAdapterListener is required."

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;->ERROR:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    iput-object p1, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->smartYieldStatus:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    iget-object p1, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Smart yield onBidWin for item ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/millennialmedia/internal/adwrapper/AdWrapper;->itemId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;->BID_WON:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    iput-object v0, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->smartYieldStatus:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    iput-object p1, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->mediationInterstitialAdapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    iget-object p1, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_2
    return-void
.end method

.method public onBidWin(Lcom/millennialmedia/internal/adadapters/SmartYieldInlineAdapter$SmartYieldInlineAdapterListener;Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;)V
    .locals 3

    iget-object v0, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->smartYieldStatus:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    sget-object v1, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;->UNDECIDED:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    if-ne v0, v1, :cond_3

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Smart yield onBidWin for item ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/millennialmedia/internal/adwrapper/AdWrapper;->itemId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;->BID_WON:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    iput-object v0, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->smartYieldStatus:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    iput-object p1, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->smartYieldInlineAdapterListener:Lcom/millennialmedia/internal/adadapters/SmartYieldInlineAdapter$SmartYieldInlineAdapterListener;

    iput-object p2, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->mediationInlineAdapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    iget-object p1, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SmartYieldInlineAdapterListener and inlineAdapterListener are both required."

    invoke-static {p1, p2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;->ERROR:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    iput-object p1, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->smartYieldStatus:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    iget-object p1, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onError()V
    .locals 3

    iget-object v0, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->smartYieldStatus:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    sget-object v1, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;->UNDECIDED:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Smart yield onError for item ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/millennialmedia/internal/adwrapper/AdWrapper;->itemId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;->ERROR:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    iput-object v0, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->smartYieldStatus:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    iget-object v0, p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    return-void
.end method
