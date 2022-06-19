.class public Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/o;


# static fields
.field private static b:I


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x2

    .line 77
    invoke-static {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserver;->a(I)V

    return-void
.end method

.method public static a(I)V
    .locals 5

    .line 46
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/callapp/contacts/util/Activities;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    sget v0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserver;->b:I

    if-ne v0, p0, :cond_0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 49
    :cond_0
    sput p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserver;->b:I

    .line 50
    invoke-static {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserver;->getStartFloatingWidgetServiceIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 52
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/CallAppApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 55
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getLastCall()Lcom/callapp/contacts/model/call/CallData;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 57
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.callapp.contacts.ACTION_START_CALL_NOTIFICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    const-class v4, Lcom/callapp/contacts/service/CallAppService;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 58
    invoke-virtual {p0}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-virtual {p0}, Lcom/callapp/contacts/model/call/CallData;->isIncoming()Z

    move-result p0

    const-string v2, "isIncoming"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "start_floating_widget"

    .line 60
    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 61
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(ZLandroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public static getStartFloatingWidgetServiceIntent(I)Landroid/content/Intent;
    .locals 4

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.callapp.contacts.ACTION_INCOMING_CALL_FLOATING_WIDGET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    new-instance v1, Landroid/content/ComponentName;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    const-class v3, Lcom/callapp/contacts/service/FloatingWidgetService;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "extra_show_floating_widget"

    .line 72
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public setActivityName(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserver;->a:Ljava/lang/String;

    return-void
.end method

.method start()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/v;
        a = .enum Landroidx/lifecycle/j$a;->ON_PAUSE:Landroidx/lifecycle/j$a;
    .end annotation

    .line 34
    const-class v0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserver;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ON_PAUSE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserver;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getIncomingOrConnectingOrConnectedCall()Lcom/callapp/contacts/model/call/CallData;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    .line 36
    :goto_1
    invoke-static {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserver;->a(I)V

    return-void
.end method

.method stop()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/v;
        a = .enum Landroidx/lifecycle/j$a;->ON_RESUME:Landroidx/lifecycle/j$a;
    .end annotation

    .line 41
    const-class v0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserver;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ON_RESUME "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserver;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 42
    invoke-static {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserver;->a(I)V

    return-void
.end method
