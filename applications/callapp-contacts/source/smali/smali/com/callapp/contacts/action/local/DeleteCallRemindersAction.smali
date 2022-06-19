.class public Lcom/callapp/contacts/action/local/DeleteCallRemindersAction;
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

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return p3

    .line 49
    :cond_0
    sget-object p2, Lcom/callapp/contacts/action/local/DeleteCallRemindersAction$1;->a:[I

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
    .locals 5

    .line 22
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string p2, "Actions"

    const-string v0, "Delete call reminder action"

    const-string v1, "Clicked"

    invoke-virtual {p1, p2, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    instance-of p1, p3, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;

    if-eqz p1, :cond_1

    .line 25
    check-cast p3, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;

    iget-object p1, p3, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->notificationId:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 26
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/manager/CallRemindersManager;->b(Ljava/lang/Long;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, p1, v2

    if-eqz v4, :cond_0

    .line 29
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v2

    long-to-int p2, p1

    invoke-virtual {v2, p2}, Lcom/callapp/contacts/manager/NotificationManager;->a(I)V

    .line 31
    :cond_0
    sget-object p1, Lcom/callapp/contacts/workers/CallReminderWorker;->a:Lcom/callapp/contacts/workers/CallReminderWorker$Companion;

    iget-object p1, p3, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->jobId:Ljava/lang/String;

    invoke-static {p1}, Lcom/callapp/contacts/workers/CallReminderWorker$Companion;->a(Ljava/lang/String;)V

    const-wide/16 p1, 0x0

    cmp-long p3, v0, p1

    if-lez p3, :cond_1

    .line 33
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object p2, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    sget-object p3, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->REMINDER:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const/4 v0, 0x0

    .line 1091
    invoke-virtual {p1, p2, p3, v0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    :cond_1
    return-void
.end method

.method public final getDescriptionMessage$469752d4()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
