.class public Lcom/callapp/contacts/loader/api/IncognitoContactLoader;
.super Lcom/callapp/contacts/loader/DeviceIdAndPhoneBasedContactLoader;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/callapp/contacts/loader/DeviceIdAndPhoneBasedContactLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 2

    .line 21
    new-instance v0, Lcom/callapp/contacts/manager/IncognitoContactsManager;

    invoke-direct {v0}, Lcom/callapp/contacts/manager/IncognitoContactsManager;-><init>()V

    .line 22
    iget-object v1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/IncognitoContactsManager;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v0

    .line 23
    iget-object p1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/model/contact/ContactData;->setIsIncognito(Z)V

    return-void
.end method

.method public getListenFields()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 16
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->deviceId:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->deviceIdChanged:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method
