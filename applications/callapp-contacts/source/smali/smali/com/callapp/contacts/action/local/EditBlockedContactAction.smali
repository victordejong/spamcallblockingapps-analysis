.class public Lcom/callapp/contacts/action/local/EditBlockedContactAction;
.super Lcom/callapp/contacts/action/local/LocalAction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/callapp/contacts/action/local/LocalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/action/Action$ContextType;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Z
    .locals 1

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return p3

    .line 47
    :cond_0
    sget-object p2, Lcom/callapp/contacts/action/local/EditBlockedContactAction$1;->b:[I

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
    .locals 3

    .line 20
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p2

    const-string v0, "Actions"

    const-string v1, "Edit blocked contact action"

    const-string v2, "Clicked"

    invoke-virtual {p2, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    instance-of p2, p3, Lcom/callapp/contacts/model/ReminderData;

    if-eqz p2, :cond_2

    .line 23
    check-cast p3, Lcom/callapp/contacts/model/ReminderData;

    .line 24
    sget-object p2, Lcom/callapp/contacts/action/local/EditBlockedContactAction$1;->a:[I

    iget-object v0, p3, Lcom/callapp/contacts/model/ReminderData;->type:Lcom/callapp/contacts/model/ReminderType;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/ReminderType;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    iget-object p2, p3, Lcom/callapp/contacts/model/ReminderData;->displayName:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/callapp/contacts/model/ReminderData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p3

    invoke-virtual {p3}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :cond_1
    iget-wide v0, p3, Lcom/callapp/contacts/model/ReminderData;->reminderId:J

    long-to-int p2, v0

    .line 27
    invoke-virtual {p3}, Lcom/callapp/contacts/model/ReminderData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p3

    invoke-virtual {p3}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p3

    .line 28
    invoke-static {p1, p2, p3}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final getDescriptionMessage$469752d4()Ljava/lang/String;
    .locals 1

    const v0, 0x7f120456

    .line 39
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
