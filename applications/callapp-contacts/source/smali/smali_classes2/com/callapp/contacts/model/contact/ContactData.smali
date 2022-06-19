.class public Lcom/callapp/contacts/model/contact/ContactData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7bdb60e58d331790L


# instance fields
.field protected address:Lcom/callapp/common/model/json/JSONAddress;

.field private addresses:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONAddress;",
            ">;"
        }
    .end annotation
.end field

.field private auPersonLookupData:Lcom/callapp/contacts/model/contact/AuPersonLookupData;

.field private avgRating:D

.field private birthday:Lcom/callapp/common/model/json/JSONDate;

.field private blockedNumberData:Lcom/callapp/contacts/model/objectbox/BlockedNumberData;

.field private callHistoryData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/contact/CallHistoryData;",
            ">;>;"
        }
    .end annotation
.end field

.field private callReason:Ljava/lang/String;

.field private categories:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONCategory;",
            ">;"
        }
    .end annotation
.end field

.field private chLocalData:Lcom/callapp/contacts/model/contact/CHLocalData;

.field private chosenContactPhoto:Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;

.field private cover:Ljava/lang/String;

.field final dataSources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private deviceData:Lcom/callapp/contacts/model/contact/DeviceData;

.field private deviceId:J

.field protected final emails:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/callapp/common/model/json/JSONEmail;",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private events:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONEvent;",
            ">;"
        }
    .end annotation
.end field

.field private facebookData:Lcom/callapp/contacts/model/contact/social/FacebookData;

.field private facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private facebookPlaceData:Lcom/callapp/contacts/model/contact/FacebookPlaceData;

.field private facebookSearchResults:Lcom/callapp/contacts/model/contact/SocialSearchResults;

.field private fastCacheData:Lcom/callapp/contacts/model/objectbox/FastCacheData;

.field private firstName:Ljava/lang/String;

.field private foursquareData:Lcom/callapp/contacts/model/contact/social/FoursquareData;

.field private foursquareId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private foursquareSearchResults:Lcom/callapp/contacts/model/contact/SocialSearchResults;

.field private fullName:Ljava/lang/String;

.field private genomeData:Lcom/callapp/common/model/json/JSONContact;

.field private gmailEmailData:Lcom/callapp/contacts/model/contact/GmailEmailData;

.field private googleMapsLatLng:Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;

.field private googlePlacesData:Lcom/callapp/contacts/model/contact/GooglePlacesData;

.field private googlePlusSearchResults:Lcom/callapp/contacts/model/contact/SocialSearchResults;

.field private gravatarData:Lcom/callapp/contacts/model/contact/GravatarData;

.field private hasSuggestions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private huaweiPlaceData:Lcom/callapp/contacts/model/contact/HuaweiPlaceData;

.field private id:Ljava/lang/String;

.field private imAddresses:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONIMaddress;",
            ">;"
        }
    .end annotation
.end field

.field private imExtractedPhotoData:Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;

.field private instagramData:Lcom/callapp/contacts/model/contact/social/InstagramData;

.field private instagramId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private instagramSearchResults:Lcom/callapp/contacts/model/contact/SocialSearchResults;

.field private intentData:Lcom/callapp/contacts/model/contact/IntentData;

.field private isChosenPhotoUrlFoundInDb:Z

.field private isInSync:Z

.field private isIncognito:Z

.field private isRecognized:Z

.field private isSpamReported:Z

.field private isUnknwonNumber:Ljava/lang/Boolean;

.field private isUnsearchableNumber:Ljava/lang/Boolean;

.field private isVoiceMail:Ljava/lang/Boolean;

.field private lat:D

.field private final transient listenerRegistry:Lcom/callapp/contacts/framework/event/FieldListenerRegistry;

.field private lng:D

.field loadedFields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation
.end field

.field private final locks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private menuUrl:Ljava/lang/String;

.field private mutualFriends:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;"
        }
    .end annotation
.end field

.field private names:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/model/contact/SureCounter;",
            ">;"
        }
    .end annotation
.end field

.field private negativesMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private notificationTelegramData:Lcom/callapp/contacts/model/contact/social/NotificationFromIMData;

.field private notificationViberData:Lcom/callapp/contacts/model/contact/social/NotificationFromIMData;

.field private notificationWhatsAppData:Lcom/callapp/contacts/model/contact/social/NotificationFromIMData;

.field private numberGeocodingDescription:Lcom/callapp/common/model/json/JSONAddress;

.field onlySure:Z

.field private openingHours:Lcom/callapp/common/model/json/JSONOpeningHours;

.field private organizations:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONOrgData;",
            ">;"
        }
    .end annotation
.end field

.field private final transient pastChangedFields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation
.end field

.field private phone:Lcom/callapp/framework/phone/Phone;

.field private phoneOrigin:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

.field private phones:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/callapp/framework/phone/Phone;",
            ">;"
        }
    .end annotation
.end field

.field private photoBGColor:Ljava/lang/Integer;

.field private photoDataSourceToUpdateName:Lcom/callapp/contacts/model/contact/DataSource;

.field private photoUrls:Lcom/callapp/contacts/model/contact/PhotoUrls;

.field private pinterestData:Lcom/callapp/contacts/model/contact/social/PinterestData;

.field private pinterestId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private pinterestSearchResults:Lcom/callapp/contacts/model/contact/SocialSearchResults;

.field private priceRange:I

.field private records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/CallRecorder;",
            ">;"
        }
    .end annotation
.end field

.field private reserveUrl:Ljava/lang/String;

.field private reviews:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONReview;",
            ">;"
        }
    .end annotation
.end field

.field private skypeData:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/callapp/contacts/loader/im/SkypeLoader$SkypeChatData;",
            ">;"
        }
    .end annotation
.end field

.field private spamScore:I

.field private suggestionData:Lcom/callapp/contacts/model/contact/SuggestionData;

.field private suggestionMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private twilioTrustedCommData:Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;

.field private twitterData:Lcom/callapp/contacts/model/contact/social/TwitterData;

.field private twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private twitterSearchResults:Lcom/callapp/contacts/model/contact/SocialSearchResults;

.field private final uploadedPhotosUrl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/callapp/contacts/model/UploadedPhoto;",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private userCorrectedData:Lcom/callapp/contacts/model/objectbox/UserCorrectedData;

.field private userDefinition:Ljava/lang/String;

.field private userMediaData:Lcom/callapp/contacts/model/objectbox/UserMediaData;

.field private userProfileData:Lcom/callapp/contacts/model/contact/UserProfileData;

.field private userSpamData:Lcom/callapp/contacts/model/objectbox/UserSpamData;

.field private venueFoursquareData:Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;

.field private venueFoursquareIDFromSearchData:Lcom/callapp/contacts/model/contact/social/VenueFoursquareIdFromSearchData;

.field private venueFoursquareId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private vkData:Lcom/callapp/contacts/model/contact/social/VKData;

.field private vkId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private vkSearchResults:Lcom/callapp/contacts/model/contact/SocialSearchResults;

.field private webVideos:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/callapp/contacts/model/contact/VideoData;",
            ">;"
        }
    .end annotation
.end field

.field private final websites:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONWebsite;",
            ">;"
        }
    .end annotation
.end field

.field private websitesSocialIDsData:Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;

.field private whatsAppDataExtraction:Z

.field private whitePagesData:Lcom/callapp/contacts/model/contact/WhitePagesData;

.field private yahooData:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/callapp/contacts/model/contact/ChatData;",
            ">;"
        }
    .end annotation
.end field

