.class public Lcom/callapp/common/model/json/JSONContact;
.super Lcom/callapp/common/model/json/CallAppJSONObject;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/common/model/PriorityInterface;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    value = {
        "lastUpdated",
        "fromDevice",
        "allSocialIDs",
        "allNegatives"
    }
.end annotation

.annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
    value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_DEFAULT:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
.end annotation


# static fields
.field public static final transient ENTITY_TYPE_BUSINESS:I = 0x2

.field public static final transient ENTITY_TYPE_BUSINESS_STR:Ljava/lang/String; = "BUSINESS"

.field public static final transient ENTITY_TYPE_PERSON:I = 0x1

.field public static final transient ENTITY_TYPE_PERSON_STR:Ljava/lang/String; = "PERSON"

.field private static final serialVersionUID:J = -0x1df5da954f30a5b0L


# instance fields
.field private activeDuringPeriod:Z

.field private addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONAddress;",
            ">;"
        }
    .end annotation
.end field

.field private atAGlance:Ljava/lang/String;

.field private avgRating:D

.field private birthday:Lcom/callapp/common/model/json/JSONDate;

.field private categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONCategory;",
            ">;"
        }
    .end annotation
.end field

.field private cover:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private emails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONEmail;",
            ">;"
        }
    .end annotation
.end field

.field private events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONEvent;",
            ">;"
        }
    .end annotation
.end field

.field private facebookID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private facebookNegatives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private foursquareID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private foursquareNegatives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private googlePlacesId:Ljava/lang/String;

.field private googlePlusID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private googlePlusNegatives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private huaweiPlacesId:Ljava/lang/String;

.field private iMAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONIMaddress;",
            ">;"
        }
    .end annotation
.end field

.field private instagramID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private instagramNegatives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private installedApp:Z

.field private isPhotoChosenFromUserProfile:Z

.field private lastUpdated:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field private lat:D

.field private linkedinID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private linkedinNegatives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private linkedinPubProfileUrl:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private lng:D

.field private menuUrl:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private namesWithSource:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONDataAndSource<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private openingHours:Lcom/callapp/common/model/json/JSONOpeningHours;

.field private orgData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONOrgData;",
            ">;"
        }
    .end annotation
.end field

.field private phoneNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONPhoneNumber;",
            ">;"
        }
    .end annotation
.end field

.field private photoUrl:Ljava/lang/String;

.field private pinterestID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private pinterestNegatives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private priceRange:I

.field private priority:J

.field private reserveUrl:Ljava/lang/String;

.field private reviews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONReview;",
            ">;"
        }
    .end annotation
.end field

.field private seeInsidePanoId:Ljava/lang/String;

.field private spamScore:I

.field private twitterNegatives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private type:I

.field private url:Ljava/lang/String;

.field private userDefinition:Ljava/lang/String;

.field private venueFoursquareID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private vkID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private vkNegatives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private websites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONWebsite;",
            ">;"
        }
    .end annotation
.end field

