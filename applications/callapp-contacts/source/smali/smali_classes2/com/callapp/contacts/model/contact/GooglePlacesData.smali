.class public Lcom/callapp/contacts/model/contact/GooglePlacesData;
.super Lcom/callapp/contacts/model/contact/ExtendedPlaceData;
.source "SourceFile"


# static fields
.field private static final GOOGLE_PLACES_WEB_URL_BY_PLACE_ID_PREFIX:Ljava/lang/String; = "https://www.google.com/maps/place/?q=place_id:"

.field private static final serialVersionUID:J = -0x27fba1239fba50L


# instance fields
.field private googlePlaceId:Ljava/lang/String;

.field private seeInsidePanoId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 27
    :cond_1
    invoke-super {p0, p1}, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 28
    :cond_2
    check-cast p1, Lcom/callapp/contacts/model/contact/GooglePlacesData;

    .line 29
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/GooglePlacesData;->seeInsidePanoId:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/contacts/model/contact/GooglePlacesData;->seeInsidePanoId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/GooglePlacesData;->googlePlaceId:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/contacts/model/contact/GooglePlacesData;->googlePlaceId:Ljava/lang/String;

    .line 30
    invoke-static {v2, p1}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public getGooglePlaceId()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/GooglePlacesData;->googlePlaceId:Ljava/lang/String;

    return-object v0
.end method

.method public getSeeInsidePanoId()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/GooglePlacesData;->seeInsidePanoId:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlOrBuildUrl()Ljava/lang/String;
    .locals 2

    .line 47
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/GooglePlacesData;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/GooglePlacesData;->getGooglePlaceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://www.google.com/maps/place/?q=place_id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/GooglePlacesData;->getGooglePlaceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 35
    invoke-super {p0}, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/GooglePlacesData;->seeInsidePanoId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/GooglePlacesData;->googlePlaceId:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1077
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setGooglePlaceId(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/GooglePlacesData;->googlePlaceId:Ljava/lang/String;

    return-void
.end method

.method public setSeeInsidePanoId(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/GooglePlacesData;->seeInsidePanoId:Ljava/lang/String;

    return-void
.end method
