.class public final Lcom/google/api/services/youtube/model/ActivityContentDetails;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private bulletin:Lcom/google/api/services/youtube/model/ActivityContentDetailsBulletin;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private channelItem:Lcom/google/api/services/youtube/model/ActivityContentDetailsChannelItem;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private comment:Lcom/google/api/services/youtube/model/ActivityContentDetailsComment;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private favorite:Lcom/google/api/services/youtube/model/ActivityContentDetailsFavorite;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private like:Lcom/google/api/services/youtube/model/ActivityContentDetailsLike;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private playlistItem:Lcom/google/api/services/youtube/model/ActivityContentDetailsPlaylistItem;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private promotedItem:Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private recommendation:Lcom/google/api/services/youtube/model/ActivityContentDetailsRecommendation;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private social:Lcom/google/api/services/youtube/model/ActivityContentDetailsSocial;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private subscription:Lcom/google/api/services/youtube/model/ActivityContentDetailsSubscription;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private upload:Lcom/google/api/services/youtube/model/ActivityContentDetailsUpload;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Lcom/google/api/client/a/n;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ActivityContentDetails;->clone()Lcom/google/api/services/youtube/model/ActivityContentDetails;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ActivityContentDetails;->clone()Lcom/google/api/services/youtube/model/ActivityContentDetails;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/ActivityContentDetails;
    .locals 1

    .line 341
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/ActivityContentDetails;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ActivityContentDetails;->clone()Lcom/google/api/services/youtube/model/ActivityContentDetails;

    move-result-object v0

    return-object v0
.end method

.method public final getBulletin()Lcom/google/api/services/youtube/model/ActivityContentDetailsBulletin;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ActivityContentDetails;->bulletin:Lcom/google/api/services/youtube/model/ActivityContentDetailsBulletin;

    return-object v0
.end method

.method public final getChannelItem()Lcom/google/api/services/youtube/model/ActivityContentDetailsChannelItem;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ActivityContentDetails;->channelItem:Lcom/google/api/services/youtube/model/ActivityContentDetailsChannelItem;

    return-object v0
.end method

.method public final getComment()Lcom/google/api/services/youtube/model/ActivityContentDetailsComment;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ActivityContentDetails;->comment:Lcom/google/api/services/youtube/model/ActivityContentDetailsComment;

    return-object v0
.end method

.method public final getFavorite()Lcom/google/api/services/youtube/model/ActivityContentDetailsFavorite;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ActivityContentDetails;->favorite:Lcom/google/api/services/youtube/model/ActivityContentDetailsFavorite;

    return-object v0
.end method

.method public final getLike()Lcom/google/api/services/youtube/model/ActivityContentDetailsLike;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ActivityContentDetails;->like:Lcom/google/api/services/youtube/model/ActivityContentDetailsLike;

    return-object v0
.end method

.method public final getPlaylistItem()Lcom/google/api/services/youtube/model/ActivityContentDetailsPlaylistItem;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ActivityContentDetails;->playlistItem:Lcom/google/api/services/youtube/model/ActivityContentDetailsPlaylistItem;

    return-object v0
.end method

.method public final getPromotedItem()Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ActivityContentDetails;->promotedItem:Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;

    return-object v0
.end method

.method public final getRecommendation()Lcom/google/api/services/youtube/model/ActivityContentDetailsRecommendation;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ActivityContentDetails;->recommendation:Lcom/google/api/services/youtube/model/ActivityContentDetailsRecommendation;

    return-object v0
.end method

.method public final getSocial()Lcom/google/api/services/youtube/model/ActivityContentDetailsSocial;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ActivityContentDetails;->social:Lcom/google/api/services/youtube/model/ActivityContentDetailsSocial;

    return-object v0
.end method

.method public final getSubscription()Lcom/google/api/services/youtube/model/ActivityContentDetailsSubscription;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ActivityContentDetails;->subscription:Lcom/google/api/services/youtube/model/ActivityContentDetailsSubscription;

    return-object v0
