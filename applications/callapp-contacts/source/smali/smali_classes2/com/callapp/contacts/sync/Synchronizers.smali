.class public final enum Lcom/callapp/contacts/sync/Synchronizers;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/sync/Synchronizers;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/sync/Synchronizers;

.field public static final enum UserMetaDataUpload:Lcom/callapp/contacts/sync/Synchronizers;

.field public static final enum birthday:Lcom/callapp/contacts/sync/Synchronizers;

.field public static final enum blockedDownload:Lcom/callapp/contacts/sync/Synchronizers;

.field public static final enum blockedUpload:Lcom/callapp/contacts/sync/Synchronizers;

.field public static final enum callRecordingSyncer:Lcom/callapp/contacts/sync/Synchronizers;

.field public static final enum commonSpammersDownload:Lcom/callapp/contacts/sync/Synchronizers;

.field public static final enum deviceData:Lcom/callapp/contacts/sync/Synchronizers;

.field public static final enum externalSourcesUpload:Lcom/callapp/contacts/sync/Synchronizers;

.field public static final enum facebook:Lcom/callapp/contacts/sync/Synchronizers;

.field public static final enum facebookCache:Lcom/callapp/contacts/sync/Synchronizers;

.field public static final enum firstFastCache:Lcom/callapp/contacts/sync/Synchronizers;

.field public static final enum firstTimeExperienceContacts:Lcom/callapp/contacts/sync/Synchronizers;

.field public static final enum foursquare:Lcom/callapp/contacts/sync/Synchronizers;

.field public static final enum genomeNCUpload:Lcom/callapp/contacts/sync/Synchronizers;

.field public static final enum genomeUpload:Lcom/callapp/contacts/sync/Synchronizers;

.field public static final enum idContactsLogSyncer:Lcom/callapp/contacts/sync/Synchronizers;

.field public static final enum identifiedContactDownloadSyncer:Lcom/callapp/contacts/sync/Synchronizers;

.field public static final enum identifyContactUploadSyncer:Lcom/callapp/contacts/sync/Synchronizers;

.field public static final enum identifyContacts:Lcom/callapp/contacts/sync/Synchronizers;

.field public static final enum instagram:Lcom/callapp/contacts/sync/Synchronizers;

.field public static final enum instagramCache:Lcom/callapp/contacts/sync/Synchronizers;

.field public static final enum lastUploadedLinkages:Lcom/callapp/contacts/sync/Synchronizers;

.field public static final enum pinterest:Lcom/callapp/contacts/sync/Synchronizers;

.field public static final enum pinterestCache:Lcom/callapp/contacts/sync/Synchronizers;

.field public static final enum referAndEarnPointDownloadSyncer:Lcom/callapp/contacts/sync/Synchronizers;

.field public static final enum twitter:Lcom/callapp/contacts/sync/Synchronizers;

.field public static final enum twitterCache:Lcom/callapp/contacts/sync/Synchronizers;

.field public static final enum userCorrectedInfoDownload:Lcom/callapp/contacts/sync/Synchronizers;

.field public static final enum userCorrectedInfoUploadSyncer:Lcom/callapp/contacts/sync/Synchronizers;

.field public static final enum userSpamDownload:Lcom/callapp/contacts/sync/Synchronizers;

.field public static final enum userSpamUploadSyncer:Lcom/callapp/contacts/sync/Synchronizers;

.field public static final enum validateSocialCallAppId:Lcom/callapp/contacts/sync/Synchronizers;

.field public static final enum websites:Lcom/callapp/contacts/sync/Synchronizers;

.field public static final enum whoViewedDownloadSyncer:Lcom/callapp/contacts/sync/Synchronizers;

.field public static final enum whoViewedUploadSyncer:Lcom/callapp/contacts/sync/Synchronizers;


# instance fields
.field public syncConfig:Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;

.field public final syncer:Lcom/callapp/contacts/sync/syncer/Syncer;


