.class public final Lcom/google/api/services/youtube/model/ChannelSettings;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private country:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private defaultLanguage:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private defaultTab:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private featuredChannelsTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private featuredChannelsUrls:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private keywords:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private moderateComments:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private profileColor:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private showBrowseView:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private showRelatedChannels:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private trackingAnalyticsAccountId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private unsubscribedTrailer:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Lcom/google/api/client/a/n;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ChannelSettings;->clone()Lcom/google/api/services/youtube/model/ChannelSettings;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ChannelSettings;->clone()Lcom/google/api/services/youtube/model/ChannelSettings;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/ChannelSettings;
    .locals 1

    .line 379
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/ChannelSettings;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ChannelSettings;->clone()Lcom/google/api/services/youtube/model/ChannelSettings;

    move-result-object v0

    return-object v0
.end method

.method public final getCountry()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelSettings;->country:Ljava/lang/String;

    return-object v0
.end method

.method public final getDefaultLanguage()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelSettings;->defaultLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public final getDefaultTab()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelSettings;->defaultTab:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelSettings;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getFeaturedChannelsTitle()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelSettings;->featuredChannelsTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getFeaturedChannelsUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelSettings;->featuredChannelsUrls:Ljava/util/List;

    return-object v0
.end method

.method public final getKeywords()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelSettings;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method public final getModerateComments()Ljava/lang/Boolean;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelSettings;->moderateComments:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getProfileColor()Ljava/lang/String;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelSettings;->profileColor:Ljava/lang/String;

    return-object v0
.end method

.method public final getShowBrowseView()Ljava/lang/Boolean;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelSettings;->showBrowseView:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getShowRelatedChannels()Ljava/lang/Boolean;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelSettings;->showRelatedChannels:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelSettings;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrackingAnalyticsAccountId()Ljava/lang/String;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelSettings;->trackingAnalyticsAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public final getUnsubscribedTrailer()Ljava/lang/String;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelSettings;->unsubscribedTrailer:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/ChannelSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ChannelSettings;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/ChannelSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ChannelSettings;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ChannelSettings;
    .locals 0

    .line 374
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/ChannelSettings;

    return-object p1
.end method

.method public final setCountry(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ChannelSettings;
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelSettings;->country:Ljava/lang/String;

    return-object p0
.end method

.method public final setDefaultLanguage(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ChannelSettings;
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelSettings;->defaultLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public final setDefaultTab(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ChannelSettings;
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelSettings;->defaultTab:Ljava/lang/String;

    return-object p0
.end method

.method public final setDescription(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ChannelSettings;
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelSettings;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final setFeaturedChannelsTitle(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ChannelSettings;
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelSettings;->featuredChannelsTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final setFeaturedChannelsUrls(Ljava/util/List;)Lcom/google/api/services/youtube/model/ChannelSettings;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/youtube/model/ChannelSettings;"
        }
    .end annotation

    .line 230
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelSettings;->featuredChannelsUrls:Ljava/util/List;

    return-object p0
.end method

.method public final setKeywords(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ChannelSettings;
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelSettings;->keywords:Ljava/lang/String;

    return-object p0
.end method

.method public final setModerateComments(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/ChannelSettings;
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelSettings;->moderateComments:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setProfileColor(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ChannelSettings;
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelSettings;->profileColor:Ljava/lang/String;

    return-object p0
.end method

.method public final setShowBrowseView(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/ChannelSettings;
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelSettings;->showBrowseView:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setShowRelatedChannels(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/ChannelSettings;
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelSettings;->showRelatedChannels:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setTitle(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ChannelSettings;
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelSettings;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final setTrackingAnalyticsAccountId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ChannelSettings;
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelSettings;->trackingAnalyticsAccountId:Ljava/lang/String;

    return-object p0
.end method

.method public final setUnsubscribedTrailer(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ChannelSettings;
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelSettings;->unsubscribedTrailer:Ljava/lang/String;

    return-object p0
.end method
