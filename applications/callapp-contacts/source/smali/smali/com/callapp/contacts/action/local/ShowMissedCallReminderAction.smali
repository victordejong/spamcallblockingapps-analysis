.class public Lcom/callapp/contacts/action/local/ShowMissedCallReminderAction;
.super Lcom/callapp/contacts/action/local/LocalAction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/callapp/contacts/action/local/LocalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/action/Action$ContextType;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Z
    .locals 1

    const/4 p1, 0x0

    if-nez p2, :cond_0

    return p1

    .line 37
    :cond_0
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p2

    sget-object p3, Lcom/callapp/contacts/observers/CallLogContentObserver;->a:Ljava/util/Set;

    invoke-static {p2, p3}, Lcom/callapp/contacts/activity/missedcall/MissedCallFrequentManager;->a(Lcom/callapp/framework/phone/Phone;Ljava/util/Set;)Ljava/util/List;

    move-result-object p2

    .line 38
    invoke-static {p2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 39
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;

    .line 40
    invoke-virtual {p3}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->getFrequentType()Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    move-result-object p3

    sget-object v0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->DONT_SHOW:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    invoke-virtual {p3, v0}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p1, 0x1

    :cond_2
    return p1
.end method

.method public final b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 2

    .line 22
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string p3, "Actions"

    const-string v0, "Show missed call reminder action"

    const-string v1, "Clicked"

    invoke-virtual {p1, p3, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/activity/missedcall/MissedCallFrequentManager;->a(Lcom/callapp/framework/phone/Phone;)V

    return-void
.end method

.method public final getDescriptionMessage$469752d4()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