.field private xingID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private xingNegatives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Lcom/callapp/common/model/json/CallAppJSONObject;-><init>()V

    const/4 v0, 0x1

    .line 32
    iput v0, p0, Lcom/callapp/common/model/json/JSONContact;->type:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 33
    iput-wide v0, p0, Lcom/callapp/common/model/json/JSONContact;->avgRating:D

    const-wide/16 v0, 0x0

    .line 48
    iput-wide v0, p0, Lcom/callapp/common/model/json/JSONContact;->lat:D

    .line 49
    iput-wide v0, p0, Lcom/callapp/common/model/json/JSONContact;->lng:D

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/callapp/common/model/json/JSONContact;->activeDuringPeriod:Z

    .line 51
    iput-boolean v0, p0, Lcom/callapp/common/model/json/JSONContact;->installedApp:Z

    .line 59
    iput v0, p0, Lcom/callapp/common/model/json/JSONContact;->spamScore:I

    const-wide/16 v0, -0x1

    .line 77
    iput-wide v0, p0, Lcom/callapp/common/model/json/JSONContact;->priority:J

    .line 79
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->lastUpdated:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public atleastOneIdentifierExists()Z
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->phoneNumbers:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->emails:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_63

    .line 665
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2b

    .line 667
    :cond_1
    check-cast p1, Lcom/callapp/common/model/json/JSONContact;

    .line 669
    iget-boolean v2, p0, Lcom/callapp/common/model/json/JSONContact;->isPhotoChosenFromUserProfile:Z

    iget-boolean v3, p1, Lcom/callapp/common/model/json/JSONContact;->isPhotoChosenFromUserProfile:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 670
    :cond_2
    iget v2, p0, Lcom/callapp/common/model/json/JSONContact;->type:I

    iget v3, p1, Lcom/callapp/common/model/json/JSONContact;->type:I

    if-eq v2, v3, :cond_3

    return v1

    .line 671
    :cond_3
    iget-wide v2, p1, Lcom/callapp/common/model/json/JSONContact;->avgRating:D

    iget-wide v4, p0, Lcom/callapp/common/model/json/JSONContact;->avgRating:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_4

    return v1

    .line 672
    :cond_4
    iget v2, p0, Lcom/callapp/common/model/json/JSONContact;->priceRange:I

    iget v3, p1, Lcom/callapp/common/model/json/JSONContact;->priceRange:I

    if-eq v2, v3, :cond_5

    return v1

    .line 673
    :cond_5
    iget-wide v2, p1, Lcom/callapp/common/model/json/JSONContact;->lat:D

    iget-wide v4, p0, Lcom/callapp/common/model/json/JSONContact;->lat:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_6

    return v1

    .line 674
    :cond_6
    iget-wide v2, p1, Lcom/callapp/common/model/json/JSONContact;->lng:D

    iget-wide v4, p0, Lcom/callapp/common/model/json/JSONContact;->lng:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_7

    return v1

    .line 675
    :cond_7
    iget-boolean v2, p0, Lcom/callapp/common/model/json/JSONContact;->activeDuringPeriod:Z

    iget-boolean v3, p1, Lcom/callapp/common/model/json/JSONContact;->activeDuringPeriod:Z

    if-eq v2, v3, :cond_8

    return v1

    .line 676
    :cond_8
    iget-boolean v2, p0, Lcom/callapp/common/model/json/JSONContact;->installedApp:Z

    iget-boolean v3, p1, Lcom/callapp/common/model/json/JSONContact;->installedApp:Z

    if-eq v2, v3, :cond_9

    return v1

    .line 677
    :cond_9
    iget v2, p0, Lcom/callapp/common/model/json/JSONContact;->spamScore:I

    iget v3, p1, Lcom/callapp/common/model/json/JSONContact;->spamScore:I

    if-eq v2, v3, :cond_a

    return v1

    .line 678
    :cond_a
    iget-wide v2, p0, Lcom/callapp/common/model/json/JSONContact;->priority:J

    iget-wide v4, p1, Lcom/callapp/common/model/json/JSONContact;->priority:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_b

    return v1

    .line 679
    :cond_b
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->phoneNumbers:Ljava/util/List;

    if-eqz v2, :cond_c

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->phoneNumbers:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_0

    :cond_c
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->phoneNumbers:Ljava/util/List;

    if-eqz v2, :cond_d

    :goto_0
    return v1

    .line 681
    :cond_d
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->name:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_1

    :cond_e
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->name:Ljava/lang/String;

    if-eqz v2, :cond_f

    :goto_1
    return v1

    .line 682
    :cond_f
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->emails:Ljava/util/List;

    if-eqz v2, :cond_10

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->emails:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_2

    :cond_10
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->emails:Ljava/util/List;

    if-eqz v2, :cond_11

    :goto_2
    return v1

    .line 683
    :cond_11
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->websites:Ljava/util/List;

    if-eqz v2, :cond_12

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->websites:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_3

    :cond_12
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->websites:Ljava/util/List;

    if-eqz v2, :cond_13

    :goto_3
    return v1

    .line 685
    :cond_13
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->addresses:Ljava/util/List;

    if-eqz v2, :cond_14

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->addresses:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_4

    :cond_14
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->addresses:Ljava/util/List;

    if-eqz v2, :cond_15

    :goto_4
    return v1

    .line 687
    :cond_15
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->orgData:Ljava/util/List;

    if-eqz v2, :cond_16

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->orgData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_5

    :cond_16
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->orgData:Ljava/util/List;

    if-eqz v2, :cond_17

    :goto_5
    return v1

    .line 688
    :cond_17
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->iMAddresses:Ljava/util/List;

    if-eqz v2, :cond_18

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->iMAddresses:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_6

    :cond_18
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->iMAddresses:Ljava/util/List;

    if-eqz v2, :cond_19

    :goto_6
    return v1

    .line 690
    :cond_19
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->photoUrl:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->photoUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_7

    :cond_1a
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->photoUrl:Ljava/lang/String;

    if-eqz v2, :cond_1b

    :goto_7
    return v1

    .line 692
    :cond_1b
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->birthday:Lcom/callapp/common/model/json/JSONDate;

    if-eqz v2, :cond_1c

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->birthday:Lcom/callapp/common/model/json/JSONDate;

    invoke-virtual {v2, v3}, Lcom/callapp/common/model/json/JSONDate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_8

    :cond_1c
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->birthday:Lcom/callapp/common/model/json/JSONDate;

    if-eqz v2, :cond_1d

    :goto_8
    return v1

    .line 694
    :cond_1d
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->categories:Ljava/util/List;

    if-eqz v2, :cond_1e

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->categories:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_9

    :cond_1e
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->categories:Ljava/util/List;

    if-eqz v2, :cond_1f

    :goto_9
    return v1

    .line 696
    :cond_1f
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->reviews:Ljava/util/List;

    if-eqz v2, :cond_20

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->reviews:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_a

    :cond_20
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->reviews:Ljava/util/List;

    if-eqz v2, :cond_21

    :goto_a
    return v1

    .line 697
    :cond_21
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->events:Ljava/util/List;

    if-eqz v2, :cond_22

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->events:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_b

    :cond_22
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->events:Ljava/util/List;

    if-eqz v2, :cond_23

    :goto_b
    return v1

    .line 698
    :cond_23
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->description:Ljava/lang/String;

    if-eqz v2, :cond_24

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    goto :goto_c

    :cond_24
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->description:Ljava/lang/String;

    if-eqz v2, :cond_25

    :goto_c
    return v1

    .line 700
    :cond_25
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->openingHours:Lcom/callapp/common/model/json/JSONOpeningHours;

    if-eqz v2, :cond_26

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->openingHours:Lcom/callapp/common/model/json/JSONOpeningHours;

    invoke-virtual {v2, v3}, Lcom/callapp/common/model/json/JSONOpeningHours;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    goto :goto_d

    :cond_26
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->openingHours:Lcom/callapp/common/model/json/JSONOpeningHours;

    if-eqz v2, :cond_27

    :goto_d
    return v1

    .line 702
    :cond_27
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->facebookID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v2, :cond_28

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->facebookID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v2, v3}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    goto :goto_e

    :cond_28
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->facebookID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v2, :cond_29

    :goto_e
    return v1

    .line 704
    :cond_29
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->vkID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v2, :cond_2a

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->vkID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v2, v3}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    goto :goto_f

    :cond_2a
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->vkID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v2, :cond_2b

    :goto_f
    return v1

    .line 706
    :cond_2b
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->linkedinPubProfileUrl:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v2, :cond_2c

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->linkedinPubProfileUrl:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v2, v3}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    goto :goto_10

    :cond_2c
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->linkedinPubProfileUrl:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v2, :cond_2d

    :goto_10
    return v1

    .line 708
    :cond_2d
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->linkedinID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v2, :cond_2e

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->linkedinID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v2, v3}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    goto :goto_11

    :cond_2e
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->linkedinID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v2, :cond_2f

    :goto_11
    return v1

    .line 710
    :cond_2f
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v2, :cond_30

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v2, v3}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    goto :goto_12

    :cond_30
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v2, :cond_31

    :goto_12
    return v1

    .line 712
    :cond_31
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->googlePlusID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v2, :cond_32

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->googlePlusID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v2, v3}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    goto :goto_13

    :cond_32
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->googlePlusID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v2, :cond_33

    :goto_13
    return v1

    .line 714
    :cond_33
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->foursquareID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v2, :cond_34

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->foursquareID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v2, v3}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    goto :goto_14

    :cond_34
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->foursquareID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v2, :cond_35

    :goto_14
    return v1

    .line 716
    :cond_35
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->venueFoursquareID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v2, :cond_36

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->venueFoursquareID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v2, v3}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    goto :goto_15

    :cond_36
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->venueFoursquareID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v2, :cond_37

    :goto_15
    return v1

    .line 718
    :cond_37
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->instagramID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v2, :cond_38

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->instagramID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v2, v3}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    goto :goto_16

    :cond_38
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->instagramID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v2, :cond_39

    :goto_16
    return v1

    .line 720
    :cond_39
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->xingID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v2, :cond_3a

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->xingID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v2, v3}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    goto :goto_17

    :cond_3a
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->xingID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v2, :cond_3b

    :goto_17
    return v1

    .line 721
    :cond_3b
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->pinterestID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v2, :cond_3c

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->pinterestID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v2, v3}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    goto :goto_18

    :cond_3c
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->pinterestID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v2, :cond_3d

    :goto_18
    return v1

    .line 723
    :cond_3d
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->seeInsidePanoId:Ljava/lang/String;

    if-eqz v2, :cond_3e

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->seeInsidePanoId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    goto :goto_19

    :cond_3e
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->seeInsidePanoId:Ljava/lang/String;

    if-eqz v2, :cond_3f

    :goto_19
    return v1

    .line 725
    :cond_3f
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->url:Ljava/lang/String;

    if-eqz v2, :cond_40

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    goto :goto_1a

    :cond_40
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->url:Ljava/lang/String;

    if-eqz v2, :cond_41

    :goto_1a
    return v1

    .line 726
    :cond_41
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->atAGlance:Ljava/lang/String;

    if-eqz v2, :cond_42

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->atAGlance:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    goto :goto_1b

    :cond_42
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->atAGlance:Ljava/lang/String;

    if-eqz v2, :cond_43

    :goto_1b
    return v1

    .line 728
    :cond_43
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->menuUrl:Ljava/lang/String;

    if-eqz v2, :cond_44

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->menuUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    goto :goto_1c

    :cond_44
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->menuUrl:Ljava/lang/String;

    if-eqz v2, :cond_45

    :goto_1c
    return v1

    .line 729
    :cond_45
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->reserveUrl:Ljava/lang/String;

    if-eqz v2, :cond_46

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->reserveUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    goto :goto_1d

    :cond_46
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->reserveUrl:Ljava/lang/String;

    if-eqz v2, :cond_47

    :goto_1d
    return v1

    .line 731
    :cond_47
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->googlePlacesId:Ljava/lang/String;

    if-eqz v2, :cond_48

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->googlePlacesId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    goto :goto_1e

    :cond_48
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->googlePlacesId:Ljava/lang/String;

    if-eqz v2, :cond_49

    :goto_1e
    return v1

    .line 733
    :cond_49
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->huaweiPlacesId:Ljava/lang/String;

    if-eqz v2, :cond_4a

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->huaweiPlacesId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4b

    goto :goto_1f

    :cond_4a
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->huaweiPlacesId:Ljava/lang/String;

    if-eqz v2, :cond_4b

    :goto_1f
    return v1

    .line 735
    :cond_4b
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->facebookNegatives:Ljava/util/List;

    if-eqz v2, :cond_4c

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->facebookNegatives:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    goto :goto_20

    :cond_4c
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->facebookNegatives:Ljava/util/List;

    if-eqz v2, :cond_4d

    :goto_20
    return v1

    .line 737
    :cond_4d
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->vkNegatives:Ljava/util/List;

    if-eqz v2, :cond_4e

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->vkNegatives:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    goto :goto_21

    :cond_4e
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->vkNegatives:Ljava/util/List;

    if-eqz v2, :cond_4f

    :goto_21
    return v1

    .line 739
    :cond_4f
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->linkedinNegatives:Ljava/util/List;

    if-eqz v2, :cond_50

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->linkedinNegatives:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    goto :goto_22

    :cond_50
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->linkedinNegatives:Ljava/util/List;

    if-eqz v2, :cond_51

    :goto_22
    return v1

    .line 741
    :cond_51
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->twitterNegatives:Ljava/util/List;

    if-eqz v2, :cond_52

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->twitterNegatives:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_53

    goto :goto_23

    :cond_52
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->twitterNegatives:Ljava/util/List;

    if-eqz v2, :cond_53

    :goto_23
    return v1

    .line 743
    :cond_53
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->googlePlusNegatives:Ljava/util/List;

    if-eqz v2, :cond_54

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->googlePlusNegatives:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    goto :goto_24

    :cond_54
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->googlePlusNegatives:Ljava/util/List;

    if-eqz v2, :cond_55

    :goto_24
    return v1

    .line 745
    :cond_55
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->foursquareNegatives:Ljava/util/List;

    if-eqz v2, :cond_56

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->foursquareNegatives:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    goto :goto_25

    :cond_56
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->foursquareNegatives:Ljava/util/List;

    if-eqz v2, :cond_57

    :goto_25
    return v1

    .line 747
    :cond_57
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->instagramNegatives:Ljava/util/List;

    if-eqz v2, :cond_58

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->instagramNegatives:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    goto :goto_26

    :cond_58
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->instagramNegatives:Ljava/util/List;

    if-eqz v2, :cond_59

    :goto_26
    return v1

    .line 749
    :cond_59
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->xingNegatives:Ljava/util/List;

    if-eqz v2, :cond_5a

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->xingNegatives:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5b

    goto :goto_27

    :cond_5a
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->xingNegatives:Ljava/util/List;

    if-eqz v2, :cond_5b

    :goto_27
    return v1

    .line 751
    :cond_5b
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->pinterestNegatives:Ljava/util/List;

    if-eqz v2, :cond_5c

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->pinterestNegatives:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    goto :goto_28

    :cond_5c
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->pinterestNegatives:Ljava/util/List;

    if-eqz v2, :cond_5d

    :goto_28
    return v1

    .line 753
    :cond_5d
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->userDefinition:Ljava/lang/String;

    if-eqz v2, :cond_5e

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->userDefinition:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    goto :goto_29

    :cond_5e
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->userDefinition:Ljava/lang/String;

    if-eqz v2, :cond_5f

    :goto_29
    return v1

    .line 755
    :cond_5f
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->cover:Ljava/lang/String;

    if-eqz v2, :cond_60

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONContact;->cover:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_61

    goto :goto_2a

    :cond_60
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONContact;->cover:Ljava/lang/String;

    if-eqz v2, :cond_61

    :goto_2a
    return v1

    .line 757
    :cond_61
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->namesWithSource:Ljava/util/List;

    iget-object p1, p1, Lcom/callapp/common/model/json/JSONContact;->namesWithSource:Ljava/util/List;

    if-eqz v2, :cond_62

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_62
    if-nez p1, :cond_63

    return v0

    :cond_63
    :goto_2b
    return v1
