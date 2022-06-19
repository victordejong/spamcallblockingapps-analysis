.class public Lcom/callapp/contacts/sync/syncer/upload/IdentifiedContactsUploadSyncer;
.super Lcom/callapp/contacts/sync/syncer/upload/JsonContactsUploadSyncher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/sync/syncer/upload/JsonContactsUploadSyncher<",
        "Lcom/callapp/common/model/json/IdentifiedJSONContact;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/callapp/contacts/sync/syncer/upload/JsonContactsUploadSyncher;-><init>()V

    return-void
.end method

.method private extractedInfoToJsonContact(Lcom/callapp/contacts/model/objectbox/ExtractedInfo;)Lcom/callapp/common/model/json/IdentifiedJSONContact;
    .locals 3

    .line 46
    new-instance v0, Lcom/callapp/common/model/json/IdentifiedJSONContact;

    invoke-direct {v0}, Lcom/callapp/common/model/json/IdentifiedJSONContact;-><init>()V

    .line 48
    iget-object v1, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/IdentifiedJSONContact;->setRecognizedPersonOrigin(I)V

    .line 49
    iget-object v1, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->comType:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/IdentifiedJSONContact;->setComType(I)V

    .line 50
    iget-object v1, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->senderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/IdentifiedJSONContact;->setSenderName(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/IdentifiedJSONContact;->setGroupName(Ljava/lang/String;)V

    .line 53
    new-instance v1, Lcom/callapp/common/model/json/JSONPhoneNumber;

    invoke-direct {v1}, Lcom/callapp/common/model/json/JSONPhoneNumber;-><init>()V

    .line 54
    iget-object v2, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->phoneAsRaw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/callapp/common/model/json/JSONPhoneNumber;->setPhoneNumber(Ljava/lang/String;)V

    .line 55
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/IdentifiedJSONContact;->setPhoneNumbers(Ljava/util/List;)V

    .line 57
    iget-wide v1, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->when:J

    invoke-virtual {v0, v1, v2}, Lcom/callapp/common/model/json/IdentifiedJSONContact;->setWhen(J)V

    .line 59
    iget-wide v1, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->firstSeen:J

    invoke-virtual {v0, v1, v2}, Lcom/callapp/common/model/json/IdentifiedJSONContact;->setFirstSeen(J)V

    .line 60
    iget-wide v1, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->lastNotificationShowed:J

    invoke-virtual {v0, v1, v2}, Lcom/callapp/common/model/json/IdentifiedJSONContact;->setLastNotificationShowed(J)V

    .line 61
    iget v1, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->seenCount:I

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/IdentifiedJSONContact;->setSeenCount(I)V

    .line 62
    iget-boolean v1, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->disableNotification:Z

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/IdentifiedJSONContact;->setDisableNotification(Z)V

    .line 63
    iget-boolean p1, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->starred:Z

    invoke-virtual {v0, p1}, Lcom/callapp/common/model/json/IdentifiedJSONContact;->setFavorite(Z)V

    return-object v0
.end method


# virtual methods
.method public getContacts()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/IdentifiedJSONContact;",
            ">;"
        }
    .end annotation

    .line 23
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->getAllImNotificationData()Ljava/util/List;

    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 30
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    .line 33
    invoke-direct {p0, v2}, Lcom/callapp/contacts/sync/syncer/upload/IdentifiedContactsUploadSyncer;->extractedInfoToJsonContact(Lcom/callapp/contacts/model/objectbox/ExtractedInfo;)Lcom/callapp/common/model/json/IdentifiedJSONContact;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getUploadMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "icuejd"

    return-object v0
.end method
