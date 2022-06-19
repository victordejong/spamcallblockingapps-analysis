.class Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->f(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/framework/phone/Phone;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;Lcom/callapp/framework/phone/Phone;Landroid/content/Intent;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService$3;->c:Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;

    iput-object p2, p0, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService$3;->a:Lcom/callapp/framework/phone/Phone;

    iput-object p3, p0, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService$3;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRowClicked(I)V
    .locals 3

    .line 471
    sget-object v0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->ASK:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->getSimId()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 472
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getSimManager()Lcom/callapp/contacts/manager/sim/SimManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService$3;->a:Lcom/callapp/framework/phone/Phone;

    iget-object v2, p0, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService$3;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, p1}, Lcom/callapp/contacts/manager/sim/SimManager;->a(Lcom/callapp/framework/phone/Phone;Landroid/content/Intent;I)V

    .line 475
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService$3;->b:Landroid/content/Intent;

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method
