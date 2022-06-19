.class public final enum Lcom/callapp/contacts/model/contact/DataSource;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/model/contact/DataSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/model/contact/DataSource;

.field public static final ACTIVE_SOCIAL_DATA_SOURCES_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field public static final ALL_SOCIAL_DATA_SOURCES_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field public static final LINKED_ACCOUNTS_SOURCE:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field public static final MY_SOCIAL_PROFILE_CARD_SOURCE:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLACES_DATA_SOURCE:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field public static final SOCIAL_NETWORKS_DATA_SOURCE:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum auPersonLookup:Lcom/callapp/contacts/model/contact/DataSource;

.field public static final enum blockedNumberDB:Lcom/callapp/contacts/model/contact/DataSource;

.field public static final enum chLocal:Lcom/callapp/contacts/model/contact/DataSource;

.field public static final enum device:Lcom/callapp/contacts/model/contact/DataSource;

.field public static final enum facebook:Lcom/callapp/contacts/model/contact/DataSource;

.field public static final enum facebookPlaces:Lcom/callapp/contacts/model/contact/DataSource;

.field public static final enum foursquare:Lcom/callapp/contacts/model/contact/DataSource;

.field public static final enum genome:Lcom/callapp/contacts/model/contact/DataSource;

.field public static final enum gmail:Lcom/callapp/contacts/model/contact/DataSource;

.field public static final enum google:Lcom/callapp/contacts/model/contact/DataSource;

.field public static final enum googleMaps:Lcom/callapp/contacts/model/contact/DataSource;

.field public static final enum googlePlaces:Lcom/callapp/contacts/model/contact/DataSource;

.field public static final enum gravatar:Lcom/callapp/contacts/model/contact/DataSource;

.field public static final enum huaweiPlaces:Lcom/callapp/contacts/model/contact/DataSource;

.field public static final enum instagram:Lcom/callapp/contacts/model/contact/DataSource;

.field public static final enum intent:Lcom/callapp/contacts/model/contact/DataSource;

.field public static final enum libPhoneNumber:Lcom/callapp/contacts/model/contact/DataSource;

.field public static final enum notificationTelegram:Lcom/callapp/contacts/model/contact/DataSource;

.field public static final enum notificationViber:Lcom/callapp/contacts/model/contact/DataSource;

.field public static final enum notificationWhatsApp:Lcom/callapp/contacts/model/contact/DataSource;

.field public static final enum other:Lcom/callapp/contacts/model/contact/DataSource;

.field public static final enum pinterest:Lcom/callapp/contacts/model/contact/DataSource;

.field public static final enum seeInsideInternalAPI:Lcom/callapp/contacts/model/contact/DataSource;

.field public static final enum signal:Lcom/callapp/contacts/model/contact/DataSource;

.field public static final enum skype:Lcom/callapp/contacts/model/contact/DataSource;

.field public static final enum socialSearch:Lcom/callapp/contacts/model/contact/DataSource;

.field public static final enum suggestion:Lcom/callapp/contacts/model/contact/DataSource;

.field public static final enum telegram:Lcom/callapp/contacts/model/contact/DataSource;

.field public static final enum twilioTrustedComm:Lcom/callapp/contacts/model/contact/DataSource;

.field public static final enum twitter:Lcom/callapp/contacts/model/contact/DataSource;

.field public static final enum unknown:Lcom/callapp/contacts/model/contact/DataSource;

.field public static final enum userCorrectedInfo:Lcom/callapp/contacts/model/contact/DataSource;

.field public static final enum userMedia:Lcom/callapp/contacts/model/contact/DataSource;

.field public static final enum userProfile:Lcom/callapp/contacts/model/contact/DataSource;

.field public static final enum userSpamData:Lcom/callapp/contacts/model/contact/DataSource;

.field public static final enum venueFoursquare:Lcom/callapp/contacts/model/contact/DataSource;

.field public static final enum viber:Lcom/callapp/contacts/model/contact/DataSource;

.field public static final enum vk:Lcom/callapp/contacts/model/contact/DataSource;

.field public static final enum websites:Lcom/callapp/contacts/model/contact/DataSource;

.field public static final enum whatsapp:Lcom/callapp/contacts/model/contact/DataSource;

.field public static final enum whitePages:Lcom/callapp/contacts/model/contact/DataSource;

