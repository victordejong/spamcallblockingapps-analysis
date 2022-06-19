.class public Lcom/callapp/contacts/inCallService/InCallServiceImpl;
.super Landroid/telecom/InCallService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/telecom/InCallService;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 87
    invoke-static {}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->getInstance()Lcom/callapp/contacts/inCallService/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->setInCallService(Landroid/telecom/InCallService;)V

    .line 88
    const-class v0, Lcom/callapp/contacts/inCallService/InCallServiceImpl;

    const-string v1, "InCallServiceImpl onBind"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 89
    invoke-super {p0, p1}, Landroid/telecom/InCallService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onBringToForeground(Z)V
    .locals 5

    .line 44
    const-class v0, Lcom/callapp/contacts/inCallService/InCallServiceImpl;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "InCallServiceImpl onBringToForeground showDialpad: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.callapp.contacts.ACTION_START_CALL_SCREEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/callapp/contacts/inCallService/InCallServiceImpl;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-class v3, Lcom/callapp/contacts/service/CallAppService;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "EXTRA_SHOW_KEYPAD"

    .line 47
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 49
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->shouldConferenceScreenAppear()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 50
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getIncomingOrConnectingOrConnectedCall()Lcom/callapp/contacts/model/call/CallData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallData;->isIncoming()Z

    move-result v3

    const-string v4, "isIncoming"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 54
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, p1, v4}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->showCallAppIfNeeded(Lcom/callapp/contacts/model/call/CallData;ZZZ)V

    .line 58
    :cond_0
    invoke-static {p0, v0, v2}, Lcom/callapp/contacts/service/CallAppService;->a(Landroid/content/Context;Landroid/content/Intent;Z)V

    return-void
.end method

.method public onCallAdded(Landroid/telecom/Call;)V
    .locals 2

    .line 63
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->onCallAdded(Landroid/telecom/Call;)V

    .line 64
    invoke-virtual {p0}, Lcom/callapp/contacts/inCallService/InCallServiceImpl;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/inCallService/InCallServiceImpl;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->onAudioStateChanged(Landroid/telecom/CallAudioState;)V

    .line 71
    :cond_0
    const-class v0, Lcom/callapp/contacts/inCallService/InCallServiceImpl;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "InCallServiceImpl onCallAdded "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 2

    .line 37
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->onAudioStateChanged(Landroid/telecom/CallAudioState;)V

    .line 38
    const-class v0, Lcom/callapp/contacts/inCallService/InCallServiceImpl;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "InCallServiceImpl onCallAudioStateChanged audioState: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->handleRinger()V

    return-void
.end method

.method public onCallRemoved(Landroid/telecom/Call;)V
    .locals 2

    .line 77
    const-class v0, Lcom/callapp/contacts/inCallService/InCallServiceImpl;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "InCallServiceImpl onCallRemoved "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public onCanAddCallChanged(Z)V
    .locals 2

    .line 82
    const-class v0, Lcom/callapp/contacts/inCallService/InCallServiceImpl;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "InCallServiceImpl canAddCall: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public onSilenceRinger()V
    .locals 2

    .line 31
    const-class v0, Lcom/callapp/contacts/inCallService/InCallServiceImpl;

    const-string v1, "InCallServiceImpl onSilenceRinger called "

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->internalSilenceRinger()V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    .line 94
    const-class v0, Lcom/callapp/contacts/inCallService/InCallServiceImpl;

    const-string v1, "InCallServiceImpl onUnbind"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 95
    invoke-super {p0, p1}, Landroid/telecom/InCallService;->onUnbind(Landroid/content/Intent;)Z

    .line 96
    invoke-static {}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->getInstance()Lcom/callapp/contacts/inCallService/TelecomAdapter;

    move-result-object p1

    const/4 v0, 0x0

    .line 1050
    iput-object v0, p1, Lcom/callapp/contacts/inCallService/TelecomAdapter;->b:Landroid/telecom/InCallService;

    const/4 p1, 0x0

    return p1
.end method
