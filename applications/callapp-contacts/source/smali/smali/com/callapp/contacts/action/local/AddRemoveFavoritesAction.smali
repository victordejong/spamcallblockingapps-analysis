.class public Lcom/callapp/contacts/action/local/AddRemoveFavoritesAction;
.super Lcom/callapp/contacts/action/local/LocalAction;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/callapp/contacts/action/local/LocalAction;-><init>()V

    .line 26
    iput-boolean p1, p0, Lcom/callapp/contacts/action/local/AddRemoveFavoritesAction;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/action/Action$ContextType;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Z
    .locals 1

    const/4 p3, 0x0

    if-eqz p2, :cond_5

    .line 56
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 60
    :cond_0
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/DeviceData;->isFavorite()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/DeviceData;->isFavorite()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 61
    :goto_0
    iget-boolean v0, p0, Lcom/callapp/contacts/action/local/AddRemoveFavoritesAction;->a:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_3

    return p3

    :cond_2
    if-nez p2, :cond_3

    return p3

    .line 73
    :cond_3
    sget-object p2, Lcom/callapp/contacts/action/local/AddRemoveFavoritesAction$1;->a:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/action/Action$ContextType;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    return p3

    :cond_4
    return p2

    :cond_5
    :goto_1
    return p3
.end method

.method public final b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 2

    .line 31
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string p3, "Actions"

    const-string v0, "Add/Remove favorite action"

    const-string v1, "Clicked"

    invoke-virtual {p1, p3, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/callapp/contacts/manager/ContactLoaderManager;->get()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object p1

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p3

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v0

    invoke-virtual {p1, p3, v0, v1}, Lcom/callapp/contacts/manager/ContactLoaderManager;->getContactDataOnlyIfAlreadyLoaded(Lcom/callapp/framework/phone/Phone;J)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 35
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/callapp/contacts/model/contact/ContactData;

    iget-boolean p2, p0, Lcom/callapp/contacts/action/local/AddRemoveFavoritesAction;->a:Z

    invoke-static {p1, p2}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->setIsFavorite(Lcom/callapp/contacts/model/contact/ContactData;Z)V

    return-void

    .line 37
    :cond_0
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide p1

    iget-boolean p3, p0, Lcom/callapp/contacts/action/local/AddRemoveFavoritesAction;->a:Z

    invoke-static {p1, p2, p3}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(JZ)V

    return-void
.end method

.method public final getDescriptionMessage$469752d4()Ljava/lang/String;
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/callapp/contacts/action/local/AddRemoveFavoritesAction;->a:Z

    if-eqz v0, :cond_0

    const v0, 0x7f120082

    goto :goto_0

    :cond_0
    const v0, 0x7f1205d5

    .line 51
    :goto_0
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callapp/contacts/action/local/AddRemoveFavoritesAction;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