.field public static final enum yahooLocal:Lcom/callapp/contacts/model/contact/DataSource;


# instance fields
.field public final contactDataFieldName:Ljava/lang/String;

.field public final dbCode:I

.field public final priority:J

.field public final socialDataField:Lcom/callapp/contacts/model/contact/ContactField;

.field public final socialIdField:Lcom/callapp/contacts/model/contact/ContactField;

.field public final socialSearchField:Lcom/callapp/contacts/model/contact/ContactField;


# direct methods
.method static constructor <clinit>()V
    .locals 55

    .line 10
    new-instance v0, Lcom/callapp/contacts/model/contact/DataSource;

    const-string v1, "unknown"

    const/4 v2, 0x0

    const-wide/16 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/callapp/contacts/model/contact/DataSource;->unknown:Lcom/callapp/contacts/model/contact/DataSource;

    .line 11
    new-instance v1, Lcom/callapp/contacts/model/contact/DataSource;

    const-string v5, "blockedNumberDB"

    const/4 v6, 0x1

    const-wide/16 v7, 0xc9

    invoke-direct {v1, v5, v6, v7, v8}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IJ)V

    sput-object v1, Lcom/callapp/contacts/model/contact/DataSource;->blockedNumberDB:Lcom/callapp/contacts/model/contact/DataSource;

    .line 12
    new-instance v5, Lcom/callapp/contacts/model/contact/DataSource;

    const-string v7, "device"

    const/4 v8, 0x2

    const-wide/16 v9, 0x64

    invoke-direct {v5, v7, v8, v9, v10}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IJ)V

    sput-object v5, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    .line 13
    new-instance v7, Lcom/callapp/contacts/model/contact/DataSource;

    const-string v9, "genome"

    const/4 v10, 0x3

    invoke-direct {v7, v9, v10, v3, v4}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IJ)V

    sput-object v7, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    .line 14
    new-instance v9, Lcom/callapp/contacts/model/contact/DataSource;

    const-string v11, "googlePlaces"

    const/4 v12, 0x4

    const-wide/16 v13, 0xf

    invoke-direct {v9, v11, v12, v13, v14}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IJ)V

    sput-object v9, Lcom/callapp/contacts/model/contact/DataSource;->googlePlaces:Lcom/callapp/contacts/model/contact/DataSource;

    .line 15
    new-instance v11, Lcom/callapp/contacts/model/contact/DataSource;

    const-string v15, "facebookPlaces"

    const/4 v12, 0x5

    invoke-direct {v11, v15, v12, v13, v14}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IJ)V

    sput-object v11, Lcom/callapp/contacts/model/contact/DataSource;->facebookPlaces:Lcom/callapp/contacts/model/contact/DataSource;

    .line 16
    new-instance v15, Lcom/callapp/contacts/model/contact/DataSource;

    const-string v12, "huaweiPlaces"

    const/4 v10, 0x6

    invoke-direct {v15, v12, v10, v13, v14}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IJ)V

    sput-object v15, Lcom/callapp/contacts/model/contact/DataSource;->huaweiPlaces:Lcom/callapp/contacts/model/contact/DataSource;

    .line 17
    new-instance v12, Lcom/callapp/contacts/model/contact/DataSource;

    const-string v13, "seeInsideInternalAPI"

    const/4 v14, 0x7

    move-object/from16 v16, v11

    const-wide/16 v10, 0x6

    invoke-direct {v12, v13, v14, v10, v11}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IJ)V

    sput-object v12, Lcom/callapp/contacts/model/contact/DataSource;->seeInsideInternalAPI:Lcom/callapp/contacts/model/contact/DataSource;

    .line 18
    new-instance v10, Lcom/callapp/contacts/model/contact/DataSource;

    const-string v11, "chLocal"

    const/16 v13, 0x8

    move-object/from16 v17, v15

    const-wide/16 v14, 0x4

    invoke-direct {v10, v11, v13, v14, v15}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IJ)V

    sput-object v10, Lcom/callapp/contacts/model/contact/DataSource;->chLocal:Lcom/callapp/contacts/model/contact/DataSource;

    .line 19
    new-instance v11, Lcom/callapp/contacts/model/contact/DataSource;

    const-string v13, "auPersonLookup"

    const/16 v8, 0x9

    invoke-direct {v11, v13, v8, v14, v15}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IJ)V

    sput-object v11, Lcom/callapp/contacts/model/contact/DataSource;->auPersonLookup:Lcom/callapp/contacts/model/contact/DataSource;

    .line 20
    new-instance v13, Lcom/callapp/contacts/model/contact/DataSource;

    sget-object v22, Lcom/callapp/contacts/model/contact/ContactField;->facebookId:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v23, Lcom/callapp/contacts/model/contact/ContactField;->facebookSearchResults:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v24, Lcom/callapp/contacts/model/contact/ContactField;->facebookData:Lcom/callapp/contacts/model/contact/ContactField;

    const-string v19, "facebook"

    const/16 v20, 0xa

    const/16 v21, 0x1

    const-wide/16 v25, 0x4

    move-object/from16 v18, v13

    invoke-direct/range {v18 .. v26}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IILcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/ContactField;J)V

    sput-object v13, Lcom/callapp/contacts/model/contact/DataSource;->facebook:Lcom/callapp/contacts/model/contact/DataSource;

    .line 21
    new-instance v14, Lcom/callapp/contacts/model/contact/DataSource;

    sget-object v31, Lcom/callapp/contacts/model/contact/ContactField;->foursquareId:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v32, Lcom/callapp/contacts/model/contact/ContactField;->foursquareSearchResults:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v33, Lcom/callapp/contacts/model/contact/ContactField;->foursquareData:Lcom/callapp/contacts/model/contact/ContactField;

    const-string v28, "foursquare"

    const/16 v29, 0xb

    const/16 v30, 0x6

    const-wide/16 v34, 0x3

    move-object/from16 v27, v14

    invoke-direct/range {v27 .. v35}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IILcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/ContactField;J)V

    sput-object v14, Lcom/callapp/contacts/model/contact/DataSource;->foursquare:Lcom/callapp/contacts/model/contact/DataSource;

    .line 22
    new-instance v15, Lcom/callapp/contacts/model/contact/DataSource;

    sget-object v22, Lcom/callapp/contacts/model/contact/ContactField;->venueFoursquareId:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v24, Lcom/callapp/contacts/model/contact/ContactField;->venueFoursquareData:Lcom/callapp/contacts/model/contact/ContactField;

    const-string/jumbo v19, "venueFoursquare"

    const/16 v20, 0xc

    const/16 v21, 0xb

    const/16 v23, 0x0

    const-wide/16 v25, 0x5

    move-object/from16 v18, v15

    invoke-direct/range {v18 .. v26}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IILcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/ContactField;J)V

    sput-object v15, Lcom/callapp/contacts/model/contact/DataSource;->venueFoursquare:Lcom/callapp/contacts/model/contact/DataSource;

    .line 23
    new-instance v8, Lcom/callapp/contacts/model/contact/DataSource;

    sget-object v31, Lcom/callapp/contacts/model/contact/ContactField;->twitterScreenName:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v32, Lcom/callapp/contacts/model/contact/ContactField;->twitterSearchResults:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v33, Lcom/callapp/contacts/model/contact/ContactField;->twitterData:Lcom/callapp/contacts/model/contact/ContactField;

    const-string v28, "twitter"

    const/16 v29, 0xd

    const/16 v30, 0x4

    const-wide/16 v34, 0x4

    move-object/from16 v27, v8

    invoke-direct/range {v27 .. v35}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IILcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/ContactField;J)V

    sput-object v8, Lcom/callapp/contacts/model/contact/DataSource;->twitter:Lcom/callapp/contacts/model/contact/DataSource;

    .line 24
    new-instance v6, Lcom/callapp/contacts/model/contact/DataSource;

    const-string v20, "google"

    const/16 v21, 0xe

    const/16 v22, 0x5

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x5

    move-object/from16 v19, v6

    invoke-direct/range {v19 .. v27}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IILcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/ContactField;J)V

    sput-object v6, Lcom/callapp/contacts/model/contact/DataSource;->google:Lcom/callapp/contacts/model/contact/DataSource;

    .line 25
    new-instance v2, Lcom/callapp/contacts/model/contact/DataSource;

    sget-object v33, Lcom/callapp/contacts/model/contact/ContactField;->instagramId:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v34, Lcom/callapp/contacts/model/contact/ContactField;->instagramSearchResults:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v35, Lcom/callapp/contacts/model/contact/ContactField;->instagramData:Lcom/callapp/contacts/model/contact/ContactField;

    const-string v30, "instagram"

    const/16 v31, 0xf

    const/16 v32, 0x7

    const-wide/16 v36, 0x4

    move-object/from16 v29, v2

    invoke-direct/range {v29 .. v37}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IILcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/ContactField;J)V

    sput-object v2, Lcom/callapp/contacts/model/contact/DataSource;->instagram:Lcom/callapp/contacts/model/contact/DataSource;

    .line 26
    new-instance v20, Lcom/callapp/contacts/model/contact/DataSource;

    sget-object v42, Lcom/callapp/contacts/model/contact/ContactField;->pinterestId:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v43, Lcom/callapp/contacts/model/contact/ContactField;->pinterestSearchResults:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v44, Lcom/callapp/contacts/model/contact/ContactField;->pinterestData:Lcom/callapp/contacts/model/contact/ContactField;

    const-string v39, "pinterest"

    const/16 v40, 0x10

    const/16 v41, 0x9

    const-wide/16 v45, 0x4

    move-object/from16 v38, v20

    invoke-direct/range {v38 .. v46}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IILcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/ContactField;J)V

    sput-object v20, Lcom/callapp/contacts/model/contact/DataSource;->pinterest:Lcom/callapp/contacts/model/contact/DataSource;

    .line 27
    new-instance v3, Lcom/callapp/contacts/model/contact/DataSource;

    sget-object v33, Lcom/callapp/contacts/model/contact/ContactField;->vkId:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v34, Lcom/callapp/contacts/model/contact/ContactField;->vkSearchResults:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v35, Lcom/callapp/contacts/model/contact/ContactField;->vkData:Lcom/callapp/contacts/model/contact/ContactField;

    const-string/jumbo v30, "vk"

    const/16 v31, 0x11

    const/16 v32, 0xa

    move-object/from16 v29, v3

    invoke-direct/range {v29 .. v37}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IILcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/ContactField;J)V

    sput-object v3, Lcom/callapp/contacts/model/contact/DataSource;->vk:Lcom/callapp/contacts/model/contact/DataSource;

    .line 28
    new-instance v4, Lcom/callapp/contacts/model/contact/DataSource;

    move-object/from16 v23, v3

    const-string v3, "gravatar"

    move-object/from16 v24, v2

    const/16 v2, 0x12

    move-object/from16 v25, v14

    move-object/from16 v26, v15

    const-wide/16 v14, 0x2

    invoke-direct {v4, v3, v2, v14, v15}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IJ)V

    sput-object v4, Lcom/callapp/contacts/model/contact/DataSource;->gravatar:Lcom/callapp/contacts/model/contact/DataSource;

    .line 29
    new-instance v3, Lcom/callapp/contacts/model/contact/DataSource;

    const-string/jumbo v2, "yahooLocal"

    const/16 v14, 0x13

    move-object v15, v10

    move-object/from16 v31, v11

    const-wide/16 v10, 0x3

    invoke-direct {v3, v2, v14, v10, v11}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IJ)V

    sput-object v3, Lcom/callapp/contacts/model/contact/DataSource;->yahooLocal:Lcom/callapp/contacts/model/contact/DataSource;

    .line 30
    new-instance v2, Lcom/callapp/contacts/model/contact/DataSource;

    const-string v14, "intent"

    const/16 v10, 0x14

    move-object/from16 v35, v3

    move-object v11, v4

    const-wide/16 v3, 0xa

    invoke-direct {v2, v14, v10, v3, v4}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IJ)V

    sput-object v2, Lcom/callapp/contacts/model/contact/DataSource;->intent:Lcom/callapp/contacts/model/contact/DataSource;

    .line 31
    new-instance v3, Lcom/callapp/contacts/model/contact/DataSource;

    const-string v4, "googleMaps"

    const/16 v14, 0x15

    move-object/from16 v37, v11

    const-wide/16 v10, 0x1

    invoke-direct {v3, v4, v14, v10, v11}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IJ)V

    sput-object v3, Lcom/callapp/contacts/model/contact/DataSource;->googleMaps:Lcom/callapp/contacts/model/contact/DataSource;

    .line 32
    new-instance v4, Lcom/callapp/contacts/model/contact/DataSource;

    const-string v14, "gmail"

    const/16 v10, 0x16

    move-object v11, v2

    move-object/from16 v39, v3

    const-wide/16 v2, 0x3

    invoke-direct {v4, v14, v10, v2, v3}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IJ)V

    sput-object v4, Lcom/callapp/contacts/model/contact/DataSource;->gmail:Lcom/callapp/contacts/model/contact/DataSource;

    .line 33
    new-instance v2, Lcom/callapp/contacts/model/contact/DataSource;

    const-string v3, "socialSearch"

    const/16 v14, 0x17

    move-object/from16 v41, v11

    const-wide/16 v10, 0x1

    invoke-direct {v2, v3, v14, v10, v11}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IJ)V

    sput-object v2, Lcom/callapp/contacts/model/contact/DataSource;->socialSearch:Lcom/callapp/contacts/model/contact/DataSource;

    .line 34
    new-instance v3, Lcom/callapp/contacts/model/contact/DataSource;

    const-string v10, "skype"

    const/16 v11, 0x18

    move-object/from16 v42, v15

    const-wide/16 v14, 0x2

    invoke-direct {v3, v10, v11, v14, v15}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IJ)V

    sput-object v3, Lcom/callapp/contacts/model/contact/DataSource;->skype:Lcom/callapp/contacts/model/contact/DataSource;

    .line 35
    new-instance v10, Lcom/callapp/contacts/model/contact/DataSource;

    const-string/jumbo v11, "whitePages"

    const/16 v14, 0x19

    move-object v15, v2

    move-object/from16 v29, v3

    const-wide/16 v2, 0x3

    invoke-direct {v10, v11, v14, v2, v3}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IJ)V

    sput-object v10, Lcom/callapp/contacts/model/contact/DataSource;->whitePages:Lcom/callapp/contacts/model/contact/DataSource;

    .line 36
    new-instance v2, Lcom/callapp/contacts/model/contact/DataSource;

    const-string v3, "userProfile"

    const/16 v11, 0x1a

    move-object/from16 v30, v15

    const-wide/16 v14, 0xc8

    invoke-direct {v2, v3, v11, v14, v15}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IJ)V

    sput-object v2, Lcom/callapp/contacts/model/contact/DataSource;->userProfile:Lcom/callapp/contacts/model/contact/DataSource;

    .line 37
    new-instance v3, Lcom/callapp/contacts/model/contact/DataSource;

    const-string v11, "libPhoneNumber"

    const/16 v14, 0x1b

    move-object v15, v12

    move-object/from16 v33, v13

    const-wide/16 v12, 0x1

    invoke-direct {v3, v11, v14, v12, v13}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IJ)V

    sput-object v3, Lcom/callapp/contacts/model/contact/DataSource;->libPhoneNumber:Lcom/callapp/contacts/model/contact/DataSource;

    .line 38
    new-instance v11, Lcom/callapp/contacts/model/contact/DataSource;

    const-string v14, "suggestion"

    move-object/from16 v34, v3

    const/16 v3, 0x1c

    invoke-direct {v11, v14, v3, v12, v13}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IJ)V

    sput-object v11, Lcom/callapp/contacts/model/contact/DataSource;->suggestion:Lcom/callapp/contacts/model/contact/DataSource;

    .line 39
    new-instance v3, Lcom/callapp/contacts/model/contact/DataSource;

    const-string/jumbo v14, "websites"

    move-object/from16 v44, v11

    const/16 v11, 0x1d

    invoke-direct {v3, v14, v11, v12, v13}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IJ)V

    sput-object v3, Lcom/callapp/contacts/model/contact/DataSource;->websites:Lcom/callapp/contacts/model/contact/DataSource;

    .line 40
    new-instance v11, Lcom/callapp/contacts/model/contact/DataSource;

    const-string v14, "other"

    move-object/from16 v45, v3

    const/16 v3, 0x1e

    invoke-direct {v11, v14, v3, v12, v13}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IJ)V

    sput-object v11, Lcom/callapp/contacts/model/contact/DataSource;->other:Lcom/callapp/contacts/model/contact/DataSource;

    .line 41
    new-instance v3, Lcom/callapp/contacts/model/contact/DataSource;

    const-string v12, "userCorrectedInfo"

    const/16 v13, 0x1f

    move-object v14, v10

    move-object/from16 v46, v11

    const-wide/16 v10, 0x32

    invoke-direct {v3, v12, v13, v10, v11}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IJ)V

    sput-object v3, Lcom/callapp/contacts/model/contact/DataSource;->userCorrectedInfo:Lcom/callapp/contacts/model/contact/DataSource;

    .line 42
    new-instance v12, Lcom/callapp/contacts/model/contact/DataSource;

    const-string v13, "userSpamData"

    move-object/from16 v47, v3

    const/16 v3, 0x20

    invoke-direct {v12, v13, v3, v10, v11}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IJ)V

    sput-object v12, Lcom/callapp/contacts/model/contact/DataSource;->userSpamData:Lcom/callapp/contacts/model/contact/DataSource;

    .line 43
    new-instance v3, Lcom/callapp/contacts/model/contact/DataSource;

    const-string v13, "userMedia"

    move-object/from16 v48, v12

    const/16 v12, 0x21

    invoke-direct {v3, v13, v12, v10, v11}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IJ)V

    sput-object v3, Lcom/callapp/contacts/model/contact/DataSource;->userMedia:Lcom/callapp/contacts/model/contact/DataSource;

    .line 44
    new-instance v10, Lcom/callapp/contacts/model/contact/DataSource;

    const-string/jumbo v11, "whatsapp"

    const/16 v12, 0x22

    move-object v13, v2

    move-object/from16 v49, v3

    const-wide/16 v2, 0x1

    invoke-direct {v10, v11, v12, v2, v3}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IJ)V

    sput-object v10, Lcom/callapp/contacts/model/contact/DataSource;->whatsapp:Lcom/callapp/contacts/model/contact/DataSource;

    .line 45
    new-instance v11, Lcom/callapp/contacts/model/contact/DataSource;

    const-string/jumbo v12, "viber"

    move-object/from16 v21, v10

    const/16 v10, 0x23

    invoke-direct {v11, v12, v10, v2, v3}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IJ)V

    sput-object v11, Lcom/callapp/contacts/model/contact/DataSource;->viber:Lcom/callapp/contacts/model/contact/DataSource;

    .line 46
    new-instance v10, Lcom/callapp/contacts/model/contact/DataSource;

    const-string v12, "signal"

    move-object/from16 v22, v11

    const/16 v11, 0x24

    invoke-direct {v10, v12, v11, v2, v3}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IJ)V

    sput-object v10, Lcom/callapp/contacts/model/contact/DataSource;->signal:Lcom/callapp/contacts/model/contact/DataSource;

    .line 47
    new-instance v11, Lcom/callapp/contacts/model/contact/DataSource;

    const-string v12, "telegram"

    move-object/from16 v50, v10

    const/16 v10, 0x25

    invoke-direct {v11, v12, v10, v2, v3}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IJ)V

    sput-object v11, Lcom/callapp/contacts/model/contact/DataSource;->telegram:Lcom/callapp/contacts/model/contact/DataSource;

    .line 48
    new-instance v10, Lcom/callapp/contacts/model/contact/DataSource;

    const-string v12, "notificationWhatsApp"

    move-object/from16 v51, v11

    const/16 v11, 0x26

    invoke-direct {v10, v12, v11, v2, v3}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IJ)V

    sput-object v10, Lcom/callapp/contacts/model/contact/DataSource;->notificationWhatsApp:Lcom/callapp/contacts/model/contact/DataSource;

    .line 49
    new-instance v11, Lcom/callapp/contacts/model/contact/DataSource;

    const-string v12, "notificationViber"

    move-object/from16 v52, v10

    const/16 v10, 0x27

    invoke-direct {v11, v12, v10, v2, v3}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IJ)V

    sput-object v11, Lcom/callapp/contacts/model/contact/DataSource;->notificationViber:Lcom/callapp/contacts/model/contact/DataSource;

    .line 50
    new-instance v10, Lcom/callapp/contacts/model/contact/DataSource;

    const-string v12, "notificationTelegram"

    move-object/from16 v53, v11

    const/16 v11, 0x28

    invoke-direct {v10, v12, v11, v2, v3}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IJ)V

    sput-object v10, Lcom/callapp/contacts/model/contact/DataSource;->notificationTelegram:Lcom/callapp/contacts/model/contact/DataSource;

    .line 51
    new-instance v2, Lcom/callapp/contacts/model/contact/DataSource;

    const-string v3, "twilioTrustedComm"

    const/16 v11, 0x29

    move-object/from16 v54, v13

    const-wide/16 v12, 0x14

    invoke-direct {v2, v3, v11, v12, v13}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IJ)V

    sput-object v2, Lcom/callapp/contacts/model/contact/DataSource;->twilioTrustedComm:Lcom/callapp/contacts/model/contact/DataSource;

    const/16 v3, 0x2a

    new-array v3, v3, [Lcom/callapp/contacts/model/contact/DataSource;

    const/4 v11, 0x0

    aput-object v0, v3, v11

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v5, v3, v0

    const/4 v0, 0x3

    aput-object v7, v3, v0

    const/4 v0, 0x4

    aput-object v9, v3, v0

    const/4 v0, 0x5

    aput-object v16, v3, v0

    const/4 v0, 0x6

    aput-object v17, v3, v0

    const/4 v0, 0x7

    aput-object v15, v3, v0

    const/16 v0, 0x8

    aput-object v42, v3, v0

    const/16 v0, 0x9

    aput-object v31, v3, v0

    const/16 v0, 0xa

    aput-object v33, v3, v0

    const/16 v0, 0xb

    aput-object v25, v3, v0

    const/16 v0, 0xc

    aput-object v26, v3, v0

    const/16 v0, 0xd

    aput-object v8, v3, v0

    const/16 v0, 0xe

    aput-object v6, v3, v0

    const/16 v0, 0xf

    aput-object v24, v3, v0

    const/16 v0, 0x10

    aput-object v20, v3, v0

    const/16 v0, 0x11

    aput-object v23, v3, v0

    const/16 v0, 0x12

    aput-object v37, v3, v0

    const/16 v0, 0x13

    aput-object v35, v3, v0

    const/16 v0, 0x14

    aput-object v41, v3, v0

    const/16 v0, 0x15

    aput-object v39, v3, v0

    const/16 v0, 0x16

    aput-object v4, v3, v0

    const/16 v0, 0x17

    aput-object v30, v3, v0

    const/16 v0, 0x18

    aput-object v29, v3, v0

    const/16 v0, 0x19

    aput-object v14, v3, v0

    const/16 v0, 0x1a

    aput-object v54, v3, v0

    const/16 v0, 0x1b

    aput-object v34, v3, v0

    const/16 v0, 0x1c

    aput-object v44, v3, v0

    const/16 v0, 0x1d

    aput-object v45, v3, v0

    const/16 v0, 0x1e

    aput-object v46, v3, v0

    const/16 v0, 0x1f

    aput-object v47, v3, v0

    const/16 v0, 0x20

    aput-object v48, v3, v0

    const/16 v0, 0x21

    aput-object v49, v3, v0

    const/16 v0, 0x22

    aput-object v21, v3, v0

    const/16 v0, 0x23

    aput-object v22, v3, v0

    const/16 v0, 0x24

    aput-object v50, v3, v0

    const/16 v0, 0x25

    aput-object v51, v3, v0

    const/16 v0, 0x26

    aput-object v52, v3, v0

    const/16 v0, 0x27

    aput-object v53, v3, v0

    const/16 v0, 0x28

    aput-object v10, v3, v0

    const/16 v0, 0x29

    aput-object v2, v3, v0

    .line 9
    sput-object v3, Lcom/callapp/contacts/model/contact/DataSource;->$VALUES:[Lcom/callapp/contacts/model/contact/DataSource;

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    .line 99
    invoke-static {v1, v9, v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/model/contact/DataSource;->PLACES_DATA_SOURCE:Ljava/util/EnumSet;

    move-object/from16 v3, v23

    move-object/from16 v2, v24

    move-object/from16 v1, v25

    move-object/from16 v0, v33

    .line 100
    invoke-static {v0, v8, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    sput-object v4, Lcom/callapp/contacts/model/contact/DataSource;->SOCIAL_NETWORKS_DATA_SOURCE:Ljava/util/EnumSet;

    .line 101
    invoke-static {v0, v8, v6, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    sput-object v4, Lcom/callapp/contacts/model/contact/DataSource;->MY_SOCIAL_PROFILE_CARD_SOURCE:Ljava/util/EnumSet;

    .line 102
    invoke-static {v0, v8, v6, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    sput-object v4, Lcom/callapp/contacts/model/contact/DataSource;->LINKED_ACCOUNTS_SOURCE:Ljava/util/EnumSet;

    const/4 v4, 0x7

    new-array v4, v4, [Lcom/callapp/contacts/model/contact/DataSource;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v8, v4, v0

    const/4 v7, 0x2

    aput-object v6, v4, v7

    const/4 v6, 0x3

    aput-object v20, v4, v6

    const/4 v6, 0x4

    aput-object v2, v4, v6

    const/4 v2, 0x5

    aput-object v3, v4, v2

    const/4 v2, 0x6

    aput-object v1, v4, v2

    .line 104
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 113
    sput-object v1, Lcom/callapp/contacts/model/contact/DataSource;->ALL_SOCIAL_DATA_SOURCES_LIST:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-interface {v1, v5, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/model/contact/DataSource;->ACTIVE_SOCIAL_DATA_SOURCES_LIST:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/ContactField;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            "J)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    iput p3, p0, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    .line 66
    iput-object p4, p0, Lcom/callapp/contacts/model/contact/DataSource;->socialIdField:Lcom/callapp/contacts/model/contact/ContactField;

    .line 67
    iput-object p5, p0, Lcom/callapp/contacts/model/contact/DataSource;->socialSearchField:Lcom/callapp/contacts/model/contact/ContactField;

    .line 68
    iput-object p6, p0, Lcom/callapp/contacts/model/contact/DataSource;->socialDataField:Lcom/callapp/contacts/model/contact/ContactField;

    .line 69
    iput-wide p7, p0, Lcom/callapp/contacts/model/contact/DataSource;->priority:J

    if-eqz p6, :cond_0

    .line 70
    invoke-virtual {p6}, Lcom/callapp/contacts/model/contact/ContactField;->name()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/DataSource;->contactDataFieldName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v7, p3

    .line 61
    invoke-direct/range {v0 .. v8}, Lcom/callapp/contacts/model/contact/DataSource;-><init>(Ljava/lang/String;IILcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/ContactField;J)V

    return-void
.end method

.method public static getDataSource(I)Lcom/callapp/contacts/model/contact/DataSource;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 v0, 0x4

    if-eq p0, v0, :cond_5

    const/4 v0, 0x5

    if-eq p0, v0, :cond_4

    const/4 v0, 0x6

    if-eq p0, v0, :cond_3

    const/4 v0, 0x7

    if-eq p0, v0, :cond_2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 92
    :cond_0
    sget-object p0, Lcom/callapp/contacts/model/contact/DataSource;->vk:Lcom/callapp/contacts/model/contact/DataSource;

    return-object p0

    .line 90
    :cond_1
    sget-object p0, Lcom/callapp/contacts/model/contact/DataSource;->pinterest:Lcom/callapp/contacts/model/contact/DataSource;

    return-object p0

    .line 88
    :cond_2
    sget-object p0, Lcom/callapp/contacts/model/contact/DataSource;->instagram:Lcom/callapp/contacts/model/contact/DataSource;

    return-object p0

    .line 82
    :cond_3
    sget-object p0, Lcom/callapp/contacts/model/contact/DataSource;->foursquare:Lcom/callapp/contacts/model/contact/DataSource;

    return-object p0

    .line 86
    :cond_4
    sget-object p0, Lcom/callapp/contacts/model/contact/DataSource;->google:Lcom/callapp/contacts/model/contact/DataSource;

    return-object p0

    .line 84
    :cond_5
    sget-object p0, Lcom/callapp/contacts/model/contact/DataSource;->twitter:Lcom/callapp/contacts/model/contact/DataSource;

    return-object p0

    .line 80
    :cond_6
    sget-object p0, Lcom/callapp/contacts/model/contact/DataSource;->facebook:Lcom/callapp/contacts/model/contact/DataSource;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/model/contact/DataSource;
    .locals 1

    .line 9
    const-class v0, Lcom/callapp/contacts/model/contact/DataSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/model/contact/DataSource;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/model/contact/DataSource;
    .locals 1

    .line 9
    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->$VALUES:[Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v0}, [Lcom/callapp/contacts/model/contact/DataSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/model/contact/DataSource;

    return-object v0
.end method
