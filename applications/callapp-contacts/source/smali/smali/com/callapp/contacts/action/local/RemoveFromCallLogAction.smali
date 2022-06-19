.class public Lcom/callapp/contacts/action/local/RemoveFromCallLogAction;
.super Lcom/callapp/contacts/action/local/LocalAction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/callapp/contacts/action/local/LocalAction;-><init>()V

    return-void
.end method

.method private static synthetic a(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)V
    .locals 3

    .line 1124
    invoke-static {}, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1125
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Incognito"

    const-string v2, "User shown popup after deleting call log"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    sget-object v0, Lcom/callapp/contacts/action/local/-$$Lambda$RemoveFromCallLogAction$zP2BXkCyMvTEj9dEScc_U77qIRE;->INSTANCE:Lcom/callapp/contacts/action/local/-$$Lambda$RemoveFromCallLogAction$zP2BXkCyMvTEj9dEScc_U77qIRE;

    invoke-static {p0, v0}, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$zP2BXkCyMvTEj9dEScc_U77qIRE(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/action/local/RemoveFromCallLogAction;->a(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/action/Action$ContextType;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Z
    .locals 0

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return p3

    .line 143
    :cond_0
    sget-object p2, Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$3;->a:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/action/Action$ContextType;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    return p3

    :cond_1
    return p2
.end method

.method public final b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 10

    .line 44
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Actions"

    const-string v2, "Remove from call log action"

    const-string v3, "Clicked"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcom/callapp/contacts/popup/contact/DialogList;

    const v1, 0x7f120056

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/callapp/contacts/popup/contact/DialogList;-><init>(Ljava/lang/String;)V

    .line 47
    sget-object v1, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->withInset:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/popup/contact/DialogList;->setDialogType(Lcom/callapp/contacts/manager/popup/Popup$DialogType;)V

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    new-instance v2, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;

    const v3, 0x7f080478

    const v4, 0x7f1202a5

    invoke-direct {v2, v3, v4}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v2, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;

    const v3, 0x7f0802f0

    const v4, 0x7f1202a4

    invoke-direct {v2, v3, v4}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v2, Lcom/callapp/contacts/popup/contact/AdapterIconAndText;

    const v3, 0x7f0d00aa

    invoke-direct {v2, p1, v3, v1}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 53
    new-instance v1, Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$1;

    move-object v4, v1

    move-object v5, p0

    move-object v6, v0

    move-object v7, p3

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$1;-><init>(Lcom/callapp/contacts/action/local/RemoveFromCallLogAction;Lcom/callapp/contacts/popup/contact/DialogList;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText;->setListener(Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;)V

    .line 113
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/popup/contact/DialogList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    new-instance p2, Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$2;

    invoke-direct {p2, p0, v0}, Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$2;-><init>(Lcom/callapp/contacts/action/local/RemoveFromCallLogAction;Lcom/callapp/contacts/popup/contact/DialogList;)V

    invoke-virtual {v0, p2}, Lcom/callapp/contacts/popup/contact/DialogList;->setOnCancelButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method public final getDescriptionMessage$469752d4()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
