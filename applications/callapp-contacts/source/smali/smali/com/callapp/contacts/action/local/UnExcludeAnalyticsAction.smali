.class public Lcom/callapp/contacts/action/local/UnExcludeAnalyticsAction;
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
    .locals 0

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    .line 41
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p2

    invoke-static {p2}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsExcludeManager;->a(Lcom/callapp/framework/phone/Phone;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    sget-object p2, Lcom/callapp/contacts/action/local/UnExcludeAnalyticsAction$2;->a:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/action/Action$ContextType;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    return p3

    :cond_1
    return p2

    :cond_2
    :goto_0
    return p3
.end method

.method public final b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 2

    .line 22
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string p3, "Actions"

    const-string v0, "UnExclude analytics action"

    const-string v1, "Clicked"

    invoke-virtual {p1, p3, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance p1, Lcom/callapp/contacts/action/local/UnExcludeAnalyticsAction$1;

    invoke-direct {p1, p0, p2}, Lcom/callapp/contacts/action/local/UnExcludeAnalyticsAction$1;-><init>(Lcom/callapp/contacts/action/local/UnExcludeAnalyticsAction;Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 30
    invoke-virtual {p1}, Lcom/callapp/contacts/action/local/UnExcludeAnalyticsAction$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method public final getDescriptionMessage$469752d4()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
