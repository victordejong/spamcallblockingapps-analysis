.class public abstract Lio/bidmachine/BidMachineAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/IAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/BidMachineAd$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SelfType::",
        "Lio/bidmachine/IAd;",
        "AdRequestType:",
        "Lio/bidmachine/AdRequest<",
        "TAdRequestType;TUnifiedAdRequestParamsType;>;AdObjectType::",
        "Lio/bidmachine/models/AdObject<",
        "TAdObjectParamsType;TUnifiedAdRequestParamsType;*>;AdObjectParamsType:",
        "Lio/bidmachine/models/AdObjectParams;",
        "UnifiedAdRequestParamsType::",
        "Lio/bidmachine/unified/UnifiedAdRequestParams;",
        "Ad",
        "ListenerType::Lio/bidmachine/AdListener<",
        "TSelfType;>;>",
        "Ljava/lang/Object;",
        "Lio/bidmachine/IAd<",
        "TSelfType;TAdRequestType;>;"
    }
.end annotation


# instance fields
.field adRequest:Lio/bidmachine/AdRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdRequestType;"
        }
    .end annotation
.end field

.field private final adRequestListener:Lio/bidmachine/AdRequest$AdRequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/AdRequest$AdRequestListener<",
            "TAdRequestType;>;"
        }
    .end annotation
.end field

.field private final adsType:Lio/bidmachine/AdsType;

.field private cachedClassTag:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final contextProvider:Lio/bidmachine/ContextProvider;

.field private currentState:Lio/bidmachine/BidMachineAd$a;

.field private final internalAdRequestListener:Lio/bidmachine/AdRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/AdRequest$b<",
            "TAdRequestType;>;"
        }
    .end annotation
.end field

.field private isClickTracked:Z

.field private isCloseTracked:Z

.field private isFinishTracked:Z

.field private isImpressionTracked:Z

.field private isShownTracked:Z

.field private listener:Lio/bidmachine/AdListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAd",
            "ListenerType;"
        }
    .end annotation
.end field

.field private loadedObject:Lio/bidmachine/models/AdObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdObjectType;"
        }
    .end annotation
.end field

.field final processCallback:Lio/bidmachine/AdProcessCallback;

.field final trackingObject:Lio/bidmachine/TrackingObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/AdsType;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Lio/bidmachine/BidMachineAd$a;->Idle:Lio/bidmachine/BidMachineAd$a;

    iput-object v0, p0, Lio/bidmachine/BidMachineAd;->currentState:Lio/bidmachine/BidMachineAd$a;

    .line 56
    new-instance v0, Lio/bidmachine/BidMachineAd$1;

    invoke-direct {v0, p0}, Lio/bidmachine/BidMachineAd$1;-><init>(Lio/bidmachine/BidMachineAd;)V

    iput-object v0, p0, Lio/bidmachine/BidMachineAd;->trackingObject:Lio/bidmachine/TrackingObject;

    .line 298
    new-instance v0, Lio/bidmachine/BidMachineAd$2;

    invoke-direct {v0, p0}, Lio/bidmachine/BidMachineAd$2;-><init>(Lio/bidmachine/BidMachineAd;)V

    iput-object v0, p0, Lio/bidmachine/BidMachineAd;->adRequestListener:Lio/bidmachine/AdRequest$AdRequestListener;

    .line 327
    new-instance v0, Lio/bidmachine/BidMachineAd$3;

    invoke-direct {v0, p0}, Lio/bidmachine/BidMachineAd$3;-><init>(Lio/bidmachine/BidMachineAd;)V

    iput-object v0, p0, Lio/bidmachine/BidMachineAd;->internalAdRequestListener:Lio/bidmachine/AdRequest$b;

    .line 341
    new-instance v0, Lio/bidmachine/BidMachineAd$4;

    invoke-direct {v0, p0}, Lio/bidmachine/BidMachineAd$4;-><init>(Lio/bidmachine/BidMachineAd;)V

    iput-object v0, p0, Lio/bidmachine/BidMachineAd;->processCallback:Lio/bidmachine/AdProcessCallback;

    .line 77
    iput-object p1, p0, Lio/bidmachine/BidMachineAd;->context:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lio/bidmachine/BidMachineAd;->adsType:Lio/bidmachine/AdsType;

    .line 79
    new-instance p2, Lio/bidmachine/k;

    invoke-direct {p2, p1}, Lio/bidmachine/k;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lio/bidmachine/BidMachineAd;->contextProvider:Lio/bidmachine/ContextProvider;

    return-void
