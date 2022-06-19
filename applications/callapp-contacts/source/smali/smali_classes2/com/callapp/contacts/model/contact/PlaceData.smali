.class public Lcom/callapp/contacts/model/contact/PlaceData;
.super Lcom/callapp/contacts/model/contact/ExternalSourceData;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x44aa685847eafcdfL


# instance fields
.field private address:Lcom/callapp/common/model/json/JSONAddress;

.field private avgRating:D

.field private categories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/callapp/common/model/json/JSONCategory;",
            ">;"
        }
    .end annotation
.end field

.field private lat:D

.field private lng:D

.field private photoUrl:Ljava/lang/String;

.field private reviews:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONReview;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;

.field private website:Lcom/callapp/common/model/json/JSONWebsite;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Lcom/callapp/contacts/model/contact/ExternalSourceData;-><init>()V

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcom/callapp/contacts/model/contact/PlaceData;->lat:D

    .line 18
    iput-wide v0, p0, Lcom/callapp/contacts/model/contact/PlaceData;->lng:D

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 19
    iput-wide v0, p0, Lcom/callapp/contacts/model/contact/PlaceData;->avgRating:D

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 128
    :cond_1
    instance-of v2, p1, Lcom/callapp/contacts/model/contact/PlaceData;

    if-nez v2, :cond_2

    return v1

    .line 130
    :cond_2
    check-cast p1, Lcom/callapp/contacts/model/contact/PlaceData;

    .line 131
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/PlaceData;->address:Lcom/callapp/common/model/json/JSONAddress;

    if-nez v2, :cond_3

    .line 132
    iget-object v2, p1, Lcom/callapp/contacts/model/contact/PlaceData;->address:Lcom/callapp/common/model/json/JSONAddress;

    if-eqz v2, :cond_4

    return v1

    .line 134
    :cond_3
    iget-object v3, p1, Lcom/callapp/contacts/model/contact/PlaceData;->address:Lcom/callapp/common/model/json/JSONAddress;

    invoke-virtual {v2, v3}, Lcom/callapp/common/model/json/JSONAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 136
    :cond_4
    iget-wide v2, p0, Lcom/callapp/contacts/model/contact/PlaceData;->avgRating:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/callapp/contacts/model/contact/PlaceData;->avgRating:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-eqz v6, :cond_5

    return v1

    .line 138
    :cond_5
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/PlaceData;->categories:Ljava/util/Set;

    if-nez v2, :cond_6

    .line 139
    iget-object v2, p1, Lcom/callapp/contacts/model/contact/PlaceData;->categories:Ljava/util/Set;

    if-eqz v2, :cond_7

    return v1

    .line 141
    :cond_6
    iget-object v3, p1, Lcom/callapp/contacts/model/contact/PlaceData;->categories:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 143
    :cond_7
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/PlaceData;->getFullName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    .line 144
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/PlaceData;->getFullName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    return v1

    .line 146
    :cond_8
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/PlaceData;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/PlaceData;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 148
    :cond_9
    iget-wide v2, p0, Lcom/callapp/contacts/model/contact/PlaceData;->lat:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/callapp/contacts/model/contact/PlaceData;->lat:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-eqz v6, :cond_a

    return v1

    .line 150
    :cond_a
    iget-wide v2, p0, Lcom/callapp/contacts/model/contact/PlaceData;->lng:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/callapp/contacts/model/contact/PlaceData;->lng:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-eqz v6, :cond_b

    return v1

    .line 152
    :cond_b
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/PlaceData;->photoUrl:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 153
    iget-object v2, p1, Lcom/callapp/contacts/model/contact/PlaceData;->photoUrl:Ljava/lang/String;

    if-eqz v2, :cond_d

    return v1

    .line 155
    :cond_c
    iget-object v3, p1, Lcom/callapp/contacts/model/contact/PlaceData;->photoUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 157
    :cond_d
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/PlaceData;->reviews:Ljava/util/Collection;

    if-nez v2, :cond_e

    .line 158
    iget-object v2, p1, Lcom/callapp/contacts/model/contact/PlaceData;->reviews:Ljava/util/Collection;

    if-eqz v2, :cond_f

    return v1

    .line 160
    :cond_e
    iget-object v3, p1, Lcom/callapp/contacts/model/contact/PlaceData;->reviews:Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    .line 162
    :cond_f
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/PlaceData;->url:Ljava/lang/String;

    if-nez v2, :cond_10

    .line 163
    iget-object v2, p1, Lcom/callapp/contacts/model/contact/PlaceData;->url:Ljava/lang/String;

    if-eqz v2, :cond_11

    return v1

    .line 165
    :cond_10
    iget-object v3, p1, Lcom/callapp/contacts/model/contact/PlaceData;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    return v1

    .line 167
    :cond_11
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/PlaceData;->website:Lcom/callapp/common/model/json/JSONWebsite;

    if-nez v2, :cond_12

    .line 168
    iget-object p1, p1, Lcom/callapp/contacts/model/contact/PlaceData;->website:Lcom/callapp/common/model/json/JSONWebsite;

    if-eqz p1, :cond_13

    return v1

    .line 170
    :cond_12
    iget-object p1, p1, Lcom/callapp/contacts/model/contact/PlaceData;->website:Lcom/callapp/common/model/json/JSONWebsite;

    invoke-virtual {v2, p1}, Lcom/callapp/common/model/json/JSONWebsite;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    return v1

    :cond_13
    return v0
