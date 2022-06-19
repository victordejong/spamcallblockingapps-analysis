.class public Lcom/callapp/contacts/action/local/RemoveIncognitoContactAction;
.super Lcom/callapp/contacts/action/local/LocalAction;
.source "SourceFile"


# instance fields
.field private a:Lcom/callapp/contacts/manager/IncognitoContactsManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/callapp/contacts/action/local/LocalAction;-><init>()V

    .line 16
    new-instance v0, Lcom/callapp/contacts/manager/IncognitoContactsManager;

    invoke-direct {v0}, Lcom/callapp/contacts/manager/IncognitoContactsManager;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/action/local/RemoveIncognitoContactAction;->a:Lcom/callapp/contacts/manager/IncognitoContactsManager;

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/action/Action$ContextType;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Z
    .locals 1

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 32
    iget-object v0, p0, Lcom/callapp/contacts/action/local/RemoveIncognitoContactAction;->a:Lcom/callapp/contacts/manager/IncognitoContactsManager;

    invoke-virtual {v0, p2}, Lcom/callapp/contacts/manager/IncognitoContactsManager;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isAnyCallActive()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    sget-object p2, Lcom/callapp/contacts/action/local/RemoveIncognitoContactAction$1;->a:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/action/Action$ContextType;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_0

    return p3

    :pswitch_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return p3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 2

    .line 20
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string p3, "Actions"

    const-string v0, "Remove incognito action"

    const-string v1, "Clicked"

    invoke-virtual {p1, p3, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object p1

    const-class p3, Lcom/callapp/contacts/model/objectbox/IncognitoData;

    invoke-virtual {p1, p3}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object p1

    .line 1056
    invoke-static {p2}, Lcom/callapp/contacts/manager/IncognitoContactsManager;->b(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/model/objectbox/IncognitoData;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 1058
    invoke-virtual {p1, p3}, Lio/objectbox/a;->b(Ljava/lang/Object;)Z

    :cond_0
    const/4 p1, 0x0

    .line 1060
    invoke-virtual {p2, p1}, Lcom/callapp/contacts/model/contact/ContactData;->setIsIncognito(Z)V

    .line 1061
    sget-object p2, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object p3, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v0, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->UNSET_INCOGNITO:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 1091
    invoke-virtual {p2, p3, v0, p1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 1062
    sget-object p2, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object p3, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v0, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CONTACTS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 2091
    invoke-virtual {p2, p3, v0, p1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method

.method public final getDescriptionMessage$469752d4()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
