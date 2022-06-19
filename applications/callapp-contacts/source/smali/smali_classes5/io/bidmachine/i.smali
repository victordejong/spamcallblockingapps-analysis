.class abstract Lio/bidmachine/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;Lio/bidmachine/TrackEventInfo;ILio/bidmachine/utils/BMError;)V
    .locals 0

    .line 18
    invoke-static {p0, p1, p2, p3}, Lio/bidmachine/i;->notifyTrackingError(Ljava/util/List;Lio/bidmachine/TrackEventInfo;ILio/bidmachine/utils/BMError;)V

    return-void
.end method

.method private static collectTrackingUrls(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/TrackingObject;",
            "Lio/bidmachine/TrackEventType;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    invoke-static {}, Lio/bidmachine/d;->get()Lio/bidmachine/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/d;->getTrackingUrls(Lio/bidmachine/TrackEventType;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 73
    :goto_0
    invoke-virtual {p0, p1}, Lio/bidmachine/TrackingObject;->getTrackingUrls(Lio/bidmachine/TrackEventType;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    if-nez v1, :cond_1

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    .line 78
    :cond_1
    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_1
    return-object v1
.end method

.method private static executeNotify(Ljava/lang/String;Lio/bidmachine/core/NetworkRequest$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/bidmachine/core/NetworkRequest$Callback<",
            "Ljava/lang/String;",
            "Lio/bidmachine/utils/BMError;",
            ">;)V"
        }
    .end annotation

    .line 187
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 188
    :cond_0
    new-instance v0, Lio/bidmachine/ApiRequest$Builder;

    invoke-direct {v0}, Lio/bidmachine/ApiRequest$Builder;-><init>()V

    .line 189
    invoke-virtual {v0, p0}, Lio/bidmachine/ApiRequest$Builder;->url(Ljava/lang/String;)Lio/bidmachine/ApiRequest$Builder;

    move-result-object p0

    sget-object v0, Lio/bidmachine/core/NetworkRequest$Method;->Get:Lio/bidmachine/core/NetworkRequest$Method;

    .line 190
    invoke-virtual {p0, v0}, Lio/bidmachine/ApiRequest$Builder;->setMethod(Lio/bidmachine/core/NetworkRequest$Method;)Lio/bidmachine/ApiRequest$Builder;

    move-result-object p0

    new-instance v0, Lio/bidmachine/i$3;

    invoke-direct {v0}, Lio/bidmachine/i$3;-><init>()V

    .line 191
    invoke-virtual {p0, v0}, Lio/bidmachine/ApiRequest$Builder;->setDataBinder(Lio/bidmachine/ApiRequest$ApiDataBinder;)Lio/bidmachine/ApiRequest$Builder;

    move-result-object p0

    .line 214
    invoke-virtual {p0, p1}, Lio/bidmachine/ApiRequest$Builder;->setCallback(Lio/bidmachine/core/NetworkRequest$Callback;)Lio/bidmachine/ApiRequest$Builder;

    move-result-object p0

    .line 215
    invoke-virtual {p0}, Lio/bidmachine/ApiRequest$Builder;->request()Lio/bidmachine/ApiRequest;

    return-void
.end method

.method private static notifyError(Ljava/util/List;Ljava/util/List;Lio/bidmachine/TrackEventInfo;ILio/bidmachine/utils/BMError;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/bidmachine/TrackEventInfo;",
            "I",
            "Lio/bidmachine/utils/BMError;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-virtual {p4}, Lio/bidmachine/utils/BMError;->getCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 121
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dispatching error event to server: ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lio/bidmachine/utils/BMError;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lio/bidmachine/utils/BMError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    .line 122
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    invoke-virtual {p4}, Lio/bidmachine/utils/BMError;->getCode()I

    move-result v1

    invoke-static {v0, p2, p3, v1}, Lio/bidmachine/i;->replaceMacros(Ljava/lang/String;Lio/bidmachine/TrackEventInfo;II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lio/bidmachine/i$2;

    invoke-direct {v1, p1, p2}, Lio/bidmachine/i$2;-><init>(Ljava/util/List;Lio/bidmachine/TrackEventInfo;)V

    invoke-static {v0, v1}, Lio/bidmachine/i;->executeNotify(Ljava/lang/String;Lio/bidmachine/core/NetworkRequest$Callback;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static notifyTrack(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/TrackEventInfo;Lio/bidmachine/utils/BMError;)V
    .locals 2

    if-eqz p3, :cond_0

    .line 44
    invoke-virtual {p3}, Lio/bidmachine/utils/BMError;->isTrackError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    sget-object v0, Lio/bidmachine/TrackEventType;->Error:Lio/bidmachine/TrackEventType;

    .line 46
    invoke-static {p0, v0}, Lio/bidmachine/i;->collectTrackingUrls(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lio/bidmachine/TrackEventType;->TrackingError:Lio/bidmachine/TrackEventType;

    .line 47
    invoke-static {p0, v1}, Lio/bidmachine/i;->collectTrackingUrls(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;)Ljava/util/List;

    move-result-object p0

    .line 49
    invoke-virtual {p1}, Lio/bidmachine/TrackEventType;->getOrtbActionValue()I

    move-result p1

    .line 45
    invoke-static {v0, p0, p2, p1, p3}, Lio/bidmachine/i;->notifyError(Ljava/util/List;Ljava/util/List;Lio/bidmachine/TrackEventInfo;ILio/bidmachine/utils/BMError;)V

    return-void

    .line 54
    :cond_0
    invoke-static {p0, p1}, Lio/bidmachine/i;->collectTrackingUrls(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;)Ljava/util/List;

    move-result-object p3

    sget-object v0, Lio/bidmachine/TrackEventType;->TrackingError:Lio/bidmachine/TrackEventType;

    .line 55
    invoke-static {p0, v0}, Lio/bidmachine/i;->collectTrackingUrls(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;)Ljava/util/List;

    move-result-object p0

    .line 53
    invoke-static {p3, p0, p2, p1}, Lio/bidmachine/i;->notifyTrack(Ljava/util/List;Ljava/util/List;Lio/bidmachine/TrackEventInfo;Lio/bidmachine/TrackEventType;)V

    :cond_1
    return-void
.end method

.method private static notifyTrack(Ljava/util/List;Ljava/util/List;Lio/bidmachine/TrackEventInfo;Lio/bidmachine/TrackEventType;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/bidmachine/TrackEventInfo;",
            "Lio/bidmachine/TrackEventType;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dispatching event to server: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    .line 92
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    invoke-virtual {p3}, Lio/bidmachine/TrackEventType;->getOrtbActionValue()I

    move-result v1

    const/4 v2, -0x1

    invoke-static {v0, p2, v1, v2}, Lio/bidmachine/i;->replaceMacros(Ljava/lang/String;Lio/bidmachine/TrackEventInfo;II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lio/bidmachine/i$1;

    invoke-direct {v1, p1, p2, p3}, Lio/bidmachine/i$1;-><init>(Ljava/util/List;Lio/bidmachine/TrackEventInfo;Lio/bidmachine/TrackEventType;)V

    invoke-static {v0, v1}, Lio/bidmachine/i;->executeNotify(Ljava/lang/String;Lio/bidmachine/core/NetworkRequest$Callback;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static notifyTrackingError(Ljava/util/List;Lio/bidmachine/TrackEventInfo;ILio/bidmachine/utils/BMError;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/bidmachine/TrackEventInfo;",
            "I",
            "Lio/bidmachine/utils/BMError;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 145
    :cond_0
    invoke-virtual {p3}, Lio/bidmachine/utils/BMError;->getCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 148
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dispatching tracking fail to server: ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lio/bidmachine/utils/BMError;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lio/bidmachine/utils/BMError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    .line 149
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 150
    invoke-virtual {p3}, Lio/bidmachine/utils/BMError;->getCode()I

    move-result v1

    invoke-static {v0, p1, p2, v1}, Lio/bidmachine/i;->replaceMacros(Ljava/lang/String;Lio/bidmachine/TrackEventInfo;II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/bidmachine/i;->executeNotify(Ljava/lang/String;Lio/bidmachine/core/NetworkRequest$Callback;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static replaceMacros(Ljava/lang/String;Lio/bidmachine/TrackEventInfo;II)Ljava/lang/String;
    .locals 2

    .line 160
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 163
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "BM_EVENT_CODE"

    invoke-static {p0, v1, v0}, Lio/bidmachine/i;->replaceMacros(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 164
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "BM_ACTION_CODE"

    invoke-static {p0, v0, p2}, Lio/bidmachine/i;->replaceMacros(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 165
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "BM_ERROR_REASON"

    invoke-static {p0, p3, p2}, Lio/bidmachine/i;->replaceMacros(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_1

    .line 167
    iget-wide p2, p1, Lio/bidmachine/TrackEventInfo;->startTimeMs:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "BM_ACTION_START"

    invoke-static {p0, p3, p2}, Lio/bidmachine/i;->replaceMacros(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 168
    iget-wide p2, p1, Lio/bidmachine/TrackEventInfo;->finishTimeMs:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "BM_ACTION_FINISH"

    invoke-static {p0, p3, p2}, Lio/bidmachine/i;->replaceMacros(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 169
    invoke-virtual {p1}, Lio/bidmachine/TrackEventInfo;->getEventParameters()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 171
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 172
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p3, p2}, Lio/bidmachine/i;->replaceMacros(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private static replaceMacros(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "${"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%24%7B"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%7D"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 182
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method abstract clearTrackers(Lio/bidmachine/TrackingObject;)V
.end method

.method abstract clearTrackingEvent(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;)V
.end method

.method abstract getEventCount(Lio/bidmachine/AdsType;Lio/bidmachine/TrackEventType;)I
.end method

.method abstract getTotalEventCount(Lio/bidmachine/TrackEventType;)I
.end method

.method abstract trackEventFinish(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;)V
.end method

.method abstract trackEventStart(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/TrackEventInfo;Lio/bidmachine/AdsType;)V
.end method
