.class Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/vpaid/VideoAdController;


# static fields
.field private static final DELAY_UNTIL_EXECUTE:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String; = "VideoAdControllerVast"


# instance fields
.field private finishedPlaying:Z

.field private final mAdParams:Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

.field private mAdView:Landroid/view/View;

.field private final mBaseAdInternal:Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;

.field private mImageUri:Ljava/lang/String;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mSkipTimeMillis:I

.field private mTimerWithPause:Lnet/pubnative/lite/sdk/vpaid/helpers/TimerWithPause;

.field private mTrackingEventsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/vpaid/models/vpaid/TrackingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoUri:Ljava/lang/String;

.field private final mViewControllerVast:Lnet/pubnative/lite/sdk/vpaid/vast/ViewControllerVast;

.field private mViewabilityAdSession:Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;

.field private mViewabilityFriendlyObstructions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityFriendlyObstruction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;Lnet/pubnative/lite/sdk/vpaid/response/AdParams;Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mTrackingEventsList:Ljava/util/List;

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mSkipTimeMillis:I

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->finishedPlaying:Z

    .line 126
    new-instance v0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast$3;

    invoke-direct {v0, p0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast$3;-><init>(Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 134
    new-instance v0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast$4;

    invoke-direct {v0, p0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast$4;-><init>(Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 279
    new-instance v0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast$6;

    invoke-direct {v0, p0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast$6;-><init>(Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 53
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mBaseAdInternal:Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;

    .line 54
    iput-object p2, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mAdParams:Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

    .line 55
    iput-object p3, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mViewabilityAdSession:Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mViewabilityFriendlyObstructions:Ljava/util/List;

    .line 57
    new-instance p1, Lnet/pubnative/lite/sdk/vpaid/vast/ViewControllerVast;

    invoke-direct {p1, p0}, Lnet/pubnative/lite/sdk/vpaid/vast/ViewControllerVast;-><init>(Lnet/pubnative/lite/sdk/vpaid/VideoAdController;)V

    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mViewControllerVast:Lnet/pubnative/lite/sdk/vpaid/vast/ViewControllerVast;

    return-void
.end method

.method static synthetic access$000(Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->startMediaPlayer()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;)Ljava/util/List;
    .locals 0

    .line 30
    iget-object p0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mTrackingEventsList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1100(Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->fireViewabilityTrackingEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;Z)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->skipVideo(Z)V

    return-void
.end method

.method static synthetic access$1300(Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;)Lnet/pubnative/lite/sdk/vpaid/response/AdParams;
    .locals 0

    .line 30
    iget-object p0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mAdParams:Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

    return-object p0
.end method

.method static synthetic access$200(Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->tryReInitMediaPlayer()V

    return-void
.end method

.method static synthetic access$300(Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;)Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;
    .locals 0

    .line 30
    iget-object p0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mBaseAdInternal:Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;

    return-object p0
.end method

.method static synthetic access$400(Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;)Lnet/pubnative/lite/sdk/vpaid/vast/ViewControllerVast;
    .locals 0

    .line 30
    iget-object p0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mViewControllerVast:Lnet/pubnative/lite/sdk/vpaid/vast/ViewControllerVast;

    return-object p0
.end method

.method static synthetic access$500(Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;)Landroid/media/MediaPlayer;
    .locals 0

    .line 30
    iget-object p0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$600(Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;)Lnet/pubnative/lite/sdk/vpaid/helpers/TimerWithPause;
    .locals 0

    .line 30
    iget-object p0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mTimerWithPause:Lnet/pubnative/lite/sdk/vpaid/helpers/TimerWithPause;

    return-object p0
.end method

.method static synthetic access$700(Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->createTimer(I)V

    return-void
.end method

.method static synthetic access$800(Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;ZZ)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->muteVideo(ZZ)V

    return-void
.end method

.method static synthetic access$900(Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;)I
    .locals 0

    .line 30
    iget p0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mSkipTimeMillis:I

    return p0
.end method

.method static synthetic access$902(Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;I)I
    .locals 0

    .line 30
    iput p1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mSkipTimeMillis:I

    return p1
.end method

.method private createProgressPoints(I)V
    .locals 6

    .line 231
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mTrackingEventsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 232
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mAdParams:Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->getImpressions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 233
    iget-object v2, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mTrackingEventsList:Ljava/util/List;

    new-instance v3, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/TrackingEvent;

    invoke-direct {v3, v1}, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/TrackingEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 236
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mAdParams:Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->getEvents()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 237
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mAdParams:Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->getEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/pubnative/lite/sdk/vpaid/models/vast/Tracking;

    .line 238
    new-instance v2, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/TrackingEvent;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Tracking;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/TrackingEvent;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Tracking;->getEvent()Ljava/lang/String;

    move-result-object v3

    const-string v4, "creativeView"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 240
    iput v5, v2, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/TrackingEvent;->timeMillis:I

    .line 241
    iput-object v4, v2, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/TrackingEvent;->name:Ljava/lang/String;

    .line 242
    iget-object v3, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mTrackingEventsList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_2
    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Tracking;->getEvent()Ljava/lang/String;

    move-result-object v3

    const-string v4, "start"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 245
    iput v5, v2, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/TrackingEvent;->timeMillis:I

    .line 246
    iput-object v4, v2, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/TrackingEvent;->name:Ljava/lang/String;

    .line 247
    iget-object v3, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mTrackingEventsList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_3
    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Tracking;->getEvent()Ljava/lang/String;

    move-result-object v3

    const-string v4, "firstQuartile"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 250
    div-int/lit8 v3, p1, 0x4

    iput v3, v2, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/TrackingEvent;->timeMillis:I

    .line 251
    iput-object v4, v2, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/TrackingEvent;->name:Ljava/lang/String;

    .line 252
    iget-object v3, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mTrackingEventsList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_4
    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Tracking;->getEvent()Ljava/lang/String;

    move-result-object v3

    const-string v4, "midpoint"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 255
    div-int/lit8 v3, p1, 0x2

    iput v3, v2, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/TrackingEvent;->timeMillis:I

    .line 256
    iput-object v4, v2, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/TrackingEvent;->name:Ljava/lang/String;

    .line 257
    iget-object v3, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mTrackingEventsList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_5
    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Tracking;->getEvent()Ljava/lang/String;

    move-result-object v3

    const-string v4, "thirdQuartile"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    mul-int/lit8 v3, p1, 0x3

    .line 260
    div-int/lit8 v3, v3, 0x4

    iput v3, v2, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/TrackingEvent;->timeMillis:I

    .line 261
    iput-object v4, v2, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/TrackingEvent;->name:Ljava/lang/String;

    .line 262
    iget-object v3, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mTrackingEventsList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_6
    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Tracking;->getEvent()Ljava/lang/String;

    move-result-object v3

    const-string v4, "progress"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 265
    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Tracking;->getOffset()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 268
    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Tracking;->getOffset()Ljava/lang/String;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 269
    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Tracking;->getOffset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/pubnative/lite/sdk/vpaid/utils/Utils;->parsePercent(Ljava/lang/String;)I

    move-result v1

    mul-int v1, v1, p1

    div-int/lit8 v1, v1, 0x64

    iput v1, v2, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/TrackingEvent;->timeMillis:I

    goto :goto_2

    .line 271
    :cond_7
    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Tracking;->getOffset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/pubnative/lite/sdk/vpaid/utils/Utils;->parseDuration(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, v2, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/TrackingEvent;->timeMillis:I

    .line 273
    :goto_2
    iget-object v1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mTrackingEventsList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_8
    return-void
.end method

.method private createTimer(I)V
    .locals 9

    .line 152
    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->initSkipTime(I)V

    .line 153
    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->createProgressPoints(I)V

    .line 154
    new-instance v8, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast$5;

    int-to-long v2, p1

    const-wide/16 v4, 0xa

    const/4 v6, 0x1

    move-object v0, v8

    move-object v1, p0

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast$5;-><init>(Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;JJZI)V

    .line 182
    invoke-virtual {v8}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast$5;->create()Lnet/pubnative/lite/sdk/vpaid/helpers/TimerWithPause;

    move-result-object p1

    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mTimerWithPause:Lnet/pubnative/lite/sdk/vpaid/helpers/TimerWithPause;

    return-void
.end method

.method private fireViewabilityTrackingEvent(Ljava/lang/String;)V
    .locals 3

    .line 186
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 187
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "firstQuartile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "start"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "thirdQuartile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "midpoint"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 192
    :pswitch_0
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->getViewabilityAdSession()Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;

    move-result-object p1

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->fireFirstQuartile()V

    return-void

    .line 189
    :pswitch_1
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->getViewabilityAdSession()Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;

    move-result-object p1

    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->getAdParams()Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

    move-result-object v0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->getDuration()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v2}, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->fireStart(FZ)V

    return-void

    .line 198
    :pswitch_2
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->getViewabilityAdSession()Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;

    move-result-object p1

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->fireThirdQuartile()V

    goto :goto_1

    .line 195
    :pswitch_3
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->getViewabilityAdSession()Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;

    move-result-object p1

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->fireMidpoint()V

    :cond_4
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x61aea3b8 -> :sswitch_3
        -0x4fbdabf6 -> :sswitch_2
        0x68ac462 -> :sswitch_1
        0x21644853 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initSkipTime(I)V
    .locals 2

    .line 206
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mAdParams:Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->getPublisherSkipSeconds()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    if-lez v0, :cond_0

    .line 208
    iput v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mSkipTimeMillis:I

    .line 211
    :cond_0
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getInterstitialSkipOffset()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    if-lez v0, :cond_1

    .line 213
    iget v1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mSkipTimeMillis:I

    if-gtz v1, :cond_1

    .line 214
    iput v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mSkipTimeMillis:I

    .line 217
    :cond_1
    iget v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mSkipTimeMillis:I

    if-gtz v0, :cond_4

    .line 218
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mAdParams:Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->getSkipTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, -0x1

    .line 219
    iput p1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mSkipTimeMillis:I

    return-void

    .line 221
    :cond_2
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mAdParams:Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->getSkipTime()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 222
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mAdParams:Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->getSkipTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/pubnative/lite/sdk/vpaid/utils/Utils;->parsePercent(Ljava/lang/String;)I

    move-result v0

    mul-int p1, p1, v0

    div-int/lit8 p1, p1, 0x64

    iput p1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mSkipTimeMillis:I

    return-void

    .line 224
    :cond_3
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mAdParams:Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->getSkipTime()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/pubnative/lite/sdk/vpaid/utils/Utils;->parseDuration(Ljava/lang/String;)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mSkipTimeMillis:I

    :cond_4
    return-void
.end method

.method private muteVideo(ZZ)V
    .locals 1

    .line 336
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    .line 339
    :cond_0
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->getViewabilityAdSession()Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->fireVolumeChange(Z)V

    if-eqz p1, :cond_1

    .line 341
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    if-eqz p2, :cond_2

    .line 343
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mBaseAdInternal:Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mAdParams:Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->getEvents()Ljava/util/List;

    move-result-object p2

    const-string v0, "mute"

    invoke-static {p1, p2, v0}, Lnet/pubnative/lite/sdk/vpaid/helpers/EventTracker;->postEventByType(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    return-void

    .line 346
    :cond_1
    invoke-static {}, Lnet/pubnative/lite/sdk/vpaid/utils/Utils;->getSystemVolume()F

    move-result p1

    .line 347
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    if-eqz p2, :cond_2

    .line 349
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mBaseAdInternal:Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mAdParams:Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->getEvents()Ljava/util/List;

    move-result-object p2

    const-string v0, "unmute"

    invoke-static {p1, p2, v0}, Lnet/pubnative/lite/sdk/vpaid/helpers/EventTracker;->postEventByType(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private postDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    .line 289
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mViewControllerVast:Lnet/pubnative/lite/sdk/vpaid/vast/ViewControllerVast;

    invoke-virtual {v0, p1, p2, p3}, Lnet/pubnative/lite/sdk/vpaid/vast/ViewControllerVast;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private skipVideo(Z)V
    .locals 2

    const/4 v0, 0x1

    .line 298
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->finishedPlaying:Z

    if-eqz p1, :cond_0

    .line 301
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->getViewabilityAdSession()Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;

    move-result-object v0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->fireSkipped()V

    goto :goto_0

    .line 303
    :cond_0
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->getViewabilityAdSession()Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;

    move-result-object v0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->fireComplete()V

    .line 306
    :goto_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 309
    :cond_1
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mTimerWithPause:Lnet/pubnative/lite/sdk/vpaid/helpers/TimerWithPause;

    if-eqz v0, :cond_2

    .line 310
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/helpers/TimerWithPause;->pause()V

    const/4 v0, 0x0

    .line 311
    iput-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mTimerWithPause:Lnet/pubnative/lite/sdk/vpaid/helpers/TimerWithPause;

    .line 313
    :cond_2
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mImageUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_4

    .line 315
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->closeSelf()V

    goto :goto_1

    .line 318
    :cond_3
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mViewControllerVast:Lnet/pubnative/lite/sdk/vpaid/vast/ViewControllerVast;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mImageUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/vpaid/vast/ViewControllerVast;->showEndCard(Ljava/lang/String;)V

    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    .line 321
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mBaseAdInternal:Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mAdParams:Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->getEvents()Ljava/util/List;

    move-result-object v0

    const-string v1, "skip"

    invoke-static {p1, v0, v1}, Lnet/pubnative/lite/sdk/vpaid/helpers/EventTracker;->postEventByType(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private startMediaPlayer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 118
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 119
    iget-object v1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mVideoUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 121
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 122
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 123
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    return-void
.end method

.method private trackEndCardClicks()Ljava/lang/String;
    .locals 4

    .line 365
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mAdParams:Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->getEndCardRedirectUrl()Ljava/lang/String;

    move-result-object v0

    .line 367
    iget-object v1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mAdParams:Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->getEndCardClicks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 368
    iget-object v3, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mBaseAdInternal:Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;

    invoke-virtual {v3}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lnet/pubnative/lite/sdk/vpaid/helpers/EventTracker;->post(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private trackVideoClicks()Ljava/lang/String;
    .locals 4

    .line 355
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mAdParams:Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->getVideoRedirectUrl()Ljava/lang/String;

    move-result-object v0

    .line 357
    iget-object v1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mAdParams:Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->getVideoClicks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 358
    iget-object v3, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mBaseAdInternal:Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;

    invoke-virtual {v3}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lnet/pubnative/lite/sdk/vpaid/helpers/EventTracker;->post(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private tryReInitMediaPlayer()V
    .locals 3

    .line 101
    new-instance v0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast$2;

    invoke-direct {v0, p0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast$2;-><init>(Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;)V

    const-wide/16 v1, 0x64

    invoke-direct {p0, v0, v1, v2}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public adFinishedPlaying()Z
    .locals 1

    .line 442
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->finishedPlaying:Z

    return v0
.end method

.method public addViewabilityFriendlyObstruction(Landroid/view/View;Lcom/iab/omid/library/pubnativenet/adsession/f;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 461
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 462
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mViewabilityFriendlyObstructions:Ljava/util/List;

    new-instance v1, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityFriendlyObstruction;

    invoke-direct {v1, p1, p2, p3}, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityFriendlyObstruction;-><init>(Landroid/view/View;Lcom/iab/omid/library/pubnativenet/adsession/f;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public buildVideoAdView(Lnet/pubnative/lite/sdk/vpaid/VideoAdView;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mViewControllerVast:Lnet/pubnative/lite/sdk/vpaid/vast/ViewControllerVast;

    invoke-virtual {v0, p1}, Lnet/pubnative/lite/sdk/vpaid/vast/ViewControllerVast;->buildVideoAdView(Lnet/pubnative/lite/sdk/vpaid/VideoAdView;)V

    .line 78
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mAdView:Landroid/view/View;

    return-void
.end method

.method public closeSelf()V
    .locals 3

    .line 402
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mBaseAdInternal:Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mAdParams:Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->getEvents()Ljava/util/List;

    move-result-object v1

    const-string v2, "close"

    invoke-static {v0, v1, v2}, Lnet/pubnative/lite/sdk/vpaid/helpers/EventTracker;->postEventByType(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mBaseAdInternal:Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->dismiss()V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 413
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 416
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mViewControllerVast:Lnet/pubnative/lite/sdk/vpaid/vast/ViewControllerVast;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/vast/ViewControllerVast;->destroy()V

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 408
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mViewControllerVast:Lnet/pubnative/lite/sdk/vpaid/vast/ViewControllerVast;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/vast/ViewControllerVast;->dismiss()V

    return-void
.end method

.method public getAdParams()Lnet/pubnative/lite/sdk/vpaid/response/AdParams;
    .locals 1

    .line 452
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mAdParams:Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

    return-object v0
.end method

.method public getViewabilityAdSession()Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;
    .locals 1

    .line 456
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mViewabilityAdSession:Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;

    return-object v0
.end method

.method public getViewabilityFriendlyObstructions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityFriendlyObstruction;",
            ">;"
        }
    .end annotation

    .line 468
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mViewabilityFriendlyObstructions:Ljava/util/List;

    return-object v0
.end method

.method public isRewarded()Z
    .locals 1

    .line 447
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mBaseAdInternal:Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->isRewarded()Z

    move-result v0

    return v0
.end method

.method public openUrl(Ljava/lang/String;)V
    .locals 2

    .line 376
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 377
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->trackVideoClicks()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 379
    :cond_0
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->trackEndCardClicks()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 382
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->trackVideoClicks()Ljava/lang/String;

    move-result-object p1

    .line 386
    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 389
    :cond_2
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Handle external url"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-static {}, Lnet/pubnative/lite/sdk/vpaid/utils/Utils;->isOnline()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 391
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mBaseAdInternal:Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 392
    new-instance v1, Lnet/pubnative/lite/sdk/utils/UrlHandler;

    invoke-direct {v1, v0}, Lnet/pubnative/lite/sdk/utils/UrlHandler;-><init>(Landroid/content/Context;)V

    .line 393
    invoke-virtual {v1, p1}, Lnet/pubnative/lite/sdk/utils/UrlHandler;->handleUrl(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p1, "No internet connection"

    .line 395
    invoke-static {v0, p1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :goto_1
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mBaseAdInternal:Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->onAdClicked()V

    return-void
.end method

.method public pause()V
    .locals 3

    .line 421
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 423
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mTimerWithPause:Lnet/pubnative/lite/sdk/vpaid/helpers/TimerWithPause;

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/helpers/TimerWithPause;->pause()V

    .line 426
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mBaseAdInternal:Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mAdParams:Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->getEvents()Ljava/util/List;

    move-result-object v1

    const-string v2, "pause"

    invoke-static {v0, v1, v2}, Lnet/pubnative/lite/sdk/vpaid/helpers/EventTracker;->postEventByType(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->getViewabilityAdSession()Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;

    move-result-object v0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->firePause()V

    :cond_1
    return-void
.end method

.method public playAd()V
    .locals 3

    .line 83
    new-instance v0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast$1;

    invoke-direct {v0, p0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast$1;-><init>(Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;)V

    const-wide/16 v1, 0x64

    invoke-direct {p0, v0, v1, v2}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public prepare(Lnet/pubnative/lite/sdk/vpaid/VideoAdController$OnPreparedListener;)V
    .locals 0

    .line 62
    invoke-interface {p1}, Lnet/pubnative/lite/sdk/vpaid/VideoAdController$OnPreparedListener;->onPrepared()V

    return-void
.end method

.method public resume()V
    .locals 3

    .line 433
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mViewControllerVast:Lnet/pubnative/lite/sdk/vpaid/vast/ViewControllerVast;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/vast/ViewControllerVast;->isEndCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->playAd()V

    .line 435
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mBaseAdInternal:Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mAdParams:Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->getEvents()Ljava/util/List;

    move-result-object v1

    const-string v2, "resume"

    invoke-static {v0, v1, v2}, Lnet/pubnative/lite/sdk/vpaid/helpers/EventTracker;->postEventByType(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->getViewabilityAdSession()Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;

    move-result-object v0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->fireResume()V

    :cond_0
    return-void
.end method

.method public setEndCardFilePath(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mImageUri:Ljava/lang/String;

    return-void
.end method

.method public setVideoFilePath(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mVideoUri:Ljava/lang/String;

    return-void
.end method

.method public setVolume(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 332
    invoke-direct {p0, p1, v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->muteVideo(ZZ)V

    return-void
.end method

.method public skipVideo()V
    .locals 1

    const/4 v0, 0x1

    .line 294
    invoke-direct {p0, v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->skipVideo(Z)V

    return-void
.end method

.method public toggleMute()V
    .locals 1

    .line 327
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->mViewControllerVast:Lnet/pubnative/lite/sdk/vpaid/vast/ViewControllerVast;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/vast/ViewControllerVast;->muteVideo()V

    return-void
.end method
