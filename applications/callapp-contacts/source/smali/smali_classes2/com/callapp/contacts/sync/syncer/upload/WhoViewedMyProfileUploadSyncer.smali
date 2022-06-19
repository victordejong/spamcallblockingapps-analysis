.class public Lcom/callapp/contacts/sync/syncer/upload/WhoViewedMyProfileUploadSyncer;
.super Lcom/callapp/contacts/sync/syncer/upload/JsonContactsUploadSyncher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/sync/syncer/upload/JsonContactsUploadSyncher<",
        "Lcom/callapp/common/model/json/WhoViewedMyProfileJSONContact;",
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

.method private whoViewedToJsonContact(Lcom/callapp/contacts/model/objectbox/ProfileViewedData;)Lcom/callapp/common/model/json/WhoViewedMyProfileJSONContact;
    .locals 3

    .line 44
    new-instance v0, Lcom/callapp/common/model/json/WhoViewedMyProfileJSONContact;

    invoke-direct {v0}, Lcom/callapp/common/model/json/WhoViewedMyProfileJSONContact;-><init>()V

    .line 46
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;->getCounter()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/WhoViewedMyProfileJSONContact;->setCount(I)V

    .line 47
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;->getEntrypoint()Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/WhoViewedMyProfileJSONContact;->setEntryPoint(I)V

    .line 48
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;->getLastViewed()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/callapp/common/model/json/WhoViewedMyProfileJSONContact;->setLastSeen(J)V

    .line 49
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/WhoViewedMyProfileJSONContact;->setName(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;->getType()Lcom/callapp/contacts/model/objectbox/TYPE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/TYPE;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/WhoViewedMyProfileJSONContact;->setType(I)V

    .line 51
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;->getPhoneNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callapp/common/model/json/WhoViewedMyProfileJSONContact;->setPhone(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getContacts()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/WhoViewedMyProfileJSONContact;",
            ">;"
        }
    .end annotation

    .line 20
    invoke-static {}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager;->getAllViewers()Ljava/util/List;

    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;

    .line 30
    invoke-direct {p0, v2}, Lcom/callapp/contacts/sync/syncer/upload/WhoViewedMyProfileUploadSyncer;->whoViewedToJsonContact(Lcom/callapp/contacts/model/objectbox/ProfileViewedData;)Lcom/callapp/common/model/json/WhoViewedMyProfileJSONContact;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getUploadMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "wvmpu"

    return-object v0
.end method
