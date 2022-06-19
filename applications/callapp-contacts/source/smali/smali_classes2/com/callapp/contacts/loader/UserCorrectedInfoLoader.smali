.class public Lcom/callapp/contacts/loader/UserCorrectedInfoLoader;
.super Lcom/callapp/contacts/loader/DeviceIdAndPhoneBasedContactLoader;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/callapp/contacts/loader/DeviceIdAndPhoneBasedContactLoader;-><init>()V

    return-void
.end method

.method public static a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/objectbox/UserCorrectedData;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->setUserCorrectedData(Lcom/callapp/contacts/model/objectbox/UserCorrectedData;)V

    .line 40
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateFullName()V

    :cond_0
    if-eqz p1, :cond_1

    .line 43
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->getUserCorrectedPositive()Lio/objectbox/relation/ToMany;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->setUserCorrectedData(Lcom/callapp/contacts/model/objectbox/UserCorrectedData;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final c(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 5

    .line 21
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 23
    iget-object p1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    .line 1034
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    sget-object v1, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NAME_FIELDS:Ljava/util/EnumSet;

    invoke-static {p1, v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->SOCIAL_NETWORKS_IDS:Ljava/util/EnumSet;

    invoke-static {p1, v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 27
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v4, p1, v2}, Lcom/callapp/contacts/loader/UserCorrectedDataManager;->a(JLjava/lang/String;Z)Lcom/callapp/contacts/model/objectbox/UserCorrectedData;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 30
    :goto_1
    invoke-static {v0, p1}, Lcom/callapp/contacts/loader/UserCorrectedInfoLoader;->a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/objectbox/UserCorrectedData;)V

    return-void
.end method

.method public getListenFields()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 51
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->deviceId:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method
