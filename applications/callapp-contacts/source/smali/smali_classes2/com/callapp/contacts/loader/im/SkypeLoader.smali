.class public Lcom/callapp/contacts/loader/im/SkypeLoader;
.super Lcom/callapp/contacts/loader/im/BaseChatLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/loader/im/SkypeLoader$SkypeChatData;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/callapp/contacts/loader/im/BaseChatLoader;-><init>()V

    return-void
.end method

.method public static isSkypeInstalled()Z
    .locals 1

    const-string v0, "com.skype.raider/.Main"

    .line 102
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected final a(Lcom/callapp/common/model/json/JSONIMaddress;Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/model/contact/ChatData;
    .locals 4

    .line 92
    new-instance v0, Lcom/callapp/contacts/loader/im/SkypeLoader$SkypeChatData;

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v1

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v2

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/callapp/contacts/loader/im/SkypeLoader$SkypeChatData;-><init>(Lcom/callapp/common/model/json/JSONIMaddress;ZJ)V

    return-object v0
.end method

.method protected final a(Lcom/callapp/contacts/model/contact/ContactData;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Lcom/callapp/contacts/model/contact/ChatData;",
            ">;"
        }
    .end annotation

    .line 72
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getSkypeData()Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 5

    .line 35
    invoke-super {p0, p1}, Lcom/callapp/contacts/loader/im/BaseChatLoader;->a(Lcom/callapp/contacts/loader/api/LoadContext;)V

    .line 36
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 38
    iget-object v1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->c:Ljava/util/Set;

    if-eqz v1, :cond_3

    iget-object p1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    sget-object v1, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NAME_FIELDS:Ljava/util/EnumSet;

    invoke-static {p1, v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 40
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v1

    .line 42
    invoke-static {v1, v2}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->c(J)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 v1, 0x0

    .line 46
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 47
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getSkypeData()Ljava/util/Collection;

    move-result-object v2

    .line 48
    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 49
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/loader/im/SkypeLoader$SkypeChatData;

    .line 50
    invoke-virtual {v3}, Lcom/callapp/contacts/loader/im/SkypeLoader$SkypeChatData;->getFullName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 51
    invoke-virtual {v3, p1}, Lcom/callapp/contacts/loader/im/SkypeLoader$SkypeChatData;->setFullName(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 59
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateFullName()V

    .line 60
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateNames()V

    :cond_3
    return-void
.end method

.method protected final a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/callapp/contacts/model/contact/ChatData;",
            ">;)V"
        }
    .end annotation

    .line 97
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/ContactData;->setSkypeData(Ljava/util/Collection;)V

    .line 98
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->updateSkypeData()V

    return-void
.end method

.method protected getChatField()Lcom/callapp/contacts/model/contact/ContactField;
    .locals 1

    .line 67
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->skype:Lcom/callapp/contacts/model/contact/ContactField;

    return-object v0
.end method

.method protected getEmailSuffixes()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
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

    .line 30
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->imAddresses:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->deviceId:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method protected getProtocolId()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected isAppInstalled()Z
    .locals 1

    .line 77
    invoke-static {}, Lcom/callapp/contacts/loader/im/SkypeLoader;->isSkypeInstalled()Z

    move-result v0

    return v0
.end method