# direct methods
.method static constructor <clinit>()V
    .locals 39

    .line 46
    new-instance v0, Lcom/callapp/contacts/sync/Synchronizers;

    new-instance v1, Lcom/callapp/contacts/sync/syncer/FirstTimeExperienceContactsSyncer;

    invoke-direct {v1}, Lcom/callapp/contacts/sync/syncer/FirstTimeExperienceContactsSyncer;-><init>()V

    sget-object v2, Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;->onlyFirst:Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;

    const-string v3, "firstTimeExperienceContacts"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/callapp/contacts/sync/Synchronizers;-><init>(Ljava/lang/String;ILcom/callapp/contacts/sync/syncer/Syncer;Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;)V

    sput-object v0, Lcom/callapp/contacts/sync/Synchronizers;->firstTimeExperienceContacts:Lcom/callapp/contacts/sync/Synchronizers;

    .line 47
    new-instance v1, Lcom/callapp/contacts/sync/Synchronizers;

    new-instance v2, Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer;

    invoke-direct {v2}, Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer;-><init>()V

    sget-object v3, Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;->onlyFirst:Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;

    const-string v5, "lastUploadedLinkages"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v2, v3}, Lcom/callapp/contacts/sync/Synchronizers;-><init>(Ljava/lang/String;ILcom/callapp/contacts/sync/syncer/Syncer;Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;)V

    sput-object v1, Lcom/callapp/contacts/sync/Synchronizers;->lastUploadedLinkages:Lcom/callapp/contacts/sync/Synchronizers;

    .line 48
    new-instance v2, Lcom/callapp/contacts/sync/Synchronizers;

    new-instance v3, Lcom/callapp/contacts/sync/syncer/download/BlockedDownloadSyncer;

    invoke-direct {v3}, Lcom/callapp/contacts/sync/syncer/download/BlockedDownloadSyncer;-><init>()V

    sget-object v5, Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;->onlyFirst:Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;

    const-string v7, "blockedDownload"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v3, v5}, Lcom/callapp/contacts/sync/Synchronizers;-><init>(Ljava/lang/String;ILcom/callapp/contacts/sync/syncer/Syncer;Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;)V

    sput-object v2, Lcom/callapp/contacts/sync/Synchronizers;->blockedDownload:Lcom/callapp/contacts/sync/Synchronizers;

    .line 49
    new-instance v3, Lcom/callapp/contacts/sync/Synchronizers;

    new-instance v5, Lcom/callapp/contacts/sync/syncer/download/UserCorrectedInfoDownloadSyncer;

    invoke-direct {v5}, Lcom/callapp/contacts/sync/syncer/download/UserCorrectedInfoDownloadSyncer;-><init>()V

    sget-object v7, Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;->onlyFirst:Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;

    const-string v9, "userCorrectedInfoDownload"

    const/4 v10, 0x3

    invoke-direct {v3, v9, v10, v5, v7}, Lcom/callapp/contacts/sync/Synchronizers;-><init>(Ljava/lang/String;ILcom/callapp/contacts/sync/syncer/Syncer;Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;)V

    sput-object v3, Lcom/callapp/contacts/sync/Synchronizers;->userCorrectedInfoDownload:Lcom/callapp/contacts/sync/Synchronizers;

    .line 50
    new-instance v5, Lcom/callapp/contacts/sync/Synchronizers;

    new-instance v7, Lcom/callapp/contacts/sync/syncer/download/UserSpamDownloadSyncer;

    invoke-direct {v7}, Lcom/callapp/contacts/sync/syncer/download/UserSpamDownloadSyncer;-><init>()V

    sget-object v9, Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;->onlyFirst:Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;

    const-string v11, "userSpamDownload"

    const/4 v12, 0x4

    invoke-direct {v5, v11, v12, v7, v9}, Lcom/callapp/contacts/sync/Synchronizers;-><init>(Ljava/lang/String;ILcom/callapp/contacts/sync/syncer/Syncer;Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;)V

    sput-object v5, Lcom/callapp/contacts/sync/Synchronizers;->userSpamDownload:Lcom/callapp/contacts/sync/Synchronizers;

    .line 51
    new-instance v7, Lcom/callapp/contacts/sync/Synchronizers;

    new-instance v9, Lcom/callapp/contacts/sync/syncer/CallRecordingSyncer;

    invoke-direct {v9}, Lcom/callapp/contacts/sync/syncer/CallRecordingSyncer;-><init>()V

    sget-object v11, Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;->onlyFirst:Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;

    const-string v13, "callRecordingSyncer"

    const/4 v14, 0x5

    invoke-direct {v7, v13, v14, v9, v11}, Lcom/callapp/contacts/sync/Synchronizers;-><init>(Ljava/lang/String;ILcom/callapp/contacts/sync/syncer/Syncer;Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;)V

    sput-object v7, Lcom/callapp/contacts/sync/Synchronizers;->callRecordingSyncer:Lcom/callapp/contacts/sync/Synchronizers;

    .line 52
    new-instance v9, Lcom/callapp/contacts/sync/Synchronizers;

    new-instance v11, Lcom/callapp/contacts/sync/syncer/DeviceDataSyncer;

    invoke-direct {v11}, Lcom/callapp/contacts/sync/syncer/DeviceDataSyncer;-><init>()V

    sget-object v13, Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;->bothSyncs:Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;

    const-string v15, "deviceData"

    const/4 v14, 0x6

    invoke-direct {v9, v15, v14, v11, v13}, Lcom/callapp/contacts/sync/Synchronizers;-><init>(Ljava/lang/String;ILcom/callapp/contacts/sync/syncer/Syncer;Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;)V

    sput-object v9, Lcom/callapp/contacts/sync/Synchronizers;->deviceData:Lcom/callapp/contacts/sync/Synchronizers;

    .line 53
    new-instance v11, Lcom/callapp/contacts/sync/Synchronizers;

    new-instance v13, Lcom/callapp/contacts/sync/syncer/FacebookFriendsSyncer;

    invoke-direct {v13}, Lcom/callapp/contacts/sync/syncer/FacebookFriendsSyncer;-><init>()V

    sget-object v15, Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;->bothSyncs:Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;

    const-string v14, "facebook"

    const/4 v12, 0x7

    invoke-direct {v11, v14, v12, v13, v15}, Lcom/callapp/contacts/sync/Synchronizers;-><init>(Ljava/lang/String;ILcom/callapp/contacts/sync/syncer/Syncer;Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;)V

    sput-object v11, Lcom/callapp/contacts/sync/Synchronizers;->facebook:Lcom/callapp/contacts/sync/Synchronizers;

    .line 54
    new-instance v13, Lcom/callapp/contacts/sync/Synchronizers;

    new-instance v14, Lcom/callapp/contacts/sync/syncer/FoursquareFriendsSyncer;

    invoke-direct {v14}, Lcom/callapp/contacts/sync/syncer/FoursquareFriendsSyncer;-><init>()V

    sget-object v15, Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;->bothSyncs:Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;

    const-string v12, "foursquare"

    const/16 v10, 0x8

    invoke-direct {v13, v12, v10, v14, v15}, Lcom/callapp/contacts/sync/Synchronizers;-><init>(Ljava/lang/String;ILcom/callapp/contacts/sync/syncer/Syncer;Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;)V

    sput-object v13, Lcom/callapp/contacts/sync/Synchronizers;->foursquare:Lcom/callapp/contacts/sync/Synchronizers;

    .line 55
    new-instance v12, Lcom/callapp/contacts/sync/Synchronizers;

    new-instance v14, Lcom/callapp/contacts/sync/syncer/TwitterFriendsSyncer;

    invoke-direct {v14}, Lcom/callapp/contacts/sync/syncer/TwitterFriendsSyncer;-><init>()V

    sget-object v15, Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;->bothSyncs:Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;

    const-string v10, "twitter"

    const/16 v8, 0x9

    invoke-direct {v12, v10, v8, v14, v15}, Lcom/callapp/contacts/sync/Synchronizers;-><init>(Ljava/lang/String;ILcom/callapp/contacts/sync/syncer/Syncer;Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;)V

    sput-object v12, Lcom/callapp/contacts/sync/Synchronizers;->twitter:Lcom/callapp/contacts/sync/Synchronizers;

    .line 56
    new-instance v10, Lcom/callapp/contacts/sync/Synchronizers;

    new-instance v14, Lcom/callapp/contacts/sync/syncer/InstagramFriendsSyncer;

    invoke-direct {v14}, Lcom/callapp/contacts/sync/syncer/InstagramFriendsSyncer;-><init>()V

    sget-object v15, Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;->bothSyncs:Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;

    const-string v8, "instagram"

    const/16 v6, 0xa

    invoke-direct {v10, v8, v6, v14, v15}, Lcom/callapp/contacts/sync/Synchronizers;-><init>(Ljava/lang/String;ILcom/callapp/contacts/sync/syncer/Syncer;Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;)V

    sput-object v10, Lcom/callapp/contacts/sync/Synchronizers;->instagram:Lcom/callapp/contacts/sync/Synchronizers;

    .line 57
    new-instance v8, Lcom/callapp/contacts/sync/Synchronizers;

    new-instance v14, Lcom/callapp/contacts/sync/syncer/PinterestFriendsSyncer;

    invoke-direct {v14}, Lcom/callapp/contacts/sync/syncer/PinterestFriendsSyncer;-><init>()V

    sget-object v15, Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;->bothSyncs:Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;

    const-string v6, "pinterest"

    const/16 v4, 0xb

    invoke-direct {v8, v6, v4, v14, v15}, Lcom/callapp/contacts/sync/Synchronizers;-><init>(Ljava/lang/String;ILcom/callapp/contacts/sync/syncer/Syncer;Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;)V

    sput-object v8, Lcom/callapp/contacts/sync/Synchronizers;->pinterest:Lcom/callapp/contacts/sync/Synchronizers;

    .line 58
    new-instance v6, Lcom/callapp/contacts/sync/Synchronizers;

    new-instance v14, Lcom/callapp/contacts/sync/syncer/WebsitesSyncer;

    invoke-direct {v14}, Lcom/callapp/contacts/sync/syncer/WebsitesSyncer;-><init>()V

    sget-object v15, Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;->onlyFull:Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;

    const-string v4, "websites"

    move-object/from16 v16, v8

    const/16 v8, 0xc

    invoke-direct {v6, v4, v8, v14, v15}, Lcom/callapp/contacts/sync/Synchronizers;-><init>(Ljava/lang/String;ILcom/callapp/contacts/sync/syncer/Syncer;Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;)V

    sput-object v6, Lcom/callapp/contacts/sync/Synchronizers;->websites:Lcom/callapp/contacts/sync/Synchronizers;

    .line 59
    new-instance v4, Lcom/callapp/contacts/sync/Synchronizers;

    new-instance v14, Lcom/callapp/contacts/sync/syncer/cache/social/FacebookSyncer;

    invoke-direct {v14}, Lcom/callapp/contacts/sync/syncer/cache/social/FacebookSyncer;-><init>()V

    sget-object v15, Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;->onlyFull:Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;

    const-string v8, "facebookCache"

    move-object/from16 v17, v6

    const/16 v6, 0xd

    invoke-direct {v4, v8, v6, v14, v15}, Lcom/callapp/contacts/sync/Synchronizers;-><init>(Ljava/lang/String;ILcom/callapp/contacts/sync/syncer/Syncer;Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;)V

    sput-object v4, Lcom/callapp/contacts/sync/Synchronizers;->facebookCache:Lcom/callapp/contacts/sync/Synchronizers;

    .line 60
    new-instance v8, Lcom/callapp/contacts/sync/Synchronizers;

    new-instance v14, Lcom/callapp/contacts/sync/syncer/cache/social/TwitterSyncer;

    invoke-direct {v14}, Lcom/callapp/contacts/sync/syncer/cache/social/TwitterSyncer;-><init>()V

    sget-object v15, Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;->onlyFull:Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;

    const-string v6, "twitterCache"

    move-object/from16 v18, v4

    const/16 v4, 0xe

    invoke-direct {v8, v6, v4, v14, v15}, Lcom/callapp/contacts/sync/Synchronizers;-><init>(Ljava/lang/String;ILcom/callapp/contacts/sync/syncer/Syncer;Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;)V

    sput-object v8, Lcom/callapp/contacts/sync/Synchronizers;->twitterCache:Lcom/callapp/contacts/sync/Synchronizers;

    .line 61
    new-instance v6, Lcom/callapp/contacts/sync/Synchronizers;

    new-instance v14, Lcom/callapp/contacts/sync/syncer/cache/social/InstagramSyncer;

    invoke-direct {v14}, Lcom/callapp/contacts/sync/syncer/cache/social/InstagramSyncer;-><init>()V

    sget-object v15, Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;->onlyFull:Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;

    const-string v4, "instagramCache"

    move-object/from16 v19, v8

    const/16 v8, 0xf

    invoke-direct {v6, v4, v8, v14, v15}, Lcom/callapp/contacts/sync/Synchronizers;-><init>(Ljava/lang/String;ILcom/callapp/contacts/sync/syncer/Syncer;Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;)V

    sput-object v6, Lcom/callapp/contacts/sync/Synchronizers;->instagramCache:Lcom/callapp/contacts/sync/Synchronizers;

    .line 62
    new-instance v4, Lcom/callapp/contacts/sync/Synchronizers;

    new-instance v14, Lcom/callapp/contacts/sync/syncer/cache/social/PinterestSyncer;

    invoke-direct {v14}, Lcom/callapp/contacts/sync/syncer/cache/social/PinterestSyncer;-><init>()V

    sget-object v15, Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;->onlyFull:Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;

    const-string v8, "pinterestCache"

    move-object/from16 v20, v6

    const/16 v6, 0x10

    invoke-direct {v4, v8, v6, v14, v15}, Lcom/callapp/contacts/sync/Synchronizers;-><init>(Ljava/lang/String;ILcom/callapp/contacts/sync/syncer/Syncer;Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;)V

    sput-object v4, Lcom/callapp/contacts/sync/Synchronizers;->pinterestCache:Lcom/callapp/contacts/sync/Synchronizers;

    .line 63
    new-instance v8, Lcom/callapp/contacts/sync/Synchronizers;

    new-instance v14, Lcom/callapp/contacts/sync/syncer/cache/FirstFastCacheSyncer;

    invoke-direct {v14}, Lcom/callapp/contacts/sync/syncer/cache/FirstFastCacheSyncer;-><init>()V

    sget-object v15, Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;->onlyFirst:Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;

    const-string v6, "firstFastCache"

    move-object/from16 v21, v4

    const/16 v4, 0x11

    invoke-direct {v8, v6, v4, v14, v15}, Lcom/callapp/contacts/sync/Synchronizers;-><init>(Ljava/lang/String;ILcom/callapp/contacts/sync/syncer/Syncer;Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;)V

    sput-object v8, Lcom/callapp/contacts/sync/Synchronizers;->firstFastCache:Lcom/callapp/contacts/sync/Synchronizers;

    .line 64
    new-instance v6, Lcom/callapp/contacts/sync/Synchronizers;

    new-instance v14, Lcom/callapp/contacts/sync/syncer/BirthdaySyncer;

    invoke-direct {v14}, Lcom/callapp/contacts/sync/syncer/BirthdaySyncer;-><init>()V

    sget-object v15, Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;->bothSyncs:Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;

    const-string v4, "birthday"

    move-object/from16 v22, v8

    const/16 v8, 0x12

    invoke-direct {v6, v4, v8, v14, v15}, Lcom/callapp/contacts/sync/Synchronizers;-><init>(Ljava/lang/String;ILcom/callapp/contacts/sync/syncer/Syncer;Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;)V

    sput-object v6, Lcom/callapp/contacts/sync/Synchronizers;->birthday:Lcom/callapp/contacts/sync/Synchronizers;

    .line 65
    new-instance v4, Lcom/callapp/contacts/sync/Synchronizers;

    new-instance v14, Lcom/callapp/contacts/sync/syncer/IdentifyContactsSyncer;

    invoke-direct {v14}, Lcom/callapp/contacts/sync/syncer/IdentifyContactsSyncer;-><init>()V

    sget-object v15, Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;->bothSyncs:Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;

    const-string v8, "identifyContacts"

    move-object/from16 v23, v6

    const/16 v6, 0x13

    invoke-direct {v4, v8, v6, v14, v15}, Lcom/callapp/contacts/sync/Synchronizers;-><init>(Ljava/lang/String;ILcom/callapp/contacts/sync/syncer/Syncer;Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;)V

    sput-object v4, Lcom/callapp/contacts/sync/Synchronizers;->identifyContacts:Lcom/callapp/contacts/sync/Synchronizers;

    .line 66
    new-instance v8, Lcom/callapp/contacts/sync/Synchronizers;

    new-instance v14, Lcom/callapp/contacts/sync/syncer/upload/GenomeUploadSyncer;

    invoke-direct {v14}, Lcom/callapp/contacts/sync/syncer/upload/GenomeUploadSyncer;-><init>()V

    sget-object v15, Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;->bothSyncs:Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;

    const-string v6, "genomeUpload"

    move-object/from16 v24, v4

    const/16 v4, 0x14

    invoke-direct {v8, v6, v4, v14, v15}, Lcom/callapp/contacts/sync/Synchronizers;-><init>(Ljava/lang/String;ILcom/callapp/contacts/sync/syncer/Syncer;Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;)V

    sput-object v8, Lcom/callapp/contacts/sync/Synchronizers;->genomeUpload:Lcom/callapp/contacts/sync/Synchronizers;

    .line 67
    new-instance v6, Lcom/callapp/contacts/sync/Synchronizers;

    new-instance v14, Lcom/callapp/contacts/sync/syncer/upload/GenomeNCUploadSyncer;

    invoke-direct {v14}, Lcom/callapp/contacts/sync/syncer/upload/GenomeNCUploadSyncer;-><init>()V

    sget-object v15, Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;->bothSyncs:Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;

    const-string v4, "genomeNCUpload"

    move-object/from16 v25, v8

    const/16 v8, 0x15

    invoke-direct {v6, v4, v8, v14, v15}, Lcom/callapp/contacts/sync/Synchronizers;-><init>(Ljava/lang/String;ILcom/callapp/contacts/sync/syncer/Syncer;Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;)V

    sput-object v6, Lcom/callapp/contacts/sync/Synchronizers;->genomeNCUpload:Lcom/callapp/contacts/sync/Synchronizers;

    .line 68
    new-instance v4, Lcom/callapp/contacts/sync/Synchronizers;

    new-instance v14, Lcom/callapp/contacts/sync/syncer/upload/ExternalSourcesUploadSyncer;

    invoke-direct {v14}, Lcom/callapp/contacts/sync/syncer/upload/ExternalSourcesUploadSyncer;-><init>()V

    sget-object v15, Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;->onlyFull:Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;

    const-string v8, "externalSourcesUpload"

    move-object/from16 v26, v6

    const/16 v6, 0x16

    invoke-direct {v4, v8, v6, v14, v15}, Lcom/callapp/contacts/sync/Synchronizers;-><init>(Ljava/lang/String;ILcom/callapp/contacts/sync/syncer/Syncer;Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;)V

    sput-object v4, Lcom/callapp/contacts/sync/Synchronizers;->externalSourcesUpload:Lcom/callapp/contacts/sync/Synchronizers;

    .line 69
    new-instance v6, Lcom/callapp/contacts/sync/Synchronizers;

    new-instance v8, Lcom/callapp/contacts/sync/syncer/upload/UserCorrectedInfoUploadSyncer;

    invoke-direct {v8}, Lcom/callapp/contacts/sync/syncer/upload/UserCorrectedInfoUploadSyncer;-><init>()V

    sget-object v14, Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;->onlyFull:Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;

    const-string v15, "userCorrectedInfoUploadSyncer"

    move-object/from16 v27, v4

    const/16 v4, 0x17

    invoke-direct {v6, v15, v4, v8, v14}, Lcom/callapp/contacts/sync/Synchronizers;-><init>(Ljava/lang/String;ILcom/callapp/contacts/sync/syncer/Syncer;Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;)V

    sput-object v6, Lcom/callapp/contacts/sync/Synchronizers;->userCorrectedInfoUploadSyncer:Lcom/callapp/contacts/sync/Synchronizers;

    .line 70
    new-instance v4, Lcom/callapp/contacts/sync/Synchronizers;

    new-instance v8, Lcom/callapp/contacts/sync/syncer/upload/UserSpamUploadSyncer;

    invoke-direct {v8}, Lcom/callapp/contacts/sync/syncer/upload/UserSpamUploadSyncer;-><init>()V

    sget-object v14, Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;->onlyFull:Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;

    const-string v15, "userSpamUploadSyncer"

    move-object/from16 v28, v6

    const/16 v6, 0x18

    invoke-direct {v4, v15, v6, v8, v14}, Lcom/callapp/contacts/sync/Synchronizers;-><init>(Ljava/lang/String;ILcom/callapp/contacts/sync/syncer/Syncer;Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;)V

    sput-object v4, Lcom/callapp/contacts/sync/Synchronizers;->userSpamUploadSyncer:Lcom/callapp/contacts/sync/Synchronizers;

    .line 71
    new-instance v6, Lcom/callapp/contacts/sync/Synchronizers;

    new-instance v8, Lcom/callapp/contacts/sync/syncer/upload/BlockedUploadSyncer;

    invoke-direct {v8}, Lcom/callapp/contacts/sync/syncer/upload/BlockedUploadSyncer;-><init>()V

    sget-object v14, Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;->onlyFull:Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;

    const-string v15, "blockedUpload"

    move-object/from16 v29, v4

    const/16 v4, 0x19

    invoke-direct {v6, v15, v4, v8, v14}, Lcom/callapp/contacts/sync/Synchronizers;-><init>(Ljava/lang/String;ILcom/callapp/contacts/sync/syncer/Syncer;Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;)V

    sput-object v6, Lcom/callapp/contacts/sync/Synchronizers;->blockedUpload:Lcom/callapp/contacts/sync/Synchronizers;

    .line 72
    new-instance v4, Lcom/callapp/contacts/sync/Synchronizers;

    new-instance v8, Lcom/callapp/contacts/sync/syncer/upload/UserMetaDataUploadSyncer;

    invoke-direct {v8}, Lcom/callapp/contacts/sync/syncer/upload/UserMetaDataUploadSyncer;-><init>()V

    sget-object v14, Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;->bothSyncs:Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;

    const-string v15, "UserMetaDataUpload"

    move-object/from16 v30, v6

    const/16 v6, 0x1a

    invoke-direct {v4, v15, v6, v8, v14}, Lcom/callapp/contacts/sync/Synchronizers;-><init>(Ljava/lang/String;ILcom/callapp/contacts/sync/syncer/Syncer;Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;)V

    sput-object v4, Lcom/callapp/contacts/sync/Synchronizers;->UserMetaDataUpload:Lcom/callapp/contacts/sync/Synchronizers;

    .line 73
    new-instance v6, Lcom/callapp/contacts/sync/Synchronizers;

    new-instance v8, Lcom/callapp/contacts/sync/syncer/download/CommonSpammersSyncer;

    invoke-direct {v8}, Lcom/callapp/contacts/sync/syncer/download/CommonSpammersSyncer;-><init>()V

    sget-object v14, Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;->bothSyncs:Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;

    const-string v15, "commonSpammersDownload"

    move-object/from16 v31, v4

    const/16 v4, 0x1b

    invoke-direct {v6, v15, v4, v8, v14}, Lcom/callapp/contacts/sync/Synchronizers;-><init>(Ljava/lang/String;ILcom/callapp/contacts/sync/syncer/Syncer;Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;)V

    sput-object v6, Lcom/callapp/contacts/sync/Synchronizers;->commonSpammersDownload:Lcom/callapp/contacts/sync/Synchronizers;

    .line 74
    new-instance v4, Lcom/callapp/contacts/sync/Synchronizers;

    new-instance v8, Lcom/callapp/contacts/sync/syncer/download/IdentifiedContactsDownloadSyncer;

    invoke-direct {v8}, Lcom/callapp/contacts/sync/syncer/download/IdentifiedContactsDownloadSyncer;-><init>()V

    sget-object v14, Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;->onlyFirst:Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;

    const-string v15, "identifiedContactDownloadSyncer"

    move-object/from16 v32, v6

    const/16 v6, 0x1c

    invoke-direct {v4, v15, v6, v8, v14}, Lcom/callapp/contacts/sync/Synchronizers;-><init>(Ljava/lang/String;ILcom/callapp/contacts/sync/syncer/Syncer;Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;)V

    sput-object v4, Lcom/callapp/contacts/sync/Synchronizers;->identifiedContactDownloadSyncer:Lcom/callapp/contacts/sync/Synchronizers;

    .line 75
    new-instance v6, Lcom/callapp/contacts/sync/Synchronizers;

    new-instance v8, Lcom/callapp/contacts/sync/syncer/download/WhoViewedDownloadSyncer;

    invoke-direct {v8}, Lcom/callapp/contacts/sync/syncer/download/WhoViewedDownloadSyncer;-><init>()V

    sget-object v14, Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;->onlyFirst:Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;

    const-string v15, "whoViewedDownloadSyncer"

    move-object/from16 v33, v4

    const/16 v4, 0x1d

    invoke-direct {v6, v15, v4, v8, v14}, Lcom/callapp/contacts/sync/Synchronizers;-><init>(Ljava/lang/String;ILcom/callapp/contacts/sync/syncer/Syncer;Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;)V

    sput-object v6, Lcom/callapp/contacts/sync/Synchronizers;->whoViewedDownloadSyncer:Lcom/callapp/contacts/sync/Synchronizers;

    .line 76
    new-instance v4, Lcom/callapp/contacts/sync/Synchronizers;

    new-instance v8, Lcom/callapp/contacts/sync/syncer/download/ReferAndEarnPointDownloadSyncer;

    invoke-direct {v8}, Lcom/callapp/contacts/sync/syncer/download/ReferAndEarnPointDownloadSyncer;-><init>()V

    sget-object v14, Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;->onlyFirst:Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;

    const-string v15, "referAndEarnPointDownloadSyncer"

    move-object/from16 v34, v6

    const/16 v6, 0x1e

    invoke-direct {v4, v15, v6, v8, v14}, Lcom/callapp/contacts/sync/Synchronizers;-><init>(Ljava/lang/String;ILcom/callapp/contacts/sync/syncer/Syncer;Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;)V

    sput-object v4, Lcom/callapp/contacts/sync/Synchronizers;->referAndEarnPointDownloadSyncer:Lcom/callapp/contacts/sync/Synchronizers;

    .line 77
    new-instance v6, Lcom/callapp/contacts/sync/Synchronizers;

    new-instance v8, Lcom/callapp/contacts/sync/syncer/IdContactsLogSyncer;

    invoke-direct {v8}, Lcom/callapp/contacts/sync/syncer/IdContactsLogSyncer;-><init>()V

    sget-object v14, Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;->bothSyncs:Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;

    const-string v15, "idContactsLogSyncer"

    move-object/from16 v35, v4

    const/16 v4, 0x1f

    invoke-direct {v6, v15, v4, v8, v14}, Lcom/callapp/contacts/sync/Synchronizers;-><init>(Ljava/lang/String;ILcom/callapp/contacts/sync/syncer/Syncer;Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;)V

    sput-object v6, Lcom/callapp/contacts/sync/Synchronizers;->idContactsLogSyncer:Lcom/callapp/contacts/sync/Synchronizers;

    .line 78
    new-instance v4, Lcom/callapp/contacts/sync/Synchronizers;

    new-instance v8, Lcom/callapp/contacts/sync/syncer/upload/IdentifiedContactsUploadSyncer;

    invoke-direct {v8}, Lcom/callapp/contacts/sync/syncer/upload/IdentifiedContactsUploadSyncer;-><init>()V

    sget-object v14, Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;->onlyFull:Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;

    const-string v15, "identifyContactUploadSyncer"

    move-object/from16 v36, v6

    const/16 v6, 0x20

    invoke-direct {v4, v15, v6, v8, v14}, Lcom/callapp/contacts/sync/Synchronizers;-><init>(Ljava/lang/String;ILcom/callapp/contacts/sync/syncer/Syncer;Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;)V

    sput-object v4, Lcom/callapp/contacts/sync/Synchronizers;->identifyContactUploadSyncer:Lcom/callapp/contacts/sync/Synchronizers;

    .line 79
    new-instance v6, Lcom/callapp/contacts/sync/Synchronizers;

    new-instance v8, Lcom/callapp/contacts/sync/syncer/upload/WhoViewedMyProfileUploadSyncer;

    invoke-direct {v8}, Lcom/callapp/contacts/sync/syncer/upload/WhoViewedMyProfileUploadSyncer;-><init>()V

    sget-object v14, Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;->onlyFull:Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;

    const-string v15, "whoViewedUploadSyncer"

    move-object/from16 v37, v4

    const/16 v4, 0x21

    invoke-direct {v6, v15, v4, v8, v14}, Lcom/callapp/contacts/sync/Synchronizers;-><init>(Ljava/lang/String;ILcom/callapp/contacts/sync/syncer/Syncer;Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;)V

    sput-object v6, Lcom/callapp/contacts/sync/Synchronizers;->whoViewedUploadSyncer:Lcom/callapp/contacts/sync/Synchronizers;

    .line 80
    new-instance v4, Lcom/callapp/contacts/sync/Synchronizers;

    new-instance v8, Lcom/callapp/contacts/sync/syncer/ValidateSocialCallAppId;

    invoke-direct {v8}, Lcom/callapp/contacts/sync/syncer/ValidateSocialCallAppId;-><init>()V

    sget-object v14, Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;->onlyFull:Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;

    const-string v15, "validateSocialCallAppId"

    move-object/from16 v38, v6

    const/16 v6, 0x22

    invoke-direct {v4, v15, v6, v8, v14}, Lcom/callapp/contacts/sync/Synchronizers;-><init>(Ljava/lang/String;ILcom/callapp/contacts/sync/syncer/Syncer;Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;)V

    sput-object v4, Lcom/callapp/contacts/sync/Synchronizers;->validateSocialCallAppId:Lcom/callapp/contacts/sync/Synchronizers;

    const/16 v6, 0x23

    new-array v6, v6, [Lcom/callapp/contacts/sync/Synchronizers;

    const/4 v8, 0x0

    aput-object v0, v6, v8

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v5, v6, v0

    const/4 v0, 0x5

    aput-object v7, v6, v0

    const/4 v0, 0x6

    aput-object v9, v6, v0

    const/4 v0, 0x7

    aput-object v11, v6, v0

    const/16 v0, 0x8

    aput-object v13, v6, v0

    const/16 v0, 0x9

    aput-object v12, v6, v0

    const/16 v0, 0xa

    aput-object v10, v6, v0

    const/16 v0, 0xb

    aput-object v16, v6, v0

    const/16 v0, 0xc

    aput-object v17, v6, v0

    const/16 v0, 0xd

    aput-object v18, v6, v0

    const/16 v0, 0xe

    aput-object v19, v6, v0

    const/16 v0, 0xf

    aput-object v20, v6, v0

    const/16 v0, 0x10

    aput-object v21, v6, v0

    const/16 v0, 0x11

    aput-object v22, v6, v0

    const/16 v0, 0x12

    aput-object v23, v6, v0

    const/16 v0, 0x13

    aput-object v24, v6, v0

    const/16 v0, 0x14

    aput-object v25, v6, v0

    const/16 v0, 0x15

    aput-object v26, v6, v0

    const/16 v0, 0x16

    aput-object v27, v6, v0

    const/16 v0, 0x17

    aput-object v28, v6, v0

    const/16 v0, 0x18

    aput-object v29, v6, v0

    const/16 v0, 0x19

    aput-object v30, v6, v0

    const/16 v0, 0x1a

    aput-object v31, v6, v0

    const/16 v0, 0x1b

    aput-object v32, v6, v0

    const/16 v0, 0x1c

    aput-object v33, v6, v0

    const/16 v0, 0x1d

    aput-object v34, v6, v0

    const/16 v0, 0x1e

    aput-object v35, v6, v0

    const/16 v0, 0x1f

    aput-object v36, v6, v0

    const/16 v0, 0x20

    aput-object v37, v6, v0

    const/16 v0, 0x21

    aput-object v38, v6, v0

    const/16 v0, 0x22

    aput-object v4, v6, v0

    .line 45
    sput-object v6, Lcom/callapp/contacts/sync/Synchronizers;->$VALUES:[Lcom/callapp/contacts/sync/Synchronizers;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/callapp/contacts/sync/syncer/Syncer;Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/sync/syncer/Syncer;",
            "Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;",
            ")V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    iput-object p3, p0, Lcom/callapp/contacts/sync/Synchronizers;->syncer:Lcom/callapp/contacts/sync/syncer/Syncer;

    .line 87
    iput-object p4, p0, Lcom/callapp/contacts/sync/Synchronizers;->syncConfig:Lcom/callapp/contacts/sync/Synchronizers$SyncConfig;

    return-void
.end method

.method public static getSyncers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/sync/Synchronizers;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    invoke-static {}, Lcom/callapp/contacts/sync/Synchronizers;->values()[Lcom/callapp/contacts/sync/Synchronizers;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/sync/Synchronizers;
    .locals 1

    .line 45
    const-class v0, Lcom/callapp/contacts/sync/Synchronizers;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/sync/Synchronizers;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/sync/Synchronizers;
    .locals 1

    .line 45
    sget-object v0, Lcom/callapp/contacts/sync/Synchronizers;->$VALUES:[Lcom/callapp/contacts/sync/Synchronizers;

    invoke-virtual {v0}, [Lcom/callapp/contacts/sync/Synchronizers;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/sync/Synchronizers;

    return-object v0
.end method
