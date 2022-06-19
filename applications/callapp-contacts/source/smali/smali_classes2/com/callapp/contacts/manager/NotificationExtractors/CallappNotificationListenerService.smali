.class public Lcom/callapp/contacts/manager/NotificationExtractors/CallappNotificationListenerService;
.super Landroid/service/notification/NotificationListenerService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onListenerDisconnected()V
    .locals 3

    .line 141
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 142
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const/16 v1, 0x50

    const-string v2, "Notification listener disconnected - requesting rebind"

    .line 1206
    invoke-virtual {v0, v2, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;I)V

    .line 143
    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/manager/NotificationExtractors/CallappNotificationListenerService;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/callapp/contacts/manager/NotificationExtractors/CallappNotificationListenerService;->requestRebind(Landroid/content/ComponentName;)V

    :cond_0
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 3

    .line 38
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->isNotificationListenerServiceSupportedOnDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 39
    invoke-static {p1}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->f(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Lcom/callapp/contacts/manager/NotificationExtractors/CallappNotificationListenerService$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/manager/NotificationExtractors/CallappNotificationListenerService$1;-><init>(Lcom/callapp/contacts/manager/NotificationExtractors/CallappNotificationListenerService;Landroid/service/notification/StatusBarNotification;)V

    .line 108
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/NotificationExtractors/CallappNotificationListenerService$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 1129
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    const-string v1, "com.android.server.telecom"

    goto :goto_0

    :cond_1
    const-string v1, "com.android.phone"

    .line 1135
    :goto_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    if-ne v2, v0, :cond_2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 114
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/NotificationExtractors/CallappNotificationListenerService;->cancelNotification(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    return-void
.end method