.end method

.method public getAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONAddress;",
            ">;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->addresses:Ljava/util/List;

    return-object v0
.end method

.method public getAtAGlance()Ljava/lang/String;
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->atAGlance:Ljava/lang/String;

    return-object v0
.end method

.method public getAvgRating()D
    .locals 2

    .line 373
    iget-wide v0, p0, Lcom/callapp/common/model/json/JSONContact;->avgRating:D

    return-wide v0
.end method

.method public getBirthday()Lcom/callapp/common/model/json/JSONDate;
    .locals 4

    .line 449
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->birthday:Lcom/callapp/common/model/json/JSONDate;

    if-eqz v0, :cond_0

    return-object v0

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->events:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 454
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/common/model/json/JSONEvent;

    .line 455
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONEvent;->getFormattedDate()Lcom/callapp/common/model/json/JSONDate;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONEvent;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 456
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONEvent;->getFormattedDate()Lcom/callapp/common/model/json/JSONDate;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONCategory;",
            ">;"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->categories:Ljava/util/List;

    return-object v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEmails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONEmail;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->emails:Ljava/util/List;

    return-object v0
.end method

.method public getEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONEvent;",
            ">;"
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->events:Ljava/util/List;

    return-object v0
.end method

.method public getFacebookID()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->facebookID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getFacebookNegatives()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 475
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->facebookNegatives:Ljava/util/List;

    return-object v0
