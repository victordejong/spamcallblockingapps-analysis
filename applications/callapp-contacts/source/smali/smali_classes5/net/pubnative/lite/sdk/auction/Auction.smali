.class public Lnet/pubnative/lite/sdk/auction/Auction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;,
        Lnet/pubnative/lite/sdk/auction/Auction$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Auction"


# instance fields
.field private mAdFormat:Ljava/lang/String;

.field private mAdResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/models/Ad;",
            ">;"
        }
    .end annotation
.end field

.field private mAdSize:Lnet/pubnative/lite/sdk/models/AdSize;

.field private final mAdSourceListener:Lnet/pubnative/lite/sdk/auction/AdSource$Listener;

.field private mAuctionAdSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/auction/AdSource;",
            ">;"
        }
    .end annotation
.end field

.field private mAuctionState:Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;

.field private final mContext:Landroid/content/Context;

.field private mFillList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lnet/pubnative/lite/sdk/auction/Auction$Listener;

.field private mMissingResponses:I

.field private mNoFillList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mReportingController:Lnet/pubnative/lite/sdk/analytics/ReportingController;

.field private final mTimer:Landroid/os/CountDownTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;JLnet/pubnative/lite/sdk/analytics/ReportingController;Lnet/pubnative/lite/sdk/auction/Auction$Listener;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/auction/AdSource;",
            ">;J",
            "Lnet/pubnative/lite/sdk/analytics/ReportingController;",
            "Lnet/pubnative/lite/sdk/auction/Auction$Listener;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lnet/pubnative/lite/sdk/auction/Auction$2;

    invoke-direct {v0, p0}, Lnet/pubnative/lite/sdk/auction/Auction$2;-><init>(Lnet/pubnative/lite/sdk/auction/Auction;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mAdSourceListener:Lnet/pubnative/lite/sdk/auction/AdSource$Listener;

    .line 50
    iput-object p1, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mContext:Landroid/content/Context;

    .line 51
    iput-object p5, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mReportingController:Lnet/pubnative/lite/sdk/analytics/ReportingController;

    .line 52
    iput-object p6, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mListener:Lnet/pubnative/lite/sdk/auction/Auction$Listener;

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p5

    invoke-direct {p1, p5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mAuctionAdSources:Ljava/util/List;

    .line 54
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 55
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mAdResponses:Ljava/util/List;

    .line 56
    iput-object p7, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mAdFormat:Ljava/lang/String;

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mFillList:Ljava/util/List;

    .line 58
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mNoFillList:Ljava/util/List;

    .line 60
    new-instance p1, Lnet/pubnative/lite/sdk/auction/Auction$1;

    move-object v0, p1

    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lnet/pubnative/lite/sdk/auction/Auction$1;-><init>(Lnet/pubnative/lite/sdk/auction/Auction;JJ)V

    iput-object p1, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mTimer:Landroid/os/CountDownTimer;

    .line 74
    sget-object p1, Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;->READY:Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;

    iput-object p1, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mAuctionState:Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;

    return-void
.end method

.method static synthetic access$000(Lnet/pubnative/lite/sdk/auction/Auction;)Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;
    .locals 0

    .line 23
    iget-object p0, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mAuctionState:Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;

    return-object p0
.end method

.method static synthetic access$100(Lnet/pubnative/lite/sdk/auction/Auction;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/auction/Auction;->processResults()V

    return-void
.end method

.method static synthetic access$200(Lnet/pubnative/lite/sdk/auction/Auction;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mAdResponses:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lnet/pubnative/lite/sdk/auction/Auction;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mFillList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lnet/pubnative/lite/sdk/auction/Auction;)I
    .locals 0

    .line 23
    iget p0, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mMissingResponses:I

    return p0
.end method

.method static synthetic access$410(Lnet/pubnative/lite/sdk/auction/Auction;)I
    .locals 2

    .line 23
    iget v0, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mMissingResponses:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mMissingResponses:I

    return v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lnet/pubnative/lite/sdk/auction/Auction;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lnet/pubnative/lite/sdk/auction/Auction;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mNoFillList:Ljava/util/List;

    return-object p0
.end method

.method private getTimestampString()Ljava/lang/String;
    .locals 2

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 203
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private processResults()V
    .locals 3

    .line 123
    sget-object v0, Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;->PROCESSING_RESULTS:Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;

    iput-object v0, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mAuctionState:Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;

    .line 125
    iget-object v0, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mAdResponses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    new-instance v0, Ljava/util/PriorityQueue;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mAdResponses:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Collection;)V

    .line 127
    iget-object v1, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mListener:Lnet/pubnative/lite/sdk/auction/Auction$Listener;

    if-eqz v1, :cond_0

    .line 128
    sget-object v1, Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;->DONE:Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;

    iput-object v1, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mAuctionState:Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;

    .line 129
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/pubnative/lite/sdk/models/Ad;

    invoke-direct {p0, v1}, Lnet/pubnative/lite/sdk/auction/Auction;->reportAuctionFinished(Lnet/pubnative/lite/sdk/models/Ad;)V

    .line 130
    iget-object v1, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mListener:Lnet/pubnative/lite/sdk/auction/Auction$Listener;

    invoke-interface {v1, v0}, Lnet/pubnative/lite/sdk/auction/Auction$Listener;->onAuctionSuccess(Ljava/util/PriorityQueue;)V

    :cond_0
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mListener:Lnet/pubnative/lite/sdk/auction/Auction$Listener;

    if-eqz v0, :cond_2

    .line 134
    sget-object v0, Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;->DONE:Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;

    iput-object v0, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mAuctionState:Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;

    .line 135
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/auction/Auction;->reportAuctionFinished()V

    .line 136
    iget-object v0, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mListener:Lnet/pubnative/lite/sdk/auction/Auction$Listener;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "The auction concluded without any winning bid."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lnet/pubnative/lite/sdk/auction/Auction$Listener;->onAuctionFailure(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private reportAuctionFinished()V
    .locals 1

    const/4 v0, 0x0

    .line 166
    invoke-direct {p0, v0}, Lnet/pubnative/lite/sdk/auction/Auction;->reportAuctionFinished(Lnet/pubnative/lite/sdk/models/Ad;)V

    return-void
.end method

.method private reportAuctionFinished(Lnet/pubnative/lite/sdk/models/Ad;)V
    .locals 3

    .line 170
    new-instance v0, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;-><init>()V

    .line 171
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/auction/Auction;->getTimestampString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setTimestamp(Ljava/lang/String;)V

    const-string v1, "event_type"

    const-string v2, "auction_finished"

    .line 172
    invoke-virtual {v0, v1, v2}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setCustomString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mAdFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setAdFormat(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mAdSize:Lnet/pubnative/lite/sdk/models/AdSize;

    if-eqz v1, :cond_0

    .line 175
    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/models/AdSize;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setAdSize(Ljava/lang/String;)V

    .line 177
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mFillList:Ljava/util/List;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v2, "fill"

    invoke-virtual {v0, v2, v1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setCustomJSONArray(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 178
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mNoFillList:Ljava/util/List;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v2, "no_fill"

    invoke-virtual {v0, v2, v1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setCustomJSONArray(Ljava/lang/String;Lorg/json/JSONArray;)V

    if-eqz p1, :cond_1

    .line 180
    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/models/Ad;->getAdSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 181
    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/models/Ad;->getAdSourceName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "winner"

    invoke-virtual {v0, v1, p1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setCustomString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_1
    iget-object p1, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mReportingController:Lnet/pubnative/lite/sdk/analytics/ReportingController;

    if-eqz p1, :cond_2

    .line 185
    invoke-virtual {p1, v0}, Lnet/pubnative/lite/sdk/analytics/ReportingController;->reportEvent(Lnet/pubnative/lite/sdk/analytics/ReportingEvent;)V

    :cond_2
    return-void
.end method

.method private reportAuctionStart()V
    .locals 7

    .line 142
    new-instance v0, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;-><init>()V

    .line 143
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/auction/Auction;->getTimestampString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setTimestamp(Ljava/lang/String;)V

    const-string v1, "event_type"

    const-string v2, "auction_start"

    .line 144
    invoke-virtual {v0, v1, v2}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setCustomString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mAdFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setAdFormat(Ljava/lang/String;)V

    .line 147
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 148
    iget-object v2, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mAuctionAdSources:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/pubnative/lite/sdk/auction/AdSource;

    .line 149
    invoke-interface {v3}, Lnet/pubnative/lite/sdk/auction/AdSource;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lnet/pubnative/lite/sdk/auction/AdSource;->getECPM()D

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 150
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->getAdSize()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 151
    invoke-interface {v3}, Lnet/pubnative/lite/sdk/auction/AdSource;->getAdSize()Lnet/pubnative/lite/sdk/models/AdSize;

    move-result-object v3

    iput-object v3, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mAdSize:Lnet/pubnative/lite/sdk/models/AdSize;

    .line 152
    invoke-virtual {v3}, Lnet/pubnative/lite/sdk/models/AdSize;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setAdSize(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "participants"

    .line 155
    invoke-virtual {v0, v2, v1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setCustomJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 157
    sget-object v2, Lnet/pubnative/lite/sdk/auction/Auction;->TAG:Ljava/lang/String;

    const-string v3, "Error adding participants to auction report: "

    invoke-static {v2, v3, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    :goto_1
    iget-object v1, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mReportingController:Lnet/pubnative/lite/sdk/analytics/ReportingController;

    if-eqz v1, :cond_2

    .line 161
    invoke-virtual {v1, v0}, Lnet/pubnative/lite/sdk/analytics/ReportingController;->reportEvent(Lnet/pubnative/lite/sdk/analytics/ReportingEvent;)V

    :cond_2
    return-void
.end method

.method private requestFromAdSources()V
    .locals 3

    .line 89
    iget-object v0, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mAuctionAdSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/pubnative/lite/sdk/auction/AdSource;

    .line 90
    iget-object v2, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mAdSourceListener:Lnet/pubnative/lite/sdk/auction/AdSource$Listener;

    invoke-interface {v1, v2}, Lnet/pubnative/lite/sdk/auction/AdSource;->fetchAd(Lnet/pubnative/lite/sdk/auction/AdSource$Listener;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public reportAuctionNextItem(Lnet/pubnative/lite/sdk/models/Ad;)V
    .locals 3

    .line 190
    new-instance v0, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;-><init>()V

    .line 191
    iget-object v1, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mAdFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setAdFormat(Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mAdSize:Lnet/pubnative/lite/sdk/models/AdSize;

    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/models/AdSize;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setAdSize(Ljava/lang/String;)V

    .line 195
    :cond_0
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/auction/Auction;->getTimestampString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setTimestamp(Ljava/lang/String;)V

    const-string v1, "event_type"

    const-string v2, "auction_next_item"

    .line 196
    invoke-virtual {v0, v1, v2}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setCustomString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/models/Ad;->getAdSourceName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "next_ad_source"

    .line 198
    invoke-virtual {v0, v1, p1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setCustomString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public runAuction()V
    .locals 1

    .line 78
    iget-object v0, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mAuctionAdSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mMissingResponses:I

    .line 79
    iget-object v0, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mAdResponses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 80
    iget-object v0, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mFillList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 81
    iget-object v0, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mNoFillList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 82
    sget-object v0, Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;->AWAITING_RESPONSES:Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;

    iput-object v0, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mAuctionState:Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;

    .line 83
    iget-object v0, p0, Lnet/pubnative/lite/sdk/auction/Auction;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 84
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/auction/Auction;->reportAuctionStart()V

    .line 85
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/auction/Auction;->requestFromAdSources()V

    return-void
.end method
