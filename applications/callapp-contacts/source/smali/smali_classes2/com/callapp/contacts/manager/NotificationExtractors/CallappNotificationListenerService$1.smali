.class Lcom/callapp/contacts/manager/NotificationExtractors/CallappNotificationListenerService$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/NotificationExtractors/CallappNotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/service/notification/StatusBarNotification;

.field final synthetic b:Lcom/callapp/contacts/manager/NotificationExtractors/CallappNotificationListenerService;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/NotificationExtractors/CallappNotificationListenerService;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/callapp/contacts/manager/NotificationExtractors/CallappNotificationListenerService$1;->b:Lcom/callapp/contacts/manager/NotificationExtractors/CallappNotificationListenerService;

    iput-object p2, p0, Lcom/callapp/contacts/manager/NotificationExtractors/CallappNotificationListenerService$1;->a:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/callapp/contacts/manager/NotificationExtractors/CallappNotificationListenerService$1;->a:Landroid/service/notification/StatusBarNotification;

    new-instance v1, Lcom/callapp/contacts/manager/NotificationExtractors/CallappNotificationListenerService$1$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/manager/NotificationExtractors/CallappNotificationListenerService$1$1;-><init>(Lcom/callapp/contacts/manager/NotificationExtractors/CallappNotificationListenerService$1;)V

    invoke-static {v0, v1}, Lcom/callapp/contacts/manager/NotificationExtractors/IMExtractorsManager;->a(Landroid/service/notification/StatusBarNotification;Lcom/callapp/contacts/manager/NotificationExtractors/IMExtractorsManager$PhoneNumExtractedListener;)V

    return-void
.end method
