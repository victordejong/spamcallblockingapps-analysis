.class Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;Landroid/content/Intent;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService$1;->b:Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;

    iput-object p2, p0, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService$1;->a:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService$1;->b:Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;

    iget-object v1, p0, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService$1;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->a(Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;Landroid/content/Intent;)V

    return-void
.end method
