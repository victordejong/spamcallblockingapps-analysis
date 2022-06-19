.class public Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor$Listener;
    }
.end annotation


# static fields
.field private static final EXTENSION_TYPE_AD_VERIFICATION:Ljava/lang/String; = "AdVerifications"

.field private static final LOG_TAG:Ljava/lang/String; = "VastProcessor"

.field private static final UNWRAP_DEPTH:I = 0x5


# instance fields
.field private final adParams:Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

.field private final mContext:Landroid/content/Context;

.field private final mParseParams:Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;

.field private unwrapAttempt:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;-><init>()V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;->adParams:Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;->unwrapAttempt:I

    .line 58
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;->mParseParams:Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;

    return-void
.end method

.method static synthetic access$000(Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;)Landroid/content/Context;
    .locals 0

    .line 40
    iget-object p0, p0, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createComparator(Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;",
            ")",
            "Ljava/util/Comparator<",
            "Lnet/pubnative/lite/sdk/vpaid/models/vast/MediaFile;",
            ">;"
        }
    .end annotation

    .line 304
    new-instance v0, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor$2;

    invoke-direct {v0, p0, p1}, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor$2;-><init>(Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;)V

    return-object v0
.end method

.method private fillAdParams(Landroid/content/Context;Lnet/pubnative/lite/sdk/vpaid/models/vast/VastAdSource;Lnet/pubnative/lite/sdk/vpaid/response/AdParams;Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;)V
    .locals 5

    .line 116
    invoke-interface {p2}, Lnet/pubnative/lite/sdk/vpaid/models/vast/VastAdSource;->getError()Lnet/pubnative/lite/sdk/vpaid/models/vast/Error;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lnet/pubnative/lite/sdk/vpaid/models/vast/VastAdSource;->getError()Lnet/pubnative/lite/sdk/vpaid/models/vast/Error;

    move-result-object v0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Error;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    invoke-interface {p2}, Lnet/pubnative/lite/sdk/vpaid/models/vast/VastAdSource;->getError()Lnet/pubnative/lite/sdk/vpaid/models/vast/Error;

    move-result-object v0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Error;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/pubnative/lite/sdk/vpaid/helpers/ErrorLog;->initErrorLog(Ljava/lang/String;)V

    .line 120
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    invoke-interface {p2}, Lnet/pubnative/lite/sdk/vpaid/models/vast/VastAdSource;->getImpressionList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 122
    invoke-interface {p2}, Lnet/pubnative/lite/sdk/vpaid/models/vast/VastAdSource;->getImpressionList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/pubnative/lite/sdk/vpaid/models/vast/Impression;

    .line 123
    invoke-virtual {v2}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Impression;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {p3, v0}, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->setImpressions(Ljava/util/List;)V

    .line 128
    invoke-interface {p2}, Lnet/pubnative/lite/sdk/vpaid/models/vast/VastAdSource;->getCreatives()Lnet/pubnative/lite/sdk/vpaid/models/vast/Creatives;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-interface {p2}, Lnet/pubnative/lite/sdk/vpaid/models/vast/VastAdSource;->getCreatives()Lnet/pubnative/lite/sdk/vpaid/models/vast/Creatives;

    move-result-object v0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Creatives;->getCreativeList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 129
    invoke-interface {p2}, Lnet/pubnative/lite/sdk/vpaid/models/vast/VastAdSource;->getCreatives()Lnet/pubnative/lite/sdk/vpaid/models/vast/Creatives;

    move-result-object v0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Creatives;->getCreativeList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 132
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/pubnative/lite/sdk/vpaid/models/vast/Creative;

    .line 133
    invoke-virtual {v3}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Creative;->getLinear()Lnet/pubnative/lite/sdk/vpaid/models/vast/Linear;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 134
    invoke-virtual {v3}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Creative;->getLinear()Lnet/pubnative/lite/sdk/vpaid/models/vast/Linear;

    move-result-object v1

    .line 139
    :cond_3
    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Linear;->getSkipoffset()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->setSkipTime(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Linear;->getTrackingEvents()Lnet/pubnative/lite/sdk/vpaid/models/vast/TrackingEvents;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 142
    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Linear;->getTrackingEvents()Lnet/pubnative/lite/sdk/vpaid/models/vast/TrackingEvents;

    move-result-object v2

    invoke-virtual {v2}, Lnet/pubnative/lite/sdk/vpaid/models/vast/TrackingEvents;->getTrackingList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3, v2}, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->addEvents(Ljava/util/List;)V

    .line 146
    :cond_4
    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Linear;->getDuration()Lnet/pubnative/lite/sdk/vpaid/models/vast/Duration;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 147
    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Linear;->getDuration()Lnet/pubnative/lite/sdk/vpaid/models/vast/Duration;

    move-result-object v2

    invoke-virtual {v2}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Duration;->getText()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    const-string v2, "00:00:10"

    .line 151
    :goto_1
    invoke-static {v2}, Lnet/pubnative/lite/sdk/vpaid/utils/Utils;->parseDuration(Ljava/lang/String;)I

    move-result v2

    .line 152
    invoke-virtual {p3, v2}, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->setDuration(I)V

    .line 154
    invoke-direct {p0, v1}, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;->parseAdParameters(Lnet/pubnative/lite/sdk/vpaid/models/vast/Linear;)Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-virtual {p3, v2}, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->setAdParams(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Linear;->getVideoClicks()Lnet/pubnative/lite/sdk/vpaid/models/vast/VideoClicks;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 158
    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Linear;->getVideoClicks()Lnet/pubnative/lite/sdk/vpaid/models/vast/VideoClicks;

    move-result-object v2

    invoke-virtual {v2}, Lnet/pubnative/lite/sdk/vpaid/models/vast/VideoClicks;->getClickThrough()Lnet/pubnative/lite/sdk/vpaid/models/vast/ClickThrough;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 160
    invoke-virtual {v2}, Lnet/pubnative/lite/sdk/vpaid/models/vast/ClickThrough;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->setVideoRedirectUrl(Ljava/lang/String;)V

    .line 163
    :cond_6
    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Linear;->getVideoClicks()Lnet/pubnative/lite/sdk/vpaid/models/vast/VideoClicks;

    move-result-object v2

    invoke-virtual {v2}, Lnet/pubnative/lite/sdk/vpaid/models/vast/VideoClicks;->getClickTrackingList()Ljava/util/List;

    move-result-object v2

    .line 164
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_7

    .line 166
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/pubnative/lite/sdk/vpaid/models/vast/ClickTracking;

    .line 167
    invoke-virtual {v4}, Lnet/pubnative/lite/sdk/vpaid/models/vast/ClickTracking;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 170
    :cond_7
    invoke-virtual {p3, v3}, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->setVideoClicks(Ljava/util/List;)V

    .line 173
    :cond_8
    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Linear;->getMediaFiles()Lnet/pubnative/lite/sdk/vpaid/models/vast/MediaFiles;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 174
    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Linear;->getMediaFiles()Lnet/pubnative/lite/sdk/vpaid/models/vast/MediaFiles;

    move-result-object v1

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/MediaFiles;->getMediaFileList()Ljava/util/List;

    move-result-object v1

    .line 176
    invoke-direct {p0, v1}, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;->getVpaidJsUrl(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 177
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 178
    invoke-virtual {p3}, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->setVpaid()V

    .line 179
    invoke-virtual {p3, v2}, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->setVpaidJsUrl(Ljava/lang/String;)V

    goto :goto_4

    .line 181
    :cond_9
    invoke-direct {p0, v1, p4}, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;->sortedMediaFiles(Ljava/util/List;Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;)Ljava/util/List;

    move-result-object p4

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 183
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_a
    :goto_3
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/pubnative/lite/sdk/vpaid/models/vast/MediaFile;

    .line 184
    invoke-virtual {v2}, Lnet/pubnative/lite/sdk/vpaid/models/vast/MediaFile;->getText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 185
    invoke-virtual {v2}, Lnet/pubnative/lite/sdk/vpaid/models/vast/MediaFile;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 188
    :cond_b
    invoke-virtual {p3, v1}, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->setVideoFileUrlsList(Ljava/util/List;)V

    .line 189
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_c

    .line 190
    sget-object p4, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;->MEDIA_FILE_NO_SUPPORTED_TYPE:Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

    invoke-static {p1, p4}, Lnet/pubnative/lite/sdk/vpaid/helpers/ErrorLog;->postError(Landroid/content/Context;Lnet/pubnative/lite/sdk/vpaid/enums/VastError;)V

    .line 195
    :cond_c
    :goto_4
    :try_start_0
    invoke-static {v0}, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;->getSortedCompanions(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 196
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 197
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/pubnative/lite/sdk/vpaid/models/vast/Companion;

    .line 198
    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Companion;->getStaticResource()Lnet/pubnative/lite/sdk/vpaid/models/vast/StaticResource;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Companion;->getStaticResource()Lnet/pubnative/lite/sdk/vpaid/models/vast/StaticResource;

    move-result-object v2

    invoke-virtual {v2}, Lnet/pubnative/lite/sdk/vpaid/models/vast/StaticResource;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Companion;->getStaticResource()Lnet/pubnative/lite/sdk/vpaid/models/vast/StaticResource;

    move-result-object v2

    invoke-virtual {v2}, Lnet/pubnative/lite/sdk/vpaid/models/vast/StaticResource;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 199
    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Companion;->getStaticResource()Lnet/pubnative/lite/sdk/vpaid/models/vast/StaticResource;

    move-result-object v1

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/StaticResource;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 202
    :cond_e
    invoke-virtual {p3, p4}, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->setEndCardUrlList(Ljava/util/List;)V

    .line 204
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_13

    const/4 p4, 0x0

    .line 205
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/pubnative/lite/sdk/vpaid/models/vast/Companion;

    .line 206
    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Companion;->getCompanionClickThrough()Lnet/pubnative/lite/sdk/vpaid/models/vast/CompanionClickThrough;

    move-result-object p4

    if-eqz p4, :cond_f

    .line 207
    invoke-virtual {p4}, Lnet/pubnative/lite/sdk/vpaid/models/vast/CompanionClickThrough;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 208
    invoke-virtual {p4}, Lnet/pubnative/lite/sdk/vpaid/models/vast/CompanionClickThrough;->getText()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    .line 209
    invoke-virtual {p3, p4}, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->setEndCardRedirectUrl(Ljava/lang/String;)V

    .line 212
    :cond_f
    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Companion;->getCompanionClickTracking()Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_11

    .line 213
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 214
    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Companion;->getCompanionClickTracking()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/pubnative/lite/sdk/vpaid/models/vast/CompanionClickTracking;

    .line 215
    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/CompanionClickTracking;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 217
    :cond_10
    invoke-virtual {p3, p4}, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->setEndCardClicks(Ljava/util/List;)V

    .line 220
    :cond_11
    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Companion;->getTrackingEvents()Lnet/pubnative/lite/sdk/vpaid/models/vast/TrackingEvents;

    move-result-object p4

    if-eqz p4, :cond_13

    .line 221
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 222
    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Companion;->getTrackingEvents()Lnet/pubnative/lite/sdk/vpaid/models/vast/TrackingEvents;

    move-result-object p1

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/TrackingEvents;->getTrackingList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Tracking;

    .line 223
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Tracking;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 225
    :cond_12
    invoke-virtual {p3, p4}, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->setCompanionCreativeViewEvents(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception p1

    .line 230
    sget-object p4, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_13
    :goto_8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 236
    invoke-virtual {p3, p1}, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->setVerificationScriptResources(Ljava/util/List;)V

    .line 238
    invoke-interface {p2}, Lnet/pubnative/lite/sdk/vpaid/models/vast/VastAdSource;->getExtensions()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_15

    .line 239
    invoke-interface {p2}, Lnet/pubnative/lite/sdk/vpaid/models/vast/VastAdSource;->getExtensions()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_14
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_15

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/pubnative/lite/sdk/vpaid/models/vast/Extension;

    .line 240
    invoke-virtual {p3}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Extension;->getType()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_14

    invoke-virtual {p3}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Extension;->getType()Ljava/lang/String;

    move-result-object p4

    const-string v0, "AdVerifications"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_14

    .line 241
    invoke-virtual {p3}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Extension;->getAdVerifications()Lnet/pubnative/lite/sdk/vpaid/models/vast/AdVerifications;

    move-result-object p3

    if-eqz p3, :cond_14

    .line 243
    invoke-virtual {p3}, Lnet/pubnative/lite/sdk/vpaid/models/vast/AdVerifications;->getVerificationList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_9
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_14

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lnet/pubnative/lite/sdk/vpaid/models/vast/Verification;

    .line 245
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p4}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Verification;->getJavaScriptResource()Lnet/pubnative/lite/sdk/vpaid/models/vast/JavaScriptResource;

    move-result-object v1

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/JavaScriptResource;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p4}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Verification;->getVendor()Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-virtual {p4}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Verification;->getVerificationParameters()Lnet/pubnative/lite/sdk/vpaid/models/vast/VerificationParameters;

    move-result-object p4

    invoke-virtual {p4}, Lnet/pubnative/lite/sdk/vpaid/models/vast/VerificationParameters;->getText()Ljava/lang/String;

    move-result-object p4

    .line 249
    invoke-static {v1, v0, p4}, Lcom/iab/omid/library/pubnativenet/adsession/j;->a(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)Lcom/iab/omid/library/pubnativenet/adsession/j;

    move-result-object p4

    .line 250
    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    :catch_1
    move-exception p4

    .line 252
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_15
    return-void
.end method

.method private static getSortedCompanions(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/vpaid/models/vast/Creative;",
            ">;)",
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/vpaid/models/vast/Companion;",
            ">;"
        }
    .end annotation

    .line 279
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Creative;

    .line 280
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Creative;->getCompanionAds()Lnet/pubnative/lite/sdk/vpaid/models/vast/CompanionAds;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 281
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Creative;->getCompanionAds()Lnet/pubnative/lite/sdk/vpaid/models/vast/CompanionAds;

    move-result-object v1

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/CompanionAds;->getCompanionList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 282
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Creative;->getCompanionAds()Lnet/pubnative/lite/sdk/vpaid/models/vast/CompanionAds;

    move-result-object p0

    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/vpaid/models/vast/CompanionAds;->getCompanionList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 285
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private getVpaidJsUrl(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/vpaid/models/vast/MediaFile;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 262
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/lite/sdk/vpaid/models/vast/MediaFile;

    .line 263
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/models/vast/MediaFile;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/models/vast/MediaFile;->getApiFramework()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/models/vast/MediaFile;->getApiFramework()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VPAID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/models/vast/MediaFile;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private parseAdParameters(Lnet/pubnative/lite/sdk/vpaid/models/vast/Linear;)Ljava/lang/String;
    .locals 0

    .line 272
    :try_start_0
    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Linear;->getAdParameters()Lnet/pubnative/lite/sdk/vpaid/models/vast/AdParameters;

    move-result-object p1

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/AdParameters;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private sortedMediaFiles(Ljava/util/List;Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/vpaid/models/vast/MediaFile;",
            ">;",
            "Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;",
            ")",
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/vpaid/models/vast/MediaFile;",
            ">;"
        }
    .end annotation

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 290
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/pubnative/lite/sdk/vpaid/models/vast/MediaFile;

    .line 291
    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/MediaFile;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "video/mp4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 292
    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/MediaFile;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "video/webm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 297
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_3

    .line 298
    invoke-direct {p0, p2}, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;->createComparator(Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;)Ljava/util/Comparator;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    return-object v0
.end method


# virtual methods
.method public parseResponse(Ljava/lang/String;Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor$Listener;)V
    .locals 4

    .line 64
    :try_start_0
    const-class v0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Vast;

    invoke-static {p1, v0}, Lnet/pubnative/lite/sdk/vpaid/xml/XmlParser;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Vast;

    .line 65
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Vast;->getStatus()Lnet/pubnative/lite/sdk/vpaid/models/vast/Status;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Vast;->getStatus()Lnet/pubnative/lite/sdk/vpaid/models/vast/Status;

    move-result-object v1

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Status;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NO_AD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    :cond_0
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Vast;->getAd()Lnet/pubnative/lite/sdk/vpaid/models/vast/Ad;

    move-result-object v1

    if-nez v1, :cond_1

    .line 68
    new-instance p1, Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;

    const-string v0, "No ads found"

    invoke-direct {p1, v0}, Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;->setNoAdsFound()V

    .line 70
    invoke-interface {p2, p1}, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor$Listener;->onParseError(Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;)V

    return-void

    .line 72
    :cond_1
    iget-object v1, p0, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;->adParams:Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Vast;->getAd()Lnet/pubnative/lite/sdk/vpaid/models/vast/Ad;

    move-result-object v2

    invoke-virtual {v2}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Ad;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->setId(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Vast;->getAd()Lnet/pubnative/lite/sdk/vpaid/models/vast/Ad;

    move-result-object v1

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Ad;->getInLine()Lnet/pubnative/lite/sdk/vpaid/models/vast/InLine;

    move-result-object v1

    .line 74
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Vast;->getAd()Lnet/pubnative/lite/sdk/vpaid/models/vast/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Ad;->getWrapper()Lnet/pubnative/lite/sdk/vpaid/models/vast/Wrapper;

    move-result-object v0

    if-eqz v1, :cond_2

    .line 77
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;->adParams:Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

    iget-object v3, p0, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;->mParseParams:Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;

    invoke-direct {p0, v0, v1, v2, v3}, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;->fillAdParams(Landroid/content/Context;Lnet/pubnative/lite/sdk/vpaid/models/vast/VastAdSource;Lnet/pubnative/lite/sdk/vpaid/response/AdParams;Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;)V

    .line 78
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;->adParams:Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

    invoke-interface {p2, v0, p1}, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor$Listener;->onParseSuccess(Lnet/pubnative/lite/sdk/vpaid/response/AdParams;Ljava/lang/String;)V

    return-void

    :cond_2
    if-eqz v0, :cond_4

    .line 80
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;->adParams:Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

    iget-object v2, p0, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;->mParseParams:Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;

    invoke-direct {p0, p1, v0, v1, v2}, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;->fillAdParams(Landroid/content/Context;Lnet/pubnative/lite/sdk/vpaid/models/vast/VastAdSource;Lnet/pubnative/lite/sdk/vpaid/response/AdParams;Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;)V

    .line 82
    iget p1, p0, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;->unwrapAttempt:I

    const/4 v1, 0x5

    if-ge p1, v1, :cond_3

    .line 83
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Wrapper;->getVastAdTagURI()Lnet/pubnative/lite/sdk/vpaid/models/vast/VASTAdTagURI;

    move-result-object p1

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/VASTAdTagURI;->getText()Ljava/lang/String;

    move-result-object p1

    .line 85
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;->mContext:Landroid/content/Context;

    new-instance v1, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor$1;

    invoke-direct {v1, p0, p2}, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor$1;-><init>(Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor$Listener;)V

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v2, v1}, Lnet/pubnative/lite/sdk/network/PNHttpClient;->makeRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lnet/pubnative/lite/sdk/network/PNHttpClient$Listener;)V

    .line 100
    iget p1, p0, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;->unwrapAttempt:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;->unwrapAttempt:I

    return-void

    .line 102
    :cond_3
    new-instance p1, Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;

    const-string v0, "Vast processor reached wrapper limit (5)"

    invoke-direct {p1, v0}, Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-interface {p2, p1}, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor$Listener;->onParseError(Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception p1

    .line 108
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;->mContext:Landroid/content/Context;

    sget-object v1, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;->XML_PARSING:Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/vpaid/helpers/ErrorLog;->postError(Landroid/content/Context;Lnet/pubnative/lite/sdk/vpaid/enums/VastError;)V

    .line 109
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Parse VAST failed: "

    invoke-static {v0, v1, p1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    new-instance v0, Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parse VAST response failed"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-interface {p2, v0}, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor$Listener;->onParseError(Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;)V

    return-void
.end method
