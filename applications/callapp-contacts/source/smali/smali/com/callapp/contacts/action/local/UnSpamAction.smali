.class public Lcom/callapp/contacts/action/local/UnSpamAction;
.super Lcom/callapp/contacts/action/local/SpamOrUnSpamAction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/callapp/contacts/action/local/SpamOrUnSpamAction;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/action/Action$ContextType;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 47
    invoke-static {p2}, Lcom/callapp/contacts/util/UserCorrectedInfoUtil;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    sget-object v1, Lcom/callapp/contacts/action/local/UnSpamAction$2;->a:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/action/Action$ContextType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 59
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/action/local/SpamOrUnSpamAction;->a(Lcom/callapp/contacts/action/Action$ContextType;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Z

    move-result p1

    return p1

    .line 56
    :cond_1
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    :goto_0
    return v0
.end method

.method public final b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 2

    .line 26
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string p3, "Actions"

    const-string v0, "UnSpam action"

    const-string v1, "Clicked"

    invoke-virtual {p1, p3, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance p1, Lcom/callapp/contacts/action/local/UnSpamAction$1;

    invoke-direct {p1, p0, p2}, Lcom/callapp/contacts/action/local/UnSpamAction$1;-><init>(Lcom/callapp/contacts/action/local/UnSpamAction;Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 42
    invoke-virtual {p1}, Lcom/callapp/contacts/action/local/UnSpamAction$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method
