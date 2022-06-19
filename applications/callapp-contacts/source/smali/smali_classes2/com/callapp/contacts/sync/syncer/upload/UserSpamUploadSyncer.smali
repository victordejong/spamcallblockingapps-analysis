.class public Lcom/callapp/contacts/sync/syncer/upload/UserSpamUploadSyncer;
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

    .line 16
    invoke-direct {p0}, Lcom/callapp/contacts/sync/syncer/upload/JsonContactsUploadSyncher;-><init>()V

    return-void
.end method


# virtual methods
.method public getContacts()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONContact;",
            ">;"
        }
    .end annotation

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-static {}, Lcom/callapp/contacts/util/UserCorrectedInfoUtil;->getAllUserSpam()Ljava/util/List;

    move-result-object v1

    .line 24
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/objectbox/UserSpamData;

    .line 25
    new-instance v3, Lcom/callapp/common/model/json/JSONContact;

    invoke-direct {v3}, Lcom/callapp/common/model/json/JSONContact;-><init>()V

    .line 26
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v4

    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/UserSpamData;->getPhone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v4

    .line 27
    new-instance v5, Lcom/callapp/common/model/json/JSONPhoneNumber;

    invoke-direct {v5, v4}, Lcom/callapp/common/model/json/JSONPhoneNumber;-><init>(Lcom/callapp/framework/phone/Phone;)V

    .line 28
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/callapp/common/model/json/JSONContact;->setPhoneNumbers(Ljava/util/List;)V

    .line 29
    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/UserSpamData;->isSpam()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 30
    invoke-virtual {v3, v2}, Lcom/callapp/common/model/json/JSONContact;->setSpamScore(I)V

    goto :goto_1

    :cond_0
    const/4 v2, -0x1

    .line 32
    invoke-virtual {v3, v2}, Lcom/callapp/common/model/json/JSONContact;->setSpamScore(I)V

    .line 34
    :goto_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getUploadMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "usuejd"

    return-object v0
.end method