.end method

.method public getFoursquareID()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->foursquareID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getFoursquareNegatives()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->foursquareNegatives:Ljava/util/List;

    return-object v0
.end method

.method public getGooglePlacesId()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->googlePlacesId:Ljava/lang/String;

    return-object v0
.end method

.method public getGooglePlusID()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->googlePlusID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getGooglePlusNegatives()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->googlePlusNegatives:Ljava/util/List;

    return-object v0
.end method

.method public getHuaweiPlacesId()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->huaweiPlacesId:Ljava/lang/String;

    return-object v0
.end method

.method public getIMAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONIMaddress;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->iMAddresses:Ljava/util/List;

    return-object v0
.end method

.method public getInstagramID()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->instagramID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getInstagramNegatives()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 500
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->instagramNegatives:Ljava/util/List;

    return-object v0
.end method

.method public getLastUpdated()Ljava/util/Date;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .line 466
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->lastUpdated:Ljava/util/Date;

    return-object v0
.end method

.method public getLat()D
    .locals 2

    .line 381
    iget-wide v0, p0, Lcom/callapp/common/model/json/JSONContact;->lat:D

    return-wide v0
.end method

.method public getLinkedinID()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->linkedinID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getLinkedinNegatives()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 484
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->linkedinNegatives:Ljava/util/List;

    return-object v0
.end method

.method public getLinkedinPubProfileUrl()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->linkedinPubProfileUrl:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getLng()D
    .locals 2

    .line 389
    iget-wide v0, p0, Lcom/callapp/common/model/json/JSONContact;->lng:D

    return-wide v0
.end method

.method public getMenuUrl()Ljava/lang/String;
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->menuUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamesWithSource()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONDataAndSource<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 548
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->namesWithSource:Ljava/util/List;

    return-object v0
.end method

.method public getOpeningHours()Lcom/callapp/common/model/json/JSONOpeningHours;
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->openingHours:Lcom/callapp/common/model/json/JSONOpeningHours;

    return-object v0
.end method

.method public getOrgData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONOrgData;",
            ">;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->orgData:Ljava/util/List;

    return-object v0
.end method

.method public getPhoneNumbers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONPhoneNumber;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->phoneNumbers:Ljava/util/List;

    return-object v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->photoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPinterestID()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->pinterestID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getPinterestNegatives()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 540
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->pinterestNegatives:Ljava/util/List;

    return-object v0
.end method

.method public getPriceRange()I
    .locals 1

    .line 556
    iget v0, p0, Lcom/callapp/common/model/json/JSONContact;->priceRange:I

    return v0
.end method

.method public getPriority()J
    .locals 2

    .line 596
    iget-wide v0, p0, Lcom/callapp/common/model/json/JSONContact;->priority:J

    return-wide v0
.end method

.method public getReserveUrl()Ljava/lang/String;
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->reserveUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getReviews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONReview;",
            ">;"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->reviews:Ljava/util/List;

    return-object v0
.end method

.method public getSeeInsidePanoId()Ljava/lang/String;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->seeInsidePanoId:Ljava/lang/String;

    return-object v0
.end method

.method public getSpamScore()I
    .locals 1

    .line 437
    iget v0, p0, Lcom/callapp/common/model/json/JSONContact;->spamScore:I

    return v0
.end method

.method public getTwitterNegatives()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 488
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->twitterNegatives:Ljava/util/List;

    return-object v0
.end method

