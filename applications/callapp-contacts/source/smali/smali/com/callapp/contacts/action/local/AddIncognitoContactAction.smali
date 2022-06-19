.class public Lcom/callapp/contacts/action/local/AddIncognitoContactAction;
.super Lcom/callapp/contacts/action/local/LocalAction;
.source "SourceFile"


# instance fields
.field private a:Lcom/callapp/contacts/manager/IncognitoContactsManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/callapp/contacts/action/local/LocalAction;-><init>()V

    .line 18
    new-instance v0, Lcom/callapp/contacts/manager/IncognitoContactsManager;

    invoke-direct {v0}, Lcom/callapp/contacts/manager/IncognitoContactsManager;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/action/local/AddIncognitoContactAction;->a:Lcom/callapp/contacts/manager/IncognitoContactsManager;

    return-void
.end method

.method private static synthetic a(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method private synthetic a(Lcom/callapp/contacts/model/contact/ContactData;Landroid/app/Activity;)V
    .locals 0

    .line 26
    iget-object p2, p0, Lcom/callapp/contacts/action/local/AddIncognitoContactAction;->a:Lcom/callapp/contacts/manager/IncognitoContactsManager;

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/manager/IncognitoContactsManager;->c(Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method

.method public static synthetic lambda$KWRaIjIw82lyX3F0dF8TpCUVdJI(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/action/local/AddIncognitoContactAction;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic lambda$xF8COukvpgjN0Y_2tjkTMTaMItk(Lcom/callapp/contacts/action/local/AddIncognitoContactAction;Lcom/callapp/contacts/model/contact/ContactData;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/action/local/AddIncognitoContactAction;->a(Lcom/callapp/contacts/model/contact/ContactData;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/action/Action$ContextType;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Z
    .locals 1

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 41
    iget-object v0, p0, Lcom/callapp/contacts/action/local/AddIncognitoContactAction;->a:Lcom/callapp/contacts/manager/IncognitoContactsManager;

    invoke-virtual {v0, p2}, Lcom/callapp/contacts/manager/IncognitoContactsManager;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->isUnknownNumber()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isAnyCallActive()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    sget-object p2, Lcom/callapp/contacts/action/local/AddIncognitoContactAction$1;->a:[I

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
    .locals 3

    .line 22
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p3

    const-string v0, "Actions"

    const-string v1, "Add Incognito action"

    const-string v2, "Clicked"

    invoke-virtual {p3, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;->a()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 25
    new-instance p3, Lcom/callapp/contacts/action/local/-$$Lambda$AddIncognitoContactAction$xF8COukvpgjN0Y_2tjkTMTaMItk;

    invoke-direct {p3, p0, p2}, Lcom/callapp/contacts/action/local/-$$Lambda$AddIncognitoContactAction$xF8COukvpgjN0Y_2tjkTMTaMItk;-><init>(Lcom/callapp/contacts/action/local/AddIncognitoContactAction;Lcom/callapp/contacts/model/contact/ContactData;)V

    sget-object p2, Lcom/callapp/contacts/action/local/-$$Lambda$AddIncognitoContactAction$KWRaIjIw82lyX3F0dF8TpCUVdJI;->INSTANCE:Lcom/callapp/contacts/action/local/-$$Lambda$AddIncognitoContactAction$KWRaIjIw82lyX3F0dF8TpCUVdJI;

    invoke-static {p1, p3, p2}, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    return-void

    .line 30
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/action/local/AddIncognitoContactAction;->a:Lcom/callapp/contacts/manager/IncognitoContactsManager;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/IncognitoContactsManager;->c(Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method

.method public final getDescriptionMessage$469752d4()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
