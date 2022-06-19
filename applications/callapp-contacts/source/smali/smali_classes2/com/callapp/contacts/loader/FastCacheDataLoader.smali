.class public Lcom/callapp/contacts/loader/FastCacheDataLoader;
.super Lcom/callapp/contacts/loader/SimpleContactLoader;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/callapp/contacts/loader/SimpleContactLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 3

    .line 23
    iget-object p1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 25
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/loader/FastCacheDataManager;->a(Lcom/callapp/framework/phone/Phone;J)Lcom/callapp/contacts/model/objectbox/FastCacheData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/model/contact/ContactData;->setFastCacheData(Lcom/callapp/contacts/model/objectbox/FastCacheData;)V

    .line 29
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->updateFullName()V

    .line 30
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->updatePhoto()V

    .line 31
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->updateSpamScore()V

    :cond_0
    return-void
.end method

.method public getListenFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 18
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->DEVICE_ID:Ljava/util/EnumSet;

    return-object v0
.end method
