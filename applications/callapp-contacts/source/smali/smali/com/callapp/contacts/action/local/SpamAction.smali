.class public Lcom/callapp/contacts/action/local/SpamAction;
.super Lcom/callapp/contacts/action/local/SpamOrUnSpamAction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/callapp/contacts/action/local/SpamOrUnSpamAction;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/action/Action$ContextType;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Z
    .locals 2

    .line 54
    sget-object v0, Lcom/callapp/contacts/action/Action$ContextType;->CONTACT_DETAILS_ACTION_BOTTOM_SHEET:Lcom/callapp/contacts/action/Action$ContextType;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_2

    .line 58
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Lcom/callapp/contacts/util/UserCorrectedInfoUtil;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 62
    :cond_1
    sget-object v0, Lcom/callapp/contacts/action/local/SpamAction$2;->a:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/action/Action$ContextType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 67
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/action/local/SpamOrUnSpamAction;->a(Lcom/callapp/contacts/action/Action$ContextType;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public final b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 4

    .line 25
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Actions"

    const-string v2, "Spam action"

    const-string v3, "Clicked"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/callapp/contacts/action/local/SpamAction$1;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/callapp/contacts/action/local/SpamAction$1;-><init>(Lcom/callapp/contacts/action/local/SpamAction;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Landroid/content/Context;)V

    .line 49
    invoke-virtual {v0}, Lcom/callapp/contacts/action/local/SpamAction$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method
