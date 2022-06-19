.class public Lnet/pubnative/lite/sdk/utils/AdTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/utils/AdTracker$Type;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdTracker"


# instance fields
.field private final mApiClient:Lnet/pubnative/lite/sdk/api/PNApiClient;

.field private mClickTracked:Z

.field private final mClickUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/models/AdData;",
            ">;"
        }
    .end annotation
.end field

.field private mImpressionTracked:Z

.field private final mImpressionUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/models/AdData;",
            ">;"
        }
    .end annotation
.end field

.field private mTrackJSListener:Lnet/pubnative/lite/sdk/api/PNApiClient$TrackJSListener;

.field private mTrackUrlListener:Lnet/pubnative/lite/sdk/api/PNApiClient$TrackUrlListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/models/AdData;",
            ">;",
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/models/AdData;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getApiClient()Lnet/pubnative/lite/sdk/api/PNApiClient;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lnet/pubnative/lite/sdk/utils/AdTracker;-><init>(Lnet/pubnative/lite/sdk/api/PNApiClient;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Lnet/pubnative/lite/sdk/api/PNApiClient;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/pubnative/lite/sdk/api/PNApiClient;",
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/models/AdData;",
            ">;",
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/models/AdData;",
            ">;)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lnet/pubnative/lite/sdk/utils/AdTracker;->mApiClient:Lnet/pubnative/lite/sdk/api/PNApiClient;

    .line 74
    iput-object p2, p0, Lnet/pubnative/lite/sdk/utils/AdTracker;->mImpressionUrls:Ljava/util/List;

    .line 75
    iput-object p3, p0, Lnet/pubnative/lite/sdk/utils/AdTracker;->mClickUrls:Ljava/util/List;

    .line 77
    new-instance p1, Lnet/pubnative/lite/sdk/utils/AdTracker$1;

    invoke-direct {p1, p0}, Lnet/pubnative/lite/sdk/utils/AdTracker$1;-><init>(Lnet/pubnative/lite/sdk/utils/AdTracker;)V

    iput-object p1, p0, Lnet/pubnative/lite/sdk/utils/AdTracker;->mTrackUrlListener:Lnet/pubnative/lite/sdk/api/PNApiClient$TrackUrlListener;

    .line 89
    new-instance p1, Lnet/pubnative/lite/sdk/utils/AdTracker$2;

    invoke-direct {p1, p0}, Lnet/pubnative/lite/sdk/utils/AdTracker$2;-><init>(Lnet/pubnative/lite/sdk/utils/AdTracker;)V

    iput-object p1, p0, Lnet/pubnative/lite/sdk/utils/AdTracker;->mTrackJSListener:Lnet/pubnative/lite/sdk/api/PNApiClient$TrackJSListener;

    return-void
.end method

.method private trackUrls(Ljava/util/List;Lnet/pubnative/lite/sdk/utils/AdTracker$Type;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/models/AdData;",
            ">;",
            "Lnet/pubnative/lite/sdk/utils/AdTracker$Type;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 126
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/lite/sdk/models/AdData;

    .line 127
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/models/AdData;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "Tracking "

    if-nez v1, :cond_1

    .line 128
    sget-object v1, Lnet/pubnative/lite/sdk/utils/AdTracker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/utils/AdTracker$Type;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/models/AdData;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lnet/pubnative/lite/sdk/utils/AdTracker;->mApiClient:Lnet/pubnative/lite/sdk/api/PNApiClient;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/models/AdData;->getURL()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/pubnative/lite/sdk/utils/AdTracker;->mTrackUrlListener:Lnet/pubnative/lite/sdk/api/PNApiClient$TrackUrlListener;

    invoke-virtual {v1, v3, v4}, Lnet/pubnative/lite/sdk/api/PNApiClient;->trackUrl(Ljava/lang/String;Lnet/pubnative/lite/sdk/api/PNApiClient$TrackUrlListener;)V

    .line 132
    :cond_1
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/models/AdData;->getJS()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    sget-object v1, Lnet/pubnative/lite/sdk/utils/AdTracker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/utils/AdTracker$Type;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " js: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/models/AdData;->getJS()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lnet/pubnative/lite/sdk/utils/AdTracker;->mApiClient:Lnet/pubnative/lite/sdk/api/PNApiClient;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/models/AdData;->getJS()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lnet/pubnative/lite/sdk/utils/AdTracker;->mTrackJSListener:Lnet/pubnative/lite/sdk/api/PNApiClient$TrackJSListener;

    invoke-virtual {v1, v0, v2}, Lnet/pubnative/lite/sdk/api/PNApiClient;->trackJS(Ljava/lang/String;Lnet/pubnative/lite/sdk/api/PNApiClient$TrackJSListener;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public setTrackUrlListener(Lnet/pubnative/lite/sdk/api/PNApiClient$TrackUrlListener;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lnet/pubnative/lite/sdk/utils/AdTracker;->mTrackUrlListener:Lnet/pubnative/lite/sdk/api/PNApiClient$TrackUrlListener;

    return-void
.end method

.method public trackClick()V
    .locals 2

    .line 116
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/utils/AdTracker;->mClickTracked:Z

    if-eqz v0, :cond_0

    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/utils/AdTracker;->mClickUrls:Ljava/util/List;

    sget-object v1, Lnet/pubnative/lite/sdk/utils/AdTracker$Type;->CLICK:Lnet/pubnative/lite/sdk/utils/AdTracker$Type;

    invoke-direct {p0, v0, v1}, Lnet/pubnative/lite/sdk/utils/AdTracker;->trackUrls(Ljava/util/List;Lnet/pubnative/lite/sdk/utils/AdTracker$Type;)V

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/utils/AdTracker;->mClickTracked:Z

    return-void
.end method

.method public trackImpression()V
    .locals 2

    .line 107
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/utils/AdTracker;->mImpressionTracked:Z

    if-eqz v0, :cond_0

    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/utils/AdTracker;->mImpressionUrls:Ljava/util/List;

    sget-object v1, Lnet/pubnative/lite/sdk/utils/AdTracker$Type;->IMPRESSION:Lnet/pubnative/lite/sdk/utils/AdTracker$Type;

    invoke-direct {p0, v0, v1}, Lnet/pubnative/lite/sdk/utils/AdTracker;->trackUrls(Ljava/util/List;Lnet/pubnative/lite/sdk/utils/AdTracker$Type;)V

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/utils/AdTracker;->mImpressionTracked:Z

    return-void
.end method
