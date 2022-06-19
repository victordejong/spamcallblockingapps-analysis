.class public final Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private adTag:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private clickTrackingUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private creativeViewUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private ctaType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private customCtaButtonText:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private descriptionText:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private destinationUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private forecastingUrl:Ljava/util/List;
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

.field private impressionUrl:Ljava/util/List;
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

.field private videoId:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;->clone()Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;->clone()Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;
    .locals 1

    .line 295
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;->clone()Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;

    move-result-object v0

    return-object v0
.end method

.method public final getAdTag()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;->adTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getClickTrackingUrl()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;->clickTrackingUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreativeViewUrl()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;->creativeViewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getCtaType()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;->ctaType:Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomCtaButtonText()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;->customCtaButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescriptionText()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;->descriptionText:Ljava/lang/String;

    return-object v0
.end method

.method public final getDestinationUrl()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;->destinationUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getForecastingUrl()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;->forecastingUrl:Ljava/util/List;

    return-object v0
.end method

.method public final getImpressionUrl()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;->impressionUrl:Ljava/util/List;

    return-object v0
.end method

.method public final getVideoId()Ljava/lang/String;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;
    .locals 0

    .line 290
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;

    return-object p1
.end method

.method public final setAdTag(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;->adTag:Ljava/lang/String;

    return-object p0
.end method

.method public final setClickTrackingUrl(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;->clickTrackingUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final setCreativeViewUrl(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;->creativeViewUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final setCtaType(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;->ctaType:Ljava/lang/String;

    return-object p0
.end method

.method public final setCustomCtaButtonText(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;->customCtaButtonText:Ljava/lang/String;

    return-object p0
.end method

.method public final setDescriptionText(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;->descriptionText:Ljava/lang/String;

    return-object p0
.end method

.method public final setDestinationUrl(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;->destinationUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final setForecastingUrl(Ljava/util/List;)Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;"
        }
    .end annotation

    .line 248
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;->forecastingUrl:Ljava/util/List;

    return-object p0
.end method

.method public final setImpressionUrl(Ljava/util/List;)Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;"
        }
    .end annotation

    .line 267
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;->impressionUrl:Ljava/util/List;

    return-object p0
.end method

.method public final setVideoId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ActivityContentDetailsPromotedItem;->videoId:Ljava/lang/String;

    return-object p0
.end method
