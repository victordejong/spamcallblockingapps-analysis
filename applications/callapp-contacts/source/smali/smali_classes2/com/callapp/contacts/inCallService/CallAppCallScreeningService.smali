.class public Lcom/callapp/contacts/inCallService/CallAppCallScreeningService;
.super Landroid/telecom/CallScreeningService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/telecom/CallScreeningService;-><init>()V

    return-void
.end method

.method private a(Landroid/telecom/Call$Details;)V
    .locals 1

    .line 62
    new-instance v0, Landroid/telecom/CallScreeningService$CallResponse$Builder;

    invoke-direct {v0}, Landroid/telecom/CallScreeningService$CallResponse$Builder;-><init>()V

    .line 63
    invoke-virtual {v0}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->build()Landroid/telecom/CallScreeningService$CallResponse;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/inCallService/CallAppCallScreeningService;->respondToCall(Landroid/telecom/Call$Details;Landroid/telecom/CallScreeningService$CallResponse;)V

    return-void
.end method


# virtual methods
.method public onScreenCall(Landroid/telecom/Call$Details;)V
    .locals 4

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    .line 25
    invoke-direct {p0, p1}, Lcom/callapp/contacts/inCallService/CallAppCallScreeningService;->a(Landroid/telecom/Call$Details;)V

    return-void

    .line 29
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    .line 31
    const-class v1, Lcom/callapp/contacts/inCallService/CallAppCallScreeningService;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Call screening service triggered for phone: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 33
    invoke-static {v0}, Lcom/callapp/contacts/manager/BlockManager;->a(Lcom/callapp/framework/phone/Phone;)Landroid/util/Pair;

    move-result-object v1

    .line 34
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 35
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->handleBlockedCall(Lcom/callapp/framework/phone/Phone;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1053
    new-instance v1, Landroid/telecom/CallScreeningService$CallResponse$Builder;

    invoke-direct {v1}, Landroid/telecom/CallScreeningService$CallResponse$Builder;-><init>()V

    .line 1055
    invoke-virtual {v1, v3}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->setRejectCall(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;

    .line 1056
    invoke-virtual {v1, v3}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->setDisallowCall(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;

    .line 1057
    invoke-virtual {v1, v3}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->setSkipNotification(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;

    .line 1058
    invoke-virtual {v1}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->build()Landroid/telecom/CallScreeningService$CallResponse;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/callapp/contacts/inCallService/CallAppCallScreeningService;->respondToCall(Landroid/telecom/Call$Details;Landroid/telecom/CallScreeningService$CallResponse;)V

    .line 37
    new-instance p1, Lcom/callapp/contacts/model/call/CallData;

    sget-object v1, Lcom/callapp/contacts/model/call/CallState;->DISCONNECTED:Lcom/callapp/contacts/model/call/CallState;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v1, v2}, Lcom/callapp/contacts/model/call/CallData;-><init>(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/call/CallState;Ljava/lang/Boolean;)V

    .line 38
    invoke-virtual {p1, v3}, Lcom/callapp/contacts/model/call/CallData;->setBlocked(Z)V

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->a(Lcom/callapp/contacts/model/call/CallData;J)V

    return-void

    .line 43
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v2

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, p1, v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->addToCallScreeningServiceHandleList(Landroid/telecom/Call$Details;Lcom/callapp/framework/phone/Phone;Z)V

    goto :goto_1

    .line 46
    :cond_3
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v2

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, p1, v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->addToCallScreeningServiceHandleList(Landroid/telecom/Call$Details;Lcom/callapp/framework/phone/Phone;Z)V

    .line 49
    :goto_1
    invoke-direct {p0, p1}, Lcom/callapp/contacts/inCallService/CallAppCallScreeningService;->a(Landroid/telecom/Call$Details;)V

    return-void
.end method
