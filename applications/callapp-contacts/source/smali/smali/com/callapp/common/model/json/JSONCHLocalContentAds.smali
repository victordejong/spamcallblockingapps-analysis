.class public Lcom/callapp/common/model/json/JSONCHLocalContentAds;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x60a131b2e51bb344L


# instance fields
.field private background_image:Ljava/lang/String;

.field private foursquare:Lcom/callapp/common/model/json/JSONCHLocalFoursquare;

.field private images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONCHLocalImages;",
            ">;"
        }
    .end annotation
.end field

.field private logo:Lcom/callapp/common/model/json/JSONCHLocalLogo;

.field private opening_hours:Lcom/callapp/common/model/json/JSONCHLocalOpeningHours;

.field private venue:Lcom/callapp/common/model/json/JSONCHLocalVenue;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    if-eqz p1, :cond_d

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_5

    .line 44
    :cond_1
    check-cast p1, Lcom/callapp/common/model/json/JSONCHLocalContentAds;

    .line 46
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalContentAds;->venue:Lcom/callapp/common/model/json/JSONCHLocalVenue;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONCHLocalContentAds;->venue:Lcom/callapp/common/model/json/JSONCHLocalVenue;

    invoke-virtual {v2, v3}, Lcom/callapp/common/model/json/JSONCHLocalVenue;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONCHLocalContentAds;->venue:Lcom/callapp/common/model/json/JSONCHLocalVenue;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 47
    :cond_3
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalContentAds;->images:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONCHLocalContentAds;->images:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONCHLocalContentAds;->images:Ljava/util/List;

    if-eqz v2, :cond_5

    :goto_1
    return v1

    .line 48
    :cond_5
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalContentAds;->foursquare:Lcom/callapp/common/model/json/JSONCHLocalFoursquare;

    if-eqz v2, :cond_6

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONCHLocalContentAds;->foursquare:Lcom/callapp/common/model/json/JSONCHLocalFoursquare;

    invoke-virtual {v2, v3}, Lcom/callapp/common/model/json/JSONCHLocalFoursquare;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_6
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONCHLocalContentAds;->foursquare:Lcom/callapp/common/model/json/JSONCHLocalFoursquare;

    if-eqz v2, :cond_7

    :goto_2
    return v1

    .line 50
    :cond_7
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalContentAds;->background_image:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONCHLocalContentAds;->background_image:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_3

    :cond_8
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONCHLocalContentAds;->background_image:Ljava/lang/String;

    if-eqz v2, :cond_9

    :goto_3
    return v1

    .line 52
    :cond_9
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalContentAds;->opening_hours:Lcom/callapp/common/model/json/JSONCHLocalOpeningHours;

    if-eqz v2, :cond_a

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONCHLocalContentAds;->opening_hours:Lcom/callapp/common/model/json/JSONCHLocalOpeningHours;

    invoke-virtual {v2, v3}, Lcom/callapp/common/model/json/JSONCHLocalOpeningHours;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_4

    :cond_a
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONCHLocalContentAds;->opening_hours:Lcom/callapp/common/model/json/JSONCHLocalOpeningHours;

    if-eqz v2, :cond_b

    :goto_4
    return v1

    .line 54
    :cond_b
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalContentAds;->logo:Lcom/callapp/common/model/json/JSONCHLocalLogo;

    iget-object p1, p1, Lcom/callapp/common/model/json/JSONCHLocalContentAds;->logo:Lcom/callapp/common/model/json/JSONCHLocalLogo;

    if-eqz v2, :cond_c

    invoke-virtual {v2, p1}, Lcom/callapp/common/model/json/JSONCHLocalLogo;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_c
    if-nez p1, :cond_d

    return v0

    :cond_d
    :goto_5
    return v1
.end method

.method public getBackground_image()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalContentAds;->background_image:Ljava/lang/String;

    return-object v0
.end method

.method public getFoursquare()Lcom/callapp/common/model/json/JSONCHLocalFoursquare;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalContentAds;->foursquare:Lcom/callapp/common/model/json/JSONCHLocalFoursquare;

    return-object v0
.end method

.method public getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONCHLocalImages;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalContentAds;->images:Ljava/util/List;

    return-object v0
.end method

.method public getLogo()Lcom/callapp/common/model/json/JSONCHLocalLogo;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalContentAds;->logo:Lcom/callapp/common/model/json/JSONCHLocalLogo;

    return-object v0
.end method

.method public getOpening_hours()Lcom/callapp/common/model/json/JSONCHLocalOpeningHours;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalContentAds;->opening_hours:Lcom/callapp/common/model/json/JSONCHLocalOpeningHours;

    return-object v0
.end method

.method public getVenue()Lcom/callapp/common/model/json/JSONCHLocalVenue;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalContentAds;->venue:Lcom/callapp/common/model/json/JSONCHLocalVenue;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalContentAds;->venue:Lcom/callapp/common/model/json/JSONCHLocalVenue;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONCHLocalVenue;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 61
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalContentAds;->images:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 62
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalContentAds;->foursquare:Lcom/callapp/common/model/json/JSONCHLocalFoursquare;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONCHLocalFoursquare;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 63
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalContentAds;->background_image:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 64
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalContentAds;->opening_hours:Lcom/callapp/common/model/json/JSONCHLocalOpeningHours;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONCHLocalOpeningHours;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 65
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalContentAds;->logo:Lcom/callapp/common/model/json/JSONCHLocalLogo;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONCHLocalLogo;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    return v0
.end method
