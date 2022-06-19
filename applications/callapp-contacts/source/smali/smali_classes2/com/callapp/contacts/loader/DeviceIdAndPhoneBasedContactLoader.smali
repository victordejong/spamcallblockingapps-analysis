.class public abstract Lcom/callapp/contacts/loader/DeviceIdAndPhoneBasedContactLoader;
.super Lcom/callapp/contacts/loader/SimpleContactLoader;
.source "SourceFile"


# instance fields
.field protected a:J

.field protected b:Lcom/callapp/framework/phone/Phone;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/callapp/contacts/loader/SimpleContactLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 5

    .line 15
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/callapp/contacts/loader/DeviceIdAndPhoneBasedContactLoader;->a:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/loader/DeviceIdAndPhoneBasedContactLoader;->b:Lcom/callapp/framework/phone/Phone;

    iget-object v1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 16
    :cond_0
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/callapp/contacts/loader/DeviceIdAndPhoneBasedContactLoader;->a:J

    .line 17
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/loader/DeviceIdAndPhoneBasedContactLoader;->b:Lcom/callapp/framework/phone/Phone;

    .line 18
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->n:Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    const-class v0, Lcom/callapp/contacts/loader/DeviceIdAndPhoneBasedContactLoader;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "internalDoLoad %s using %s"

    invoke-static {v0, v2, v1}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    :cond_1
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/DeviceIdAndPhoneBasedContactLoader;->c(Lcom/callapp/contacts/loader/api/LoadContext;)V

    :cond_2
    return-void
.end method

.method protected abstract c(Lcom/callapp/contacts/loader/api/LoadContext;)V
.end method