.end method

.method public getAddress()Lcom/callapp/common/model/json/JSONAddress;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/PlaceData;->address:Lcom/callapp/common/model/json/JSONAddress;

    return-object v0
.end method

.method public getAvgRating()D
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/callapp/contacts/model/contact/PlaceData;->avgRating:D

    return-wide v0
.end method

.method public getCategories()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/common/model/json/JSONCategory;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/PlaceData;->categories:Ljava/util/Set;

    return-object v0
.end method

.method public getLat()D
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/callapp/contacts/model/contact/PlaceData;->lat:D

    return-wide v0
.end method

.method public getLng()D
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/callapp/contacts/model/contact/PlaceData;->lng:D

    return-wide v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/PlaceData;->photoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getReviews()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONReview;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/PlaceData;->reviews:Ljava/util/Collection;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/PlaceData;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWebsite()Lcom/callapp/common/model/json/JSONWebsite;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/PlaceData;->website:Lcom/callapp/common/model/json/JSONWebsite;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 105
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/PlaceData;->address:Lcom/callapp/common/model/json/JSONAddress;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONAddress;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 107
    iget-wide v2, p0, Lcom/callapp/contacts/model/contact/PlaceData;->avgRating:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 109
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/PlaceData;->categories:Ljava/util/Set;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 110
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/PlaceData;->getFullName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/PlaceData;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    .line 111
    iget-wide v2, p0, Lcom/callapp/contacts/model/contact/PlaceData;->lat:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v0, v3

    .line 113
    iget-wide v2, p0, Lcom/callapp/contacts/model/contact/PlaceData;->lng:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 115
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/PlaceData;->photoUrl:Ljava/lang/String;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 116
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/PlaceData;->reviews:Ljava/util/Collection;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-interface {v2}, Ljava/util/Collection;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 117
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/PlaceData;->url:Ljava/lang/String;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 118
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/PlaceData;->website:Lcom/callapp/common/model/json/JSONWebsite;

    if-nez v2, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONWebsite;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    return v0
.end method

.method public setAddress(Lcom/callapp/common/model/json/JSONAddress;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/PlaceData;->address:Lcom/callapp/common/model/json/JSONAddress;

    return-void
.end method

.method public setAvgRating(D)V
    .locals 0

    .line 58
    iput-wide p1, p0, Lcom/callapp/contacts/model/contact/PlaceData;->avgRating:D

    return-void
.end method

.method public setCategories(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/callapp/common/model/json/JSONCategory;",
            ">;)V"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/PlaceData;->categories:Ljava/util/Set;

    return-void
.end method

.method public setLat(D)V
    .locals 0

    .line 38
    iput-wide p1, p0, Lcom/callapp/contacts/model/contact/PlaceData;->lat:D

    return-void
.end method

.method public setLng(D)V
    .locals 0

    .line 46
    iput-wide p1, p0, Lcom/callapp/contacts/model/contact/PlaceData;->lng:D

    return-void
.end method

.method public setPhotoUrl(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/PlaceData;->photoUrl:Ljava/lang/String;

    return-void
.end method

.method public setReviews(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONReview;",
            ">;)V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/PlaceData;->reviews:Ljava/util/Collection;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/PlaceData;->url:Ljava/lang/String;

    return-void
.end method

.method public setWebsite(Lcom/callapp/common/model/json/JSONWebsite;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/PlaceData;->website:Lcom/callapp/common/model/json/JSONWebsite;

    return-void
.end method
