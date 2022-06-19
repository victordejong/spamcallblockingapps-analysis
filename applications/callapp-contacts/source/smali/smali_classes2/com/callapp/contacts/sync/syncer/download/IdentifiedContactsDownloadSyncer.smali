.class public Lcom/callapp/contacts/sync/syncer/download/IdentifiedContactsDownloadSyncer;
.super Lcom/callapp/contacts/sync/syncer/download/DownloadSyncer;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/callapp/contacts/sync/syncer/download/DownloadSyncer;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/common/model/json/IdentifiedJSONContact;)Lcom/callapp/contacts/model/objectbox/ExtractedInfo;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1108
    :cond_0
    new-instance v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;-><init>()V

    .line 1109
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->values()[Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/common/model/json/IdentifiedJSONContact;->getRecognizedPersonOrigin()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    .line 1110
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->values()[Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/common/model/json/IdentifiedJSONContact;->getComType()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->comType:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    .line 1111
    invoke-virtual {p0}, Lcom/callapp/common/model/json/IdentifiedJSONContact;->getSenderName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->senderName:Ljava/lang/String;

    .line 1113
    invoke-virtual {p0}, Lcom/callapp/common/model/json/IdentifiedJSONContact;->getPhoneNumbers()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/common/model/json/JSONPhoneNumber;

    .line 1114
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONPhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->phoneAsRaw:Ljava/lang/String;

    .line 1116
    invoke-virtual {p0}, Lcom/callapp/common/model/json/IdentifiedJSONContact;->getWhen()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->when:J

    .line 1118
    invoke-virtual {p0}, Lcom/callapp/common/model/json/IdentifiedJSONContact;->getFirstSeen()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->firstSeen:J

    .line 1119
    invoke-virtual {p0}, Lcom/callapp/common/model/json/IdentifiedJSONContact;->getLastNotificationShowed()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->lastNotificationShowed:J

    .line 1120
    invoke-virtual {p0}, Lcom/callapp/common/model/json/IdentifiedJSONContact;->getSeenCount()I

    move-result v1

    iput v1, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->seenCount:I

    .line 1121
    invoke-virtual {p0}, Lcom/callapp/common/model/json/IdentifiedJSONContact;->isDisableNotification()Z

    move-result v1

    iput-boolean v1, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->disableNotification:Z

    .line 1122
    invoke-virtual {p0}, Lcom/callapp/common/model/json/IdentifiedJSONContact;->isFavorite()Z

    move-result p0

    iput-boolean p0, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->starred:Z

    return-object v0
.end method


# virtual methods
.method public getHandler()Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;
    .locals 1

    const-string v0, "IdentifiedContactsDownloadSyncer"

    .line 35
    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/callapp/contacts/sync/syncer/download/IdentifiedContactsDownloadSyncer$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/sync/syncer/download/IdentifiedContactsDownloadSyncer$1;-><init>(Lcom/callapp/contacts/sync/syncer/download/IdentifiedContactsDownloadSyncer;)V

    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "ic"

    return-object v0
.end method