.field private youTubeVideos:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/callapp/contacts/model/contact/VideoData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/callapp/framework/phone/Phone;JLcom/callapp/contacts/model/objectbox/ExtractedInfo;)V
    .locals 8

    .line 337
    sget-object v4, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NONE:Ljava/util/EnumSet;

    invoke-static {}, Lcom/callapp/contacts/framework/event/NopListenerRegistry;->get()Lcom/callapp/contacts/framework/event/NopListenerRegistry;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/callapp/contacts/model/contact/ContactData;-><init>(Lcom/callapp/framework/phone/Phone;JLjava/util/Set;Lcom/callapp/contacts/framework/event/FieldListenerRegistry;ZLcom/callapp/contacts/model/objectbox/ExtractedInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/callapp/framework/phone/Phone;JLjava/util/Set;Lcom/callapp/contacts/framework/event/FieldListenerRegistry;ZLcom/callapp/contacts/model/objectbox/ExtractedInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/framework/phone/Phone;",
            "J",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;",
            "Lcom/callapp/contacts/framework/event/FieldListenerRegistry;",
            "Z",
            "Lcom/callapp/contacts/model/objectbox/ExtractedInfo;",
            ")V"
        }
    .end annotation

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->pastChangedFields:Ljava/util/Set;

    .line 122
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->locks:Ljava/util/Map;

    .line 127
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->dataSources:Ljava/util/Map;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->callHistoryData:Ljava/util/Map;

    const/4 v0, 0x0

    .line 162
    iput-boolean v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->isChosenPhotoUrlFoundInDb:Z

    .line 167
    iput-boolean v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->isSpamReported:Z

    .line 168
    iput-boolean v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->isRecognized:Z

    const/4 v1, 0x0

    .line 169
    iput-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->isUnsearchableNumber:Ljava/lang/Boolean;

    .line 170
    iput-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->isUnknwonNumber:Ljava/lang/Boolean;

    .line 172
    iput-boolean v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->isInSync:Z

    const-string v2, ""

    .line 185
    iput-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->fullName:Ljava/lang/String;

    const-wide/16 v3, 0x0

    .line 197
    iput-wide v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->lat:D

    .line 200
    iput-wide v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->lng:D

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 203
    iput-wide v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->avgRating:D

    .line 207
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->phones:Ljava/util/Collection;

    .line 210
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->addresses:Ljava/util/Collection;

    .line 213
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->emails:Ljava/util/Map;

    .line 216
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->events:Ljava/util/Collection;

    .line 219
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->reviews:Ljava/util/Collection;

    .line 222
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->imAddresses:Ljava/util/Collection;

    .line 225
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->organizations:Ljava/util/Collection;

    .line 228
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->websites:Ljava/util/Collection;

    .line 231
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->names:Ljava/util/Map;

    .line 234
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->categories:Ljava/util/Collection;

    .line 237
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->mutualFriends:Ljava/util/Collection;

    .line 240
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->webVideos:Ljava/util/Collection;

    .line 243
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->uploadedPhotosUrl:Ljava/util/Map;

    .line 323
    invoke-static {}, Lcom/callapp/contacts/util/ArrayUtils;->a()Landroid/util/SparseArray;

    move-result-object v3

    iput-object v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->negativesMap:Landroid/util/SparseArray;

    .line 324
    invoke-static {}, Lcom/callapp/contacts/util/ArrayUtils;->a()Landroid/util/SparseArray;

    move-result-object v3

    iput-object v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->suggestionMap:Landroid/util/SparseArray;

    .line 325
    iput-boolean v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->onlySure:Z

    .line 328
    iput-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->firstName:Ljava/lang/String;

    .line 332
    iput-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->isVoiceMail:Ljava/lang/Boolean;

    .line 345
    iput-object p5, p0, Lcom/callapp/contacts/model/contact/ContactData;->listenerRegistry:Lcom/callapp/contacts/framework/event/FieldListenerRegistry;

    .line 346
    iput-object p4, p0, Lcom/callapp/contacts/model/contact/ContactData;->loadedFields:Ljava/util/Set;

    .line 347
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->phone:Lcom/callapp/framework/phone/Phone;

    .line 348
    iput-wide p2, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceId:J

    .line 349
    iput-boolean p6, p0, Lcom/callapp/contacts/model/contact/ContactData;->onlySure:Z

    .line 350
    iput-object p7, p0, Lcom/callapp/contacts/model/contact/ContactData;->phoneOrigin:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    .line 352
    invoke-interface {p5, p0}, Lcom/callapp/contacts/framework/event/FieldListenerRegistry;->setValue(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 353
    invoke-direct {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateId()Z

    .line 354
    sget-object p1, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object p2, Lcom/callapp/contacts/model/contact/ContactField;->deviceId:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {p1, p2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$002(Lcom/callapp/contacts/model/contact/ContactData;D)D
    .locals 0

    .line 115
    iput-wide p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->lat:D

    return-wide p1
.end method

.method static synthetic access$102(Lcom/callapp/contacts/model/contact/ContactData;D)D
    .locals 0

    .line 115
    iput-wide p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->lng:D

    return-wide p1
.end method

.method static synthetic access$202(Lcom/callapp/contacts/model/contact/ContactData;D)D
    .locals 0

    .line 115
    iput-wide p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->avgRating:D

    return-wide p1
.end method

.method static synthetic access$302(Lcom/callapp/contacts/model/contact/ContactData;I)I
    .locals 0

    .line 115
    iput p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->priceRange:I

    return p1
.end method

.method static synthetic access$402(Lcom/callapp/contacts/model/contact/ContactData;I)I
    .locals 0

    .line 115
    iput p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->spamScore:I

    return p1
.end method

.method public static buildCacheKey(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 571
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const-string p0, "%s-%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private buildCacheKey(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "%s-%s"

    .line 563
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2238
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, p0

    const-string p0, "%s@%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2240
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getLatLng(Ljava/lang/Object;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "lat"

    .line 1072
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    const-string v1, "lng"

    .line 1073
    invoke-static {p1, v1}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    .line 1075
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private hasSpecificIMAccount(I)Z
    .locals 0

    .line 2159
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->getSpecificIMAccount(I)Lcom/callapp/common/model/json/JSONIMaddress;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private loadPhoto(Z)Lcom/callapp/contacts/model/contact/PhotoUpdater;
    .locals 3

    .line 1719
    invoke-direct {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updatePhotoFromDbIfNeeded()V

    .line 1721
    invoke-direct {p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->selectPhoto(Z)Lcom/callapp/contacts/model/contact/PhotoUpdater;

    move-result-object v0

    if-nez p1, :cond_4

    if-eqz v0, :cond_3

    .line 1725
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->getCurrentUrls()Lcom/callapp/contacts/model/contact/PhotoUrls;

    move-result-object p1

    .line 1726
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->photoUrls:Lcom/callapp/contacts/model/contact/PhotoUrls;

    invoke-static {p1, v1}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1727
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/PhotoUrls;->isNotEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1728
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->photoUrls:Lcom/callapp/contacts/model/contact/PhotoUrls;

    .line 1729
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object p1

    .line 1730
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->getCurrentPhotoBGColor()Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->photoBGColor:Ljava/lang/Integer;

    .line 1732
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v2, p1}, Lcom/callapp/contacts/model/contact/ContactData;->setDataSource(Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)V

    .line 1735
    iget-boolean v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->isInSync:Z

    if-nez v2, :cond_0

    .line 1736
    invoke-static {p0}, Lcom/callapp/contacts/loader/FastCacheDataManager;->b(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 1740
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->other:Lcom/callapp/contacts/model/contact/DataSource;

    if-eq p1, v2, :cond_1

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v2}, Lcom/callapp/contacts/model/contact/ContactData;->getDataSource(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v2

    if-eq v2, p1, :cond_1

    iget-object v2, p1, Lcom/callapp/contacts/model/contact/DataSource;->socialIdField:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v2}, Lcom/callapp/contacts/model/contact/ContactData;->isSure(Lcom/callapp/contacts/model/contact/ContactField;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1741
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->photoDataSourceToUpdateName:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1742
    new-instance p1, Lcom/callapp/contacts/model/contact/ContactData$5;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/model/contact/ContactData$5;-><init>(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 1748
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData$5;->execute()Lcom/callapp/contacts/manager/task/Task;

    goto :goto_0

    .line 1750
    :cond_1
    iput-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->photoDataSourceToUpdateName:Lcom/callapp/contacts/model/contact/DataSource;

    goto :goto_0

    .line 1753
    :cond_2
    iput-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->photoDataSourceToUpdateName:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1754
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->resetPhotoWithoutFiringAndUpdating()V

    .line 1757
    :goto_0
    const-class p1, Lcom/callapp/contacts/model/contact/ContactData;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Firing photoUrl: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->getCurrentUrls()Lcom/callapp/contacts/model/contact/PhotoUrls;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1758
    sget-object p1, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    goto :goto_1

    .line 1761
    :cond_3
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->resetPhotoWithoutFiringAndUpdating()V

    .line 1762
    sget-object p1, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Ljava/util/Set;)V

    :cond_4
    :goto_1
    return-object v0
.end method

.method private removeMutualFriends(I)V
    .locals 5

    .line 1360
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->mutualFriends:Ljava/util/Collection;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 1362
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1363
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->mutualFriends:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/model/PersonData;

    .line 1364
    invoke-virtual {v3}, Lcom/callapp/contacts/model/PersonData;->getType()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 1365
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1368
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/PersonData;

    .line 1369
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->mutualFriends:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 1373
    sget-object p1, Lcom/callapp/contacts/model/contact/ContactField;->mutualFriends:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    :cond_3
    return-void
.end method

.method private resetSocialImages(Lcom/callapp/contacts/model/contact/DataSource;)V
    .locals 4

    .line 1400
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->uploadedPhotosUrl:Ljava/util/Map;

    monitor-enter v0

    .line 1401
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->uploadedPhotosUrl:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1402
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1403
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1404
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/contact/DataSource;

    iget v2, v2, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    iget v3, p1, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    if-ne v2, v3, :cond_0

    .line 1405
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1408
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private selectPhoto(Z)Lcom/callapp/contacts/model/contact/PhotoUpdater;
    .locals 8

    .line 1770
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->fastCacheData:Lcom/callapp/contacts/model/objectbox/FastCacheData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->fastCacheData:Lcom/callapp/contacts/model/objectbox/FastCacheData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getPhotoDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1771
    :goto_0
    new-instance v2, Lcom/callapp/contacts/model/contact/PhotoUpdater;

    invoke-direct {v2, v0}, Lcom/callapp/contacts/model/contact/PhotoUpdater;-><init>(Lcom/callapp/contacts/model/contact/DataSource;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_1

    .line 1774
    iget-object v5, p0, Lcom/callapp/contacts/model/contact/ContactData;->fastCacheData:Lcom/callapp/contacts/model/objectbox/FastCacheData;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getPhotoUrls()Lcom/callapp/contacts/model/contact/PhotoUrls;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1775
    new-instance v5, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;

    iget-object v6, p0, Lcom/callapp/contacts/model/contact/ContactData;->fastCacheData:Lcom/callapp/contacts/model/objectbox/FastCacheData;

    invoke-virtual {v6}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getPhotoUrls()Lcom/callapp/contacts/model/contact/PhotoUrls;

    move-result-object v6

    invoke-virtual {v6}, Lcom/callapp/contacts/model/contact/PhotoUrls;->getPhotoUrl()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/callapp/contacts/model/contact/ContactData;->fastCacheData:Lcom/callapp/contacts/model/objectbox/FastCacheData;

    invoke-virtual {v7}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getPhotoUrls()Lcom/callapp/contacts/model/contact/PhotoUrls;

    move-result-object v7

    invoke-virtual {v7}, Lcom/callapp/contacts/model/contact/PhotoUrls;->getThumbnail()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/callapp/contacts/model/contact/ContactData;->fastCacheData:Lcom/callapp/contacts/model/objectbox/FastCacheData;

    .line 1776
    invoke-virtual {v6}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getPhotoBackGroundColor()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->withPhotoBGColor(Ljava/lang/Integer;)Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/callapp/contacts/model/contact/ContactData;->fastCacheData:Lcom/callapp/contacts/model/objectbox/FastCacheData;

    invoke-virtual {v6}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getPhotoDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->withDataSource(Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;

    move-result-object v5

    .line 1775
    invoke-virtual {v2, v5}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->update(Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;)Z

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-nez p1, :cond_4

    .line 1780
    iget-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->chosenContactPhoto:Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;

    if-eqz p1, :cond_4

    .line 1781
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object p1

    sget-object v6, Lcom/callapp/contacts/model/contact/DataSource;->google:Lcom/callapp/contacts/model/contact/DataSource;

    if-ne p1, v6, :cond_2

    .line 1782
    iget-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->googlePlacesData:Lcom/callapp/contacts/model/contact/GooglePlacesData;

    if-eqz p1, :cond_3

    .line 1783
    new-instance v6, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/GooglePlacesData;->getPhotoUrl()Ljava/lang/String;

    move-result-object p1

    sget-object v7, Lcom/callapp/contacts/model/contact/DataSource;->googlePlaces:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-direct {v6, p1, v7}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;-><init>(Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)V

    invoke-virtual {v2, v6}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->update(Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v2

    .line 1787
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->chosenContactPhoto:Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object p1

    sget-object v6, Lcom/callapp/contacts/model/contact/DataSource;->venueFoursquare:Lcom/callapp/contacts/model/contact/DataSource;

    if-ne p1, v6, :cond_3

    .line 1788
    iget-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->venueFoursquareData:Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;

    if-eqz p1, :cond_3

    .line 1789
    new-instance v6, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;->getPhotoUrl()Ljava/lang/String;

    move-result-object p1

    sget-object v7, Lcom/callapp/contacts/model/contact/DataSource;->venueFoursquare:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-direct {v6, p1, v7}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;-><init>(Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)V

    invoke-virtual {v2, v6}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->update(Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v2

    .line 1795
    :cond_3
    new-instance p1, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;

    iget-object v6, p0, Lcom/callapp/contacts/model/contact/ContactData;->chosenContactPhoto:Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;

    invoke-virtual {v6}, Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;->getUrl()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/callapp/contacts/model/contact/ContactData;->chosenContactPhoto:Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;

    invoke-virtual {v7}, Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v7

    invoke-direct {p1, v6, v7}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;-><init>(Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)V

    invoke-virtual {p1, v4}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->onlyThumbnail(Z)Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->update(Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v2

    .line 1800
    :cond_4
    invoke-static {}, Lcom/callapp/contacts/loader/api/ContactLoader;->getPreferPhotosFromDevice()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1801
    iget-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceData:Lcom/callapp/contacts/model/contact/DeviceData;

    if-eqz p1, :cond_5

    .line 1802
    new-instance v6, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/DeviceData;->getPhotoUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v7, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceData:Lcom/callapp/contacts/model/contact/DeviceData;

    invoke-virtual {v7}, Lcom/callapp/contacts/model/contact/DeviceData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v6, p1}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->withDataSource(Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->update(Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-object v2

    .line 1807
    :cond_5
    sget-object p1, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    if-ne v0, p1, :cond_6

    return-object v2

    .line 1812
    :cond_6
    iget-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    if-eqz p1, :cond_8

    .line 1813
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONContact;->isPhotoChosenFromUserProfile()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1814
    new-instance p1, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;

    iget-object v6, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    invoke-virtual {v6}, Lcom/callapp/common/model/json/JSONContact;->getPhotoUrl()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-direct {p1, v6, v7}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;-><init>(Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)V

    invoke-virtual {v2, p1}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->update(Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;)Z

    move-result p1

    if-eqz p1, :cond_8

    return-object v2

    .line 1818
    :cond_7
    new-instance p1, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;

    iget-object v6, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    invoke-virtual {v6}, Lcom/callapp/common/model/json/JSONContact;->getPhotoUrl()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-direct {p1, v6, v7}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;-><init>(Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)V

    invoke-virtual {v2, p1}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->update(Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;)Z

    move-result p1

    if-eqz p1, :cond_8

    return-object v2

    .line 1824
    :cond_8
    sget-object p1, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    if-ne v0, p1, :cond_9

    return-object v2

    .line 1828
    :cond_9
    iget-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->googlePlacesData:Lcom/callapp/contacts/model/contact/GooglePlacesData;

    if-eqz p1, :cond_a

    .line 1829
    new-instance v6, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/GooglePlacesData;->getPhotoUrl()Ljava/lang/String;

    move-result-object p1

    sget-object v7, Lcom/callapp/contacts/model/contact/DataSource;->googlePlaces:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-direct {v6, p1, v7}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;-><init>(Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)V

    invoke-virtual {v2, v6}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->update(Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;)Z

    move-result p1

    if-eqz p1, :cond_a

    return-object v2

    .line 1834
    :cond_a
    iget-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookPlaceData:Lcom/callapp/contacts/model/contact/FacebookPlaceData;

    if-eqz p1, :cond_b

    .line 1835
    new-instance v6, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/FacebookPlaceData;->getPhotoUrl()Ljava/lang/String;

    move-result-object p1

    sget-object v7, Lcom/callapp/contacts/model/contact/DataSource;->facebookPlaces:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-direct {v6, p1, v7}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;-><init>(Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)V

    invoke-virtual {v2, v6}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->update(Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;)Z

    move-result p1

    if-eqz p1, :cond_b

    return-object v2

    .line 1840
    :cond_b
    iget-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->huaweiPlaceData:Lcom/callapp/contacts/model/contact/HuaweiPlaceData;

    if-eqz p1, :cond_c

    .line 1841
    new-instance v6, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/HuaweiPlaceData;->getPhotoUrl()Ljava/lang/String;

    move-result-object p1

    sget-object v7, Lcom/callapp/contacts/model/contact/DataSource;->huaweiPlaces:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-direct {v6, p1, v7}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;-><init>(Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)V

    invoke-virtual {v2, v6}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->update(Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;)Z

    move-result p1

    if-eqz p1, :cond_c

    return-object v2

    .line 1846
    :cond_c
    sget-object p1, Lcom/callapp/contacts/model/contact/DataSource;->googlePlaces:Lcom/callapp/contacts/model/contact/DataSource;

    if-ne v0, p1, :cond_d

    return-object v2

    .line 1850
    :cond_d
    iget-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->twilioTrustedCommData:Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;

    if-eqz p1, :cond_e

    .line 1851
    new-instance v6, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;->getLogoUrl()Ljava/lang/String;

    move-result-object p1

    sget-object v7, Lcom/callapp/contacts/model/contact/DataSource;->twilioTrustedComm:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-direct {v6, p1, v7}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;-><init>(Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)V

    iget-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->twilioTrustedCommData:Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;->getLogoBgColor()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->withPhotoBGColor(Ljava/lang/Integer;)Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->update(Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;)Z

    move-result p1

    if-eqz p1, :cond_e

    return-object v2

    .line 1856
    :cond_e
    sget-object p1, Lcom/callapp/contacts/model/contact/DataSource;->twilioTrustedComm:Lcom/callapp/contacts/model/contact/DataSource;

    if-ne v0, p1, :cond_f

    return-object v2

    .line 1861
    :cond_f
    invoke-direct {p0, v2, v4, v0}, Lcom/callapp/contacts/model/contact/ContactData;->selectPhotoFromSocial(Lcom/callapp/contacts/model/contact/PhotoUpdater;ZLcom/callapp/contacts/model/contact/DataSource;)Z

    move-result p1

    if-eqz p1, :cond_10

    return-object v2

    .line 1865
    :cond_10
    iget-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->gravatarData:Lcom/callapp/contacts/model/contact/GravatarData;

    if-eqz p1, :cond_11

    .line 1866
    new-instance v4, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/GravatarData;->getPhotoUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v6, p0, Lcom/callapp/contacts/model/contact/ContactData;->gravatarData:Lcom/callapp/contacts/model/contact/GravatarData;

    invoke-virtual {v6}, Lcom/callapp/contacts/model/contact/GravatarData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p1, v6}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/callapp/contacts/model/contact/DataSource;->gravatar:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v4, p1}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->withDataSource(Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->update(Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;)Z

    move-result p1

    if-eqz p1, :cond_11

    return-object v2

    .line 1871
    :cond_11
    sget-object p1, Lcom/callapp/contacts/model/contact/DataSource;->gravatar:Lcom/callapp/contacts/model/contact/DataSource;

    if-ne v0, p1, :cond_12

    return-object v2

    .line 1875
    :cond_12
    iget-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->chLocalData:Lcom/callapp/contacts/model/contact/CHLocalData;

    if-eqz p1, :cond_13

    .line 1876
    new-instance v4, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/CHLocalData;->getPhotoUrl()Ljava/lang/String;

    move-result-object p1

    sget-object v6, Lcom/callapp/contacts/model/contact/DataSource;->chLocal:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-direct {v4, p1, v6}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;-><init>(Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)V

    invoke-virtual {v2, v4}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->update(Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;)Z

    move-result p1

    if-eqz p1, :cond_13

    return-object v2

    .line 1881
    :cond_13
    sget-object p1, Lcom/callapp/contacts/model/contact/DataSource;->chLocal:Lcom/callapp/contacts/model/contact/DataSource;

    if-ne v0, p1, :cond_14

    return-object v2

    .line 1885
    :cond_14
    iget-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceData:Lcom/callapp/contacts/model/contact/DeviceData;

    if-eqz p1, :cond_15

    .line 1886
    new-instance v4, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/DeviceData;->getPhotoUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v6, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceData:Lcom/callapp/contacts/model/contact/DeviceData;

    invoke-virtual {v6}, Lcom/callapp/contacts/model/contact/DeviceData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p1, v6}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v4, p1}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->withDataSource(Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->update(Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;)Z

    move-result p1

    if-eqz p1, :cond_15

    return-object v2

    .line 1891
    :cond_15
    sget-object p1, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    if-ne v0, p1, :cond_16

    return-object v2

    .line 1896
    :cond_16
    invoke-direct {p0, v2, v3, v0}, Lcom/callapp/contacts/model/contact/ContactData;->selectPhotoFromSocial(Lcom/callapp/contacts/model/contact/PhotoUpdater;ZLcom/callapp/contacts/model/contact/DataSource;)Z

    move-result p1

    if-eqz p1, :cond_17

    return-object v2

    .line 1900
    :cond_17
    iget-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->imExtractedPhotoData:Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;

    if-eqz p1, :cond_18

    .line 1901
    new-instance v3, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;->getUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/callapp/contacts/model/contact/ContactData;->imExtractedPhotoData:Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;

    invoke-virtual {v4}, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;-><init>(Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)V

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->update(Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;)Z

    move-result p1

    if-eqz p1, :cond_18

    return-object v2

    .line 1906
    :cond_18
    sget-object p1, Lcom/callapp/contacts/model/contact/DataSource;->whatsapp:Lcom/callapp/contacts/model/contact/DataSource;

    if-eq v0, p1, :cond_1b

    sget-object p1, Lcom/callapp/contacts/model/contact/DataSource;->viber:Lcom/callapp/contacts/model/contact/DataSource;

    if-eq v0, p1, :cond_1b

    sget-object p1, Lcom/callapp/contacts/model/contact/DataSource;->signal:Lcom/callapp/contacts/model/contact/DataSource;

    if-ne v0, p1, :cond_19

    goto :goto_2

    :cond_19
    if-eqz v5, :cond_1a

    return-object v2

    :cond_1a
    return-object v1

    :cond_1b
    :goto_2
    return-object v2
.end method

.method private selectPhotoFromSocial(Lcom/callapp/contacts/model/contact/PhotoUpdater;ZLcom/callapp/contacts/model/contact/DataSource;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1918
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/callapp/contacts/model/contact/ContactData;->selectPhotoFromSocial(Lcom/callapp/contacts/model/contact/PhotoUpdater;ZZLcom/callapp/contacts/model/contact/DataSource;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1922
    :cond_0
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/callapp/contacts/model/contact/ContactData;->selectPhotoFromSocial(Lcom/callapp/contacts/model/contact/PhotoUpdater;ZZLcom/callapp/contacts/model/contact/DataSource;)Z

    move-result p1

    return p1
.end method

.method private selectPhotoFromSocial(Lcom/callapp/contacts/model/contact/PhotoUpdater;ZZLcom/callapp/contacts/model/contact/DataSource;)Z
    .locals 5

    .line 1926
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookData:Lcom/callapp/contacts/model/contact/social/FacebookData;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->isSure()Z

    move-result v0

    if-ne v0, p2, :cond_0

    .line 1927
    new-instance v0, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookData:Lcom/callapp/contacts/model/contact/social/FacebookData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookData:Lcom/callapp/contacts/model/contact/social/FacebookData;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->facebook:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->withDataSource(Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->onlyThumbnail(Z)Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->update(Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1932
    :cond_0
    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->facebook:Lcom/callapp/contacts/model/contact/DataSource;

    const/4 v2, 0x0

    if-ne p4, v0, :cond_2

    if-eqz p3, :cond_1

    .line 1933
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->getCurrentUrls()Lcom/callapp/contacts/model/contact/PhotoUrls;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->getCurrentUrls()Lcom/callapp/contacts/model/contact/PhotoUrls;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/PhotoUrls;->isNotEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    return v2

    .line 1936
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->twitterData:Lcom/callapp/contacts/model/contact/social/TwitterData;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->isSure()Z

    move-result v0

    if-ne v0, p2, :cond_3

    .line 1937
    new-instance v0, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;

    iget-object v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->twitterData:Lcom/callapp/contacts/model/contact/social/TwitterData;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/social/TwitterData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/callapp/contacts/model/contact/ContactData;->twitterData:Lcom/callapp/contacts/model/contact/social/TwitterData;

    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/social/TwitterData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->twitter:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->withDataSource(Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->onlyThumbnail(Z)Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->update(Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 1942
    :cond_3
    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->twitter:Lcom/callapp/contacts/model/contact/DataSource;

    if-ne p4, v0, :cond_5

    if-eqz p3, :cond_4

    .line 1943
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->getCurrentUrls()Lcom/callapp/contacts/model/contact/PhotoUrls;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->getCurrentUrls()Lcom/callapp/contacts/model/contact/PhotoUrls;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/PhotoUrls;->isNotEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    return v2

    .line 1946
    :cond_5
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->instagramId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->instagramId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->isSure()Z

    move-result v0

    if-ne v0, p2, :cond_6

    .line 1947
    invoke-static {}, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;->get()Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;

    move-result-object v0

    iget-object v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->instagramId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1948
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1949
    new-instance p2, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;

    invoke-direct {p2, v0, v0}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p4, Lcom/callapp/contacts/model/contact/DataSource;->instagram:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {p2, p4}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->withDataSource(Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->onlyThumbnail(Z)Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->update(Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;)Z

    return v1

    .line 1954
    :cond_6
    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->instagram:Lcom/callapp/contacts/model/contact/DataSource;

    if-ne p4, v0, :cond_8

    if-eqz p3, :cond_7

    .line 1955
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->getCurrentUrls()Lcom/callapp/contacts/model/contact/PhotoUrls;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->getCurrentUrls()Lcom/callapp/contacts/model/contact/PhotoUrls;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/PhotoUrls;->isNotEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    return v1

    :cond_7
    return v2

    .line 1958
    :cond_8
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->vkData:Lcom/callapp/contacts/model/contact/social/VKData;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->vkId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->isSure()Z

    move-result v0

    if-ne v0, p2, :cond_9

    .line 1959
    new-instance v0, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;

    iget-object v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->vkData:Lcom/callapp/contacts/model/contact/social/VKData;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/social/VKData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/callapp/contacts/model/contact/ContactData;->vkData:Lcom/callapp/contacts/model/contact/social/VKData;

    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/social/VKData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->vk:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->withDataSource(Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->onlyThumbnail(Z)Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->update(Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v1

    .line 1964
    :cond_9
    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->vk:Lcom/callapp/contacts/model/contact/DataSource;

    if-ne p4, v0, :cond_b

    if-eqz p3, :cond_a

    .line 1965
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->getCurrentUrls()Lcom/callapp/contacts/model/contact/PhotoUrls;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->getCurrentUrls()Lcom/callapp/contacts/model/contact/PhotoUrls;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/PhotoUrls;->isNotEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    return v1

    :cond_a
    return v2

    .line 1968
    :cond_b
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->pinterestData:Lcom/callapp/contacts/model/contact/social/PinterestData;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->pinterestId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->isSure()Z

    move-result v0

    if-ne v0, p2, :cond_c

    .line 1969
    new-instance v0, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;

    iget-object v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->pinterestData:Lcom/callapp/contacts/model/contact/social/PinterestData;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/social/PinterestData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/callapp/contacts/model/contact/ContactData;->pinterestData:Lcom/callapp/contacts/model/contact/social/PinterestData;

    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/social/PinterestData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->pinterest:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->withDataSource(Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->onlyThumbnail(Z)Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->update(Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;)Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    .line 1975
    :cond_c
    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->google:Lcom/callapp/contacts/model/contact/DataSource;

    if-ne p4, v0, :cond_e

    if-eqz p3, :cond_d

    .line 1976
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->getCurrentUrls()Lcom/callapp/contacts/model/contact/PhotoUrls;

    move-result-object p2

    if-eqz p2, :cond_d

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->getCurrentUrls()Lcom/callapp/contacts/model/contact/PhotoUrls;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/PhotoUrls;->isNotEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    return v1

    :cond_d
    return v2

    .line 1979
    :cond_e
    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->pinterest:Lcom/callapp/contacts/model/contact/DataSource;

    if-ne p4, v0, :cond_10

    if-eqz p3, :cond_f

    .line 1980
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->getCurrentUrls()Lcom/callapp/contacts/model/contact/PhotoUrls;

    move-result-object p2

    if-eqz p2, :cond_f

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->getCurrentUrls()Lcom/callapp/contacts/model/contact/PhotoUrls;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/PhotoUrls;->isNotEmpty()Z

    move-result p1

    if-eqz p1, :cond_f

    return v1

    :cond_f
    return v2

    .line 1983
    :cond_10
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->venueFoursquareData:Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;

    if-eqz v0, :cond_11

    if-eqz p2, :cond_11

    .line 1984
    new-instance v3, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/callapp/contacts/model/contact/DataSource;->venueFoursquare:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-direct {v3, v0, v4}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;-><init>(Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)V

    invoke-virtual {p1, v3}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->update(Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;)Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    .line 1989
    :cond_11
    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->venueFoursquare:Lcom/callapp/contacts/model/contact/DataSource;

    if-ne p4, v0, :cond_13

    if-eqz p3, :cond_12

    .line 1990
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->getCurrentUrls()Lcom/callapp/contacts/model/contact/PhotoUrls;

    move-result-object p2

    if-eqz p2, :cond_12

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->getCurrentUrls()Lcom/callapp/contacts/model/contact/PhotoUrls;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/PhotoUrls;->isNotEmpty()Z

    move-result p1

    if-eqz p1, :cond_12

    return v1

    :cond_12
    return v2

    .line 1993
    :cond_13
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->foursquareData:Lcom/callapp/contacts/model/contact/social/FoursquareData;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->foursquareId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->isSure()Z

    move-result v0

    if-ne v0, p2, :cond_14

    .line 1994
    new-instance p2, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;

    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->foursquareData:Lcom/callapp/contacts/model/contact/social/FoursquareData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/social/FoursquareData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->foursquareData:Lcom/callapp/contacts/model/contact/social/FoursquareData;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/social/FoursquareData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v0, v3}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->foursquare:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->withDataSource(Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;->onlyThumbnail(Z)Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->update(Lcom/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder;)Z

    move-result p2

    if-eqz p2, :cond_14

    return v1

    .line 1999
    :cond_14
    sget-object p2, Lcom/callapp/contacts/model/contact/DataSource;->foursquare:Lcom/callapp/contacts/model/contact/DataSource;

    if-ne p4, p2, :cond_15

    if-eqz p3, :cond_15

    .line 2000
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->getCurrentUrls()Lcom/callapp/contacts/model/contact/PhotoUrls;

    move-result-object p2

    if-eqz p2, :cond_15

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->getCurrentUrls()Lcom/callapp/contacts/model/contact/PhotoUrls;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/PhotoUrls;->isNotEmpty()Z

    move-result p1

    if-eqz p1, :cond_15

    return v1

    :cond_15
    return v2
.end method

.method public static splitPhoneOrIdKey(Ljava/lang/String;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2254
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x0

    .line 2255
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "@"

    .line 2258
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2259
    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    const/4 p0, 0x0

    .line 2260
    aget-object p0, v0, p0

    .line 2261
    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 2262
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 2264
    :cond_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private updateAllFields()V
    .locals 0

    .line 1437
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateAddresses()V

    .line 1438
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateBirthDate()V

    .line 1439
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateCallHistoryData()V

    .line 1440
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateCategories()V

    .line 1441
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateDescription()V

    .line 1442
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateEmails()V

    .line 1443
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateEvents()V

    .line 1444
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateFullName()V

    .line 1445
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateGmailData()V

    .line 1446
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateGooglePlacesData()V

    .line 1447
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateFacebookPlacesData()V

    .line 1448
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateHuaweiPlacesData()V

    .line 1449
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateGTalk()V

    .line 1450
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateHasSuggestion()V

    .line 1451
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateImAddresses()V

    .line 1452
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateLastSMS()V

    .line 1453
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateLatLng()V

    .line 1454
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateMenuUrl()V

    .line 1455
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateMutualFriends()V

    .line 1456
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateNames()V

    .line 1457
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateNegatives()V

    .line 1458
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateNote()V

    .line 1459
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateOpeningHours()V

    .line 1460
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateOrganizations()V

    .line 1461
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updatePhones()V

    .line 1462
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updatePhoto()V

    .line 1463
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updatePriceRange()V

    .line 1464
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateRating()V

    .line 1465
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateReserveUrl()V

    .line 1466
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateReviews()V

    .line 1467
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateSkypeData()V

    .line 1468
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateSpamScore()V

    .line 1469
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateUploadedPhotoUrls()V

    .line 1470
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateWebsites()V

    .line 1471
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateWebVideos()V

    .line 1472
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateRecords()V

    .line 1473
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateYahooData()V

    .line 1474
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateExcludeAnalytics()V

    return-void
.end method

.method private declared-synchronized updateFacebookId(Z)V
    .locals 4

    monitor-enter p0

    .line 1107
    :try_start_0
    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->facebook:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateSocialId(Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceData:Lcom/callapp/contacts/model/contact/DeviceData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->useFieldForced(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;Z)Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->userProfileData:Lcom/callapp/contacts/model/contact/UserProfileData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->userProfile:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->useFieldForced(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->intentData:Lcom/callapp/contacts/model/contact/IntentData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->intent:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1108
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    const-string v2, "facebookID"

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookPlaceData:Lcom/callapp/contacts/model/contact/FacebookPlaceData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->facebookPlaces:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1109
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->foursquareData:Lcom/callapp/contacts/model/contact/social/FoursquareData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->foursquare:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1110
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->venueFoursquareData:Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->venueFoursquare:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1111
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->gravatarData:Lcom/callapp/contacts/model/contact/GravatarData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->gravatar:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1112
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->websitesSocialIDsData:Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->websites:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->vkData:Lcom/callapp/contacts/model/contact/social/VKData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->vk:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1113
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookSearchResults:Lcom/callapp/contacts/model/contact/SocialSearchResults;

    const-string v2, "id"

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->socialSearch:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1114
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->suggestionData:Lcom/callapp/contacts/model/contact/SuggestionData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->suggestion:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->execute(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1115
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private updateField(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ")",
            "Lcom/callapp/contacts/util/model/UpdateFieldBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 2281
    new-instance v0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;-><init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactField;)V

    return-object v0
.end method

.method private declared-synchronized updateFoursquareId(Z)V
    .locals 4

    monitor-enter p0

    .line 1147
    :try_start_0
    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->foursquare:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateSocialId(Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceData:Lcom/callapp/contacts/model/contact/DeviceData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->useFieldForced(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;Z)Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->userProfileData:Lcom/callapp/contacts/model/contact/UserProfileData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->userProfile:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->useFieldForced(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    const-string v2, "foursquareID"

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1148
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->gravatarData:Lcom/callapp/contacts/model/contact/GravatarData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->gravatar:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1149
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->foursquareSearchResults:Lcom/callapp/contacts/model/contact/SocialSearchResults;

    const-string v2, "id"

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->socialSearch:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->suggestionData:Lcom/callapp/contacts/model/contact/SuggestionData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->suggestion:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1150
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->execute(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1151
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private updateId()Z
    .locals 3

    .line 2226
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->phone:Lcom/callapp/framework/phone/Phone;

    iget-wide v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceId:J

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/model/contact/ContactData;->generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;

    move-result-object v0

    .line 2227
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2228
    iput-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->id:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private declared-synchronized updateInstagramId(Z)V
    .locals 4

    monitor-enter p0

    .line 1158
    :try_start_0
    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->instagram:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateSocialId(Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceData:Lcom/callapp/contacts/model/contact/DeviceData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->useFieldForced(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;Z)Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->userProfileData:Lcom/callapp/contacts/model/contact/UserProfileData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->userProfile:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->useFieldForced(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    const-string v2, "instagramID"

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1159
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->gravatarData:Lcom/callapp/contacts/model/contact/GravatarData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->gravatar:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1160
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->instagramSearchResults:Lcom/callapp/contacts/model/contact/SocialSearchResults;

    const-string v2, "id"

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->socialSearch:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->suggestionData:Lcom/callapp/contacts/model/contact/SuggestionData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->suggestion:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1161
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->execute(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1162
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private updateNamefield(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/util/model/UpdateNameBuilder;
    .locals 2

    .line 2285
    new-instance v0, Lcom/callapp/contacts/util/model/UpdateNameBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->photoDataSourceToUpdateName:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-direct {v0, p0, p1, v1}, Lcom/callapp/contacts/util/model/UpdateNameBuilder;-><init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)V

    return-object v0
.end method

.method private updateNamesField(Lcom/callapp/contacts/model/contact/ContactField;Z)Lcom/callapp/contacts/util/model/UpdateNamesBuilder;
    .locals 2

    .line 2289
    new-instance v0, Lcom/callapp/contacts/util/model/UpdateNamesBuilder;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/callapp/contacts/util/model/UpdateNamesBuilder;-><init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactField;Ljava/util/Map;Z)V

    return-object v0
.end method

.method private updatePhotoFromDbIfNeeded()V
    .locals 5

    .line 2007
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->chosenContactPhoto:Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->isChosenPhotoUrlFoundInDb:Z

    if-nez v0, :cond_0

    .line 2008
    iget-wide v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceId:J

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->phone:Lcom/callapp/framework/phone/Phone;

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/loader/ChosenContactPhotoManager;->a(JLcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->chosenContactPhoto:Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;

    const/4 v0, 0x1

    .line 2009
    iput-boolean v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->isChosenPhotoUrlFoundInDb:Z

    .line 2012
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->chosenContactPhoto:Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->chosenContactPhoto:Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/model/contact/DataSource;->contactDataFieldName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2013
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->chosenContactPhoto:Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/model/contact/DataSource;->contactDataFieldName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "photoUrl"

    .line 2015
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2016
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2017
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->chosenContactPhoto:Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2018
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->chosenContactPhoto:Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;->setUrl(Ljava/lang/String;)V

    .line 2019
    iget-wide v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceId:J

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->phone:Lcom/callapp/framework/phone/Phone;

    iget-object v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->chosenContactPhoto:Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v3

    iget-object v4, p0, Lcom/callapp/contacts/model/contact/ContactData;->chosenContactPhoto:Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;

    invoke-virtual {v4}, Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/callapp/contacts/loader/ChosenContactPhotoManager;->a(JLcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private declared-synchronized updatePinterestId(Z)V
    .locals 4

    monitor-enter p0

    .line 1169
    :try_start_0
    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->pinterest:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateSocialId(Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceData:Lcom/callapp/contacts/model/contact/DeviceData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->useFieldForced(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;Z)Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->userProfileData:Lcom/callapp/contacts/model/contact/UserProfileData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->userProfile:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->useFieldForced(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    const-string v2, "pinterestID"

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1170
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->gravatarData:Lcom/callapp/contacts/model/contact/GravatarData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->gravatar:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1171
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->pinterestSearchResults:Lcom/callapp/contacts/model/contact/SocialSearchResults;

    const-string v2, "id"

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->socialSearch:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->suggestionData:Lcom/callapp/contacts/model/contact/SuggestionData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->suggestion:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1172
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->execute(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1173
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private updateSet(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/util/model/UpdateSetBuilder;
    .locals 2

    .line 2269
    new-instance v0, Lcom/callapp/contacts/util/model/UpdateSetBuilder;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-direct {v0, p0, p1, v1}, Lcom/callapp/contacts/util/model/UpdateSetBuilder;-><init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactField;Ljava/util/Set;)V

    return-object v0
.end method

.method private updateSet(Lcom/callapp/contacts/model/contact/ContactField;Ljava/util/Set;)Lcom/callapp/contacts/util/model/UpdateSetBuilder;
    .locals 1

    .line 2277
    new-instance v0, Lcom/callapp/contacts/util/model/UpdateSetBuilder;

    invoke-direct {v0, p0, p1, p2}, Lcom/callapp/contacts/util/model/UpdateSetBuilder;-><init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactField;Ljava/util/Set;)V

    return-object v0
.end method

.method private updateSetAndMapFields()V
    .locals 0

    .line 1424
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateAddresses()V

    .line 1425
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateCategories()V

    .line 1426
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateEvents()V

    .line 1427
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateImAddresses()V

    .line 1428
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateOrganizations()V

    .line 1429
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateReviews()V

    .line 1430
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateWebsites()V

    .line 1431
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateWebVideos()V

    .line 1432
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateEmails()V

    .line 1433
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateUploadedPhotoUrls()V

    return-void
.end method

.method private updateSocialId(Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;
    .locals 2

    .line 2293
    new-instance v0, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;

    iget-object v1, p1, Lcom/callapp/contacts/model/contact/DataSource;->socialIdField:Lcom/callapp/contacts/model/contact/ContactField;

    iget p1, p1, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-direct {v0, p0, v1, p1}, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;-><init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactField;I)V

    return-object v0
.end method

.method private declared-synchronized updateTwitterScreenName(Z)V
    .locals 4

    monitor-enter p0

    .line 1133
    :try_start_0
    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->twitter:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateSocialId(Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceData:Lcom/callapp/contacts/model/contact/DeviceData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->useFieldForced(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;Z)Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->userProfileData:Lcom/callapp/contacts/model/contact/UserProfileData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->userProfile:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->useFieldForced(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1134
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->foursquareData:Lcom/callapp/contacts/model/contact/social/FoursquareData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->foursquare:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1135
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->venueFoursquareData:Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->venueFoursquare:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1136
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->vkData:Lcom/callapp/contacts/model/contact/social/VKData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->vk:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1137
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->gravatarData:Lcom/callapp/contacts/model/contact/GravatarData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->gravatar:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1138
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->websitesSocialIDsData:Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->websites:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->twitterSearchResults:Lcom/callapp/contacts/model/contact/SocialSearchResults;

    const-string v2, "id"

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->socialSearch:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1139
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->suggestionData:Lcom/callapp/contacts/model/contact/SuggestionData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->suggestion:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->execute(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1140
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized updateVKId(Z)V
    .locals 4

    monitor-enter p0

    .line 1180
    :try_start_0
    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->vk:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateSocialId(Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->userProfileData:Lcom/callapp/contacts/model/contact/UserProfileData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->userProfile:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceData:Lcom/callapp/contacts/model/contact/DeviceData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useFieldForced(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;Z)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    const-string v2, "vkID"

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1181
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->gravatarData:Lcom/callapp/contacts/model/contact/GravatarData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->gravatar:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1182
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->vkSearchResults:Lcom/callapp/contacts/model/contact/SocialSearchResults;

    const-string v2, "id"

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->socialSearch:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->suggestionData:Lcom/callapp/contacts/model/contact/SuggestionData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->suggestion:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1183
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->execute(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1184
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized updateVenueFoursquareId(Z)V
    .locals 4

    monitor-enter p0

    .line 1122
    :try_start_0
    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->venueFoursquare:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateSocialId(Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    const-string v2, "venueFoursquareID"

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;

    move-result-object v0

    .line 1123
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getVenueFoursquareIDFromSearchData()Lcom/callapp/contacts/model/contact/social/VenueFoursquareIdFromSearchData;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->venueFoursquare:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->chLocalData:Lcom/callapp/contacts/model/contact/CHLocalData;

    const-string v2, "venueFoursquareID"

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->chLocal:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1124
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    .line 1125
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->execute(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1126
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public addListener(Lcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactDataChangeListener;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 449
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->listenerRegistry:Lcom/callapp/contacts/framework/event/FieldListenerRegistry;

    invoke-interface {v0, p1, p2}, Lcom/callapp/contacts/framework/event/FieldListenerRegistry;->a(Lcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)V

    return-void
.end method

.method public assertDeviceDataExist()V
    .locals 1

    .line 2384
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceData:Lcom/callapp/contacts/model/contact/DeviceData;

    if-nez v0, :cond_1

    .line 2385
    monitor-enter p0

    .line 2386
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceData:Lcom/callapp/contacts/model/contact/DeviceData;

    if-nez v0, :cond_0

    .line 2387
    new-instance v0, Lcom/callapp/contacts/model/contact/DeviceData;

    invoke-direct {v0}, Lcom/callapp/contacts/model/contact/DeviceData;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceData:Lcom/callapp/contacts/model/contact/DeviceData;

    .line 2389
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-void
.end method

.method public assertIntentDataExists()V
    .locals 1

    .line 2429
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->intentData:Lcom/callapp/contacts/model/contact/IntentData;

    if-nez v0, :cond_1

    .line 2430
    monitor-enter p0

    .line 2431
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->intentData:Lcom/callapp/contacts/model/contact/IntentData;

    if-nez v0, :cond_0

    .line 2432
    new-instance v0, Lcom/callapp/contacts/model/contact/IntentData;

    invoke-direct {v0}, Lcom/callapp/contacts/model/contact/IntentData;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->intentData:Lcom/callapp/contacts/model/contact/IntentData;

    .line 2434
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-void
.end method

.method public assertUserProfileDataExist()V
    .locals 1

    .line 2394
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->userProfileData:Lcom/callapp/contacts/model/contact/UserProfileData;

    if-nez v0, :cond_1

    .line 2395
    monitor-enter p0

    .line 2396
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->userProfileData:Lcom/callapp/contacts/model/contact/UserProfileData;

    if-nez v0, :cond_0

    .line 2397
    new-instance v0, Lcom/callapp/contacts/model/contact/UserProfileData;

    invoke-direct {v0}, Lcom/callapp/contacts/model/contact/UserProfileData;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->userProfileData:Lcom/callapp/contacts/model/contact/UserProfileData;

    .line 2399
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-void
.end method

.method public clearDeviceData()V
    .locals 4

    .line 2404
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceData:Lcom/callapp/contacts/model/contact/DeviceData;

    if-eqz v0, :cond_0

    .line 2405
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/DeviceData;->getNewDeviceDataForNonContact()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceData:Lcom/callapp/contacts/model/contact/DeviceData;

    .line 2408
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->dataSources:Ljava/util/Map;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2409
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->dataSources:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2410
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    if-ne v2, v3, :cond_1

    .line 2412
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactField;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 2413
    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_2

    .line 2414
    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    goto :goto_0

    .line 2415
    :cond_2
    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_3

    .line 2416
    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 2418
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactField;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_4
    return-void
.end method

.method public clearDeviceId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 583
    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/model/contact/ContactData;->setDeviceId(J)V

    return-void
.end method

.method public fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V
    .locals 0

    .line 467
    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Ljava/util/Set;)V

    return-void
.end method

.method public fireChange(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 461
    const-class v0, Lcom/callapp/contacts/framework/event/FieldListenerRegistry;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->id:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v2, "fireChange id=%s changedFields=%s"

    invoke-static {v0, v2, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->pastChangedFields:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 463
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->listenerRegistry:Lcom/callapp/contacts/framework/event/FieldListenerRegistry;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/framework/event/FieldListenerRegistry;->a(Ljava/util/Set;)V

    return-void
.end method

.method public getAddress()Lcom/callapp/common/model/json/JSONAddress;
    .locals 4

    .line 2352
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->address:Lcom/callapp/common/model/json/JSONAddress;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 2357
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getAddresses()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/common/model/json/JSONAddress;

    if-nez v0, :cond_2

    .line 2359
    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONAddress;->getFullAddress()Ljava/lang/String;

    move-result-object v3

    .line 2360
    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2362
    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONAddress;->isFromDevice()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1

    .line 2367
    :cond_2
    invoke-static {v0, v2}, Lcom/callapp/common/model/json/JSONAddress;->compareAddresses(Lcom/callapp/common/model/json/JSONAddress;Lcom/callapp/common/model/json/JSONAddress;)Lcom/callapp/common/model/json/JSONAddress;

    move-result-object v0

    .line 2368
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONAddress;->isFromDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2373
    :cond_3
    :goto_1
    iput-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->address:Lcom/callapp/common/model/json/JSONAddress;

    .line 2376
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->address:Lcom/callapp/common/model/json/JSONAddress;

    return-object v0
.end method

.method public getAddresses()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONAddress;",
            ">;"
        }
    .end annotation

    .line 808
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->addresses:Ljava/util/Collection;

    return-object v0
.end method

.method public getAllCallHistoryData()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/model/contact/CallHistoryData;",
            ">;>;"
        }
    .end annotation

    .line 2507
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2508
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->callHistoryData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2509
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/model/contact/CallHistoryData;

    .line 2510
    new-instance v5, Landroid/util/Pair;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2514
    :cond_1
    new-instance v1, Lcom/callapp/contacts/model/contact/ContactData$6;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/model/contact/ContactData$6;-><init>(Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public getAllWeekOpeningHours()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 2584
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->openingHours:Lcom/callapp/common/model/json/JSONOpeningHours;

    invoke-static {v0}, Lcom/callapp/contacts/util/date/DateUtils;->b(Lcom/callapp/common/model/json/JSONOpeningHours;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAuPersonLookupData()Lcom/callapp/contacts/model/contact/AuPersonLookupData;
    .locals 1

    .line 2882
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->auPersonLookupData:Lcom/callapp/contacts/model/contact/AuPersonLookupData;

    return-object v0
.end method

.method public getAvgRating()D
    .locals 2

    .line 2463
    iget-wide v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->avgRating:D

    return-wide v0
.end method

.method public getBirthday()Lcom/callapp/common/model/json/JSONDate;
    .locals 1

    .line 2178
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->birthday:Lcom/callapp/common/model/json/JSONDate;

    return-object v0
.end method

.method public getBlockedNumberData()Lcom/callapp/contacts/model/objectbox/BlockedNumberData;
    .locals 1

    .line 2758
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->blockedNumberData:Lcom/callapp/contacts/model/objectbox/BlockedNumberData;

    return-object v0
.end method

.method public getCacheKey(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->id:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->buildCacheKey(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCacheKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->id:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->buildCacheKey(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCallReason()Ljava/lang/String;
    .locals 1

    .line 2689
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->callReason:Ljava/lang/String;

    return-object v0
.end method

.method public getCandidateContactPhoto()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            ">;"
        }
    .end annotation

    .line 1628
    const-class v0, Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->getLock(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1629
    :try_start_0
    invoke-direct {p0, v1}, Lcom/callapp/contacts/model/contact/ContactData;->loadPhoto(Z)Lcom/callapp/contacts/model/contact/PhotoUpdater;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1630
    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->getCurrentUrls()Lcom/callapp/contacts/model/contact/PhotoUrls;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1631
    new-instance v2, Landroid/util/Pair;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->getCurrentUrls()Lcom/callapp/contacts/model/contact/PhotoUrls;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/PhotoUrls;->getPhotoUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/PhotoUpdater;->getCurrentUrls()Lcom/callapp/contacts/model/contact/PhotoUrls;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/PhotoUrls;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v2

    :cond_0
    const/4 v1, 0x0

    .line 1633
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1634
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCategories()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONCategory;",
            ">;"
        }
    .end annotation

    .line 792
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->categories:Ljava/util/Collection;

    return-object v0
.end method

.method public getChLocalData()Lcom/callapp/contacts/model/contact/CHLocalData;
    .locals 1

    .line 2874
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->chLocalData:Lcom/callapp/contacts/model/contact/CHLocalData;

    return-object v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 1

    .line 2679
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPhotoDataSource()Lcom/callapp/contacts/model/contact/DataSource;
    .locals 1

    .line 1638
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDataSource(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public getDataSource(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/model/contact/DataSource;
    .locals 1

    if-nez p1, :cond_0

    .line 373
    sget-object p1, Lcom/callapp/contacts/model/contact/DataSource;->unknown:Lcom/callapp/contacts/model/contact/DataSource;

    return-object p1

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->dataSources:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/model/contact/DataSource;

    if-nez p1, :cond_1

    .line 378
    sget-object p1, Lcom/callapp/contacts/model/contact/DataSource;->unknown:Lcom/callapp/contacts/model/contact/DataSource;

    :cond_1
    return-object p1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 2654
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;
    .locals 1

    .line 2220
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceData:Lcom/callapp/contacts/model/contact/DeviceData;

    return-object v0
.end method

.method public getDeviceId()J
    .locals 2

    .line 575
    iget-wide v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceId:J

    return-wide v0
.end method

.method public getEmails()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONEmail;",
            ">;"
        }
    .end annotation

    .line 863
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->emails:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEmailsMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/callapp/common/model/json/JSONEmail;",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            ">;"
        }
    .end annotation

    .line 900
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->emails:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getEvents()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONEvent;",
            ">;"
        }
    .end annotation

    .line 920
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->events:Ljava/util/Collection;

    return-object v0
.end method

.method public getFacebookData()Lcom/callapp/contacts/model/contact/social/FacebookData;
    .locals 1

    .line 2305
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookData:Lcom/callapp/contacts/model/contact/social/FacebookData;

    return-object v0
.end method

.method public getFacebookId()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 946
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getFacebookPlaceData()Lcom/callapp/contacts/model/contact/FacebookPlaceData;
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookPlaceData:Lcom/callapp/contacts/model/contact/FacebookPlaceData;

    return-object v0
.end method

.method public getFacebookSearchResults()Lcom/callapp/contacts/model/contact/SocialSearchResults;
    .locals 1

    .line 2314
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookSearchResults:Lcom/callapp/contacts/model/contact/SocialSearchResults;

    return-object v0
.end method

.method public getFastCacheData()Lcom/callapp/contacts/model/objectbox/FastCacheData;
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->fastCacheData:Lcom/callapp/contacts/model/objectbox/FastCacheData;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 3

    .line 675
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->firstName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 681
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v0

    .line 682
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 683
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    .line 684
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    const/4 v2, 0x0

    .line 686
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 692
    :cond_2
    :goto_0
    iput-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getFoursquareData()Lcom/callapp/contacts/model/contact/social/FoursquareData;
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->foursquareData:Lcom/callapp/contacts/model/contact/social/FoursquareData;

    return-object v0
.end method

.method public getFoursquareId()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 950
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->foursquareId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getFoursquareSearchResults()Lcom/callapp/contacts/model/contact/SocialSearchResults;
    .locals 1

    .line 2319
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->foursquareSearchResults:Lcom/callapp/contacts/model/contact/SocialSearchResults;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .line 670
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getGenomeData()Lcom/callapp/common/model/json/JSONContact;
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    return-object v0
.end method

.method public getGmailEmailData()Lcom/callapp/contacts/model/contact/GmailEmailData;
    .locals 1

    .line 2212
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->gmailEmailData:Lcom/callapp/contacts/model/contact/GmailEmailData;

    return-object v0
.end method

.method public getGoogleMapsLatLng()Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;
    .locals 1

    .line 1058
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->googleMapsLatLng:Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;

    return-object v0
.end method

.method public getGooglePlacesData()Lcom/callapp/contacts/model/contact/GooglePlacesData;
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->googlePlacesData:Lcom/callapp/contacts/model/contact/GooglePlacesData;

    return-object v0
.end method

.method public getGooglePlusHangoutDataId()J
    .locals 2

    .line 2130
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2132
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/DeviceData;->getGoogleHangoutDataId()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getGooglePlusSearchResults()Lcom/callapp/contacts/model/contact/SocialSearchResults;
    .locals 1

    .line 2324
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->googlePlusSearchResults:Lcom/callapp/contacts/model/contact/SocialSearchResults;

    return-object v0
.end method

.method public getGravatarData()Lcom/callapp/contacts/model/contact/GravatarData;
    .locals 1

    .line 2439
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->gravatarData:Lcom/callapp/contacts/model/contact/GravatarData;

    return-object v0
.end method

.method public getHasSuggestions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2750
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->hasSuggestions:Ljava/util/Set;

    return-object v0
.end method

.method public getHuaweiPlaceData()Lcom/callapp/contacts/model/contact/HuaweiPlaceData;
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->huaweiPlaceData:Lcom/callapp/contacts/model/contact/HuaweiPlaceData;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImAddresses()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONIMaddress;",
            ">;"
        }
    .end annotation

    .line 2084
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->imAddresses:Ljava/util/Collection;

    return-object v0
.end method

.method public getImAddressesWithSource()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONDataAndSource<",
            "Lcom/callapp/common/model/json/JSONIMaddress;",
            ">;>;"
        }
    .end annotation

    .line 2098
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2100
    new-instance v1, Lcom/callapp/contacts/util/model/UpdateValueWithSourceBuilder;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->imAddresses:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-direct {v1, p0, v2, v0}, Lcom/callapp/contacts/util/model/UpdateValueWithSourceBuilder;-><init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactField;Ljava/util/Set;)V

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceData:Lcom/callapp/contacts/model/contact/DeviceData;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2101
    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateValueWithSourceBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceData:Lcom/callapp/contacts/model/contact/DeviceData;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    const-string v4, "imContacts"

    .line 2102
    invoke-virtual {v1, v2, v4, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    const-string v4, "iMAddresses"

    .line 2103
    invoke-virtual {v1, v2, v4, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->gravatarData:Lcom/callapp/contacts/model/contact/GravatarData;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->gravatar:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2104
    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    return-object v0
.end method

.method public getInstagramData()Lcom/callapp/contacts/model/contact/social/InstagramData;
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->instagramData:Lcom/callapp/contacts/model/contact/social/InstagramData;

    return-object v0
.end method

.method public getInstagramId()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 954
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->instagramId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getInstagramSearchResults()Lcom/callapp/contacts/model/contact/SocialSearchResults;
    .locals 1

    .line 2344
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->instagramSearchResults:Lcom/callapp/contacts/model/contact/SocialSearchResults;

    return-object v0
.end method

.method public getIntentData()Lcom/callapp/contacts/model/contact/IntentData;
    .locals 1

    .line 2535
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->intentData:Lcom/callapp/contacts/model/contact/IntentData;

    return-object v0
.end method

.method public getLastCallHistoryData(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/contact/CallHistoryData;
    .locals 1

    .line 2497
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->callHistoryData:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 2498
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2500
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/model/contact/CallHistoryData;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLastSms()Lcom/callapp/common/util/SerializablePair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/callapp/common/util/SerializablePair<",
            "Ljava/util/Date;",
            "Lcom/callapp/common/util/SerializablePair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2207
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceData:Lcom/callapp/contacts/model/contact/DeviceData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/DeviceData;->getLastSms()Lcom/callapp/common/util/SerializablePair;

    move-result-object v0

    return-object v0
.end method

.method public getLat()D
    .locals 2

    .line 2455
    iget-wide v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->lat:D

    return-wide v0
.end method

.method public getListenerRegistry()Lcom/callapp/contacts/framework/event/FieldListenerRegistry;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->listenerRegistry:Lcom/callapp/contacts/framework/event/FieldListenerRegistry;

    return-object v0
.end method

.method public getLng()D
    .locals 2

    .line 2459
    iget-wide v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->lng:D

    return-wide v0
.end method

.method public getLoadedFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 472
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->loadedFields:Ljava/util/Set;

    return-object v0
.end method

.method public getLock(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    .line 2471
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->locks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2473
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->locks:Ljava/util/Map;

    monitor-enter v1

    .line 2474
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->locks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2476
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 2477
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->locks:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2479
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getMenuUrl()Ljava/lang/String;
    .locals 1

    .line 2643
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->menuUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMutualFriends()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;"
        }
    .end annotation

    .line 813
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->mutualFriends:Ljava/util/Collection;

    return-object v0
.end method

.method public getNameOrNumber()Ljava/lang/String;
    .locals 2

    .line 698
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v0

    .line 699
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 700
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    .line 701
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/UserProfileManager;->b(Lcom/callapp/framework/phone/Phone;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 702
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f1204b3

    .line 704
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 985
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->names:Ljava/util/Map;

    invoke-static {v0}, Lcom/callapp/common/util/Ordering;->a(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getNamesWithSource()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONDataAndSource<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 989
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 991
    new-instance v1, Lcom/callapp/contacts/util/model/UpdateValueWithSourceBuilder;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->names:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-direct {v1, p0, v2, v0}, Lcom/callapp/contacts/util/model/UpdateValueWithSourceBuilder;-><init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactField;Ljava/util/Set;)V

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceData:Lcom/callapp/contacts/model/contact/DeviceData;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    .line 992
    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateValueWithSourceBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceData:Lcom/callapp/contacts/model/contact/DeviceData;

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v4, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    .line 993
    invoke-virtual {v1, v2, v3, v4}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    const-string v4, "name"

    .line 996
    invoke-virtual {v1, v2, v4, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->vkData:Lcom/callapp/contacts/model/contact/social/VKData;

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v4, Lcom/callapp/contacts/model/contact/DataSource;->vk:Lcom/callapp/contacts/model/contact/DataSource;

    .line 997
    invoke-virtual {v1, v2, v3, v4}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->googlePlacesData:Lcom/callapp/contacts/model/contact/GooglePlacesData;

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v4, Lcom/callapp/contacts/model/contact/DataSource;->googlePlaces:Lcom/callapp/contacts/model/contact/DataSource;

    .line 999
    invoke-virtual {v1, v2, v3, v4}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookPlaceData:Lcom/callapp/contacts/model/contact/FacebookPlaceData;

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v4, Lcom/callapp/contacts/model/contact/DataSource;->facebookPlaces:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1000
    invoke-virtual {v1, v2, v3, v4}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->huaweiPlaceData:Lcom/callapp/contacts/model/contact/HuaweiPlaceData;

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v4, Lcom/callapp/contacts/model/contact/DataSource;->huaweiPlaces:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1001
    invoke-virtual {v1, v2, v3, v4}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookData:Lcom/callapp/contacts/model/contact/social/FacebookData;

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v4, Lcom/callapp/contacts/model/contact/DataSource;->facebook:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1002
    invoke-virtual {v1, v2, v3, v4}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->twitterData:Lcom/callapp/contacts/model/contact/social/TwitterData;

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v4, Lcom/callapp/contacts/model/contact/DataSource;->twitter:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1003
    invoke-virtual {v1, v2, v3, v4}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->foursquareData:Lcom/callapp/contacts/model/contact/social/FoursquareData;

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v4, Lcom/callapp/contacts/model/contact/DataSource;->foursquare:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1004
    invoke-virtual {v1, v2, v3, v4}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->instagramData:Lcom/callapp/contacts/model/contact/social/InstagramData;

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v4, Lcom/callapp/contacts/model/contact/DataSource;->instagram:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1005
    invoke-virtual {v1, v2, v3, v4}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->pinterestData:Lcom/callapp/contacts/model/contact/social/PinterestData;

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v4, Lcom/callapp/contacts/model/contact/DataSource;->pinterest:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1006
    invoke-virtual {v1, v2, v3, v4}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->vkData:Lcom/callapp/contacts/model/contact/social/VKData;

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v4, Lcom/callapp/contacts/model/contact/DataSource;->vk:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1007
    invoke-virtual {v1, v2, v3, v4}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    return-object v0
.end method

.method public getNegatives(I)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 539
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->negativesMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-nez p1, :cond_0

    .line 540
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getNegatives(Lcom/callapp/contacts/model/contact/DataSource;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 545
    iget p1, p1, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->getNegatives(I)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getNegativesMap()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 514
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->negativesMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getNote()[Ljava/lang/String;
    .locals 1

    .line 2557
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceData:Lcom/callapp/contacts/model/contact/DeviceData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/DeviceData;->getNote()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumberGeocodingDescription()Lcom/callapp/common/model/json/JSONAddress;
    .locals 1

    .line 2348
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->numberGeocodingDescription:Lcom/callapp/common/model/json/JSONAddress;

    return-object v0
.end method

.method public getOrganizations()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONOrgData;",
            ">;"
        }
    .end annotation

    .line 1192
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->organizations:Ljava/util/Collection;

    return-object v0
.end method

.method public getOrganizationsWithSource()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONDataAndSource<",
            "Lcom/callapp/common/model/json/JSONOrgData;",
            ">;>;"
        }
    .end annotation

    .line 1205
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1207
    new-instance v1, Lcom/callapp/contacts/util/model/UpdateValueWithSourceBuilder;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->organizations:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-direct {v1, p0, v2, v0}, Lcom/callapp/contacts/util/model/UpdateValueWithSourceBuilder;-><init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactField;Ljava/util/Set;)V

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceData:Lcom/callapp/contacts/model/contact/DeviceData;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1208
    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateValueWithSourceBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    const-string v4, "orgData"

    .line 1209
    invoke-virtual {v1, v2, v4, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookData:Lcom/callapp/contacts/model/contact/social/FacebookData;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->facebook:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1210
    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    return-object v0
.end method

.method public getPastChangedFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->pastChangedFields:Ljava/util/Set;

    return-object v0
.end method

.method public getPhone()Lcom/callapp/framework/phone/Phone;
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->phone:Lcom/callapp/framework/phone/Phone;

    return-object v0
.end method

.method public getPhoneOrigin()Lcom/callapp/contacts/model/objectbox/ExtractedInfo;
    .locals 1

    .line 2915
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->phoneOrigin:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    return-object v0
.end method

.method public getPhones()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/callapp/framework/phone/Phone;",
            ">;"
        }
    .end annotation

    .line 1217
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->phone:Lcom/callapp/framework/phone/Phone;

    .line 1218
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->phones:Ljava/util/Collection;

    if-eqz v1, :cond_1

    .line 1219
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    return-object v1

    .line 1220
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1221
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1223
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPhonesList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/framework/phone/Phone;",
            ">;"
        }
    .end annotation

    .line 1233
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->phones:Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1237
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->phones:Ljava/util/Collection;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1239
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->phone:Lcom/callapp/framework/phone/Phone;

    .line 1240
    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_1

    .line 1243
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/framework/phone/Phone;

    .line 1244
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/framework/phone/Phone;

    .line 1245
    invoke-interface {v0, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1246
    invoke-interface {v0, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/callapp/framework/phone/Phone;

    .line 1234
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->phone:Lcom/callapp/framework/phone/Phone;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/callapp/common/util/Lists;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoBGColor()Ljava/lang/Integer;
    .locals 1

    .line 2981
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->photoBGColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPhotoDataSource()Lcom/callapp/contacts/model/contact/DataSource;
    .locals 2

    .line 1334
    const-class v0, Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->getLock(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1335
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->photoUrls:Lcom/callapp/contacts/model/contact/PhotoUrls;

    if-eqz v1, :cond_0

    .line 1336
    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/PhotoUrls;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1338
    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 2

    .line 1316
    const-class v0, Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->getLock(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1317
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->photoUrls:Lcom/callapp/contacts/model/contact/PhotoUrls;

    if-eqz v1, :cond_1

    .line 1318
    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/PhotoUrls;->getPhotoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->photoUrls:Lcom/callapp/contacts/model/contact/PhotoUrls;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/PhotoUrls;->getPhotoUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->photoUrls:Lcom/callapp/contacts/model/contact/PhotoUrls;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/PhotoUrls;->getThumbnail()Ljava/lang/String;

    move-result-object v1

    :goto_0
    monitor-exit v0

    return-object v1

    .line 1320
    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPhotoUrls()Lcom/callapp/contacts/model/contact/PhotoUrls;
    .locals 1

    .line 1312
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->photoUrls:Lcom/callapp/contacts/model/contact/PhotoUrls;

    return-object v0
.end method

.method public getPinterestData()Lcom/callapp/contacts/model/contact/social/PinterestData;
    .locals 1

    .line 2297
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->pinterestData:Lcom/callapp/contacts/model/contact/social/PinterestData;

    return-object v0
.end method

.method public getPinterestId()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 962
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->pinterestId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getPinterestSearchResults()Lcom/callapp/contacts/model/contact/SocialSearchResults;
    .locals 1

    .line 2329
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->pinterestSearchResults:Lcom/callapp/contacts/model/contact/SocialSearchResults;

    return-object v0
.end method

.method public getPriceRange()I
    .locals 1

    .line 2615
    iget v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->priceRange:I

    return v0
.end method

.method public getRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/CallRecorder;",
            ">;"
        }
    .end annotation

    .line 2894
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->records:Ljava/util/List;

    return-object v0
.end method

.method public getReserveUrl()Ljava/lang/String;
    .locals 1

    .line 2605
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->reserveUrl:Ljava/lang/String;

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

    .line 933
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->reviews:Ljava/util/Collection;

    return-object v0
.end method

.method public getSkypeData()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/callapp/contacts/loader/im/SkypeLoader$SkypeChatData;",
            ">;"
        }
    .end annotation

    .line 661
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->skypeData:Ljava/util/Collection;

    return-object v0
.end method

.method public getSpecificIMAccount(I)Lcom/callapp/common/model/json/JSONIMaddress;
    .locals 3

    .line 2167
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getImAddresses()Ljava/util/Collection;

    move-result-object v0

    .line 2168
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/common/model/json/JSONIMaddress;

    .line 2169
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONIMaddress;->getProtocol()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSuggestionData()Lcom/callapp/contacts/model/contact/SuggestionData;
    .locals 1

    .line 2734
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->suggestionData:Lcom/callapp/contacts/model/contact/SuggestionData;

    return-object v0
.end method

.method public getSuggestionMap()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2746
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->suggestionMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 2

    .line 1325
    const-class v0, Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->getLock(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1326
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->photoUrls:Lcom/callapp/contacts/model/contact/PhotoUrls;

    if-eqz v1, :cond_1

    .line 1327
    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/PhotoUrls;->getThumbnail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->photoUrls:Lcom/callapp/contacts/model/contact/PhotoUrls;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/PhotoUrls;->getThumbnail()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->photoUrls:Lcom/callapp/contacts/model/contact/PhotoUrls;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/PhotoUrls;->getPhotoUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    monitor-exit v0

    return-object v1

    .line 1329
    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTodayOpeningHours()Ljava/lang/String;
    .locals 1

    .line 2580
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->openingHours:Lcom/callapp/common/model/json/JSONOpeningHours;

    invoke-static {v0}, Lcom/callapp/contacts/util/date/DateUtils;->a(Lcom/callapp/common/model/json/JSONOpeningHours;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTwilioTrustedCommData()Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;
    .locals 1

    .line 2447
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->twilioTrustedCommData:Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;

    return-object v0
.end method

.method public getTwitterData()Lcom/callapp/contacts/model/contact/social/TwitterData;
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->twitterData:Lcom/callapp/contacts/model/contact/social/TwitterData;

    return-object v0
.end method

.method public getTwitterScreenName()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 958
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getTwitterSearchResults()Lcom/callapp/contacts/model/contact/SocialSearchResults;
    .locals 1

    .line 2339
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->twitterSearchResults:Lcom/callapp/contacts/model/contact/SocialSearchResults;

    return-object v0
.end method

.method public getUploadedPhotosUrl()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map$Entry<",
            "Lcom/callapp/contacts/model/UploadedPhoto;",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            ">;>;"
        }
    .end annotation

    .line 847
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->uploadedPhotosUrl:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getUserCorrectedData()Lcom/callapp/contacts/model/objectbox/UserCorrectedData;
    .locals 1

    .line 2774
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->userCorrectedData:Lcom/callapp/contacts/model/objectbox/UserCorrectedData;

    return-object v0
.end method

.method public getUserDefinition()Ljava/lang/String;
    .locals 1

    .line 2668
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->userDefinition:Ljava/lang/String;

    return-object v0
.end method

.method public getUserMediaData()Lcom/callapp/contacts/model/objectbox/UserMediaData;
    .locals 1

    .line 2786
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->userMediaData:Lcom/callapp/contacts/model/objectbox/UserMediaData;

    return-object v0
.end method

.method public getUserProfileData()Lcom/callapp/contacts/model/contact/UserProfileData;
    .locals 1

    .line 480
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->assertUserProfileDataExist()V

    .line 481
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->userProfileData:Lcom/callapp/contacts/model/contact/UserProfileData;

    return-object v0
.end method

.method public getUserSpamData()Lcom/callapp/contacts/model/objectbox/UserSpamData;
    .locals 1

    .line 2794
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->userSpamData:Lcom/callapp/contacts/model/objectbox/UserSpamData;

    return-object v0
.end method

.method public getVKData()Lcom/callapp/contacts/model/contact/social/VKData;
    .locals 1

    .line 2766
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->vkData:Lcom/callapp/contacts/model/contact/social/VKData;

    return-object v0
.end method

.method public getVKId()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 966
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->vkId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getVKSearchResults()Lcom/callapp/contacts/model/contact/SocialSearchResults;
    .locals 1

    .line 2334
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->vkSearchResults:Lcom/callapp/contacts/model/contact/SocialSearchResults;

    return-object v0
.end method

.method public getVenueFoursquareData()Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;
    .locals 1

    .line 2710
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->venueFoursquareData:Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;

    return-object v0
.end method

.method public getVenueFoursquareIDFromSearchData()Lcom/callapp/contacts/model/contact/social/VenueFoursquareIdFromSearchData;
    .locals 1

    .line 2726
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->venueFoursquareIDFromSearchData:Lcom/callapp/contacts/model/contact/social/VenueFoursquareIdFromSearchData;

    return-object v0
.end method

.method public getVenueFoursquareId()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 2718
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->venueFoursquareId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getVisibleEmails()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONEmail;",
            ">;"
        }
    .end annotation

    .line 869
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 870
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->emails:Ljava/util/Map;

    monitor-enter v1

    .line 871
    :try_start_0
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->emails:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 872
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/common/model/json/JSONEmail;

    .line 873
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/model/contact/DataSource;

    .line 874
    sget-object v5, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    if-ne v3, v5, :cond_2

    invoke-virtual {v4}, Lcom/callapp/common/model/json/JSONEmail;->isCallappUser()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_0

    .line 875
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 877
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 880
    :cond_3
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWebVideos()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/callapp/contacts/model/contact/VideoData;",
            ">;"
        }
    .end annotation

    .line 2890
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->webVideos:Ljava/util/Collection;

    return-object v0
.end method

.method public getWebsites()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONWebsite;",
            ">;"
        }
    .end annotation

    .line 2040
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->websites:Ljava/util/Collection;

    return-object v0
.end method

.method public getWebsitesSocialIDsData()Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;
    .locals 1

    .line 2802
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->websitesSocialIDsData:Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;

    return-object v0
.end method

.method public getWebsitesWithSource()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONDataAndSource<",
            "Lcom/callapp/common/model/json/JSONWebsite;",
            ">;>;"
        }
    .end annotation

    .line 2064
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2066
    new-instance v1, Lcom/callapp/contacts/util/model/UpdateValueWithSourceBuilder;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->websites:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-direct {v1, p0, v2, v0}, Lcom/callapp/contacts/util/model/UpdateValueWithSourceBuilder;-><init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactField;Ljava/util/Set;)V

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceData:Lcom/callapp/contacts/model/contact/DeviceData;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2067
    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateValueWithSourceBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2068
    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookData:Lcom/callapp/contacts/model/contact/social/FacebookData;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->facebook:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2069
    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->instagramData:Lcom/callapp/contacts/model/contact/social/InstagramData;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->instagram:Lcom/callapp/contacts/model/contact/DataSource;

    const-string v4, "website"

    .line 2070
    invoke-virtual {v1, v2, v4, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->gravatarData:Lcom/callapp/contacts/model/contact/GravatarData;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->gravatar:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2071
    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->googlePlacesData:Lcom/callapp/contacts/model/contact/GooglePlacesData;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->googlePlaces:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2072
    invoke-virtual {v1, v2, v4, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookPlaceData:Lcom/callapp/contacts/model/contact/FacebookPlaceData;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->facebookPlaces:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2073
    invoke-virtual {v1, v2, v4, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->huaweiPlaceData:Lcom/callapp/contacts/model/contact/HuaweiPlaceData;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->huaweiPlaces:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2074
    invoke-virtual {v1, v2, v4, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->chLocalData:Lcom/callapp/contacts/model/contact/CHLocalData;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->chLocal:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2075
    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->venueFoursquareData:Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->venueFoursquare:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2076
    invoke-virtual {v1, v2, v4, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->userProfileData:Lcom/callapp/contacts/model/contact/UserProfileData;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->userProfile:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2077
    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    return-object v0
.end method

.method public getWhatsAppDataExtraction()Z
    .locals 1

    .line 2973
    iget-boolean v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->whatsAppDataExtraction:Z

    return v0
.end method

.method public getWhitePagesData()Lcom/callapp/contacts/model/contact/WhitePagesData;
    .locals 1

    .line 2702
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->whitePagesData:Lcom/callapp/contacts/model/contact/WhitePagesData;

    return-object v0
.end method

.method public getYahooData()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/callapp/contacts/model/contact/ChatData;",
            ">;"
        }
    .end annotation

    .line 653
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->yahooData:Ljava/util/Collection;

    return-object v0
.end method

.method public getYouTubeVideos()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/callapp/contacts/model/contact/VideoData;",
            ">;"
        }
    .end annotation

    .line 1067
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->youTubeVideos:Ljava/util/Collection;

    return-object v0
.end method

.method public hasAlloAccount()Z
    .locals 1

    const/16 v0, 0x5e6

    .line 2146
    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->hasSpecificIMAccount(I)Z

    move-result v0

    return v0
.end method

.method public hasAnyPhotoUrl()Z
    .locals 1

    .line 1308
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public hasDuoAccount()Z
    .locals 1

    const/16 v0, 0x5e4

    .line 2138
    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->hasSpecificIMAccount(I)Z

    move-result v0

    return v0
.end method

.method public hasGooglePlusHangoutAccount()Z
    .locals 5

    .line 2126
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getGooglePlusHangoutDataId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasMessengerAccount()Z
    .locals 1

    const/16 v0, 0x5e7

    .line 2150
    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->hasSpecificIMAccount(I)Z

    move-result v0

    return v0
.end method

.method public hasPhone(Lcom/callapp/framework/phone/Phone;)Z
    .locals 1

    .line 1229
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhones()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hasSignalAccount()Z
    .locals 1

    const/16 v0, 0x5e5

    .line 2142
    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->hasSpecificIMAccount(I)Z

    move-result v0

    return v0
.end method

.method public hasSkypeAccount()Z
    .locals 1

    const/4 v0, 0x3

    .line 2154
    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->hasSpecificIMAccount(I)Z

    move-result v0

    return v0
.end method

.method public hasTelegramAccount()Z
    .locals 1

    const/16 v0, 0x5e2

    .line 2118
    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->hasSpecificIMAccount(I)Z

    move-result v0

    return v0
.end method

.method public hasViberAccount()Z
    .locals 1

    const/16 v0, 0x5dd

    .line 2110
    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->hasSpecificIMAccount(I)Z

    move-result v0

    return v0
.end method

.method public hasVisibleEmails()Z
    .locals 5

    .line 885
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->emails:Ljava/util/Map;

    monitor-enter v0

    .line 887
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->emails:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 888
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/common/model/json/JSONEmail;

    .line 889
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/contact/DataSource;

    .line 891
    sget-object v4, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    if-ne v2, v4, :cond_1

    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONEmail;->isCallappUser()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const/4 v1, 0x1

    .line 892
    monitor-exit v0

    return v1

    .line 895
    :cond_2
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasWeChatAccount()Z
    .locals 1

    const/16 v0, 0x5e1

    .line 2114
    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->hasSpecificIMAccount(I)Z

    move-result v0

    return v0
.end method

.method public hasWhatsappAccount()Z
    .locals 1

    const/16 v0, 0x5de

    .line 2122
    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->hasSpecificIMAccount(I)Z

    move-result v0

    return v0
.end method

.method public isActiveCallAppUserDuringPeriod()Z
    .locals 1

    .line 2546
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONContact;->isActiveDuringPeriod()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBusiness()Z
    .locals 1

    .line 2198
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONContact;->isBusiness()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->googlePlacesData:Lcom/callapp/contacts/model/contact/GooglePlacesData;

    if-eqz v0, :cond_1

    .line 2199
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/GooglePlacesData;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookPlaceData:Lcom/callapp/contacts/model/contact/FacebookPlaceData;

    if-eqz v0, :cond_2

    .line 2200
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/FacebookPlaceData;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->huaweiPlaceData:Lcom/callapp/contacts/model/contact/HuaweiPlaceData;

    if-eqz v0, :cond_3

    .line 2201
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/HuaweiPlaceData;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->chLocalData:Lcom/callapp/contacts/model/contact/CHLocalData;

    if-eqz v0, :cond_4

    .line 2202
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/CHLocalData;->isBusiness()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->userCorrectedData:Lcom/callapp/contacts/model/objectbox/UserCorrectedData;

    if-eqz v0, :cond_6

    .line 2203
    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->isBusiness()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isCallHistoryListEquals(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/contact/CallHistoryData;",
            ">;>;)Z"
        }
    .end annotation

    .line 2527
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->callHistoryData:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isContactInDevice()Z
    .locals 5

    .line 579
    iget-wide v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEmailFromDevice(Lcom/callapp/common/model/json/JSONEmail;)Z
    .locals 2

    .line 2569
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2570
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/DeviceData;->getEmails()Ljava/util/Collection;

    move-result-object v0

    .line 2571
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2572
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isForceNoSocialId(Lcom/callapp/contacts/model/contact/DataSource;)Z
    .locals 1

    .line 549
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->getNegatives(Lcom/callapp/contacts/model/contact/DataSource;)Ljava/util/Set;

    move-result-object p1

    const-string v0, "DONTHAVE"

    .line 550
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isFriend(Lcom/callapp/contacts/model/contact/DataSource;)Ljava/lang/Boolean;
    .locals 2

    .line 2486
    iget-object v0, p1, Lcom/callapp/contacts/model/contact/DataSource;->socialDataField:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2490
    :cond_0
    iget-object p1, p1, Lcom/callapp/contacts/model/contact/DataSource;->socialDataField:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactField;->name()Ljava/lang/String;

    move-result-object p1

    .line 2491
    invoke-static {p0, p1}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/model/contact/social/SocialData;

    if-nez p1, :cond_1

    return-object v1

    .line 2493
    :cond_1
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/SocialData;->isFriend()Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public isInSync()Z
    .locals 1

    .line 362
    iget-boolean v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->isInSync:Z

    return v0
.end method

.method public isIncognito()Z
    .locals 1

    .line 2961
    iget-boolean v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->isIncognito:Z

    return v0
.end method

.method public isInstalledApp()Z
    .locals 1

    .line 2553
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONContact;->isInstalledApp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNameSure(Ljava/lang/String;)Z
    .locals 1

    .line 2561
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->names:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/model/contact/SureCounter;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2562
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/SureCounter;->getSureCount()I

    move-result p1

    :goto_0
    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public isOnlySure()Z
    .locals 1

    .line 2467
    iget-boolean v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->onlySure:Z

    return v0
.end method

.method public isRecognized()Z
    .locals 1

    .line 2931
    iget-boolean v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->isRecognized:Z

    return v0
.end method

.method public isSpamReported()Z
    .locals 1

    .line 2919
    iget-boolean v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->isSpamReported:Z

    return v0
.end method

.method public isSpammer()Z
    .locals 1

    .line 2870
    iget v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->spamScore:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSure(Lcom/callapp/contacts/model/contact/ContactField;)Z
    .locals 0

    .line 390
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDataSource(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->isSure(Lcom/callapp/contacts/model/contact/DataSource;)Z

    move-result p1

    return p1
.end method

.method public isSure(Lcom/callapp/contacts/model/contact/ContactField;Z)Z
    .locals 0

    .line 401
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDataSource(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/model/contact/ContactData;->isSure(Lcom/callapp/contacts/model/contact/DataSource;Z)Z

    move-result p1

    return p1
.end method

.method public isSure(Lcom/callapp/contacts/model/contact/DataSource;)Z
    .locals 1

    const/4 v0, 0x0

    .line 411
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/model/contact/ContactData;->isSure(Lcom/callapp/contacts/model/contact/DataSource;Z)Z

    move-result p1

    return p1
.end method

.method public isSure(Lcom/callapp/contacts/model/contact/DataSource;Z)Z
    .locals 1

    if-eqz p1, :cond_2

    .line 422
    iget-object v0, p1, Lcom/callapp/contacts/model/contact/DataSource;->socialIdField:Lcom/callapp/contacts/model/contact/ContactField;

    if-nez v0, :cond_0

    goto :goto_0

    .line 429
    :cond_0
    iget-object p1, p1, Lcom/callapp/contacts/model/contact/DataSource;->socialIdField:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactField;->name()Ljava/lang/String;

    move-result-object p1

    .line 430
    invoke-static {p0, p1}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-nez p1, :cond_1

    return p2

    .line 434
    :cond_1
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->isSure()Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public isUnknownNumber()Z
    .locals 1

    .line 2948
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->isUnknwonNumber:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2949
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->isUnknwonNumber:Ljava/lang/Boolean;

    .line 2952
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->isUnknwonNumber:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isUnsearchableNumber()Z
    .locals 2

    .line 2935
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->isUnsearchableNumber:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2936
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->isUnsearchableNumber:Ljava/lang/Boolean;

    .line 2937
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2938
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->isUnknownNumber()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->isValidForSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2939
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->isUnsearchableNumber:Ljava/lang/Boolean;

    .line 2944
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->isUnsearchableNumber:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isVoiceMail()Z
    .locals 2

    .line 2965
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->isVoiceMail:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2966
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Lcom/callapp/framework/phone/Phone;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->isVoiceMail:Ljava/lang/Boolean;

    .line 2969
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->isVoiceMail:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public removeCurrentPhotoUrl(Ljava/lang/String;)V
    .locals 2

    .line 1642
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactData$11;->$SwitchMap$com$callapp$contacts$model$contact$DataSource:[I

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getCurrentPhotoDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/DataSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1705
    :pswitch_0
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->imExtractedPhotoData:Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1706
    iget-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->imExtractedPhotoData:Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;->setUrl(Ljava/lang/String;)V

    .line 1708
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/callapp/contacts/loader/IMExtractedPhotoDataManager;->c(JLcom/callapp/framework/phone/Phone;)V

    goto/16 :goto_0

    .line 1694
    :pswitch_1
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->vkData:Lcom/callapp/contacts/model/contact/social/VKData;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/social/VKData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->vkData:Lcom/callapp/contacts/model/contact/social/VKData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/social/VKData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1695
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->vkData:Lcom/callapp/contacts/model/contact/social/VKData;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/model/contact/social/VKData;->setPhotoUrl(Ljava/lang/String;)V

    .line 1696
    iget-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->vkData:Lcom/callapp/contacts/model/contact/social/VKData;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/model/contact/social/VKData;->setThumbnailUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1688
    :pswitch_2
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->pinterestData:Lcom/callapp/contacts/model/contact/social/PinterestData;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/social/PinterestData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->pinterestData:Lcom/callapp/contacts/model/contact/social/PinterestData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/social/PinterestData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1689
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->pinterestData:Lcom/callapp/contacts/model/contact/social/PinterestData;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/model/contact/social/PinterestData;->setPhotoUrl(Ljava/lang/String;)V

    .line 1690
    iget-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->pinterestData:Lcom/callapp/contacts/model/contact/social/PinterestData;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/model/contact/social/PinterestData;->setThumbnailUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1682
    :pswitch_3
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->instagramData:Lcom/callapp/contacts/model/contact/social/InstagramData;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/social/InstagramData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->instagramData:Lcom/callapp/contacts/model/contact/social/InstagramData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/social/InstagramData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1683
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->instagramData:Lcom/callapp/contacts/model/contact/social/InstagramData;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/model/contact/social/InstagramData;->setPhotoUrl(Ljava/lang/String;)V

    .line 1684
    iget-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->instagramData:Lcom/callapp/contacts/model/contact/social/InstagramData;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/model/contact/social/InstagramData;->setThumbnailUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1676
    :pswitch_4
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->twitterData:Lcom/callapp/contacts/model/contact/social/TwitterData;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/social/TwitterData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->twitterData:Lcom/callapp/contacts/model/contact/social/TwitterData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/social/TwitterData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1677
    :cond_3
    iget-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->twitterData:Lcom/callapp/contacts/model/contact/social/TwitterData;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/model/contact/social/TwitterData;->setPhotoUrl(Ljava/lang/String;)V

    .line 1678
    iget-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->twitterData:Lcom/callapp/contacts/model/contact/social/TwitterData;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/model/contact/social/TwitterData;->setThumbnailUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1670
    :pswitch_5
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookData:Lcom/callapp/contacts/model/contact/social/FacebookData;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookData:Lcom/callapp/contacts/model/contact/social/FacebookData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1671
    :cond_4
    iget-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookData:Lcom/callapp/contacts/model/contact/social/FacebookData;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/model/contact/social/FacebookData;->setPhotoUrl(Ljava/lang/String;)V

    .line 1672
    iget-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookData:Lcom/callapp/contacts/model/contact/social/FacebookData;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/model/contact/social/FacebookData;->setThumbnailUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1665
    :pswitch_6
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->huaweiPlaceData:Lcom/callapp/contacts/model/contact/HuaweiPlaceData;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/HuaweiPlaceData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1666
    iget-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->huaweiPlaceData:Lcom/callapp/contacts/model/contact/HuaweiPlaceData;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/model/contact/HuaweiPlaceData;->setPhotoUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 1660
    :pswitch_7
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookPlaceData:Lcom/callapp/contacts/model/contact/FacebookPlaceData;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/FacebookPlaceData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1661
    iget-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookPlaceData:Lcom/callapp/contacts/model/contact/FacebookPlaceData;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/model/contact/FacebookPlaceData;->setPhotoUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 1655
    :pswitch_8
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->googlePlacesData:Lcom/callapp/contacts/model/contact/GooglePlacesData;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/GooglePlacesData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1656
    iget-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->googlePlacesData:Lcom/callapp/contacts/model/contact/GooglePlacesData;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/model/contact/GooglePlacesData;->setPhotoUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 1649
    :pswitch_9
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->gravatarData:Lcom/callapp/contacts/model/contact/GravatarData;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/GravatarData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->gravatarData:Lcom/callapp/contacts/model/contact/GravatarData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/GravatarData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1650
    :cond_5
    iget-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->gravatarData:Lcom/callapp/contacts/model/contact/GravatarData;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/model/contact/GravatarData;->setPhotoUrl(Ljava/lang/String;)V

    .line 1651
    iget-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->gravatarData:Lcom/callapp/contacts/model/contact/GravatarData;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/model/contact/GravatarData;->setThumbnailUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 1644
    :pswitch_a
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONContact;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1645
    iget-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    invoke-virtual {p1, v1}, Lcom/callapp/common/model/json/JSONContact;->setPhotoUrl(Ljava/lang/String;)V

    .line 1712
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->resetChosenPicture()V

    .line 1713
    iget-wide v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceId:J

    iget-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->phone:Lcom/callapp/framework/phone/Phone;

    invoke-static {v0, v1, p1}, Lcom/callapp/contacts/loader/ChosenContactPhotoManager;->b(JLcom/callapp/framework/phone/Phone;)V

    .line 1714
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->resetPhoto()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public removeEmail(Lcom/callapp/common/model/json/JSONEmail;)V
    .locals 2

    .line 1412
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->emails:Ljava/util/Map;

    monitor-enter v0

    .line 1413
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->emails:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1414
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeListener(Lcom/callapp/contacts/model/contact/ContactDataChangeListener;)V
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->listenerRegistry:Lcom/callapp/contacts/framework/event/FieldListenerRegistry;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/framework/event/FieldListenerRegistry;->a(Lcom/callapp/contacts/model/contact/ContactDataChangeListener;)V

    return-void
.end method

.method public removeWebsite(Lcom/callapp/common/model/json/JSONWebsite;)V
    .locals 2

    .line 1418
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->websites:Ljava/util/Collection;

    monitor-enter v0

    .line 1419
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->websites:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 1420
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public resetChosenPicture()V
    .locals 2

    .line 1392
    const-class v0, Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->getLock(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1393
    :try_start_0
    iput-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->chosenContactPhoto:Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;

    const/4 v1, 0x0

    .line 1394
    iput-boolean v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->isChosenPhotoUrlFoundInDb:Z

    .line 1395
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->resetPhotoWithoutFiringAndUpdating()V

    .line 1396
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetDevicePhotoIfNeeded()V
    .locals 2

    .line 1614
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDataSource(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v0

    .line 1615
    sget-object v1, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    if-ne v0, v1, :cond_2

    .line 1616
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceData:Lcom/callapp/contacts/model/contact/DeviceData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/DeviceData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->photoUrls:Lcom/callapp/contacts/model/contact/PhotoUrls;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/PhotoUrls;->getPhotoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceData:Lcom/callapp/contacts/model/contact/DeviceData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/DeviceData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->photoUrls:Lcom/callapp/contacts/model/contact/PhotoUrls;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/PhotoUrls;->getThumbnail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1617
    :cond_0
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/model/contact/ContactData;->setDataSource(Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)V

    .line 1618
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->fastCacheData:Lcom/callapp/contacts/model/objectbox/FastCacheData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getPhotoDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    if-ne v0, v1, :cond_1

    .line 1619
    invoke-static {p0}, Lcom/callapp/contacts/loader/FastCacheDataManager;->b(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 1622
    :cond_1
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Ljava/util/Set;)V

    :cond_2
    return-void
.end method

.method public resetOnlyNotSureNetworks()V
    .locals 6

    .line 1380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1381
    sget-object v1, Lcom/callapp/common/api/ApiConstants;->c:[Ljava/lang/Integer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1382
    invoke-static {p0, v4}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->getSocialNetworkID(Lcom/callapp/contacts/model/contact/ContactData;I)Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1383
    invoke-virtual {v5}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->isSure()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1384
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1388
    :cond_1
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->resetSocialNetworks(Ljava/util/List;)V

    return-void
.end method

.method public resetPhoto()V
    .locals 2

    .line 1352
    const-class v0, Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->getLock(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1353
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->resetPhotoWithoutFiringAndUpdating()V

    .line 1354
    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Ljava/util/Set;)V

    .line 1355
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updatePhoto()V

    .line 1356
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetPhotoWithoutFiringAndUpdating()V
    .locals 3

    .line 1343
    const-class v0, Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->getLock(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1344
    :try_start_0
    iput-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->photoUrls:Lcom/callapp/contacts/model/contact/PhotoUrls;

    .line 1345
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v2, v1}, Lcom/callapp/contacts/model/contact/ContactData;->setDataSource(Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)V

    .line 1347
    invoke-static {p0}, Lcom/callapp/contacts/loader/FastCacheDataManager;->b(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 1348
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetSocialNetworks(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            ">;)V"
        }
    .end annotation

    .line 1478
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1483
    :cond_0
    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->facebook:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 1485
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v0

    const-class v4, Lcom/callapp/contacts/model/contact/SocialSearchResults;

    sget-object v5, Lcom/callapp/contacts/model/contact/DataSource;->facebook:Lcom/callapp/contacts/model/contact/DataSource;

    iget-object v5, v5, Lcom/callapp/contacts/model/contact/DataSource;->socialSearchField:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v5}, Lcom/callapp/contacts/model/contact/ContactData;->getCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1486
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v0

    const-class v4, Lcom/callapp/contacts/model/contact/social/FacebookData;

    sget-object v5, Lcom/callapp/contacts/model/contact/DataSource;->facebook:Lcom/callapp/contacts/model/contact/DataSource;

    iget-object v5, v5, Lcom/callapp/contacts/model/contact/DataSource;->socialDataField:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v5}, Lcom/callapp/contacts/model/contact/ContactData;->getCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1487
    invoke-direct {p0, v2}, Lcom/callapp/contacts/model/contact/ContactData;->removeMutualFriends(I)V

    .line 1488
    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->facebook:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->resetSocialImages(Lcom/callapp/contacts/model/contact/DataSource;)V

    .line 1489
    iput-object v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookSearchResults:Lcom/callapp/contacts/model/contact/SocialSearchResults;

    .line 1490
    iput-object v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookData:Lcom/callapp/contacts/model/contact/social/FacebookData;

    .line 1491
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/model/contact/DeviceData;->setFacebookId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 1492
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->dataSources:Ljava/util/Map;

    sget-object v4, Lcom/callapp/contacts/model/contact/DataSource;->facebook:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1496
    :goto_0
    sget-object v4, Lcom/callapp/contacts/model/contact/DataSource;->twitter:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1498
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v4

    const-class v5, Lcom/callapp/contacts/model/contact/SocialSearchResults;

    sget-object v6, Lcom/callapp/contacts/model/contact/DataSource;->twitter:Lcom/callapp/contacts/model/contact/DataSource;

    iget-object v6, v6, Lcom/callapp/contacts/model/contact/DataSource;->socialSearchField:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v6}, Lcom/callapp/contacts/model/contact/ContactData;->getCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1499
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v4

    const-class v5, Lcom/callapp/contacts/model/contact/social/TwitterData;

    sget-object v6, Lcom/callapp/contacts/model/contact/DataSource;->twitter:Lcom/callapp/contacts/model/contact/DataSource;

    iget-object v6, v6, Lcom/callapp/contacts/model/contact/DataSource;->socialDataField:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v6}, Lcom/callapp/contacts/model/contact/ContactData;->getCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v4, 0x4

    .line 1500
    invoke-direct {p0, v4}, Lcom/callapp/contacts/model/contact/ContactData;->removeMutualFriends(I)V

    .line 1501
    sget-object v4, Lcom/callapp/contacts/model/contact/DataSource;->twitter:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-direct {p0, v4}, Lcom/callapp/contacts/model/contact/ContactData;->resetSocialImages(Lcom/callapp/contacts/model/contact/DataSource;)V

    .line 1502
    iput-object v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->twitterSearchResults:Lcom/callapp/contacts/model/contact/SocialSearchResults;

    .line 1503
    iput-object v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->twitterData:Lcom/callapp/contacts/model/contact/social/TwitterData;

    .line 1504
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/callapp/contacts/model/contact/DeviceData;->setTwitterScreenName(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 1505
    iget-object v4, p0, Lcom/callapp/contacts/model/contact/ContactData;->dataSources:Ljava/util/Map;

    sget-object v5, Lcom/callapp/contacts/model/contact/DataSource;->twitter:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 1508
    :cond_2
    sget-object v4, Lcom/callapp/contacts/model/contact/DataSource;->foursquare:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1510
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v4

    const-class v5, Lcom/callapp/contacts/model/contact/SocialSearchResults;

    sget-object v6, Lcom/callapp/contacts/model/contact/DataSource;->foursquare:Lcom/callapp/contacts/model/contact/DataSource;

    iget-object v6, v6, Lcom/callapp/contacts/model/contact/DataSource;->socialSearchField:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v6}, Lcom/callapp/contacts/model/contact/ContactData;->getCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1511
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v4

    const-class v5, Lcom/callapp/contacts/model/contact/social/FoursquareData;

    sget-object v6, Lcom/callapp/contacts/model/contact/DataSource;->foursquare:Lcom/callapp/contacts/model/contact/DataSource;

    iget-object v6, v6, Lcom/callapp/contacts/model/contact/DataSource;->socialDataField:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v6}, Lcom/callapp/contacts/model/contact/ContactData;->getCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v4, 0x6

    .line 1512
    invoke-direct {p0, v4}, Lcom/callapp/contacts/model/contact/ContactData;->removeMutualFriends(I)V

    .line 1513
    sget-object v4, Lcom/callapp/contacts/model/contact/DataSource;->foursquare:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-direct {p0, v4}, Lcom/callapp/contacts/model/contact/ContactData;->resetSocialImages(Lcom/callapp/contacts/model/contact/DataSource;)V

    .line 1514
    iput-object v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->foursquareSearchResults:Lcom/callapp/contacts/model/contact/SocialSearchResults;

    .line 1515
    iput-object v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->foursquareData:Lcom/callapp/contacts/model/contact/social/FoursquareData;

    .line 1516
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/callapp/contacts/model/contact/DeviceData;->setFoursquareId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 1517
    iget-object v4, p0, Lcom/callapp/contacts/model/contact/ContactData;->dataSources:Ljava/util/Map;

    sget-object v5, Lcom/callapp/contacts/model/contact/DataSource;->foursquare:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 1520
    :cond_3
    sget-object v4, Lcom/callapp/contacts/model/contact/DataSource;->instagram:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1522
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v4

    const-class v5, Lcom/callapp/contacts/model/contact/SocialSearchResults;

    sget-object v6, Lcom/callapp/contacts/model/contact/DataSource;->instagram:Lcom/callapp/contacts/model/contact/DataSource;

    iget-object v6, v6, Lcom/callapp/contacts/model/contact/DataSource;->socialSearchField:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v6}, Lcom/callapp/contacts/model/contact/ContactData;->getCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1523
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v4

    const-class v5, Lcom/callapp/contacts/model/contact/social/InstagramData;

    sget-object v6, Lcom/callapp/contacts/model/contact/DataSource;->instagram:Lcom/callapp/contacts/model/contact/DataSource;

    iget-object v6, v6, Lcom/callapp/contacts/model/contact/DataSource;->socialDataField:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v6}, Lcom/callapp/contacts/model/contact/ContactData;->getCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v4, 0x7

    .line 1524
    invoke-direct {p0, v4}, Lcom/callapp/contacts/model/contact/ContactData;->removeMutualFriends(I)V

    .line 1525
    sget-object v4, Lcom/callapp/contacts/model/contact/DataSource;->instagram:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-direct {p0, v4}, Lcom/callapp/contacts/model/contact/ContactData;->resetSocialImages(Lcom/callapp/contacts/model/contact/DataSource;)V

    .line 1526
    iput-object v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->instagramSearchResults:Lcom/callapp/contacts/model/contact/SocialSearchResults;

    .line 1527
    iput-object v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->instagramData:Lcom/callapp/contacts/model/contact/social/InstagramData;

    .line 1528
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/callapp/contacts/model/contact/DeviceData;->setInstagramId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 1529
    iget-object v4, p0, Lcom/callapp/contacts/model/contact/ContactData;->dataSources:Ljava/util/Map;

    sget-object v5, Lcom/callapp/contacts/model/contact/DataSource;->instagram:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 1532
    :cond_4
    sget-object v4, Lcom/callapp/contacts/model/contact/DataSource;->pinterest:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1534
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v4

    const-class v5, Lcom/callapp/contacts/model/contact/SocialSearchResults;

    sget-object v6, Lcom/callapp/contacts/model/contact/DataSource;->pinterest:Lcom/callapp/contacts/model/contact/DataSource;

    iget-object v6, v6, Lcom/callapp/contacts/model/contact/DataSource;->socialSearchField:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v6}, Lcom/callapp/contacts/model/contact/ContactData;->getCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1535
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v4

    const-class v5, Lcom/callapp/contacts/model/contact/social/PinterestData;

    sget-object v6, Lcom/callapp/contacts/model/contact/DataSource;->pinterest:Lcom/callapp/contacts/model/contact/DataSource;

    iget-object v6, v6, Lcom/callapp/contacts/model/contact/DataSource;->socialDataField:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v6}, Lcom/callapp/contacts/model/contact/ContactData;->getCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/16 v4, 0x9

    .line 1536
    invoke-direct {p0, v4}, Lcom/callapp/contacts/model/contact/ContactData;->removeMutualFriends(I)V

    .line 1537
    sget-object v4, Lcom/callapp/contacts/model/contact/DataSource;->pinterest:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-direct {p0, v4}, Lcom/callapp/contacts/model/contact/ContactData;->resetSocialImages(Lcom/callapp/contacts/model/contact/DataSource;)V

    .line 1538
    iput-object v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->pinterestSearchResults:Lcom/callapp/contacts/model/contact/SocialSearchResults;

    .line 1539
    iput-object v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->pinterestData:Lcom/callapp/contacts/model/contact/social/PinterestData;

    .line 1540
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/callapp/contacts/model/contact/DeviceData;->setPinterestId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 1541
    iget-object v4, p0, Lcom/callapp/contacts/model/contact/ContactData;->dataSources:Ljava/util/Map;

    sget-object v5, Lcom/callapp/contacts/model/contact/DataSource;->pinterest:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 1544
    :cond_5
    sget-object v4, Lcom/callapp/contacts/model/contact/DataSource;->vk:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1546
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v4

    const-class v5, Lcom/callapp/contacts/model/contact/SocialSearchResults;

    sget-object v6, Lcom/callapp/contacts/model/contact/DataSource;->vk:Lcom/callapp/contacts/model/contact/DataSource;

    iget-object v6, v6, Lcom/callapp/contacts/model/contact/DataSource;->socialSearchField:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v6}, Lcom/callapp/contacts/model/contact/ContactData;->getCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1547
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v4

    const-class v5, Lcom/callapp/contacts/model/contact/social/VKData;

    sget-object v6, Lcom/callapp/contacts/model/contact/DataSource;->vk:Lcom/callapp/contacts/model/contact/DataSource;

    iget-object v6, v6, Lcom/callapp/contacts/model/contact/DataSource;->socialDataField:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v6}, Lcom/callapp/contacts/model/contact/ContactData;->getCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/16 v4, 0xa

    .line 1548
    invoke-direct {p0, v4}, Lcom/callapp/contacts/model/contact/ContactData;->removeMutualFriends(I)V

    .line 1549
    sget-object v4, Lcom/callapp/contacts/model/contact/DataSource;->vk:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-direct {p0, v4}, Lcom/callapp/contacts/model/contact/ContactData;->resetSocialImages(Lcom/callapp/contacts/model/contact/DataSource;)V

    .line 1550
    iput-object v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->vkData:Lcom/callapp/contacts/model/contact/social/VKData;

    .line 1551
    iput-object v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->vkSearchResults:Lcom/callapp/contacts/model/contact/SocialSearchResults;

    .line 1552
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/callapp/contacts/model/contact/DeviceData;->setVKId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 1553
    iget-object v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->dataSources:Ljava/util/Map;

    sget-object v4, Lcom/callapp/contacts/model/contact/DataSource;->vk:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 1558
    :cond_6
    invoke-static {p0, v1}, Lcom/callapp/contacts/loader/device/LoadSocialNetworksIdTask;->a(Lcom/callapp/contacts/model/contact/ContactData;Z)V

    .line 1560
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->resetPhoto()V

    .line 1563
    sget-object v1, Lcom/callapp/contacts/model/contact/DataSource;->facebook:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1565
    invoke-direct {p0, v2}, Lcom/callapp/contacts/model/contact/ContactData;->updateFacebookId(Z)V

    .line 1566
    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->facebookData:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    .line 1569
    :cond_7
    sget-object v1, Lcom/callapp/contacts/model/contact/DataSource;->twitter:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1571
    invoke-direct {p0, v2}, Lcom/callapp/contacts/model/contact/ContactData;->updateTwitterScreenName(Z)V

    .line 1572
    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->twitterData:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    .line 1575
    :cond_8
    sget-object v1, Lcom/callapp/contacts/model/contact/DataSource;->foursquare:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1577
    invoke-direct {p0, v2}, Lcom/callapp/contacts/model/contact/ContactData;->updateFoursquareId(Z)V

    .line 1578
    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->foursquareData:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    .line 1581
    :cond_9
    sget-object v1, Lcom/callapp/contacts/model/contact/DataSource;->instagram:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1583
    invoke-direct {p0, v2}, Lcom/callapp/contacts/model/contact/ContactData;->updateInstagramId(Z)V

    .line 1584
    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->instagramData:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    .line 1587
    :cond_a
    sget-object v1, Lcom/callapp/contacts/model/contact/DataSource;->pinterest:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1589
    invoke-direct {p0, v2}, Lcom/callapp/contacts/model/contact/ContactData;->updatePinterestId(Z)V

    .line 1590
    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->pinterestData:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    .line 1593
    :cond_b
    sget-object v1, Lcom/callapp/contacts/model/contact/DataSource;->vk:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1595
    invoke-direct {p0, v2}, Lcom/callapp/contacts/model/contact/ContactData;->updateVKId(Z)V

    .line 1596
    sget-object p1, Lcom/callapp/contacts/model/contact/ContactField;->vkData:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    :cond_c
    if-eqz v0, :cond_d

    .line 1600
    invoke-direct {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateAllFields()V

    return-void

    .line 1603
    :cond_d
    invoke-direct {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateSetAndMapFields()V

    return-void
.end method

.method public setAuPersonLookupAuData(Lcom/callapp/contacts/model/contact/AuPersonLookupData;)V
    .locals 0

    .line 2886
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->auPersonLookupData:Lcom/callapp/contacts/model/contact/AuPersonLookupData;

    return-void
.end method

.method public setBlockedNumberData(Lcom/callapp/contacts/model/objectbox/BlockedNumberData;)V
    .locals 0

    .line 2762
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->blockedNumberData:Lcom/callapp/contacts/model/objectbox/BlockedNumberData;

    return-void
.end method

.method public setCallHistoryData(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/contact/CallHistoryData;",
            ">;>;)V"
        }
    .end annotation

    .line 2531
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->callHistoryData:Ljava/util/Map;

    return-void
.end method

.method public setChLocalData(Lcom/callapp/contacts/model/contact/CHLocalData;)V
    .locals 0

    .line 2878
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->chLocalData:Lcom/callapp/contacts/model/contact/CHLocalData;

    return-void
.end method

.method public setContactRecords(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/CallRecorder;",
            ">;)V"
        }
    .end annotation

    .line 2910
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->records:Ljava/util/List;

    .line 2911
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateRecords()V

    return-void
.end method

.method public setDataSource(Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 441
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->dataSources:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 443
    :cond_0
    iget-object p2, p0, Lcom/callapp/contacts/model/contact/ContactData;->dataSources:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public setDeviceId(J)V
    .locals 0

    .line 587
    iput-wide p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceId:J

    return-void
.end method

.method public setFacebookData(Lcom/callapp/contacts/model/contact/social/FacebookData;)V
    .locals 0

    .line 2309
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookData:Lcom/callapp/contacts/model/contact/social/FacebookData;

    return-void
.end method

.method public setFacebookPlaceData(Lcom/callapp/contacts/model/contact/FacebookPlaceData;)V
    .locals 0

    .line 635
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookPlaceData:Lcom/callapp/contacts/model/contact/FacebookPlaceData;

    return-void
.end method

.method public setFastCacheData(Lcom/callapp/contacts/model/objectbox/FastCacheData;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->fastCacheData:Lcom/callapp/contacts/model/objectbox/FastCacheData;

    return-void
.end method

.method public setFoursquareData(Lcom/callapp/contacts/model/contact/social/FoursquareData;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->foursquareData:Lcom/callapp/contacts/model/contact/social/FoursquareData;

    return-void
.end method

.method public setGenomeData(Lcom/callapp/common/model/json/JSONContact;)V
    .locals 0

    .line 649
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    return-void
.end method

.method public setGmailEmailData(Lcom/callapp/contacts/model/contact/GmailEmailData;)V
    .locals 0

    .line 2216
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->gmailEmailData:Lcom/callapp/contacts/model/contact/GmailEmailData;

    return-void
.end method

.method public setGoogleMapsLatLng(Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;)V
    .locals 0

    .line 1053
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->googleMapsLatLng:Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;

    .line 1054
    sget-object p1, Lcom/callapp/contacts/model/contact/ContactField;->googleMap:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    return-void
.end method

.method public setGooglePlacesData(Lcom/callapp/contacts/model/contact/GooglePlacesData;)V
    .locals 0

    .line 627
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->googlePlacesData:Lcom/callapp/contacts/model/contact/GooglePlacesData;

    return-void
.end method

.method public setGravatarData(Lcom/callapp/contacts/model/contact/GravatarData;)V
    .locals 0

    .line 2443
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->gravatarData:Lcom/callapp/contacts/model/contact/GravatarData;

    return-void
.end method

.method public setHasSuggestions(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2742
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->hasSuggestions:Ljava/util/Set;

    return-void
.end method

.method public setHuaweiPlaceData(Lcom/callapp/contacts/model/contact/HuaweiPlaceData;)V
    .locals 0

    .line 641
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->huaweiPlaceData:Lcom/callapp/contacts/model/contact/HuaweiPlaceData;

    return-void
.end method

.method public setImExtractedPhotoData(Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;)V
    .locals 0

    .line 2790
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->imExtractedPhotoData:Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;

    return-void
.end method

.method public setInSync(Z)V
    .locals 0

    .line 358
    iput-boolean p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->isInSync:Z

    return-void
.end method

.method public setInstagramData(Lcom/callapp/contacts/model/contact/social/InstagramData;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->instagramData:Lcom/callapp/contacts/model/contact/social/InstagramData;

    return-void
.end method

.method public setIntentData(Lcom/callapp/contacts/model/contact/IntentData;)V
    .locals 0

    .line 2539
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->intentData:Lcom/callapp/contacts/model/contact/IntentData;

    return-void
.end method

.method public setIsIncognito(Z)V
    .locals 0

    .line 2956
    iput-boolean p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->isIncognito:Z

    .line 2957
    sget-object p1, Lcom/callapp/contacts/model/contact/ContactField;->isIncognito:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    return-void
.end method

.method public setNegativesMap(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 509
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->negativesMap:Landroid/util/SparseArray;

    return-void
.end method

.method public setNotificationTelegramData(Lcom/callapp/contacts/model/contact/social/NotificationFromIMData;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->notificationTelegramData:Lcom/callapp/contacts/model/contact/social/NotificationFromIMData;

    return-void
.end method

.method public setNotificationViberData(Lcom/callapp/contacts/model/contact/social/NotificationFromIMData;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->notificationViberData:Lcom/callapp/contacts/model/contact/social/NotificationFromIMData;

    return-void
.end method

.method public setNotificationWhatsAppData(Lcom/callapp/contacts/model/contact/social/NotificationFromIMData;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->notificationWhatsAppData:Lcom/callapp/contacts/model/contact/social/NotificationFromIMData;

    return-void
.end method

.method public setNumberGeocodingDescription(Lcom/callapp/common/model/json/JSONAddress;)V
    .locals 0

    .line 2380
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->numberGeocodingDescription:Lcom/callapp/common/model/json/JSONAddress;

    return-void
.end method

.method public setPhone(Lcom/callapp/framework/phone/Phone;)Z
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->phone:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v0, p1}, Lcom/callapp/framework/phone/Phone;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 610
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->phone:Lcom/callapp/framework/phone/Phone;

    .line 611
    invoke-direct {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateId()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 612
    sget-object p1, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->id:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {p1, v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Ljava/util/Set;)V

    goto :goto_0

    .line 614
    :cond_0
    sget-object p1, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setPhoneOrigin(Lcom/callapp/contacts/model/objectbox/ExtractedInfo;)V
    .locals 0

    .line 2985
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->phoneOrigin:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    return-void
.end method

.method public setPinterestData(Lcom/callapp/contacts/model/contact/social/PinterestData;)V
    .locals 0

    .line 2301
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->pinterestData:Lcom/callapp/contacts/model/contact/social/PinterestData;

    return-void
.end method

.method public setRecognized(Z)V
    .locals 0

    .line 2927
    iput-boolean p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->isRecognized:Z

    return-void
.end method

.method public setSkypeData(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/callapp/contacts/loader/im/SkypeLoader$SkypeChatData;",
            ">;)V"
        }
    .end annotation

    .line 665
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->skypeData:Ljava/util/Collection;

    return-void
.end method

.method public setSpamReported(Z)V
    .locals 0

    .line 2923
    iput-boolean p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->isSpamReported:Z

    return-void
.end method

.method public setSuggestionData(Lcom/callapp/contacts/model/contact/SuggestionData;)V
    .locals 0

    .line 2738
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->suggestionData:Lcom/callapp/contacts/model/contact/SuggestionData;

    return-void
.end method

.method public setSuggestionMap(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2754
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->suggestionMap:Landroid/util/SparseArray;

    return-void
.end method

.method public setTwilioTrustedCommData(Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;)V
    .locals 0

    .line 2451
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->twilioTrustedCommData:Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;

    return-void
.end method

.method public setTwitterData(Lcom/callapp/contacts/model/contact/social/TwitterData;)V
    .locals 0

    .line 489
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->twitterData:Lcom/callapp/contacts/model/contact/social/TwitterData;

    return-void
.end method

.method public setUserCorrectedData(Lcom/callapp/contacts/model/objectbox/UserCorrectedData;)V
    .locals 0

    .line 2778
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->userCorrectedData:Lcom/callapp/contacts/model/objectbox/UserCorrectedData;

    return-void
.end method

.method public setUserMediaData(Lcom/callapp/contacts/model/objectbox/UserMediaData;)V
    .locals 0

    .line 2782
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->userMediaData:Lcom/callapp/contacts/model/objectbox/UserMediaData;

    return-void
.end method

.method public setUserProfileData(Lcom/callapp/contacts/model/contact/UserProfileData;)V
    .locals 0

    .line 485
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->userProfileData:Lcom/callapp/contacts/model/contact/UserProfileData;

    return-void
.end method

.method public setUserSpamData(Lcom/callapp/contacts/model/objectbox/UserSpamData;)V
    .locals 0

    .line 2798
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->userSpamData:Lcom/callapp/contacts/model/objectbox/UserSpamData;

    return-void
.end method

.method public setVKData(Lcom/callapp/contacts/model/contact/social/VKData;)V
    .locals 0

    .line 2770
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->vkData:Lcom/callapp/contacts/model/contact/social/VKData;

    return-void
.end method

.method public setVenueFoursquareData(Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;)V
    .locals 0

    .line 2714
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->venueFoursquareData:Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;

    return-void
.end method

.method public setVenueFoursquareIDFromSearchData(Lcom/callapp/contacts/model/contact/social/VenueFoursquareIdFromSearchData;)V
    .locals 0

    .line 2730
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->venueFoursquareIDFromSearchData:Lcom/callapp/contacts/model/contact/social/VenueFoursquareIdFromSearchData;

    return-void
.end method

.method public setVenueFoursquareId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 2722
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->venueFoursquareId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method

.method public setWebsitesSocialIDsData(Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;)V
    .locals 0

    .line 2806
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->websitesSocialIDsData:Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;

    return-void
.end method

.method public setWhatsAppDataExtraction(Z)V
    .locals 0

    .line 2977
    iput-boolean p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->whatsAppDataExtraction:Z

    return-void
.end method

.method public setWhitePagesData(Lcom/callapp/contacts/model/contact/WhitePagesData;)V
    .locals 0

    .line 2706
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->whitePagesData:Lcom/callapp/contacts/model/contact/WhitePagesData;

    return-void
.end method

.method public setYahooData(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/callapp/contacts/model/contact/ChatData;",
            ">;)V"
        }
    .end annotation

    .line 657
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->yahooData:Ljava/util/Collection;

    return-void
.end method

.method public setYouTubeVideos(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/callapp/contacts/model/contact/VideoData;",
            ">;)V"
        }
    .end annotation

    .line 1062
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->youTubeVideos:Ljava/util/Collection;

    .line 1063
    sget-object p1, Lcom/callapp/contacts/model/contact/ContactField;->youTubeVideos:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    return-void
.end method

.method public declared-synchronized updateAddresses()V
    .locals 4

    monitor-enter p0

    .line 817
    :try_start_0
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->addresses:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateSet(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/util/model/UpdateSetBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceData:Lcom/callapp/contacts/model/contact/DeviceData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateSetBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    .line 818
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->googlePlacesData:Lcom/callapp/contacts/model/contact/GooglePlacesData;

    const-string v2, "address"

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->googlePlaces:Lcom/callapp/contacts/model/contact/DataSource;

    .line 819
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookPlaceData:Lcom/callapp/contacts/model/contact/FacebookPlaceData;

    const-string v2, "address"

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->facebookPlaces:Lcom/callapp/contacts/model/contact/DataSource;

    .line 820
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->huaweiPlaceData:Lcom/callapp/contacts/model/contact/HuaweiPlaceData;

    const-string v2, "address"

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->huaweiPlaces:Lcom/callapp/contacts/model/contact/DataSource;

    .line 821
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookData:Lcom/callapp/contacts/model/contact/social/FacebookData;

    const-string v2, "address"

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->facebook:Lcom/callapp/contacts/model/contact/DataSource;

    .line 822
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->venueFoursquareData:Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;

    const-string v2, "address"

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->venueFoursquare:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->whitePagesData:Lcom/callapp/contacts/model/contact/WhitePagesData;

    const-string v2, "address"

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->whitePages:Lcom/callapp/contacts/model/contact/DataSource;

    .line 823
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    const-string v1, "numberGeocodingDescription"

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->libPhoneNumber:Lcom/callapp/contacts/model/contact/DataSource;

    .line 824
    invoke-virtual {v0, p0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->chLocalData:Lcom/callapp/contacts/model/contact/CHLocalData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->chLocal:Lcom/callapp/contacts/model/contact/DataSource;

    .line 825
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->vkData:Lcom/callapp/contacts/model/contact/social/VKData;

    const-string v2, "address"

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->vk:Lcom/callapp/contacts/model/contact/DataSource;

    .line 826
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->auPersonLookupData:Lcom/callapp/contacts/model/contact/AuPersonLookupData;

    const-string v2, "address"

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->auPersonLookup:Lcom/callapp/contacts/model/contact/DataSource;

    .line 827
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->userProfileData:Lcom/callapp/contacts/model/contact/UserProfileData;

    const-string v2, "address"

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->userProfile:Lcom/callapp/contacts/model/contact/DataSource;

    .line 828
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    .line 829
    invoke-virtual {v0}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->execute()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 831
    iput-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->address:Lcom/callapp/common/model/json/JSONAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 833
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateBirthDate()V
    .locals 4

    monitor-enter p0

    .line 2183
    :try_start_0
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->birthday:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateField(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->userProfileData:Lcom/callapp/contacts/model/contact/UserProfileData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->userProfile:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2184
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useFieldForced(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceData:Lcom/callapp/contacts/model/contact/DeviceData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2185
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2186
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->vkData:Lcom/callapp/contacts/model/contact/social/VKData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->vk:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2187
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookData:Lcom/callapp/contacts/model/contact/social/FacebookData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->facebook:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2188
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    .line 2190
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    if-eqz v1, :cond_0

    .line 2191
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONContact;->getBirthday()Lcom/callapp/common/model/json/JSONDate;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useValue(Ljava/lang/Object;Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    .line 2194
    :cond_0
    invoke-virtual {v0}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->execute()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2195
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateCallHistoryData()V
    .locals 1

    .line 2810
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->callHistoryData:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    return-void
.end method

.method public updateCallReason()V
    .locals 3

    .line 2693
    new-instance v0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->callReason:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;-><init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactField;)V

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->twilioTrustedCommData:Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->twilioTrustedComm:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    .line 2694
    invoke-virtual {v0}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->execute()Z

    return-void
.end method

.method public declared-synchronized updateCategories()V
    .locals 3

    monitor-enter p0

    .line 796
    :try_start_0
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->categories:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateSet(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/util/model/UpdateSetBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateSetBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->googlePlacesData:Lcom/callapp/contacts/model/contact/GooglePlacesData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->googlePlaces:Lcom/callapp/contacts/model/contact/DataSource;

    .line 797
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookPlaceData:Lcom/callapp/contacts/model/contact/FacebookPlaceData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->facebookPlaces:Lcom/callapp/contacts/model/contact/DataSource;

    .line 798
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->huaweiPlaceData:Lcom/callapp/contacts/model/contact/HuaweiPlaceData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->huaweiPlaces:Lcom/callapp/contacts/model/contact/DataSource;

    .line 799
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->venueFoursquareData:Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->venueFoursquare:Lcom/callapp/contacts/model/contact/DataSource;

    .line 800
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookData:Lcom/callapp/contacts/model/contact/social/FacebookData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->facebook:Lcom/callapp/contacts/model/contact/DataSource;

    .line 801
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->chLocalData:Lcom/callapp/contacts/model/contact/CHLocalData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->chLocal:Lcom/callapp/contacts/model/contact/DataSource;

    .line 802
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    .line 803
    invoke-virtual {v0}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->execute()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 804
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateCover()V
    .locals 3

    .line 2683
    new-instance v0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->cover:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;-><init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactField;)V

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2684
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    .line 2685
    invoke-virtual {v0}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->execute()Z

    return-void
.end method

.method public updateDescription()V
    .locals 3

    .line 2658
    new-instance v0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->description:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;-><init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactField;)V

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->googlePlacesData:Lcom/callapp/contacts/model/contact/GooglePlacesData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->googlePlaces:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookPlaceData:Lcom/callapp/contacts/model/contact/FacebookPlaceData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->facebookPlaces:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2659
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->huaweiPlaceData:Lcom/callapp/contacts/model/contact/HuaweiPlaceData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->huaweiPlaces:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2660
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->venueFoursquareData:Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->venueFoursquare:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2661
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->gravatarData:Lcom/callapp/contacts/model/contact/GravatarData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->gravatar:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2662
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->chLocalData:Lcom/callapp/contacts/model/contact/CHLocalData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->chLocal:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2663
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    .line 2664
    invoke-virtual {v0}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->execute()Z

    return-void
.end method

.method public updateDeviceId()V
    .locals 2

    .line 596
    invoke-direct {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->deviceId:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->id:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Ljava/util/Set;)V

    return-void

    .line 599
    :cond_0
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->deviceId:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    return-void
.end method

.method public updateDeviceIdMonitored()V
    .locals 1

    .line 591
    invoke-direct {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateId()Z

    .line 592
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->DEVICE_ID_MONITORED:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Ljava/util/Set;)V

    return-void
.end method

.method public declared-synchronized updateEmails()V
    .locals 5

    monitor-enter p0

    .line 904
    :try_start_0
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->emails:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateMap(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/util/model/UpdateMapBuilder;

    move-result-object v0

    .line 905
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateMapBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceData:Lcom/callapp/contacts/model/contact/DeviceData;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    .line 906
    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookData:Lcom/callapp/contacts/model/contact/social/FacebookData;

    const-string v3, "email"

    sget-object v4, Lcom/callapp/contacts/model/contact/DataSource;->facebook:Lcom/callapp/contacts/model/contact/DataSource;

    .line 907
    invoke-virtual {v1, v2, v3, v4}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->foursquareData:Lcom/callapp/contacts/model/contact/social/FoursquareData;

    const-string v3, "email"

    sget-object v4, Lcom/callapp/contacts/model/contact/DataSource;->foursquare:Lcom/callapp/contacts/model/contact/DataSource;

    .line 908
    invoke-virtual {v1, v2, v3, v4}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->venueFoursquareData:Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;

    const-string v3, "email"

    sget-object v4, Lcom/callapp/contacts/model/contact/DataSource;->venueFoursquare:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v1, v2, v3, v4}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->gmailEmailData:Lcom/callapp/contacts/model/contact/GmailEmailData;

    const-string v3, "email"

    sget-object v4, Lcom/callapp/contacts/model/contact/DataSource;->gmail:Lcom/callapp/contacts/model/contact/DataSource;

    .line 909
    invoke-virtual {v1, v2, v3, v4}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->gravatarData:Lcom/callapp/contacts/model/contact/GravatarData;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->gravatar:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->chLocalData:Lcom/callapp/contacts/model/contact/CHLocalData;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->chLocal:Lcom/callapp/contacts/model/contact/DataSource;

    .line 910
    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->userProfileData:Lcom/callapp/contacts/model/contact/UserProfileData;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->userProfile:Lcom/callapp/contacts/model/contact/DataSource;

    .line 911
    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    .line 913
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->emails:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 914
    :try_start_1
    invoke-virtual {v0}, Lcom/callapp/contacts/util/model/UpdateMapBuilder;->execute()Z

    .line 915
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateEvents()V
    .locals 3

    monitor-enter p0

    .line 924
    :try_start_0
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->events:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateSet(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/util/model/UpdateSetBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceData:Lcom/callapp/contacts/model/contact/DeviceData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateSetBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    .line 925
    invoke-virtual {v0}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->execute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 927
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->birthday:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 929
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateExcludeAnalytics()V
    .locals 1

    .line 2698
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->excludeAnalytics:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    return-void
.end method

.method public updateFacebookId()V
    .locals 1

    const/4 v0, 0x0

    .line 1118
    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateFacebookId(Z)V

    return-void
.end method

.method public updateFacebookPlacesData()V
    .locals 1

    .line 2031
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->facebookPlaces:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    return-void
.end method

.method public updateFoursquareId()V
    .locals 1

    const/4 v0, 0x0

    .line 1154
    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateFoursquareId(Z)V

    return-void
.end method

.method public declared-synchronized updateFullName()V
    .locals 4

    monitor-enter p0

    .line 711
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->loadedFields:Ljava/util/Set;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->names:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateNames()V

    .line 715
    :cond_0
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    .line 716
    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateNamefield(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/util/model/UpdateNameBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->userProfileData:Lcom/callapp/contacts/model/contact/UserProfileData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->userProfile:Lcom/callapp/contacts/model/contact/DataSource;

    .line 717
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateNameBuilder;->useFieldForced(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->blockedNumberData:Lcom/callapp/contacts/model/objectbox/BlockedNumberData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->blockedNumberDB:Lcom/callapp/contacts/model/contact/DataSource;

    .line 718
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useFieldForced(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceData:Lcom/callapp/contacts/model/contact/DeviceData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    .line 719
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useFieldForced(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->intentData:Lcom/callapp/contacts/model/contact/IntentData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->intent:Lcom/callapp/contacts/model/contact/DataSource;

    .line 720
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->userCorrectedData:Lcom/callapp/contacts/model/objectbox/UserCorrectedData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->userCorrectedInfo:Lcom/callapp/contacts/model/contact/DataSource;

    .line 721
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useFieldForced(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->fastCacheData:Lcom/callapp/contacts/model/objectbox/FastCacheData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->other:Lcom/callapp/contacts/model/contact/DataSource;

    .line 722
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->notificationWhatsAppData:Lcom/callapp/contacts/model/contact/social/NotificationFromIMData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->notificationWhatsApp:Lcom/callapp/contacts/model/contact/DataSource;

    .line 723
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->notificationViberData:Lcom/callapp/contacts/model/contact/social/NotificationFromIMData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->notificationViber:Lcom/callapp/contacts/model/contact/DataSource;

    .line 724
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->notificationTelegramData:Lcom/callapp/contacts/model/contact/social/NotificationFromIMData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->notificationTelegram:Lcom/callapp/contacts/model/contact/DataSource;

    .line 725
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->googlePlacesData:Lcom/callapp/contacts/model/contact/GooglePlacesData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->googlePlaces:Lcom/callapp/contacts/model/contact/DataSource;

    .line 726
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookPlaceData:Lcom/callapp/contacts/model/contact/FacebookPlaceData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->facebookPlaces:Lcom/callapp/contacts/model/contact/DataSource;

    .line 727
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->huaweiPlaceData:Lcom/callapp/contacts/model/contact/HuaweiPlaceData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->huaweiPlaces:Lcom/callapp/contacts/model/contact/DataSource;

    .line 728
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->venueFoursquareData:Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->venueFoursquare:Lcom/callapp/contacts/model/contact/DataSource;

    .line 729
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    const-string v2, "name"

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    .line 730
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->twilioTrustedCommData:Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;

    const-string v2, "name"

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->twilioTrustedComm:Lcom/callapp/contacts/model/contact/DataSource;

    .line 731
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->vkData:Lcom/callapp/contacts/model/contact/social/VKData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->vk:Lcom/callapp/contacts/model/contact/DataSource;

    .line 732
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookData:Lcom/callapp/contacts/model/contact/social/FacebookData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->facebook:Lcom/callapp/contacts/model/contact/DataSource;

    .line 733
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->twitterData:Lcom/callapp/contacts/model/contact/social/TwitterData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->twitter:Lcom/callapp/contacts/model/contact/DataSource;

    .line 734
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->foursquareData:Lcom/callapp/contacts/model/contact/social/FoursquareData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->foursquare:Lcom/callapp/contacts/model/contact/DataSource;

    .line 735
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->instagramData:Lcom/callapp/contacts/model/contact/social/InstagramData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->instagram:Lcom/callapp/contacts/model/contact/DataSource;

    .line 736
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->pinterestData:Lcom/callapp/contacts/model/contact/social/PinterestData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->pinterest:Lcom/callapp/contacts/model/contact/DataSource;

    .line 737
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->gmailEmailData:Lcom/callapp/contacts/model/contact/GmailEmailData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->gmail:Lcom/callapp/contacts/model/contact/DataSource;

    .line 738
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->gravatarData:Lcom/callapp/contacts/model/contact/GravatarData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->gravatar:Lcom/callapp/contacts/model/contact/DataSource;

    .line 739
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->whitePagesData:Lcom/callapp/contacts/model/contact/WhitePagesData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->whitePages:Lcom/callapp/contacts/model/contact/DataSource;

    .line 740
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->chLocalData:Lcom/callapp/contacts/model/contact/CHLocalData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->chLocal:Lcom/callapp/contacts/model/contact/DataSource;

    .line 741
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->auPersonLookupData:Lcom/callapp/contacts/model/contact/AuPersonLookupData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->auPersonLookup:Lcom/callapp/contacts/model/contact/DataSource;

    .line 742
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    .line 743
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getSkypeData()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 744
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getSkypeData()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/loader/im/SkypeLoader$SkypeChatData;

    .line 745
    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->skype:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 748
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->defaultValue(Ljava/lang/Object;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->execute()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 751
    iput-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->firstName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateGTalk()V
    .locals 1

    .line 2822
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->gTalk:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    return-void
.end method

.method public updateGmailData()V
    .locals 1

    .line 2814
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->gmailData:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    return-void
.end method

.method public updateGooglePlacesData()V
    .locals 1

    .line 2027
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->googlePlaces:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    return-void
.end method

.method public updateHasSuggestion()V
    .locals 1

    .line 2818
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->hasSuggestions:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    return-void
.end method

.method public updateHuaweiPlacesData()V
    .locals 1

    .line 2035
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->huaweiPlaces:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    return-void
.end method

.method public updateImAddresses()V
    .locals 4

    .line 2088
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->imAddresses:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateSet(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/util/model/UpdateSetBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceData:Lcom/callapp/contacts/model/contact/DeviceData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2089
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateSetBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceData:Lcom/callapp/contacts/model/contact/DeviceData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    const-string v3, "imContacts"

    .line 2090
    invoke-virtual {v0, v1, v3, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    const-string v3, "iMAddresses"

    .line 2091
    invoke-virtual {v0, v1, v3, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->vkData:Lcom/callapp/contacts/model/contact/social/VKData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->vk:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2092
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->gravatarData:Lcom/callapp/contacts/model/contact/GravatarData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->gravatar:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2093
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    .line 2094
    invoke-virtual {v0}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->execute()Z

    return-void
.end method

.method public updateInstagramId()V
    .locals 1

    const/4 v0, 0x0

    .line 1165
    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateInstagramId(Z)V

    return-void
.end method

.method public updateLastSMS()V
    .locals 1

    .line 2838
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->lastSms:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    return-void
.end method

.method public declared-synchronized updateLatLng()V
    .locals 7

    monitor-enter p0

    .line 1014
    :try_start_0
    new-instance v0, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;

    new-instance v1, Lcom/callapp/contacts/model/contact/ContactData$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/model/contact/ContactData$1;-><init>(Lcom/callapp/contacts/model/contact/ContactData;)V

    new-instance v2, Landroid/util/Pair;

    iget-wide v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->lat:D

    .line 1030
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-wide v4, p0, Lcom/callapp/contacts/model/contact/ContactData;->lng:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Landroid/util/Pair;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;-><init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/util/model/PrioritizedValueBuilder$Validator;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1032
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    invoke-direct {p0, v1}, Lcom/callapp/contacts/model/contact/ContactData;->getLatLng(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    iget-object v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->useValue(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/Object;)Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookData:Lcom/callapp/contacts/model/contact/social/FacebookData;

    .line 1033
    invoke-direct {p0, v2}, Lcom/callapp/contacts/model/contact/ContactData;->getLatLng(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->facebook:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->useValue(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->googlePlacesData:Lcom/callapp/contacts/model/contact/GooglePlacesData;

    .line 1034
    invoke-direct {p0, v2}, Lcom/callapp/contacts/model/contact/ContactData;->getLatLng(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->googlePlaces:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->useValue(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookPlaceData:Lcom/callapp/contacts/model/contact/FacebookPlaceData;

    .line 1035
    invoke-direct {p0, v2}, Lcom/callapp/contacts/model/contact/ContactData;->getLatLng(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->facebookPlaces:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->useValue(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->huaweiPlaceData:Lcom/callapp/contacts/model/contact/HuaweiPlaceData;

    .line 1036
    invoke-direct {p0, v2}, Lcom/callapp/contacts/model/contact/ContactData;->getLatLng(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->huaweiPlaces:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->useValue(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->venueFoursquareData:Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;

    .line 1037
    invoke-direct {p0, v2}, Lcom/callapp/contacts/model/contact/ContactData;->getLatLng(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->venueFoursquare:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->useValue(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->chLocalData:Lcom/callapp/contacts/model/contact/CHLocalData;

    .line 1038
    invoke-direct {p0, v2}, Lcom/callapp/contacts/model/contact/ContactData;->getLatLng(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->chLocal:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->useValue(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;

    .line 1040
    new-instance v1, Lcom/callapp/contacts/model/contact/ContactData$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/model/contact/ContactData$2;-><init>(Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->execute(Lcom/callapp/contacts/util/model/PrioritizedValueBuilder$ValueChangedCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1050
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected updateMap(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/util/model/UpdateMapBuilder;
    .locals 2

    .line 2273
    new-instance v0, Lcom/callapp/contacts/util/model/UpdateMapBuilder;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, p0, p1, v1}, Lcom/callapp/contacts/util/model/UpdateMapBuilder;-><init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactField;Ljava/util/Map;)V

    return-object v0
.end method

.method public updateMenuUrl()V
    .locals 3

    .line 2647
    new-instance v0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->menuUrl:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;-><init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactField;)V

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2648
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->googlePlacesData:Lcom/callapp/contacts/model/contact/GooglePlacesData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->googlePlaces:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2649
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->venueFoursquareData:Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->venueFoursquare:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2650
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->execute()Z

    return-void
.end method

.method public declared-synchronized updateMutualFriends()V
    .locals 3

    monitor-enter p0

    .line 836
    :try_start_0
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->mutualFriends:Lcom/callapp/contacts/model/contact/ContactField;

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/callapp/contacts/model/contact/ContactData;->updateSet(Lcom/callapp/contacts/model/contact/ContactField;Ljava/util/Set;)Lcom/callapp/contacts/util/model/UpdateSetBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookData:Lcom/callapp/contacts/model/contact/social/FacebookData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->facebook:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateSetBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->twitterData:Lcom/callapp/contacts/model/contact/social/TwitterData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->twitter:Lcom/callapp/contacts/model/contact/DataSource;

    .line 837
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->instagramData:Lcom/callapp/contacts/model/contact/social/InstagramData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->instagram:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->foursquareData:Lcom/callapp/contacts/model/contact/social/FoursquareData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->foursquare:Lcom/callapp/contacts/model/contact/DataSource;

    .line 838
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->pinterestData:Lcom/callapp/contacts/model/contact/social/PinterestData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->pinterest:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->venueFoursquareData:Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->venueFoursquare:Lcom/callapp/contacts/model/contact/DataSource;

    .line 839
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->vkData:Lcom/callapp/contacts/model/contact/social/VKData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->vk:Lcom/callapp/contacts/model/contact/DataSource;

    .line 840
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->venueFoursquareData:Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->venueFoursquare:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->execute()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 842
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateNames()V
    .locals 5

    monitor-enter p0

    .line 756
    :try_start_0
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->names:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/callapp/contacts/model/contact/ContactData;->updateNamesField(Lcom/callapp/contacts/model/contact/ContactField;Z)Lcom/callapp/contacts/util/model/UpdateNamesBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceData:Lcom/callapp/contacts/model/contact/DeviceData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    .line 757
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateNamesBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceData:Lcom/callapp/contacts/model/contact/DeviceData;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    .line 758
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->intentData:Lcom/callapp/contacts/model/contact/IntentData;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->intent:Lcom/callapp/contacts/model/contact/DataSource;

    .line 759
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->userCorrectedData:Lcom/callapp/contacts/model/objectbox/UserCorrectedData;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->userCorrectedInfo:Lcom/callapp/contacts/model/contact/DataSource;

    .line 760
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->notificationWhatsAppData:Lcom/callapp/contacts/model/contact/social/NotificationFromIMData;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->notificationWhatsApp:Lcom/callapp/contacts/model/contact/DataSource;

    .line 761
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->notificationViberData:Lcom/callapp/contacts/model/contact/social/NotificationFromIMData;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->notificationViber:Lcom/callapp/contacts/model/contact/DataSource;

    .line 762
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->notificationTelegramData:Lcom/callapp/contacts/model/contact/social/NotificationFromIMData;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->notificationTelegram:Lcom/callapp/contacts/model/contact/DataSource;

    .line 763
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->googlePlacesData:Lcom/callapp/contacts/model/contact/GooglePlacesData;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->googlePlaces:Lcom/callapp/contacts/model/contact/DataSource;

    .line 765
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookPlaceData:Lcom/callapp/contacts/model/contact/FacebookPlaceData;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->facebookPlaces:Lcom/callapp/contacts/model/contact/DataSource;

    .line 766
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->huaweiPlaceData:Lcom/callapp/contacts/model/contact/HuaweiPlaceData;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->huaweiPlaces:Lcom/callapp/contacts/model/contact/DataSource;

    .line 767
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->venueFoursquareData:Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->venueFoursquare:Lcom/callapp/contacts/model/contact/DataSource;

    .line 768
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    const-string v2, "name"

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    .line 769
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->twilioTrustedCommData:Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;

    const-string v2, "name"

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->twilioTrustedComm:Lcom/callapp/contacts/model/contact/DataSource;

    .line 770
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookData:Lcom/callapp/contacts/model/contact/social/FacebookData;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->facebook:Lcom/callapp/contacts/model/contact/DataSource;

    .line 772
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->twitterData:Lcom/callapp/contacts/model/contact/social/TwitterData;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->twitter:Lcom/callapp/contacts/model/contact/DataSource;

    .line 773
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->foursquareData:Lcom/callapp/contacts/model/contact/social/FoursquareData;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->foursquare:Lcom/callapp/contacts/model/contact/DataSource;

    .line 774
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->instagramData:Lcom/callapp/contacts/model/contact/social/InstagramData;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->instagram:Lcom/callapp/contacts/model/contact/DataSource;

    .line 775
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->pinterestData:Lcom/callapp/contacts/model/contact/social/PinterestData;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->pinterest:Lcom/callapp/contacts/model/contact/DataSource;

    .line 776
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->gmailEmailData:Lcom/callapp/contacts/model/contact/GmailEmailData;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->gmail:Lcom/callapp/contacts/model/contact/DataSource;

    .line 777
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->whitePagesData:Lcom/callapp/contacts/model/contact/WhitePagesData;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->whitePages:Lcom/callapp/contacts/model/contact/DataSource;

    .line 778
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->gravatarData:Lcom/callapp/contacts/model/contact/GravatarData;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->gravatar:Lcom/callapp/contacts/model/contact/DataSource;

    .line 779
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->chLocalData:Lcom/callapp/contacts/model/contact/CHLocalData;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->chLocal:Lcom/callapp/contacts/model/contact/DataSource;

    .line 780
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->auPersonLookupData:Lcom/callapp/contacts/model/contact/AuPersonLookupData;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->auPersonLookup:Lcom/callapp/contacts/model/contact/DataSource;

    .line 781
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    .line 782
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getSkypeData()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 783
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getSkypeData()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/loader/im/SkypeLoader$SkypeChatData;

    .line 784
    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v4, Lcom/callapp/contacts/model/contact/DataSource;->skype:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v2, v3, v4}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    goto :goto_0

    .line 787
    :cond_0
    invoke-virtual {v0}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->execute()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 788
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateNegatives()V
    .locals 1

    .line 2842
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->negatives:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    return-void
.end method

.method public updateNote()V
    .locals 1

    .line 2834
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->note:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    return-void
.end method

.method public updateOpeningHours()V
    .locals 4

    .line 2588
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->openingHours:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateField(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->googlePlacesData:Lcom/callapp/contacts/model/contact/GooglePlacesData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->googlePlaces:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2589
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookPlaceData:Lcom/callapp/contacts/model/contact/FacebookPlaceData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->facebookPlaces:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2590
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->huaweiPlaceData:Lcom/callapp/contacts/model/contact/HuaweiPlaceData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->huaweiPlaces:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2591
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->venueFoursquareData:Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->venueFoursquare:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2592
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookData:Lcom/callapp/contacts/model/contact/social/FacebookData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->facebook:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    .line 2593
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONContact;->getOpeningHours()Lcom/callapp/common/model/json/JSONOpeningHours;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2594
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONContact;->getOpeningHours()Lcom/callapp/common/model/json/JSONOpeningHours;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useValue(Ljava/lang/Object;Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    .line 2597
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->chLocalData:Lcom/callapp/contacts/model/contact/CHLocalData;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/CHLocalData;->getOpeningHours()Lcom/callapp/common/model/json/JSONOpeningHours;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2598
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->chLocalData:Lcom/callapp/contacts/model/contact/CHLocalData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/CHLocalData;->getOpeningHours()Lcom/callapp/common/model/json/JSONOpeningHours;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->chLocalData:Lcom/callapp/contacts/model/contact/CHLocalData;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->chLocal:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useValue(Ljava/lang/Object;Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    .line 2601
    :cond_1
    invoke-virtual {v0}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->execute()Z

    return-void
.end method

.method public declared-synchronized updateOrganizations()V
    .locals 4

    monitor-enter p0

    .line 1196
    :try_start_0
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->organizations:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateSet(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/util/model/UpdateSetBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceData:Lcom/callapp/contacts/model/contact/DeviceData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1197
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateSetBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    const-string v2, "orgData"

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1198
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookData:Lcom/callapp/contacts/model/contact/social/FacebookData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->facebook:Lcom/callapp/contacts/model/contact/DataSource;

    .line 1199
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    .line 1201
    invoke-virtual {v0}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->execute()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1202
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updatePhones()V
    .locals 5

    monitor-enter p0

    .line 1253
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1255
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceData:Lcom/callapp/contacts/model/contact/DeviceData;

    if-eqz v1, :cond_0

    .line 1256
    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/DeviceData;->getPhones()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1259
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->userProfileData:Lcom/callapp/contacts/model/contact/UserProfileData;

    if-eqz v1, :cond_1

    .line 1260
    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/UserProfileData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1261
    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1262
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->userProfileData:Lcom/callapp/contacts/model/contact/UserProfileData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/UserProfileData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1266
    :cond_1
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONContact;->getPhoneNumbers()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1267
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONContact;->getPhoneNumbers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/common/model/json/JSONPhoneNumber;

    .line 1268
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v3

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONPhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    .line 1269
    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONPhoneNumber;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/callapp/framework/phone/PhoneType;->fromCode(I)Lcom/callapp/framework/phone/PhoneType;

    move-result-object v2

    .line 3207
    iput-object v2, v3, Lcom/callapp/framework/phone/Phone;->c:Lcom/callapp/framework/phone/PhoneType;

    .line 1270
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1274
    :cond_2
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->chLocalData:Lcom/callapp/contacts/model/contact/CHLocalData;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/CHLocalData;->getPhones()Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1275
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->chLocalData:Lcom/callapp/contacts/model/contact/CHLocalData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/CHLocalData;->getPhones()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/common/model/json/JSONPhoneNumber;

    .line 1276
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v3

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONPhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    .line 1277
    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONPhoneNumber;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/callapp/framework/phone/PhoneType;->fromCode(I)Lcom/callapp/framework/phone/PhoneType;

    move-result-object v2

    .line 4207
    iput-object v2, v3, Lcom/callapp/framework/phone/Phone;->c:Lcom/callapp/framework/phone/PhoneType;

    .line 1278
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1282
    :cond_3
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->vkData:Lcom/callapp/contacts/model/contact/social/VKData;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/social/VKData;->getPhones()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1283
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->vkData:Lcom/callapp/contacts/model/contact/social/VKData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/social/VKData;->getPhones()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1296
    :cond_4
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->phone:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1297
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->phone:Lcom/callapp/framework/phone/Phone;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1300
    :cond_5
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->phones:Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1301
    iput-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData;->phones:Ljava/util/Collection;

    .line 1302
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->phones:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1304
    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updatePhoto()V
    .locals 2

    .line 1608
    const-class v0, Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->getLock(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1609
    :try_start_0
    invoke-direct {p0, v1}, Lcom/callapp/contacts/model/contact/ContactData;->loadPhoto(Z)Lcom/callapp/contacts/model/contact/PhotoUpdater;

    .line 1610
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updatePinterestId()V
    .locals 1

    const/4 v0, 0x0

    .line 1176
    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->updatePinterestId(Z)V

    return-void
.end method

.method public updatePriceRange()V
    .locals 4

    .line 2619
    new-instance v0, Lcom/callapp/contacts/model/contact/ContactData$7;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/model/contact/ContactData$7;-><init>(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 2627
    new-instance v1, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;

    iget v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->priceRange:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;-><init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/util/model/PrioritizedValueBuilder$Validator;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    const-string v3, "priceRange"

    invoke-virtual {v1, v3, v0, v2}, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->useField(Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/Object;)Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/contact/DataSource;->googlePlaces:Lcom/callapp/contacts/model/contact/DataSource;

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->googlePlacesData:Lcom/callapp/contacts/model/contact/GooglePlacesData;

    .line 2628
    invoke-virtual {v0, v3, v1, v2}, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->useField(Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/Object;)Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/contact/DataSource;->facebookPlaces:Lcom/callapp/contacts/model/contact/DataSource;

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookPlaceData:Lcom/callapp/contacts/model/contact/FacebookPlaceData;

    .line 2629
    invoke-virtual {v0, v3, v1, v2}, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->useField(Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/Object;)Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/contact/DataSource;->huaweiPlaces:Lcom/callapp/contacts/model/contact/DataSource;

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->huaweiPlaceData:Lcom/callapp/contacts/model/contact/HuaweiPlaceData;

    .line 2630
    invoke-virtual {v0, v3, v1, v2}, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->useField(Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/Object;)Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/contact/DataSource;->venueFoursquare:Lcom/callapp/contacts/model/contact/DataSource;

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->venueFoursquareData:Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;

    .line 2631
    invoke-virtual {v0, v3, v1, v2}, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->useField(Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/Object;)Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/model/contact/ContactData$8;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/model/contact/ContactData$8;-><init>(Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->execute(Lcom/callapp/contacts/util/model/PrioritizedValueBuilder$ValueChangedCallback;)V

    return-void
.end method

.method public declared-synchronized updateRating()V
    .locals 5

    monitor-enter p0

    .line 1082
    :try_start_0
    new-instance v0, Lcom/callapp/contacts/model/contact/ContactData$3;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/model/contact/ContactData$3;-><init>(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 1090
    new-instance v1, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;

    iget-wide v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->avgRating:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;-><init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/util/model/PrioritizedValueBuilder$Validator;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "avgRating"

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->googlePlaces:Lcom/callapp/contacts/model/contact/DataSource;

    iget-object v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->googlePlacesData:Lcom/callapp/contacts/model/contact/GooglePlacesData;

    .line 1091
    invoke-virtual {v1, v0, v2, v3}, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->useField(Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/Object;)Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;

    move-result-object v0

    const-string v1, "avgRating"

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->facebookPlaces:Lcom/callapp/contacts/model/contact/DataSource;

    iget-object v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookPlaceData:Lcom/callapp/contacts/model/contact/FacebookPlaceData;

    .line 1092
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->useField(Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/Object;)Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;

    move-result-object v0

    const-string v1, "avgRating"

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->huaweiPlaces:Lcom/callapp/contacts/model/contact/DataSource;

    iget-object v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->huaweiPlaceData:Lcom/callapp/contacts/model/contact/HuaweiPlaceData;

    .line 1093
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->useField(Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/Object;)Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;

    move-result-object v0

    const-string v1, "avgRating"

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->venueFoursquare:Lcom/callapp/contacts/model/contact/DataSource;

    iget-object v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->venueFoursquareData:Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;

    .line 1094
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->useField(Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/Object;)Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;

    move-result-object v0

    const-string v1, "avgRating"

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    iget-object v3, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->useField(Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/Object;)Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/model/contact/ContactData$4;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/model/contact/ContactData$4;-><init>(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 1095
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->execute(Lcom/callapp/contacts/util/model/PrioritizedValueBuilder$ValueChangedCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1104
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateRecords()V
    .locals 1

    .line 2906
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->records:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    return-void
.end method

.method public updateReserveUrl()V
    .locals 3

    .line 2609
    new-instance v0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->reserveUrl:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;-><init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactField;)V

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->googlePlacesData:Lcom/callapp/contacts/model/contact/GooglePlacesData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->googlePlaces:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2610
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->venueFoursquareData:Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->venueFoursquare:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2611
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->execute()Z

    return-void
.end method

.method public declared-synchronized updateReviews()V
    .locals 3

    monitor-enter p0

    .line 937
    :try_start_0
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->reviews:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateSet(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/util/model/UpdateSetBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateSetBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->googlePlacesData:Lcom/callapp/contacts/model/contact/GooglePlacesData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->googlePlaces:Lcom/callapp/contacts/model/contact/DataSource;

    .line 938
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookPlaceData:Lcom/callapp/contacts/model/contact/FacebookPlaceData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->facebookPlaces:Lcom/callapp/contacts/model/contact/DataSource;

    .line 939
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->huaweiPlaceData:Lcom/callapp/contacts/model/contact/HuaweiPlaceData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->huaweiPlaces:Lcom/callapp/contacts/model/contact/DataSource;

    .line 940
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->venueFoursquareData:Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->venueFoursquare:Lcom/callapp/contacts/model/contact/DataSource;

    .line 941
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    .line 942
    invoke-virtual {v0}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->execute()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 943
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateSkypeData()V
    .locals 1

    .line 2830
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->skype:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    return-void
.end method

.method public updateSocialNetworkIds()V
    .locals 1

    const/4 v0, 0x0

    .line 970
    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateFacebookId(Z)V

    .line 971
    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateFoursquareId(Z)V

    .line 972
    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateTwitterScreenName(Z)V

    .line 973
    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateInstagramId(Z)V

    .line 974
    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateVenueFoursquareId(Z)V

    .line 975
    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->updatePinterestId(Z)V

    .line 976
    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateVKId(Z)V

    return-void
.end method

.method public updateSpamScore()V
    .locals 4

    .line 2846
    new-instance v0, Lcom/callapp/contacts/model/contact/ContactData$9;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/model/contact/ContactData$9;-><init>(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 2854
    new-instance v1, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;

    iget v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->spamScore:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;-><init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/util/model/PrioritizedValueBuilder$Validator;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->userSpamData:Lcom/callapp/contacts/model/contact/DataSource;

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->userSpamData:Lcom/callapp/contacts/model/objectbox/UserSpamData;

    const-string v3, "spamScore"

    .line 2855
    invoke-virtual {v1, v3, v0, v2}, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->useFieldForced(Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/Object;)Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    .line 2856
    invoke-virtual {v0, v3, v1, v2}, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->useField(Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/Object;)Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/contact/DataSource;->other:Lcom/callapp/contacts/model/contact/DataSource;

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->fastCacheData:Lcom/callapp/contacts/model/objectbox/FastCacheData;

    .line 2857
    invoke-virtual {v0, v3, v1, v2}, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->useField(Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/Object;)Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/model/contact/ContactData$10;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/model/contact/ContactData$10;-><init>(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 2858
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->execute(Lcom/callapp/contacts/util/model/PrioritizedValueBuilder$ValueChangedCallback;)V

    return-void
.end method

.method public updateTwitterScreenName()V
    .locals 1

    const/4 v0, 0x0

    .line 1143
    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateTwitterScreenName(Z)V

    return-void
.end method

.method public declared-synchronized updateUploadedPhotoUrls()V
    .locals 4

    monitor-enter p0

    .line 851
    :try_start_0
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->uploadedPhotosUrl:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateMap(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/util/model/UpdateMapBuilder;

    move-result-object v0

    .line 852
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookData:Lcom/callapp/contacts/model/contact/social/FacebookData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->facebook:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateMapBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->instagramData:Lcom/callapp/contacts/model/contact/social/InstagramData;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->instagram:Lcom/callapp/contacts/model/contact/DataSource;

    .line 853
    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->vkData:Lcom/callapp/contacts/model/contact/social/VKData;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->vk:Lcom/callapp/contacts/model/contact/DataSource;

    .line 854
    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    .line 856
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->uploadedPhotosUrl:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 857
    :try_start_1
    invoke-virtual {v0}, Lcom/callapp/contacts/util/model/UpdateMapBuilder;->execute()Z

    .line 858
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateUserDefinition()V
    .locals 3

    .line 2672
    new-instance v0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->userDefinition:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;-><init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactField;)V

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->userProfileData:Lcom/callapp/contacts/model/contact/UserProfileData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->userProfile:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2673
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useFieldForced(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2674
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v0

    .line 2675
    invoke-virtual {v0}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->execute()Z

    return-void
.end method

.method public updateVKId()V
    .locals 1

    const/4 v0, 0x0

    .line 1187
    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateVKId(Z)V

    return-void
.end method

.method public updateVenueFoursquareId()V
    .locals 1

    const/4 v0, 0x0

    .line 1129
    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateVenueFoursquareId(Z)V

    return-void
.end method

.method public updateWebVideos()V
    .locals 4

    .line 2898
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->webVideos:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateSet(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/util/model/UpdateSetBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->vkData:Lcom/callapp/contacts/model/contact/social/VKData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->vk:Lcom/callapp/contacts/model/contact/DataSource;

    const-string v3, "videos"

    .line 2899
    invoke-virtual {v0, v1, v3, v2}, Lcom/callapp/contacts/util/model/UpdateSetBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateSetBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->chLocalData:Lcom/callapp/contacts/model/contact/CHLocalData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->chLocal:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2900
    invoke-virtual {v0, v1, v3, v2}, Lcom/callapp/contacts/util/model/UpdateSetBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateSetBuilder;

    move-result-object v0

    .line 2902
    invoke-virtual {v0}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->execute()Z

    return-void
.end method

.method public declared-synchronized updateWebsites()V
    .locals 5

    monitor-enter p0

    .line 2044
    :try_start_0
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->websites:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateSet(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/util/model/UpdateSetBuilder;

    move-result-object v0

    .line 2045
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->deviceData:Lcom/callapp/contacts/model/contact/DeviceData;

    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/model/UpdateSetBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->genomeData:Lcom/callapp/common/model/json/JSONContact;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2046
    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookData:Lcom/callapp/contacts/model/contact/social/FacebookData;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->facebook:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2047
    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->vkData:Lcom/callapp/contacts/model/contact/social/VKData;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->vk:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2048
    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->instagramData:Lcom/callapp/contacts/model/contact/social/InstagramData;

    const-string v3, "website"

    sget-object v4, Lcom/callapp/contacts/model/contact/DataSource;->instagram:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2049
    invoke-virtual {v1, v2, v3, v4}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->gravatarData:Lcom/callapp/contacts/model/contact/GravatarData;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->gravatar:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2050
    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->googlePlacesData:Lcom/callapp/contacts/model/contact/GooglePlacesData;

    const-string v3, "website"

    sget-object v4, Lcom/callapp/contacts/model/contact/DataSource;->googlePlaces:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2051
    invoke-virtual {v1, v2, v3, v4}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->facebookPlaceData:Lcom/callapp/contacts/model/contact/FacebookPlaceData;

    const-string v3, "website"

    sget-object v4, Lcom/callapp/contacts/model/contact/DataSource;->facebookPlaces:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2052
    invoke-virtual {v1, v2, v3, v4}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->huaweiPlaceData:Lcom/callapp/contacts/model/contact/HuaweiPlaceData;

    const-string v3, "website"

    sget-object v4, Lcom/callapp/contacts/model/contact/DataSource;->huaweiPlaces:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2053
    invoke-virtual {v1, v2, v3, v4}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->chLocalData:Lcom/callapp/contacts/model/contact/CHLocalData;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->chLocal:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2054
    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->venueFoursquareData:Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;

    const-string v3, "website"

    sget-object v4, Lcom/callapp/contacts/model/contact/DataSource;->venueFoursquare:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2055
    invoke-virtual {v1, v2, v3, v4}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/ContactData;->userProfileData:Lcom/callapp/contacts/model/contact/UserProfileData;

    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->userProfile:Lcom/callapp/contacts/model/contact/DataSource;

    .line 2056
    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    .line 2058
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactData;->websites:Ljava/util/Collection;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2059
    :try_start_1
    invoke-virtual {v0}, Lcom/callapp/contacts/util/model/UpdateSetBuilder;->execute()Z

    .line 2060
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateYahooData()V
    .locals 1

    .line 2826
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->yahoo:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    return-void
.end method
