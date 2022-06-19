.class public final Lcom/google/api/services/youtube/model/VideoContentDetails;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private caption:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private contentRating:Lcom/google/api/services/youtube/model/ContentRating;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private countryRestriction:Lcom/google/api/services/youtube/model/AccessPolicy;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private definition:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private dimension:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private duration:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private hasCustomThumbnail:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private licensedContent:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private projection:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private regionRestriction:Lcom/google/api/services/youtube/model/VideoContentDetailsRegionRestriction;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoContentDetails;->clone()Lcom/google/api/services/youtube/model/VideoContentDetails;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoContentDetails;->clone()Lcom/google/api/services/youtube/model/VideoContentDetails;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/VideoContentDetails;
    .locals 1

    .line 310
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/VideoContentDetails;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoContentDetails;->clone()Lcom/google/api/services/youtube/model/VideoContentDetails;

    move-result-object v0

    return-object v0
.end method

.method public final getCaption()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoContentDetails;->caption:Ljava/lang/String;

    return-object v0
.end method

.method public final getContentRating()Lcom/google/api/services/youtube/model/ContentRating;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoContentDetails;->contentRating:Lcom/google/api/services/youtube/model/ContentRating;

    return-object v0
.end method

.method public final getCountryRestriction()Lcom/google/api/services/youtube/model/AccessPolicy;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoContentDetails;->countryRestriction:Lcom/google/api/services/youtube/model/AccessPolicy;

    return-object v0
.end method

.method public final getDefinition()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoContentDetails;->definition:Ljava/lang/String;

    return-object v0
.end method

.method public final getDimension()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoContentDetails;->dimension:Ljava/lang/String;

    return-object v0
.end method

.method public final getDuration()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoContentDetails;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public final getHasCustomThumbnail()Ljava/lang/Boolean;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoContentDetails;->hasCustomThumbnail:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getLicensedContent()Ljava/lang/Boolean;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoContentDetails;->licensedContent:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getProjection()Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoContentDetails;->projection:Ljava/lang/String;

    return-object v0
.end method

.method public final getRegionRestriction()Lcom/google/api/services/youtube/model/VideoContentDetailsRegionRestriction;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoContentDetails;->regionRestriction:Lcom/google/api/services/youtube/model/VideoContentDetailsRegionRestriction;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/VideoContentDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoContentDetails;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/VideoContentDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoContentDetails;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoContentDetails;
    .locals 0

    .line 305
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/VideoContentDetails;

    return-object p1
.end method

.method public final setCaption(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoContentDetails;
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoContentDetails;->caption:Ljava/lang/String;

    return-object p0
.end method

.method public final setContentRating(Lcom/google/api/services/youtube/model/ContentRating;)Lcom/google/api/services/youtube/model/VideoContentDetails;
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoContentDetails;->contentRating:Lcom/google/api/services/youtube/model/ContentRating;

    return-object p0
.end method

.method public final setCountryRestriction(Lcom/google/api/services/youtube/model/AccessPolicy;)Lcom/google/api/services/youtube/model/VideoContentDetails;
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoContentDetails;->countryRestriction:Lcom/google/api/services/youtube/model/AccessPolicy;

    return-object p0
.end method

.method public final setDefinition(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoContentDetails;
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoContentDetails;->definition:Ljava/lang/String;

    return-object p0
.end method

.method public final setDimension(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoContentDetails;
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoContentDetails;->dimension:Ljava/lang/String;

    return-object p0
.end method

.method public final setDuration(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoContentDetails;
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoContentDetails;->duration:Ljava/lang/String;

    return-object p0
.end method

.method public final setHasCustomThumbnail(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/VideoContentDetails;
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoContentDetails;->hasCustomThumbnail:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setLicensedContent(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/VideoContentDetails;
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoContentDetails;->licensedContent:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setProjection(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoContentDetails;
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoContentDetails;->projection:Ljava/lang/String;

    return-object p0
.end method

.method public final setRegionRestriction(Lcom/google/api/services/youtube/model/VideoContentDetailsRegionRestriction;)Lcom/google/api/services/youtube/model/VideoContentDetails;
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoContentDetails;->regionRestriction:Lcom/google/api/services/youtube/model/VideoContentDetailsRegionRestriction;

    return-object p0
.end method
