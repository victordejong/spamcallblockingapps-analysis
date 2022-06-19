.class Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/phone/CallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter$1$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter$1$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter$1$1;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter$1$1$1;->a:Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(Lcom/callapp/contacts/model/call/CallData;)V
    .locals 3

    .line 93
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/call/CallState;->RINGING_OUTGOING:Lcom/callapp/contacts/model/call/CallState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/model/call/CallState;->POST_CALL:Lcom/callapp/contacts/model/call/CallState;

    if-ne p1, v0, :cond_1

    .line 95
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->removeListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V

    .line 96
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/CallEventListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CALL:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const/4 v2, 0x0

    .line 1091
    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    :cond_1
    return-void
.end method