.method public getTwitterScreenName()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 268
    iget v0, p0, Lcom/callapp/common/model/json/JSONContact;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUserDefinition()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->userDefinition:Ljava/lang/String;

    return-object v0
.end method

.method public getVenueFoursquareID()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->venueFoursquareID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getVkID()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->vkID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getVkNegatives()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 479
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->vkNegatives:Ljava/util/List;

    return-object v0
.end method

.method public getWebsites()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONWebsite;",
            ">;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->websites:Ljava/util/List;

    return-object v0
.end method

.method public getXingID()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->xingID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getXingNegatives()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 532
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->xingNegatives:Ljava/util/List;

    return-object v0
.end method

.method public hasAnyNegatives()Z
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->facebookNegatives:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->linkedinNegatives:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->twitterNegatives:Ljava/util/List;

    .line 623
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->googlePlusNegatives:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->foursquareNegatives:Ljava/util/List;

    .line 624
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->instagramNegatives:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->xingNegatives:Ljava/util/List;

    .line 625
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->pinterestNegatives:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->vkNegatives:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public hasAnySocialIDs()Z
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->facebookID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->linkedinPubProfileUrl:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->linkedinID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->googlePlusID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->foursquareID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->instagramID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->xingID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->pinterestID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->vkID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 764
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->phoneNumbers:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 765
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->name:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 766
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->emails:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 767
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->websites:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 768
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->addresses:Ljava/util/List;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 769
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->orgData:Ljava/util/List;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 770
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->iMAddresses:Ljava/util/List;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 771
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->photoUrl:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 772
    iget-boolean v2, p0, Lcom/callapp/common/model/json/JSONContact;->isPhotoChosenFromUserProfile:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 773
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->birthday:Lcom/callapp/common/model/json/JSONDate;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONDate;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 774
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->categories:Ljava/util/List;

    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 775
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->reviews:Ljava/util/List;

    if-eqz v2, :cond_a

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 776
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->events:Ljava/util/List;

    if-eqz v2, :cond_b

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_b
    const/4 v2, 0x0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 777
    iget v2, p0, Lcom/callapp/common/model/json/JSONContact;->type:I

    add-int/2addr v0, v2

    .line 778
    iget-wide v2, p0, Lcom/callapp/common/model/json/JSONContact;->avgRating:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 780
    iget v2, p0, Lcom/callapp/common/model/json/JSONContact;->priceRange:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 781
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->description:Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_c

    :cond_c
    const/4 v2, 0x0

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 782
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->openingHours:Lcom/callapp/common/model/json/JSONOpeningHours;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONOpeningHours;->hashCode()I

    move-result v2

    goto :goto_d

    :cond_d
    const/4 v2, 0x0

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 783
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->facebookID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->hashCode()I

    move-result v2

    goto :goto_e

    :cond_e
    const/4 v2, 0x0

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 784
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->vkID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->hashCode()I

    move-result v2

    goto :goto_f

    :cond_f
    const/4 v2, 0x0

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 785
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->linkedinPubProfileUrl:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->hashCode()I

    move-result v2

    goto :goto_10

    :cond_10
    const/4 v2, 0x0

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 786
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->linkedinID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->hashCode()I

    move-result v2

    goto :goto_11

    :cond_11
    const/4 v2, 0x0

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 787
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->hashCode()I

    move-result v2

    goto :goto_12

    :cond_12
    const/4 v2, 0x0

    :goto_12
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 788
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->googlePlusID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->hashCode()I

    move-result v2

    goto :goto_13

    :cond_13
    const/4 v2, 0x0

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 789
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->foursquareID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->hashCode()I

    move-result v2

    goto :goto_14

    :cond_14
    const/4 v2, 0x0

    :goto_14
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 790
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->venueFoursquareID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->hashCode()I

    move-result v2

    goto :goto_15

    :cond_15
    const/4 v2, 0x0

    :goto_15
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 791
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->instagramID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->hashCode()I

    move-result v2

    goto :goto_16

    :cond_16
    const/4 v2, 0x0

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 792
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->xingID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_17
    const/4 v2, 0x0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 793
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->pinterestID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->hashCode()I

    move-result v2

    goto :goto_18

    :cond_18
    const/4 v2, 0x0

    :goto_18
    add-int/2addr v0, v2

    .line 794
    iget-wide v2, p0, Lcom/callapp/common/model/json/JSONContact;->lat:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v0, v3

    .line 796
    iget-wide v2, p0, Lcom/callapp/common/model/json/JSONContact;->lng:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 798
    iget-boolean v2, p0, Lcom/callapp/common/model/json/JSONContact;->activeDuringPeriod:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 799
    iget-boolean v2, p0, Lcom/callapp/common/model/json/JSONContact;->installedApp:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 800
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->seeInsidePanoId:Ljava/lang/String;

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_19

    :cond_19
    const/4 v2, 0x0

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 801
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->url:Ljava/lang/String;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1a

    :cond_1a
    const/4 v2, 0x0

    :goto_1a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 802
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->atAGlance:Ljava/lang/String;

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1b

    :cond_1b
    const/4 v2, 0x0

    :goto_1b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 803
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->menuUrl:Ljava/lang/String;

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1c

    :cond_1c
    const/4 v2, 0x0

    :goto_1c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 804
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->reserveUrl:Ljava/lang/String;

    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1d

    :cond_1d
    const/4 v2, 0x0

    :goto_1d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 805
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->googlePlacesId:Ljava/lang/String;

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1e

    :cond_1e
    const/4 v2, 0x0

    :goto_1e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 806
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->huaweiPlacesId:Ljava/lang/String;

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1f

    :cond_1f
    const/4 v2, 0x0

    :goto_1f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 807
    iget v2, p0, Lcom/callapp/common/model/json/JSONContact;->spamScore:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 808
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->facebookNegatives:Ljava/util/List;

    if-eqz v2, :cond_20

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_20

    :cond_20
    const/4 v2, 0x0

    :goto_20
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 809
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->vkNegatives:Ljava/util/List;

    if-eqz v2, :cond_21

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_21

    :cond_21
    const/4 v2, 0x0

    :goto_21
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 810
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->linkedinNegatives:Ljava/util/List;

    if-eqz v2, :cond_22

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_22

    :cond_22
    const/4 v2, 0x0

    :goto_22
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 811
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->twitterNegatives:Ljava/util/List;

    if-eqz v2, :cond_23

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_23

    :cond_23
    const/4 v2, 0x0

    :goto_23
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 812
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->googlePlusNegatives:Ljava/util/List;

    if-eqz v2, :cond_24

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_24

    :cond_24
    const/4 v2, 0x0

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 813
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->foursquareNegatives:Ljava/util/List;

    if-eqz v2, :cond_25

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_25

    :cond_25
    const/4 v2, 0x0

    :goto_25
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 814
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->instagramNegatives:Ljava/util/List;

    if-eqz v2, :cond_26

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_26

    :cond_26
    const/4 v2, 0x0

    :goto_26
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 815
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->xingNegatives:Ljava/util/List;

    if-eqz v2, :cond_27

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_27

    :cond_27
    const/4 v2, 0x0

    :goto_27
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 816
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->pinterestNegatives:Ljava/util/List;

    if-eqz v2, :cond_28

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_28

    :cond_28
    const/4 v2, 0x0

    :goto_28
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 817
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->namesWithSource:Ljava/util/List;

    if-eqz v2, :cond_29

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_29

    :cond_29
    const/4 v2, 0x0

    :goto_29
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 818
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->userDefinition:Ljava/lang/String;

    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2a

    :cond_2a
    const/4 v2, 0x0

    :goto_2a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 819
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->cover:Ljava/lang/String;

    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_2b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 820
    iget-wide v1, p0, Lcom/callapp/common/model/json/JSONContact;->priority:J

    ushr-long v3, v1, v4

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public isActiveDuringPeriod()Z
    .locals 1

    .line 588
    iget-boolean v0, p0, Lcom/callapp/common/model/json/JSONContact;->activeDuringPeriod:Z

    return v0
