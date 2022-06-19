.class public Lcom/callapp/common/model/json/JSONCHLocalResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ENTRY_TYPE_ORGANISATION:Ljava/lang/String; = "Organisation"

.field private static final ENTRY_TYPE_PERSON:Ljava/lang/String; = "Person"

.field private static final serialVersionUID:J = -0x2622447d16b7797bL


# instance fields
.field private actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONCHLocalAction;",
            ">;"
        }
    .end annotation
.end field

.field private addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;",
            ">;"
        }
    .end annotation
.end field

.field private business:Lcom/callapp/common/model/json/JSONCHLocalBusiness;

.field private contacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONCHLocalPhone;",
            ">;"
        }
    .end annotation
.end field

.field private content_ads:Lcom/callapp/common/model/json/JSONCHLocalContentAds;

.field private description:Ljava/lang/String;

.field private entry_type:Ljava/lang/String;

.field private location:Lcom/callapp/common/model/json/JSONCHLocalResultsLocation;

.field private subtitle:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private web_permalink:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
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

    if-eqz p1, :cond_17

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_a

    .line 79
    :cond_1
    check-cast p1, Lcom/callapp/common/model/json/JSONCHLocalResult;

    .line 81
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalResult;->web_permalink:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONCHLocalResult;->web_permalink:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONCHLocalResult;->web_permalink:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 83
    :cond_3
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalResult;->title:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONCHLocalResult;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONCHLocalResult;->title:Ljava/lang/String;

    if-eqz v2, :cond_5

    :goto_1
    return v1

    .line 84
    :cond_5
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalResult;->subtitle:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONCHLocalResult;->subtitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_6
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONCHLocalResult;->subtitle:Ljava/lang/String;

    if-eqz v2, :cond_7

    :goto_2
    return v1

    .line 86
    :cond_7
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalResult;->description:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONCHLocalResult;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_3

    :cond_8
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONCHLocalResult;->description:Ljava/lang/String;

    if-eqz v2, :cond_9

    :goto_3
    return v1

    .line 88
    :cond_9
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalResult;->addresses:Ljava/util/List;

    if-eqz v2, :cond_a

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONCHLocalResult;->addresses:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_4

    :cond_a
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONCHLocalResult;->addresses:Ljava/util/List;

    if-eqz v2, :cond_b

    :goto_4
    return v1

    .line 90
    :cond_b
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalResult;->location:Lcom/callapp/common/model/json/JSONCHLocalResultsLocation;

    if-eqz v2, :cond_c

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONCHLocalResult;->location:Lcom/callapp/common/model/json/JSONCHLocalResultsLocation;

    invoke-virtual {v2, v3}, Lcom/callapp/common/model/json/JSONCHLocalResultsLocation;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_5

    :cond_c
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONCHLocalResult;->location:Lcom/callapp/common/model/json/JSONCHLocalResultsLocation;

    if-eqz v2, :cond_d

    :goto_5
    return v1

    .line 92
    :cond_d
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalResult;->contacts:Ljava/util/List;

    if-eqz v2, :cond_e

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONCHLocalResult;->contacts:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_6

    :cond_e
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONCHLocalResult;->contacts:Ljava/util/List;

    if-eqz v2, :cond_f

    :goto_6
    return v1

    .line 94
    :cond_f
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalResult;->content_ads:Lcom/callapp/common/model/json/JSONCHLocalContentAds;

    if-eqz v2, :cond_10

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONCHLocalResult;->content_ads:Lcom/callapp/common/model/json/JSONCHLocalContentAds;

    invoke-virtual {v2, v3}, Lcom/callapp/common/model/json/JSONCHLocalContentAds;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_7

    :cond_10
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONCHLocalResult;->content_ads:Lcom/callapp/common/model/json/JSONCHLocalContentAds;

    if-eqz v2, :cond_11

    :goto_7
    return v1

    .line 96
    :cond_11
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalResult;->actions:Ljava/util/List;

    if-eqz v2, :cond_12

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONCHLocalResult;->actions:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_8

    :cond_12
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONCHLocalResult;->actions:Ljava/util/List;

    if-eqz v2, :cond_13

    :goto_8
    return v1

    .line 97
    :cond_13
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalResult;->entry_type:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONCHLocalResult;->entry_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_9

    :cond_14
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONCHLocalResult;->entry_type:Ljava/lang/String;

    if-eqz v2, :cond_15

    :goto_9
    return v1

    .line 99
    :cond_15
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalResult;->business:Lcom/callapp/common/model/json/JSONCHLocalBusiness;

    iget-object p1, p1, Lcom/callapp/common/model/json/JSONCHLocalResult;->business:Lcom/callapp/common/model/json/JSONCHLocalBusiness;

    if-eqz v2, :cond_16

    invoke-virtual {v2, p1}, Lcom/callapp/common/model/json/JSONCHLocalBusiness;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_16
    if-nez p1, :cond_17

    return v0

    :cond_17
    :goto_a
    return v1
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONCHLocalAction;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalResult;->actions:Ljava/util/List;

    return-object v0
.end method

.method public getAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalResult;->addresses:Ljava/util/List;

    return-object v0
.end method

.method public getBusiness()Lcom/callapp/common/model/json/JSONCHLocalBusiness;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalResult;->business:Lcom/callapp/common/model/json/JSONCHLocalBusiness;

    return-object v0
.end method

.method public getContacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONCHLocalPhone;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalResult;->contacts:Ljava/util/List;

    return-object v0
.end method

.method public getContent_ads()Lcom/callapp/common/model/json/JSONCHLocalContentAds;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalResult;->content_ads:Lcom/callapp/common/model/json/JSONCHLocalContentAds;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalResult;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEntry_type()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalResult;->entry_type:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Lcom/callapp/common/model/json/JSONCHLocalResultsLocation;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalResult;->location:Lcom/callapp/common/model/json/JSONCHLocalResultsLocation;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalResult;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalResult;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getWeb_permalink()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalResult;->web_permalink:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalResult;->web_permalink:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 106
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalResult;->title:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 107
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalResult;->subtitle:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 108
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalResult;->description:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 109
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalResult;->addresses:Ljava/util/List;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 110
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalResult;->location:Lcom/callapp/common/model/json/JSONCHLocalResultsLocation;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONCHLocalResultsLocation;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 111
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalResult;->contacts:Ljava/util/List;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 112
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalResult;->content_ads:Lcom/callapp/common/model/json/JSONCHLocalContentAds;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONCHLocalContentAds;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 113
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalResult;->actions:Ljava/util/List;

    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 114
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalResult;->entry_type:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 115
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalResult;->business:Lcom/callapp/common/model/json/JSONCHLocalBusiness;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONCHLocalBusiness;->hashCode()I

    move-result v1

    :cond_a
    add-int/2addr v0, v1

    return v0
.end method

.method public isOrganisation()Z
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalResult;->entry_type:Ljava/lang/String;

    const-string v1, "Organisation"

    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
