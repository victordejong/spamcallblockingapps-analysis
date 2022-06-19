.class public Lcom/google/api/services/youtube/YouTube;
.super Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/youtube/YouTube$Builder;,
        Lcom/google/api/services/youtube/YouTube$Watermarks;,
        Lcom/google/api/services/youtube/YouTube$Videos;,
        Lcom/google/api/services/youtube/YouTube$VideoCategories;,
        Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons;,
        Lcom/google/api/services/youtube/YouTube$Thumbnails;,
        Lcom/google/api/services/youtube/YouTube$SuperChatEvents;,
        Lcom/google/api/services/youtube/YouTube$Subscriptions;,
        Lcom/google/api/services/youtube/YouTube$Sponsors;,
        Lcom/google/api/services/youtube/YouTube$Search;,
        Lcom/google/api/services/youtube/YouTube$Playlists;,
        Lcom/google/api/services/youtube/YouTube$PlaylistItems;,
        Lcom/google/api/services/youtube/YouTube$MembershipsLevels;,
        Lcom/google/api/services/youtube/YouTube$Members;,
        Lcom/google/api/services/youtube/YouTube$LiveStreams;,
        Lcom/google/api/services/youtube/YouTube$LiveChatModerators;,
        Lcom/google/api/services/youtube/YouTube$LiveChatMessages;,
        Lcom/google/api/services/youtube/YouTube$LiveChatBans;,
        Lcom/google/api/services/youtube/YouTube$LiveBroadcasts;,
        Lcom/google/api/services/youtube/YouTube$I18nRegions;,
        Lcom/google/api/services/youtube/YouTube$I18nLanguages;,
        Lcom/google/api/services/youtube/YouTube$GuideCategories;,
        Lcom/google/api/services/youtube/YouTube$Comments;,
        Lcom/google/api/services/youtube/YouTube$CommentThreads;,
        Lcom/google/api/services/youtube/YouTube$Channels;,
        Lcom/google/api/services/youtube/YouTube$ChannelSections;,
        Lcom/google/api/services/youtube/YouTube$ChannelBanners;,
        Lcom/google/api/services/youtube/YouTube$Captions;,
        Lcom/google/api/services/youtube/YouTube$Activities;
    }
.end annotation


# static fields
.field public static final DEFAULT_BASE_URL:Ljava/lang/String; = "https://www.googleapis.com/youtube/v3/"

.field public static final DEFAULT_BATCH_PATH:Ljava/lang/String; = "batch/youtube/v3"

.field public static final DEFAULT_ROOT_URL:Ljava/lang/String; = "https://www.googleapis.com/"

.field public static final DEFAULT_SERVICE_PATH:Ljava/lang/String; = "youtube/v3/"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 48
    sget-object v0, Lcom/google/api/client/googleapis/a;->a:Ljava/lang/Integer;

    .line 49
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/google/api/client/googleapis/a;->b:Ljava/lang/Integer;

    .line 50
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0xf

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/google/api/client/googleapis/a;->d:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v1, "You are currently running with version %s of google-api-client. You need at least version 1.15 of google-api-client to run version 1.25.0 of the YouTube Data API library."

    .line 48
    invoke-static {v0, v1, v2}, Lcom/google/api/client/a/aa;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/w;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/s;)V
    .locals 1

    .line 114
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Builder;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/api/services/youtube/YouTube$Builder;-><init>(Lcom/google/api/client/http/w;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/s;)V

    invoke-direct {p0, v0}, Lcom/google/api/services/youtube/YouTube;-><init>(Lcom/google/api/services/youtube/YouTube$Builder;)V

    return-void
.end method

