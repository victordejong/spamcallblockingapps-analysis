.class public Lcom/callapp/contacts/action/local/DeleteCallRecordAction;
.super Lcom/callapp/contacts/action/local/LocalAction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/callapp/contacts/action/local/LocalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/action/Action$ContextType;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 74
    instance-of p2, p3, Lcom/callapp/contacts/model/objectbox/CallRecorder;

    if-nez p2, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    sget-object p2, Lcom/callapp/contacts/action/local/DeleteCallRecordAction$3;->a:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/action/Action$ContextType;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    return v0

    :cond_1
    return p2

    :cond_2
    :goto_0
    return v0
.end method

.method public final b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 11

    .line 36
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p2

    const-string v0, "Actions"

    const-string v1, "Delete call record action"

    const-string v2, "Clicked"

    invoke-virtual {p2, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p2

    new-instance v10, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    const v0, 0x7f120142

    .line 39
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f120141

    .line 40
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f120049

    .line 41
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f1201a9

    .line 42
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f0601cc

    .line 43
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    new-instance v7, Lcom/callapp/contacts/action/local/DeleteCallRecordAction$1;

    invoke-direct {v7, p0, p3}, Lcom/callapp/contacts/action/local/DeleteCallRecordAction$1;-><init>(Lcom/callapp/contacts/action/local/DeleteCallRecordAction;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    new-instance v8, Lcom/callapp/contacts/action/local/DeleteCallRecordAction$2;

    invoke-direct {v8, p0}, Lcom/callapp/contacts/action/local/DeleteCallRecordAction$2;-><init>(Lcom/callapp/contacts/action/local/DeleteCallRecordAction;)V

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V

    .line 38
    invoke-virtual {p2, p1, v10}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method public final getDescriptionMessage$469752d4()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
