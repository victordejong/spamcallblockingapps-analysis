.class Lcom/callapp/contacts/service/CallAppService$2;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/service/CallAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/callapp/contacts/service/CallAppService;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/service/CallAppService;Landroid/content/Intent;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/callapp/contacts/service/CallAppService$2;->b:Lcom/callapp/contacts/service/CallAppService;

    iput-object p2, p0, Lcom/callapp/contacts/service/CallAppService$2;->a:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 5

    .line 207
    iget-object v0, p0, Lcom/callapp/contacts/service/CallAppService$2;->b:Lcom/callapp/contacts/service/CallAppService;

    iget-object v1, p0, Lcom/callapp/contacts/service/CallAppService$2;->a:Landroid/content/Intent;

    .line 1079
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1080
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const-string v3, "com.callapp.contacts.ACTION_START_CALL_SCREEN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1087
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->shouldConferenceScreenAppear()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1088
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const-string v2, "EXTRA_SHOW_KEYPAD"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->startConferenceActivity(Landroid/content/Context;Z)V

    return-void

    :cond_1
    const/4 v2, 0x1

    const-string v4, "EXTRA_OPEN_CONTACT_DETAILS"

    .line 1091
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1092
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v2

    invoke-virtual {v2, v1, v3, v3}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->showCallScreen(Landroid/content/Intent;ZZ)V

    .line 1189
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1191
    invoke-static {}, Lcom/callapp/contacts/manager/OverlayManager;->get()Lcom/callapp/contacts/manager/OverlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/OverlayManager;->a()V

    .line 1192
    invoke-virtual {v0}, Lcom/callapp/contacts/service/CallAppService;->a()V

    :cond_2
    :goto_0
    return-void
.end method
