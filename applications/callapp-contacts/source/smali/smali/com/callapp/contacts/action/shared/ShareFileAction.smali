.class public Lcom/callapp/contacts/action/shared/ShareFileAction;
.super Lcom/callapp/contacts/action/shared/AbstractPhotoAction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/callapp/contacts/action/shared/AbstractPhotoAction;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/action/shared/ShareFileAction;Lcom/callapp/contacts/model/contact/ContactData;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 1

    .line 1089
    new-instance v0, Lcom/callapp/contacts/action/shared/ShareFileAction$2;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/callapp/contacts/action/shared/ShareFileAction$2;-><init>(Lcom/callapp/contacts/action/shared/ShareFileAction;Landroid/content/Intent;Lcom/callapp/contacts/model/contact/ContactData;Landroid/content/Context;)V

    .line 1139
    invoke-virtual {v0}, Lcom/callapp/contacts/action/shared/ShareFileAction$2;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/action/Action$ContextType;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Z
    .locals 1

    .line 149
    sget-object v0, Lcom/callapp/contacts/action/Action$ContextType;->CONTACT_DETAILS_ACTION_BOTTOM_SHEET:Lcom/callapp/contacts/action/Action$ContextType;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 153
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/action/shared/AbstractPhotoAction;->a(Lcom/callapp/contacts/action/Action$ContextType;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Z

    move-result p1

    return p1
.end method

.method public final b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 3

    .line 42
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p3

    const-string v0, "Contact List"

    const-string v1, "Share file action"

    const-string v2, "Clicked"

    invoke-virtual {p3, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result p3

    if-nez p3, :cond_0

    .line 45
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p2

    const-string p3, "Contact Details"

    const-string v0, "Didn\'t share photo"

    const-string v1, "No internet"

    invoke-virtual {p2, p3, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {p1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Landroid/content/Context;)V

    return-void

    .line 51
    :cond_0
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getPhonesList()Ljava/util/List;

    move-result-object p3

    .line 52
    new-instance v0, Lcom/callapp/contacts/action/shared/ShareFileAction$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/callapp/contacts/action/shared/ShareFileAction$1;-><init>(Lcom/callapp/contacts/action/shared/ShareFileAction;Lcom/callapp/contacts/model/contact/ContactData;Landroid/content/Context;)V

    invoke-static {p1, p3, v0}, Lcom/callapp/contacts/util/SmsUtils;->a(Landroid/content/Context;Ljava/util/List;Lcom/callapp/contacts/util/SmsUtils$SelectNumberListener;)V

    return-void
.end method

.method public final getDescriptionMessage$469752d4()Ljava/lang/String;
    .locals 1

    const v0, 0x7f12052c

    .line 144
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