.end method

.method public isBusiness()Z
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .line 273
    iget v0, p0, Lcom/callapp/common/model/json/JSONContact;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInstalledApp()Z
    .locals 1

    .line 580
    iget-boolean v0, p0, Lcom/callapp/common/model/json/JSONContact;->installedApp:Z

    return v0
.end method

.method public isPhotoChosenFromUserProfile()Z
    .locals 1

    .line 655
    iget-boolean v0, p0, Lcom/callapp/common/model/json/JSONContact;->isPhotoChosenFromUserProfile:Z

    return v0
.end method

.method public resetAllSocialIDs()V
    .locals 1

    const/4 v0, 0x0

    .line 604
    invoke-virtual {p0, v0}, Lcom/callapp/common/model/json/JSONContact;->setFacebookID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 605
    invoke-virtual {p0, v0}, Lcom/callapp/common/model/json/JSONContact;->setVkID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 606
    invoke-virtual {p0, v0}, Lcom/callapp/common/model/json/JSONContact;->setLinkedinPubProfileUrl(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 607
    invoke-virtual {p0, v0}, Lcom/callapp/common/model/json/JSONContact;->setLinkedinID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 608
    invoke-virtual {p0, v0}, Lcom/callapp/common/model/json/JSONContact;->setTwitterScreenName(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 609
    invoke-virtual {p0, v0}, Lcom/callapp/common/model/json/JSONContact;->setGooglePlusID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 610
    invoke-virtual {p0, v0}, Lcom/callapp/common/model/json/JSONContact;->setFoursquareID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 611
    invoke-virtual {p0, v0}, Lcom/callapp/common/model/json/JSONContact;->setInstagramID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 612
    invoke-virtual {p0, v0}, Lcom/callapp/common/model/json/JSONContact;->setXingID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 613
    invoke-virtual {p0, v0}, Lcom/callapp/common/model/json/JSONContact;->setPinterestID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    return-void
.end method

.method public setActiveDuringPeriod(Z)V
    .locals 0

    .line 592
    iput-boolean p1, p0, Lcom/callapp/common/model/json/JSONContact;->activeDuringPeriod:Z

    return-void
.end method

.method public setAddresses(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONAddress;",
            ">;)V"
        }
    .end annotation

    .line 220
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->addresses:Ljava/util/List;

    return-void
.end method

.method public setAtAGlance(Ljava/lang/String;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->atAGlance:Ljava/lang/String;

    return-void
.end method

.method public setAvgRating(D)V
    .locals 0

    .line 377
    iput-wide p1, p0, Lcom/callapp/common/model/json/JSONContact;->avgRating:D

    return-void
.end method

.method public setBirthday(Lcom/callapp/common/model/json/JSONDate;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->birthday:Lcom/callapp/common/model/json/JSONDate;

    return-void
.end method

.method public setCategories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONCategory;",
            ">;)V"
        }
    .end annotation

    .line 248
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->categories:Ljava/util/List;

    return-void
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->cover:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 568
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->description:Ljava/lang/String;

    return-void
.end method

.method public setEmails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONEmail;",
            ">;)V"
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->emails:Ljava/util/List;

    return-void
.end method

.method public setEvents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONEvent;",
            ">;)V"
        }
    .end annotation

    .line 345
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->events:Ljava/util/List;

    return-void
.end method

.method public setFacebookID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->facebookID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method

.method public setFacebookNegatives(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 508
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->facebookNegatives:Ljava/util/List;

    return-void
.end method

.method public setFoursquareID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->foursquareID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method

.method public setFoursquareNegatives(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 524
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->foursquareNegatives:Ljava/util/List;

    return-void
.end method

.method public setGooglePlacesId(Ljava/lang/String;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->googlePlacesId:Ljava/lang/String;

    return-void
.end method

.method public setGooglePlusID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->googlePlusID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method

.method public setGooglePlusNegatives(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 520
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->googlePlusNegatives:Ljava/util/List;

    return-void
.end method

.method public setHuaweiPlacesId(Ljava/lang/String;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->huaweiPlacesId:Ljava/lang/String;

    return-void
.end method

.method public setIMAddresses(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONIMaddress;",
            ">;)V"
        }
    .end annotation

    .line 236
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->iMAddresses:Ljava/util/List;

    return-void
.end method

.method public setInstagramID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->instagramID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method

.method public setInstagramNegatives(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 528
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->instagramNegatives:Ljava/util/List;

    return-void
.end method

.method public setInstalledApp(Z)V
    .locals 0

    .line 584
    iput-boolean p1, p0, Lcom/callapp/common/model/json/JSONContact;->installedApp:Z

    return-void
.end method

.method public setLastUpdated(Ljava/util/Date;)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .line 471
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->lastUpdated:Ljava/util/Date;

    return-void
.end method

.method public setLat(D)V
    .locals 0

    .line 385
    iput-wide p1, p0, Lcom/callapp/common/model/json/JSONContact;->lat:D

    return-void
.end method

.method public setLinkagesAndNegatives(Lcom/callapp/common/model/json/JSONContact;)V
    .locals 1

    .line 630
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONContact;->getFacebookID()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/common/model/json/JSONContact;->setFacebookID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 631
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONContact;->getVkID()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/common/model/json/JSONContact;->setVkID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 632
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONContact;->getLinkedinPubProfileUrl()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/common/model/json/JSONContact;->setLinkedinPubProfileUrl(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 633
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONContact;->getLinkedinID()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/common/model/json/JSONContact;->setLinkedinID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 634
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONContact;->getTwitterScreenName()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/common/model/json/JSONContact;->setTwitterScreenName(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 635
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONContact;->getGooglePlusID()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/common/model/json/JSONContact;->setGooglePlusID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 636
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONContact;->getFoursquareID()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/common/model/json/JSONContact;->setFoursquareID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 637
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONContact;->getInstagramID()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/common/model/json/JSONContact;->setInstagramID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 638
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONContact;->getXingID()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/common/model/json/JSONContact;->setXingID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 639
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONContact;->getPinterestID()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/common/model/json/JSONContact;->setPinterestID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 640
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONContact;->getVenueFoursquareID()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/common/model/json/JSONContact;->setVenueFoursquareID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 643
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONContact;->getFacebookNegatives()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/common/model/json/JSONContact;->setFacebookNegatives(Ljava/util/List;)V

    .line 644
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONContact;->getVkNegatives()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/common/model/json/JSONContact;->setVkNegatives(Ljava/util/List;)V

    .line 645
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONContact;->getLinkedinNegatives()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/common/model/json/JSONContact;->setLinkedinNegatives(Ljava/util/List;)V

    .line 646
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONContact;->getTwitterNegatives()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/common/model/json/JSONContact;->setTwitterNegatives(Ljava/util/List;)V

    .line 647
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONContact;->getGooglePlusNegatives()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/common/model/json/JSONContact;->setGooglePlusNegatives(Ljava/util/List;)V

    .line 648
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONContact;->getFoursquareNegatives()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/common/model/json/JSONContact;->setFoursquareNegatives(Ljava/util/List;)V

    .line 649
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONContact;->getInstagramNegatives()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/common/model/json/JSONContact;->setInstagramNegatives(Ljava/util/List;)V

    .line 650
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONContact;->getXingNegatives()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/common/model/json/JSONContact;->setXingNegatives(Ljava/util/List;)V

    .line 651
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONContact;->getPinterestNegatives()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/common/model/json/JSONContact;->setPinterestNegatives(Ljava/util/List;)V

    return-void
.end method

.method public setLinkedinID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->linkedinID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method

.method public setLinkedinNegatives(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 512
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->linkedinNegatives:Ljava/util/List;

    return-void
.end method

.method public setLinkedinPubProfileUrl(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->linkedinPubProfileUrl:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method

.method public setLng(D)V
    .locals 0

    .line 393
    iput-wide p1, p0, Lcom/callapp/common/model/json/JSONContact;->lng:D

    return-void
.end method

.method public setMenuUrl(Ljava/lang/String;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->menuUrl:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->name:Ljava/lang/String;

    return-void
.end method

.method public setNames(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONDataAndSource<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 552
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->namesWithSource:Ljava/util/List;

    return-void
.end method

.method public setOpeningHours(Lcom/callapp/common/model/json/JSONOpeningHours;)V
    .locals 0

    .line 576
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->openingHours:Lcom/callapp/common/model/json/JSONOpeningHours;

    return-void
.end method

.method public setOrgData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONOrgData;",
            ">;)V"
        }
    .end annotation

    .line 228
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->orgData:Ljava/util/List;

    return-void
.end method

.method public setPhoneNumbers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONPhoneNumber;",
            ">;)V"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->phoneNumbers:Ljava/util/List;

    return-void
.end method

.method public setPhotoChosenFromUserProfile(Z)V
    .locals 0

    .line 659
    iput-boolean p1, p0, Lcom/callapp/common/model/json/JSONContact;->isPhotoChosenFromUserProfile:Z

    return-void
.end method

.method public setPhotoUrl(Ljava/lang/String;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->photoUrl:Ljava/lang/String;

    return-void
.end method

.method public setPinterestID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->pinterestID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method

.method public setPinterestNegatives(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 544
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->pinterestNegatives:Ljava/util/List;

    return-void
.end method

.method public setPriceRange(I)V
    .locals 0

    .line 560
    iput p1, p0, Lcom/callapp/common/model/json/JSONContact;->priceRange:I

    return-void
.end method

.method public setPriority(J)V
    .locals 0

    .line 600
    iput-wide p1, p0, Lcom/callapp/common/model/json/JSONContact;->priority:J

    return-void
.end method

.method public setReserveUrl(Ljava/lang/String;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->reserveUrl:Ljava/lang/String;

    return-void
.end method

.method public setReviews(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONReview;",
            ">;)V"
        }
    .end annotation

    .line 256
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->reviews:Ljava/util/List;

    return-void
.end method

.method public setSeeInsidePanoId(Ljava/lang/String;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->seeInsidePanoId:Ljava/lang/String;

    return-void
.end method

.method public setSpamScore(I)V
    .locals 0

    .line 441
    iput p1, p0, Lcom/callapp/common/model/json/JSONContact;->spamScore:I

    return-void
.end method

.method public setTwitterNegatives(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 516
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->twitterNegatives:Ljava/util/List;

    return-void
.end method

.method public setTwitterScreenName(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 264
    iput p1, p0, Lcom/callapp/common/model/json/JSONContact;->type:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->url:Ljava/lang/String;

    return-void
.end method

.method public setUserDefinition(Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->userDefinition:Ljava/lang/String;

    return-void
.end method

.method public setVenueFoursquareID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->venueFoursquareID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method

.method public setVkID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->vkID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method

.method public setVkNegatives(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 504
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->vkNegatives:Ljava/util/List;

    return-void
.end method

.method public setWebsites(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONWebsite;",
            ">;)V"
        }
    .end annotation

    .line 212
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->websites:Ljava/util/List;

    return-void
.end method

.method public setXingID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->xingID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method

.method public setXingNegatives(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 536
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONContact;->xingNegatives:Ljava/util/List;

    return-void
.end method

.method public sortLists()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->emails:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 99
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/callapp/common/model/json/JSONContact$1;

    invoke-direct {v1, p0}, Lcom/callapp/common/model/json/JSONContact$1;-><init>(Lcom/callapp/common/model/json/JSONContact;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 104
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->emails:Ljava/util/List;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->websites:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 107
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/callapp/common/model/json/JSONContact$2;

    invoke-direct {v1, p0}, Lcom/callapp/common/model/json/JSONContact$2;-><init>(Lcom/callapp/common/model/json/JSONContact;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 112
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->websites:Ljava/util/List;

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->addresses:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 115
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/callapp/common/model/json/JSONContact$3;

    invoke-direct {v1, p0}, Lcom/callapp/common/model/json/JSONContact$3;-><init>(Lcom/callapp/common/model/json/JSONContact;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 120
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->addresses:Ljava/util/List;

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->orgData:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 123
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/callapp/common/model/json/JSONContact$4;

    invoke-direct {v1, p0}, Lcom/callapp/common/model/json/JSONContact$4;-><init>(Lcom/callapp/common/model/json/JSONContact;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 128
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->orgData:Ljava/util/List;

    .line 130
    :cond_3
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->iMAddresses:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 131
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/callapp/common/model/json/JSONContact$5;

    invoke-direct {v1, p0}, Lcom/callapp/common/model/json/JSONContact$5;-><init>(Lcom/callapp/common/model/json/JSONContact;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 136
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->iMAddresses:Ljava/util/List;

    .line 138
    :cond_4
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->categories:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 139
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/callapp/common/model/json/JSONContact$6;

    invoke-direct {v1, p0}, Lcom/callapp/common/model/json/JSONContact$6;-><init>(Lcom/callapp/common/model/json/JSONContact;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 144
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->categories:Ljava/util/List;

    .line 146
    :cond_5
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->events:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 147
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/callapp/common/model/json/JSONContact$7;

    invoke-direct {v1, p0}, Lcom/callapp/common/model/json/JSONContact$7;-><init>(Lcom/callapp/common/model/json/JSONContact;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 152
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/callapp/common/model/json/JSONContact;->events:Ljava/util/List;

    :cond_6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JSONContact{phoneNumbers="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONContact;->phoneNumbers:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONContact;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", emails="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->emails:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", websites="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->websites:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", addresses="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->addresses:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", orgData="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->orgData:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", iMAddresses="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->iMAddresses:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", photoUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->photoUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isPhotoChosenFromUserProfile="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/callapp/common/model/json/JSONContact;->isPhotoChosenFromUserProfile:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", birthday="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->birthday:Lcom/callapp/common/model/json/JSONDate;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", categories="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->categories:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", reviews="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->reviews:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", events="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->events:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/callapp/common/model/json/JSONContact;->type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", avgRating="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/callapp/common/model/json/JSONContact;->avgRating:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", priceRange="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/callapp/common/model/json/JSONContact;->priceRange:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", description=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", openingHours="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->openingHours:Lcom/callapp/common/model/json/JSONOpeningHours;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", facebookID="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->facebookID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", linkedinPubProfileUrl="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->linkedinPubProfileUrl:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", linkedinID="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->linkedinID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", twitterScreenName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", googlePlusID="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->googlePlusID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", foursquareID="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->foursquareID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", venueFoursquareID="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->venueFoursquareID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", instagramID="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->instagramID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", xingID="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->xingID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", pinterestID="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->pinterestID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", vkID="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->vkID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", lat="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/callapp/common/model/json/JSONContact;->lat:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", lng="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/callapp/common/model/json/JSONContact;->lng:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", activeDuringPeriod="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/callapp/common/model/json/JSONContact;->activeDuringPeriod:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", installedApp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/callapp/common/model/json/JSONContact;->installedApp:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", seeInsidePanoId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->seeInsidePanoId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", atAGlance=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->atAGlance:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", menuUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->menuUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", reserveUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->reserveUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", googlePlacesId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->googlePlacesId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", huaweiPlacesId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->huaweiPlacesId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", spamScore="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/callapp/common/model/json/JSONContact;->spamScore:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", userDefinition=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->userDefinition:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cover=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONContact;->cover:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", facebookNegatives="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONContact;->facebookNegatives:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", vkNegatives="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONContact;->vkNegatives:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", linkedinNegatives="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONContact;->linkedinNegatives:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", twitterNegatives="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONContact;->twitterNegatives:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", googlePlusNegatives="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONContact;->googlePlusNegatives:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", foursquareNegatives="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONContact;->foursquareNegatives:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", instagramNegatives="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONContact;->instagramNegatives:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", xingNegatives="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONContact;->xingNegatives:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pinterestNegatives="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONContact;->pinterestNegatives:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", namesWithSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONContact;->namesWithSource:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/callapp/common/model/json/JSONContact;->priority:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lastUpdated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONContact;->lastUpdated:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
