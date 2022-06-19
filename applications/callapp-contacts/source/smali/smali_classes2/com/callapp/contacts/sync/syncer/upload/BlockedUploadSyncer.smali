.class public Lcom/callapp/contacts/sync/syncer/upload/BlockedUploadSyncer;
.super Lcom/callapp/contacts/sync/syncer/upload/JsonContactsUploadSyncher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/sync/syncer/upload/JsonContactsUploadSyncher<",
        "Lcom/callapp/common/model/json/JSONContact;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/callapp/contacts/sync/syncer/upload/JsonContactsUploadSyncher;-><init>()V

    return-void
.end method


# virtual methods
.method public allowEmptyUpload()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getContacts()Ljava/util/Collection;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONContact;",
            ">;"
        }
    .end annotation

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->getBlockedContacts()Ljava/util/List;

    move-result-object v1

    .line 26
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/ReminderData;

    .line 27
    new-instance v3, Lcom/callapp/common/model/json/JSONContact;

    invoke-direct {v3}, Lcom/callapp/common/model/json/JSONContact;-><init>()V

    .line 28
    iget-object v4, v2, Lcom/callapp/contacts/model/ReminderData;->displayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/callapp/common/model/json/JSONContact;->setName(Ljava/lang/String;)V

    .line 29
    new-instance v4, Lcom/callapp/common/model/json/JSONPhoneNumber;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/ReminderData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/callapp/common/model/json/JSONPhoneNumber;-><init>(Lcom/callapp/framework/phone/Phone;)V

    .line 30
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/callapp/common/model/json/JSONContact;->setPhoneNumbers(Ljava/util/List;)V

    .line 31
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 34
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v4

    const/4 v7, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    int-to-double v8, v1

    const/4 v1, 0x0

    new-array v10, v1, [Ljava/lang/String;

    const-string v5, "Block and Spam"

    const-string v6, "Number of blocked"

    invoke-virtual/range {v4 .. v10}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    return-object v0
.end method

.method public getUploadMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "buejd"

    return-object v0
.end method