.method constructor <init>(Lcom/google/api/services/youtube/YouTube$Builder;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;-><init>(Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;)V

    return-void
.end method


# virtual methods
.method public activities()Lcom/google/api/services/youtube/YouTube$Activities;
    .locals 1

    .line 141
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Activities;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$Activities;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public captions()Lcom/google/api/services/youtube/YouTube$Captions;
    .locals 1

    .line 637
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Captions;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$Captions;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public channelBanners()Lcom/google/api/services/youtube/YouTube$ChannelBanners;
    .locals 1

    .line 1838
    new-instance v0, Lcom/google/api/services/youtube/YouTube$ChannelBanners;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$ChannelBanners;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public channelSections()Lcom/google/api/services/youtube/YouTube$ChannelSections;
    .locals 1

    .line 2096
    new-instance v0, Lcom/google/api/services/youtube/YouTube$ChannelSections;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$ChannelSections;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public channels()Lcom/google/api/services/youtube/YouTube$Channels;
    .locals 1

    .line 2945
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Channels;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$Channels;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public commentThreads()Lcom/google/api/services/youtube/YouTube$CommentThreads;
    .locals 1

    .line 3550
    new-instance v0, Lcom/google/api/services/youtube/YouTube$CommentThreads;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$CommentThreads;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public comments()Lcom/google/api/services/youtube/YouTube$Comments;
    .locals 1

    .line 4176
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Comments;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$Comments;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public guideCategories()Lcom/google/api/services/youtube/YouTube$GuideCategories;
    .locals 1

    .line 5060
    new-instance v0, Lcom/google/api/services/youtube/YouTube$GuideCategories;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$GuideCategories;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public i18nLanguages()Lcom/google/api/services/youtube/YouTube$I18nLanguages;
    .locals 1

    .line 5269
    new-instance v0, Lcom/google/api/services/youtube/YouTube$I18nLanguages;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$I18nLanguages;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public i18nRegions()Lcom/google/api/services/youtube/YouTube$I18nRegions;
    .locals 1

    .line 5429
    new-instance v0, Lcom/google/api/services/youtube/YouTube$I18nRegions;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$I18nRegions;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public initialize(Lcom/google/api/client/googleapis/services/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/googleapis/services/b<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;->initialize(Lcom/google/api/client/googleapis/services/b;)V

    return-void
.end method

.method public liveBroadcasts()Lcom/google/api/services/youtube/YouTube$LiveBroadcasts;
    .locals 1

    .line 5589
    new-instance v0, Lcom/google/api/services/youtube/YouTube$LiveBroadcasts;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$LiveBroadcasts;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public liveChatBans()Lcom/google/api/services/youtube/YouTube$LiveChatBans;
    .locals 1

    .line 7570
    new-instance v0, Lcom/google/api/services/youtube/YouTube$LiveChatBans;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$LiveChatBans;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public liveChatMessages()Lcom/google/api/services/youtube/YouTube$LiveChatMessages;
    .locals 1

    .line 7808
    new-instance v0, Lcom/google/api/services/youtube/YouTube$LiveChatMessages;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$LiveChatMessages;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public liveChatModerators()Lcom/google/api/services/youtube/YouTube$LiveChatModerators;
    .locals 1

    .line 8289
    new-instance v0, Lcom/google/api/services/youtube/YouTube$LiveChatModerators;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$LiveChatModerators;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public liveStreams()Lcom/google/api/services/youtube/YouTube$LiveStreams;
    .locals 1

    .line 8716
    new-instance v0, Lcom/google/api/services/youtube/YouTube$LiveStreams;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$LiveStreams;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public members()Lcom/google/api/services/youtube/YouTube$Members;
    .locals 1

    .line 9748
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Members;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$Members;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public membershipsLevels()Lcom/google/api/services/youtube/YouTube$MembershipsLevels;
    .locals 1

    .line 10005
    new-instance v0, Lcom/google/api/services/youtube/YouTube$MembershipsLevels;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$MembershipsLevels;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public playlistItems()Lcom/google/api/services/youtube/YouTube$PlaylistItems;
    .locals 1

    .line 10142
    new-instance v0, Lcom/google/api/services/youtube/YouTube$PlaylistItems;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$PlaylistItems;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public playlists()Lcom/google/api/services/youtube/YouTube$Playlists;
    .locals 1

    .line 10965
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Playlists;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$Playlists;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public search()Lcom/google/api/services/youtube/YouTube$Search;
    .locals 1

    .line 11917
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Search;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$Search;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public sponsors()Lcom/google/api/services/youtube/YouTube$Sponsors;
    .locals 1

    .line 12892
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Sponsors;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$Sponsors;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public subscriptions()Lcom/google/api/services/youtube/YouTube$Subscriptions;
    .locals 1

    .line 13094
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Subscriptions;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$Subscriptions;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public superChatEvents()Lcom/google/api/services/youtube/YouTube$SuperChatEvents;
    .locals 1

    .line 13784
    new-instance v0, Lcom/google/api/services/youtube/YouTube$SuperChatEvents;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$SuperChatEvents;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public thumbnails()Lcom/google/api/services/youtube/YouTube$Thumbnails;
    .locals 1

    .line 14010
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Thumbnails;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$Thumbnails;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public videoAbuseReportReasons()Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons;
    .locals 1

    .line 14230
    new-instance v0, Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$VideoAbuseReportReasons;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public videoCategories()Lcom/google/api/services/youtube/YouTube$VideoCategories;
    .locals 1

    .line 14390
    new-instance v0, Lcom/google/api/services/youtube/YouTube$VideoCategories;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$VideoCategories;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public videos()Lcom/google/api/services/youtube/YouTube$Videos;
    .locals 1

    .line 14596
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Videos;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$Videos;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method

.method public watermarks()Lcom/google/api/services/youtube/YouTube$Watermarks;
    .locals 1

    .line 16276
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Watermarks;

    invoke-direct {v0, p0}, Lcom/google/api/services/youtube/YouTube$Watermarks;-><init>(Lcom/google/api/services/youtube/YouTube;)V

    return-object v0
.end method
