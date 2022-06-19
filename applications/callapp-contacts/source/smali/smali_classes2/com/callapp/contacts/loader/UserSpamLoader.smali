.class public Lcom/callapp/contacts/loader/UserSpamLoader;
.super Lcom/callapp/contacts/loader/DeviceIdAndPhoneBasedContactLoader;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/callapp/contacts/loader/DeviceIdAndPhoneBasedContactLoader;-><init>()V

    return-void
.end method

.method public static a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/objectbox/UserSpamData;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->setUserSpamData(Lcom/callapp/contacts/model/objectbox/UserSpamData;)V

    .line 34
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateSpamScore()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final c(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 4

    .line 21
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 23
    iget-object p1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 24
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->spamScore:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/util/UserCorrectedInfoUtil;->a(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/objectbox/UserSpamData;

    move-result-object p1

    .line 26
    invoke-static {v0, p1}, Lcom/callapp/contacts/loader/UserSpamLoader;->a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/objectbox/UserSpamData;)V

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

    .line 41
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method
