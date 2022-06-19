.class public Lcom/callapp/contacts/receiver/PhoneStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .line 32
    const-class p1, Lcom/callapp/contacts/receiver/PhoneStateReceiver;

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "PhoneStateReceiver onReceive return because we are default phone app"

    .line 33
    invoke-static {p1, p2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p2, :cond_c

    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    const-string v5, "android.intent.action.PHONE_STATE"

    .line 47
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x2

    const-string v7, ""

    if-eqz v5, :cond_4

    const-string v5, "state"

    .line 48
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string p2, "incoming_number"

    .line 49
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz v7, :cond_3

    .line 51
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v4, 0x0

    goto :goto_0

    .line 53
    :cond_1
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v4, 0x2

    goto :goto_0

    .line 55
    :cond_2
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    move-object v9, v7

    move-object v7, p2

    move-object p2, v9

    goto :goto_1

    :cond_4
    const-string v0, "android.intent.action.NEW_OUTGOING_CALL"

    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v4, -0x2

    const-string v0, "android.intent.extra.PHONE_NUMBER"

    .line 63
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string p2, "OUTGOING"

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    move-object p2, v7

    const/4 v0, 0x0

    :goto_1
    const/4 v5, 0x3

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v3, v8, v1

    aput-object v7, v8, v2

    .line 67
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v6

    const-string v1, "PhoneStateReceiver.onReceive called with ACTION = [%s], PHONE_NUMBER = [%s], EXTRA_STATE = [%d]"

    .line 66
    invoke-static {p1, v1, v8}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    invoke-static {v7}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-void

    :cond_6
    if-nez v0, :cond_7

    .line 73
    sget-object v1, Lcom/callapp/contacts/receiver/PhoneStateReceiver;->a:Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 77
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Already handled state from Receiver: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    :cond_7
    if-nez v0, :cond_8

    .line 82
    sput-object p2, Lcom/callapp/contacts/receiver/PhoneStateReceiver;->a:Ljava/lang/String;

    .line 85
    :cond_8
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->aV:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->isNotNull()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 86
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object p1

    sget-object p2, Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;->RECEIVER:Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;

    invoke-virtual {p1, p2, v4, v7}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->onCallStateChanged(Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;ILjava/lang/String;)V

    return-void

    :cond_9
    if-nez v4, :cond_a

    .line 87
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->by:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lt p1, v5, :cond_a

    .line 89
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.callapp.contacts.ACTION_SHOW_COMPLETE_REGISTRATION_POPUP"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->gy:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_a

    .line 91
    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->gy:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 92
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    const-class v0, Lcom/callapp/contacts/service/jobs/ShowRegistrationReminderService;

    const/4 v1, 0x4

    invoke-static {p2, v0, v1, p1}, Landroidx/core/app/JobIntentService;->a(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    :cond_a
    return-void

    :cond_b
    new-array v0, v2, [Ljava/lang/Object;

    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    const-string p2, "PhoneStateReceiver.onReceive called with ACTION=[%s]"

    invoke-static {p1, p2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_c
    const-string p2, "PhoneStateReceiver.onReceive called!"

    .line 99
    invoke-static {p1, p2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method