.end method

.method public final getUpload()Lcom/google/api/services/youtube/model/ActivityContentDetailsUpload;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ActivityContentDetails;->upload:Lcom/google/api/services/youtube/model/ActivityContentDetailsUpload;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/ActivityContentDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ActivityContentDetails;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/ActivityContentDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ActivityContentDetails;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ActivityContentDetails;
    .locals 0

    .line 336
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/ActivityContentDetails;

    return-object p1
.end method

.method public final setBulletin(Lcom/google/api/services/youtube/model/ActivityContentDetailsBulletin;)Lcom/google/api/services/youtube/model/ActivityContentDetails;
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ActivityContentDetails;->bulletin:Lcom/google/api/services/youtube/model/ActivityContentDetailsBulletin;

    return-object p0
.end method

.method public final setChannelItem(Lcom/google/api/services/youtube/model/ActivityContentDetailsChannelItem;)Lcom/google/api/services/youtube/model/ActivityContentDetails;
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ActivityContentDetails;->channelItem:Lcom/google/api/services/youtube/model/ActivityContentDetailsChannelItem;

    return-object p0
.end method

.method public final setComment(Lcom/google/api/services/youtube/model/ActivityContentDetailsComment;)Lcom/google/api/services/youtube/model/ActivityContentDetails;
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ActivityContentDetails;->comment:Lcom/google/api/services/youtube/model/ActivityContentDetailsComment;

    return-object p0
.end method

.method public final setFavorite(Lcom/google/api/services/youtube/model/ActivityContentDetailsFavorite;)Lcom/google/api/services/youtube/model/ActivityContentDetails;
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ActivityContentDetails;->favorite:Lcom/google/api/services/youtube/model/ActivityContentDetailsFavorite;

    return-object p0
.end method

.method public final setLike(Lcom/google/api/services/youtube/model/ActivityContentDetailsLike;)Lcom/google/api/services/youtube/model/ActivityContentDetails;
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ActivityContentDetails;->like:Lcom/google/api/services/youtube/model/ActivityContentDetailsLike;

    return-object p0
.end method

.method public final setPlaylistItem(Lcom/google/api/services/youtube/model/ActivityContentDetailsPlaylistItem;)Lcom/google/api/services/youtube/model/ActivityContentDetails;
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ActivityContentDetails;->playlistItem:Lcom/google/api/services/youtube/model/ActivityContentDetailsPlaylistItem;

    return-object p0
.end method

.method public final setPromotedItem(Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;)Lcom/google/api/services/youtube/model/ActivityContentDetails;
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ActivityContentDetails;->promotedItem:Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;

    return-object p0
.end method

.method public final setRecommendation(Lcom/google/api/services/youtube/model/ActivityContentDetailsRecommendation;)Lcom/google/api/services/youtube/model/ActivityContentDetails;
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ActivityContentDetails;->recommendation:Lcom/google/api/services/youtube/model/ActivityContentDetailsRecommendation;

    return-object p0
.end method

.method public final setSocial(Lcom/google/api/services/youtube/model/ActivityContentDetailsSocial;)Lcom/google/api/services/youtube/model/ActivityContentDetails;
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ActivityContentDetails;->social:Lcom/google/api/services/youtube/model/ActivityContentDetailsSocial;

    return-object p0
.end method

.method public final setSubscription(Lcom/google/api/services/youtube/model/ActivityContentDetailsSubscription;)Lcom/google/api/services/youtube/model/ActivityContentDetails;
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ActivityContentDetails;->subscription:Lcom/google/api/services/youtube/model/ActivityContentDetailsSubscription;

    return-object p0
.end method

.method public final setUpload(Lcom/google/api/services/youtube/model/ActivityContentDetailsUpload;)Lcom/google/api/services/youtube/model/ActivityContentDetails;
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ActivityContentDetails;->upload:Lcom/google/api/services/youtube/model/ActivityContentDetailsUpload;

    return-object p0
.end method
