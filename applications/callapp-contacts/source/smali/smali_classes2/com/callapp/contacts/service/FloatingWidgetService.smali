.class public Lcom/callapp/contacts/service/FloatingWidgetService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private synthetic a(I)V
    .locals 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/service/FloatingWidgetService;->a:Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;

    if-eqz p1, :cond_5

    .line 54
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->d()V

    goto :goto_0

    .line 37
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/service/FloatingWidgetService;->a:Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;

    if-eqz p1, :cond_2

    .line 38
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->c()V

    .line 40
    :cond_2
    new-instance p1, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/callapp/contacts/service/FloatingWidgetService;->a:Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;

    .line 41
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->d()V

    .line 42
    iget-object p1, p0, Lcom/callapp/contacts/service/FloatingWidgetService;->a:Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;

    const-string v1, "ChatHeadIdentifier"

    .line 1073
    iget-object v2, p1, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->a(Ljava/io/Serializable;ZZ)Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    .line 1074
    iget-object v0, p1, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;

    iget-object p1, p1, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->b(Ljava/io/Serializable;)Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    move-result-object p1

    .line 1489
    iget-object v1, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->c:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;

    if-eqz v1, :cond_3

    .line 1490
    iget-object v0, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->c:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;->b(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)V

    :cond_3
    return-void

    .line 46
    :cond_4
    iget-object p1, p0, Lcom/callapp/contacts/service/FloatingWidgetService;->a:Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;

    if-eqz p1, :cond_5

    .line 47
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->c()V

    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Lcom/callapp/contacts/service/FloatingWidgetService;->a:Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;

    .line 49
    invoke-virtual {p0}, Lcom/callapp/contacts/service/FloatingWidgetService;->stopSelf()V

    :cond_5
    :goto_0
    return-void
.end method

.method public static synthetic lambda$H41xxNK8sCw3tY8ZccUeaiikqqI(Lcom/callapp/contacts/service/FloatingWidgetService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/service/FloatingWidgetService;->a(I)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 68
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/service/FloatingWidgetService;->a:Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadServiceHandler;->c()V

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    if-eqz p1, :cond_1

    .line 25
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 26
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 28
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string p3, "com.callapp.contacts.ACTION_INCOMING_CALL_FLOATING_WIDGET"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->g:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 31
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result p2

    if-eqz p2, :cond_1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x17

    if-lt p2, p3, :cond_1

    const/4 p2, -0x1

    const-string p3, "extra_show_floating_widget"

    .line 33
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 34
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    new-instance p3, Lcom/callapp/contacts/service/-$$Lambda$FloatingWidgetService$H41xxNK8sCw3tY8ZccUeaiikqqI;

    invoke-direct {p3, p0, p1}, Lcom/callapp/contacts/service/-$$Lambda$FloatingWidgetService$H41xxNK8sCw3tY8ZccUeaiikqqI;-><init>(Lcom/callapp/contacts/service/FloatingWidgetService;I)V

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
