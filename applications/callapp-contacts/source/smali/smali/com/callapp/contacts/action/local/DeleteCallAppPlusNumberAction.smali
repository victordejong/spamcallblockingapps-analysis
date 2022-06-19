.class public Lcom/callapp/contacts/action/local/DeleteCallAppPlusNumberAction;
.super Lcom/callapp/contacts/action/local/LocalAction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/callapp/contacts/action/local/LocalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/action/Action$ContextType;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Z
    .locals 1

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return p3

    .line 79
    :cond_0
    sget-object p2, Lcom/callapp/contacts/action/local/DeleteCallAppPlusNumberAction$3;->a:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/action/Action$ContextType;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    return p3

    :cond_1
    return p2
.end method

.method public final b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 12

    .line 35
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Actions"

    const-string v2, "Delete CallAppPlus number action"

    const-string v3, "Clicked"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f12039a

    .line 37
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 38
    iget-object v1, p3, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->displayName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const v1, 0x7f120399

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    new-instance v11, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    const v1, 0x7f120049

    .line 41
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f1201a9

    .line 42
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v1, 0x7f0601cc

    .line 43
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v6

    new-instance v8, Lcom/callapp/contacts/action/local/DeleteCallAppPlusNumberAction$1;

    invoke-direct {v8, p0, p3, p2}, Lcom/callapp/contacts/action/local/DeleteCallAppPlusNumberAction$1;-><init>(Lcom/callapp/contacts/action/local/DeleteCallAppPlusNumberAction;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/model/contact/ContactData;)V

    new-instance v9, Lcom/callapp/contacts/action/local/DeleteCallAppPlusNumberAction$2;

    invoke-direct {v9, p0}, Lcom/callapp/contacts/action/local/DeleteCallAppPlusNumberAction$2;-><init>(Lcom/callapp/contacts/action/local/DeleteCallAppPlusNumberAction;)V

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V

    .line 39
    invoke-virtual {v0, p1, v11}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method public final getDescriptionMessage$469752d4()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