.end method

.method static synthetic access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/models/AdObject;
    .locals 0

    .line 24
    iget-object p0, p0, Lio/bidmachine/BidMachineAd;->loadedObject:Lio/bidmachine/models/AdObject;

    return-object p0
.end method

.method static synthetic access$100(Lio/bidmachine/BidMachineAd;Lio/bidmachine/AdRequest;Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/adcom/Ad;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lio/bidmachine/BidMachineAd;->processRequestSuccess(Lio/bidmachine/AdRequest;Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/adcom/Ad;)V

    return-void
.end method

.method static synthetic access$1000(Lio/bidmachine/BidMachineAd;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lio/bidmachine/BidMachineAd;->isFinishTracked:Z

    return p0
.end method

.method static synthetic access$1002(Lio/bidmachine/BidMachineAd;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lio/bidmachine/BidMachineAd;->isFinishTracked:Z

    return p1
.end method

.method static synthetic access$1100(Lio/bidmachine/BidMachineAd;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lio/bidmachine/BidMachineAd;->isCloseTracked:Z

    return p0
.end method

.method static synthetic access$1102(Lio/bidmachine/BidMachineAd;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lio/bidmachine/BidMachineAd;->isCloseTracked:Z

    return p1
.end method

.method static synthetic access$1200(Lio/bidmachine/BidMachineAd;Lio/bidmachine/AdRequest;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lio/bidmachine/BidMachineAd;->detachRequest(Lio/bidmachine/AdRequest;)V

    return-void
.end method

.method static synthetic access$200(Lio/bidmachine/BidMachineAd;Lio/bidmachine/utils/BMError;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lio/bidmachine/BidMachineAd;->processRequestFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method static synthetic access$300(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/BidMachineAd$a;
    .locals 0

    .line 24
    iget-object p0, p0, Lio/bidmachine/BidMachineAd;->currentState:Lio/bidmachine/BidMachineAd$a;

    return-object p0
.end method

.method static synthetic access$302(Lio/bidmachine/BidMachineAd;Lio/bidmachine/BidMachineAd$a;)Lio/bidmachine/BidMachineAd$a;
    .locals 0

    .line 24
    iput-object p1, p0, Lio/bidmachine/BidMachineAd;->currentState:Lio/bidmachine/BidMachineAd$a;

    return-object p1
.end method

.method static synthetic access$400(Lio/bidmachine/BidMachineAd;Lio/bidmachine/TrackEventType;Lio/bidmachine/utils/BMError;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lio/bidmachine/BidMachineAd;->trackEvent(Lio/bidmachine/TrackEventType;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method static synthetic access$500(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/AdListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lio/bidmachine/BidMachineAd;->listener:Lio/bidmachine/AdListener;

    return-object p0
.end method

.method static synthetic access$600(Lio/bidmachine/BidMachineAd;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lio/bidmachine/BidMachineAd;->isShownTracked:Z

    return p0
.end method

.method static synthetic access$602(Lio/bidmachine/BidMachineAd;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lio/bidmachine/BidMachineAd;->isShownTracked:Z

    return p1
.end method

.method static synthetic access$700(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/AdsType;
    .locals 0

    .line 24
    iget-object p0, p0, Lio/bidmachine/BidMachineAd;->adsType:Lio/bidmachine/AdsType;

    return-object p0
.end method

.method static synthetic access$800(Lio/bidmachine/BidMachineAd;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lio/bidmachine/BidMachineAd;->isClickTracked:Z

    return p0
.end method

.method static synthetic access$802(Lio/bidmachine/BidMachineAd;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lio/bidmachine/BidMachineAd;->isClickTracked:Z

    return p1
.end method

.method static synthetic access$900(Lio/bidmachine/BidMachineAd;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lio/bidmachine/BidMachineAd;->isImpressionTracked:Z

    return p0
.end method

.method static synthetic access$902(Lio/bidmachine/BidMachineAd;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lio/bidmachine/BidMachineAd;->isImpressionTracked:Z

    return p1
.end method

.method private attachRequest(Lio/bidmachine/AdRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 239
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->adRequestListener:Lio/bidmachine/AdRequest$AdRequestListener;

    invoke-virtual {p1, v0}, Lio/bidmachine/AdRequest;->addListener(Lio/bidmachine/AdRequest$AdRequestListener;)V

    .line 240
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->internalAdRequestListener:Lio/bidmachine/AdRequest$b;

    invoke-virtual {p1, v0}, Lio/bidmachine/AdRequest;->addInternalListener(Lio/bidmachine/AdRequest$b;)V

    :cond_0
    return-void
.end method

.method private detachRequest(Lio/bidmachine/AdRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 246
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->adRequestListener:Lio/bidmachine/AdRequest$AdRequestListener;

    invoke-virtual {p1, v0}, Lio/bidmachine/AdRequest;->removeListener(Lio/bidmachine/AdRequest$AdRequestListener;)V

    .line 247
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->internalAdRequestListener:Lio/bidmachine/AdRequest$b;

    invoke-virtual {p1, v0}, Lio/bidmachine/AdRequest;->removeInternalListener(Lio/bidmachine/AdRequest$b;)V

    :cond_0
    return-void
.end method

.method private processRequest(Lio/bidmachine/AdRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;)V"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->processCallback:Lio/bidmachine/AdProcessCallback;

    const-string v1, "process request start"

    invoke-interface {v0, v1}, Lio/bidmachine/AdProcessCallback;->log(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getAuctionResult()Lio/bidmachine/models/AuctionResult;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 204
    invoke-virtual {p1}, Lio/bidmachine/AdRequest;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    sget-object p1, Lio/bidmachine/utils/BMError;->RequestExpired:Lio/bidmachine/utils/BMError;

    invoke-direct {p0, p1}, Lio/bidmachine/BidMachineAd;->processRequestFail(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 206
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/AdRequest;->isAdWasShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    sget-object p1, Lio/bidmachine/utils/BMError;->RequestAlreadyShown:Lio/bidmachine/utils/BMError;

    invoke-direct {p0, p1}, Lio/bidmachine/BidMachineAd;->processRequestFail(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 209
    :cond_1
    iget-object v0, p1, Lio/bidmachine/AdRequest;->seatBidResult:Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    iget-object v1, p1, Lio/bidmachine/AdRequest;->bidResult:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    iget-object v2, p1, Lio/bidmachine/AdRequest;->adResult:Lcom/explorestack/protobuf/adcom/Ad;

    invoke-direct {p0, p1, v0, v1, v2}, Lio/bidmachine/BidMachineAd;->processRequestSuccess(Lio/bidmachine/AdRequest;Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/adcom/Ad;)V

    return-void

    .line 216
    :cond_2
    sget-object v0, Lio/bidmachine/BidMachineAd$a;->Requesting:Lio/bidmachine/BidMachineAd$a;

    iput-object v0, p0, Lio/bidmachine/BidMachineAd;->currentState:Lio/bidmachine/BidMachineAd$a;

    .line 217
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/bidmachine/AdRequest;->request(Landroid/content/Context;)V

    return-void
.end method

.method private processRequestFail(Lio/bidmachine/utils/BMError;)V
    .locals 3

    .line 293
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->currentState:Lio/bidmachine/BidMachineAd$a;

    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd$a;->ordinal()I

    move-result v0

    sget-object v1, Lio/bidmachine/BidMachineAd$a;->Loading:Lio/bidmachine/BidMachineAd$a;

    invoke-virtual {v1}, Lio/bidmachine/BidMachineAd$a;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->trackingObject:Lio/bidmachine/TrackingObject;

    sget-object v1, Lio/bidmachine/TrackEventType;->Load:Lio/bidmachine/TrackEventType;

    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getType()Lio/bidmachine/AdsType;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/bidmachine/BidMachineEvents;->eventStart(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;)V

    .line 295
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->processCallback:Lio/bidmachine/AdProcessCallback;

    invoke-interface {v0, p1}, Lio/bidmachine/AdProcessCallback;->processLoadFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method private processRequestSuccess(Lio/bidmachine/AdRequest;Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/adcom/Ad;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid;",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;",
            "Lcom/explorestack/protobuf/adcom/Ad;",
            ")V"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->currentState:Lio/bidmachine/BidMachineAd$a;

    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd$a;->ordinal()I

    move-result v0

    sget-object v1, Lio/bidmachine/BidMachineAd$a;->Loading:Lio/bidmachine/BidMachineAd$a;

    invoke-virtual {v1}, Lio/bidmachine/BidMachineAd$a;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->trackingObject:Lio/bidmachine/TrackingObject;

    sget-object v1, Lio/bidmachine/TrackEventType;->Load:Lio/bidmachine/TrackEventType;

    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getType()Lio/bidmachine/AdsType;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/bidmachine/BidMachineEvents;->eventStart(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;)V

    .line 226
    sget-object v0, Lio/bidmachine/BidMachineAd$a;->Loading:Lio/bidmachine/BidMachineAd$a;

    iput-object v0, p0, Lio/bidmachine/BidMachineAd;->currentState:Lio/bidmachine/BidMachineAd$a;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    if-nez p4, :cond_1

    goto :goto_0

    .line 230
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/bidmachine/BidMachineAd;->processResponseSuccess(Lio/bidmachine/AdRequest;Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 232
    iget-object p2, p0, Lio/bidmachine/BidMachineAd;->processCallback:Lio/bidmachine/AdProcessCallback;

    invoke-interface {p2, p1}, Lio/bidmachine/AdProcessCallback;->processLoadFail(Lio/bidmachine/utils/BMError;)V

    :cond_2
    return-void

    .line 228
    :cond_3
    :goto_0
    sget-object p1, Lio/bidmachine/utils/BMError;->Internal:Lio/bidmachine/utils/BMError;

    invoke-direct {p0, p1}, Lio/bidmachine/BidMachineAd;->processRequestFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method private processResponseSuccess(Lio/bidmachine/AdRequest;Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/utils/BMError;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid;",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;",
            "Lcom/explorestack/protobuf/adcom/Ad;",
            ")",
            "Lio/bidmachine/utils/BMError;"
        }
    .end annotation

    .line 257
    :try_start_0
    invoke-virtual {p1}, Lio/bidmachine/AdRequest;->getUnifiedRequestParams()Lio/bidmachine/unified/UnifiedAdRequestParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 259
    sget-object v0, Lio/bidmachine/utils/BMError;->Internal:Lio/bidmachine/utils/BMError;

    return-object v0

    .line 261
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getType()Lio/bidmachine/AdsType;

    move-result-object v1

    invoke-virtual {v1, p4}, Lio/bidmachine/AdsType;->obtainNetworkConfig(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/NetworkConfig;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 263
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getType()Lio/bidmachine/AdsType;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/BidMachineAd;->contextProvider:Lio/bidmachine/ContextProvider;

    move-object v3, v0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/AdsType;->createAdObjectParams(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/models/AdObjectParams;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 265
    invoke-virtual {v5}, Lio/bidmachine/models/AdObjectParams;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    iget-object v2, p0, Lio/bidmachine/BidMachineAd;->contextProvider:Lio/bidmachine/ContextProvider;

    .line 269
    invoke-virtual {v7}, Lio/bidmachine/NetworkConfig;->obtainNetworkAdapter()Lio/bidmachine/NetworkAdapter;

    move-result-object v4

    iget-object v6, p0, Lio/bidmachine/BidMachineAd;->processCallback:Lio/bidmachine/AdProcessCallback;

    move-object v1, p0

    move-object v3, p1

    .line 266
    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/BidMachineAd;->createAdObject(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdRequest;Lio/bidmachine/NetworkAdapter;Lio/bidmachine/models/AdObjectParams;Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/models/AdObject;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/BidMachineAd;->loadedObject:Lio/bidmachine/models/AdObject;

    if-eqz v1, :cond_1

    .line 273
    iget-object v2, p0, Lio/bidmachine/BidMachineAd;->contextProvider:Lio/bidmachine/ContextProvider;

    invoke-interface {v1, v2, v0}, Lio/bidmachine/models/AdObject;->load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;)V

    const/4 v0, 0x0

    return-object v0

    .line 277
    :cond_1
    sget-object v0, Lio/bidmachine/utils/BMError;->IncorrectAdUnit:Lio/bidmachine/utils/BMError;

    return-object v0

    .line 279
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "for Ad with id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/explorestack/protobuf/adcom/Ad;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/utils/BMError;->adapterNotFoundError(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 281
    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    .line 282
    sget-object v0, Lio/bidmachine/utils/BMError;->Internal:Lio/bidmachine/utils/BMError;

    return-object v0
.end method

.method private trackEvent(Lio/bidmachine/TrackEventType;Lio/bidmachine/utils/BMError;)V
    .locals 2

    .line 631
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->trackingObject:Lio/bidmachine/TrackingObject;

    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getType()Lio/bidmachine/AdsType;

    move-result-object v1

    invoke-static {v0, p1, v1, p2}, Lio/bidmachine/BidMachineEvents;->eventFinish(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;)V

    return-void
.end method


# virtual methods
.method public canShow()Z
    .locals 1

    .line 159
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/bidmachine/BidMachineAd;->isShownTracked:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->isAdRequestCanShowAd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract createAdObject(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdRequest;Lio/bidmachine/NetworkAdapter;Lio/bidmachine/models/AdObjectParams;Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/models/AdObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "TAdRequestType;",
            "Lio/bidmachine/NetworkAdapter;",
            "Lio/bidmachine/models/AdObjectParams;",
            "Lio/bidmachine/AdProcessCallback;",
            ")TAdObjectType;"
        }
    .end annotation
.end method

.method public destroy()V
    .locals 1

    .line 143
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->processCallback:Lio/bidmachine/AdProcessCallback;

    invoke-interface {v0}, Lio/bidmachine/AdProcessCallback;->processDestroy()V

    .line 144
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->trackingObject:Lio/bidmachine/TrackingObject;

    invoke-static {v0}, Lio/bidmachine/BidMachineEvents;->clear(Lio/bidmachine/TrackingObject;)V

    return-void
.end method

.method public getAdRequest()Lio/bidmachine/AdRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAdRequestType;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    return-object v0
.end method

.method public getAuctionResult()Lio/bidmachine/models/AuctionResult;
    .locals 1

    .line 90
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/bidmachine/AdRequest;->getAuctionResult()Lio/bidmachine/models/AuctionResult;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 84
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected final getLoadedObject()Lio/bidmachine/models/AdObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAdObjectType;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->loadedObject:Lio/bidmachine/models/AdObject;

    return-object v0
.end method

.method protected final getType()Lio/bidmachine/AdsType;
    .locals 1

    .line 106
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->adsType:Lio/bidmachine/AdsType;

    return-object v0
.end method

.method isAdRequestCanShowAd()Z
    .locals 1

    .line 193
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/bidmachine/AdRequest;->isAdWasShown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDestroyed()Z
    .locals 2

    .line 164
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->currentState:Lio/bidmachine/BidMachineAd$a;

    sget-object v1, Lio/bidmachine/BidMachineAd$a;->Destroyed:Lio/bidmachine/BidMachineAd$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isExpired()Z
    .locals 2

    .line 169
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->currentState:Lio/bidmachine/BidMachineAd$a;

    sget-object v1, Lio/bidmachine/BidMachineAd$a;->Expired:Lio/bidmachine/BidMachineAd$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLoaded()Z
    .locals 2

    .line 154
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->loadedObject:Lio/bidmachine/models/AdObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->currentState:Lio/bidmachine/BidMachineAd$a;

    sget-object v1, Lio/bidmachine/BidMachineAd$a;->Success:Lio/bidmachine/BidMachineAd$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLoading()Z
    .locals 2

    .line 149
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->currentState:Lio/bidmachine/BidMachineAd$a;

    sget-object v1, Lio/bidmachine/BidMachineAd$a;->Requesting:Lio/bidmachine/BidMachineAd$a;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->currentState:Lio/bidmachine/BidMachineAd$a;

    sget-object v1, Lio/bidmachine/BidMachineAd$a;->Loading:Lio/bidmachine/BidMachineAd$a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public load(Lio/bidmachine/AdRequest;)Lio/bidmachine/IAd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;)TSelfType;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->processCallback:Lio/bidmachine/AdProcessCallback;

    const-string v1, "load requested"

    invoke-interface {v0, v1}, Lio/bidmachine/AdProcessCallback;->log(Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lio/bidmachine/d;->get()Lio/bidmachine/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/d;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    sget-object p1, Lio/bidmachine/utils/BMError;->NotInitialized:Lio/bidmachine/utils/BMError;

    invoke-direct {p0, p1}, Lio/bidmachine/BidMachineAd;->processRequestFail(Lio/bidmachine/utils/BMError;)V

    return-object p0

    .line 126
    :cond_0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->currentState:Lio/bidmachine/BidMachineAd$a;

    sget-object v1, Lio/bidmachine/BidMachineAd$a;->Idle:Lio/bidmachine/BidMachineAd$a;

    if-eq v0, v1, :cond_1

    .line 127
    iget-object p1, p0, Lio/bidmachine/BidMachineAd;->processCallback:Lio/bidmachine/AdProcessCallback;

    const-string v0, "request process abort because it\'s already processing"

    invoke-interface {p1, v0}, Lio/bidmachine/AdProcessCallback;->log(Ljava/lang/String;)V

    return-object p0

    :cond_1
    if-nez p1, :cond_2

    const-string p1, "No Request"

    .line 131
    invoke-static {p1}, Lio/bidmachine/utils/BMError;->paramError(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/bidmachine/BidMachineAd;->processRequestFail(Lio/bidmachine/utils/BMError;)V

    return-object p0

    .line 134
    :cond_2
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    invoke-direct {p0, v0}, Lio/bidmachine/BidMachineAd;->detachRequest(Lio/bidmachine/AdRequest;)V

    .line 135
    iput-object p1, p0, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    .line 136
    invoke-direct {p0, p1}, Lio/bidmachine/BidMachineAd;->attachRequest(Lio/bidmachine/AdRequest;)V

    .line 137
    invoke-direct {p0, p1}, Lio/bidmachine/BidMachineAd;->processRequest(Lio/bidmachine/AdRequest;)V

    return-object p0
.end method

.method protected onDestroy()V
    .locals 0

    return-void
.end method

.method prepareShow()Z
    .locals 3

    .line 173
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->processCallback:Lio/bidmachine/AdProcessCallback;

    sget-object v2, Lio/bidmachine/utils/BMError;->Destroyed:Lio/bidmachine/utils/BMError;

    invoke-interface {v0, v2}, Lio/bidmachine/AdProcessCallback;->processShowFail(Lio/bidmachine/utils/BMError;)V

    return v1

    .line 176
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->processCallback:Lio/bidmachine/AdProcessCallback;

    sget-object v2, Lio/bidmachine/utils/BMError;->Expired:Lio/bidmachine/utils/BMError;

    invoke-interface {v0, v2}, Lio/bidmachine/AdProcessCallback;->processShowFail(Lio/bidmachine/utils/BMError;)V

    return v1

    .line 179
    :cond_1
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->loadedObject:Lio/bidmachine/models/AdObject;

    if-nez v0, :cond_2

    goto :goto_0

    .line 182
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->isAdRequestCanShowAd()Z

    move-result v0

    if-nez v0, :cond_3

    .line 183
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->processCallback:Lio/bidmachine/AdProcessCallback;

    sget-object v2, Lio/bidmachine/utils/BMError;->RequestAlreadyShown:Lio/bidmachine/utils/BMError;

    invoke-interface {v0, v2}, Lio/bidmachine/AdProcessCallback;->processShowFail(Lio/bidmachine/utils/BMError;)V

    return v1

    .line 185
    :cond_3
    iget-boolean v0, p0, Lio/bidmachine/BidMachineAd;->isShownTracked:Z

    if-eqz v0, :cond_4

    .line 186
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->processCallback:Lio/bidmachine/AdProcessCallback;

    sget-object v2, Lio/bidmachine/utils/BMError;->AlreadyShown:Lio/bidmachine/utils/BMError;

    invoke-interface {v0, v2}, Lio/bidmachine/AdProcessCallback;->processShowFail(Lio/bidmachine/utils/BMError;)V

    return v1

    :cond_4
    const/4 v0, 0x1

    return v0

    .line 180
    :cond_5
    :goto_0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->processCallback:Lio/bidmachine/AdProcessCallback;

    sget-object v2, Lio/bidmachine/utils/BMError;->NotLoaded:Lio/bidmachine/utils/BMError;

    invoke-interface {v0, v2}, Lio/bidmachine/AdProcessCallback;->processShowFail(Lio/bidmachine/utils/BMError;)V

    return v1
.end method

.method public setListener(Lio/bidmachine/AdListener;)Lio/bidmachine/IAd;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAd",
            "ListenerType;",
            ")TSelfType;"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lio/bidmachine/BidMachineAd;->listener:Lio/bidmachine/AdListener;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->toStringShort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/BidMachineAd;->currentState:Lio/bidmachine/BidMachineAd$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", auctionResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getAuctionResult()Lio/bidmachine/models/AuctionResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toStringShort()Ljava/lang/String;
    .locals 2

    .line 647
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->cachedClassTag:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 648
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/BidMachineAd;->cachedClassTag:Ljava/lang/String;

    .line 651
    :cond_0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->cachedClassTag:Ljava/lang/String;

    return-object v0
.end method
