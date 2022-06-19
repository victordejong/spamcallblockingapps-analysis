.class Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask;)V
    .locals 0

    .line 2186
    iput-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask$1;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 4

    .line 2190
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask$1;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask;

    iget-object v0, v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getLastCall()Lcom/callapp/contacts/model/call/CallData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2192
    sget-object v1, Lcom/callapp/contacts/model/call/CallState;->TALKING:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/call/CallData;->setState(Lcom/callapp/contacts/model/call/CallState;)V

    .line 2194
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask$1;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask;

    iget-object v1, v1, Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$2200(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Lcom/callapp/contacts/model/call/CallData;J)V

    .line 2195
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask$1;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask;

    iget-object v1, v1, Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->showCallAppIfNeeded(Lcom/callapp/contacts/model/call/CallData;Z)V

    .line 2197
    invoke-static {}, Lcom/callapp/contacts/manager/ProximityManager;->get()Lcom/callapp/contacts/manager/ProximityManager;

    move-result-object v1

    .line 3135
    iput-object v0, v1, Lcom/callapp/contacts/manager/ProximityManager;->a:Lcom/callapp/contacts/model/call/CallData;

    .line 3136
    invoke-virtual {v1}, Lcom/callapp/contacts/manager/ProximityManager;->b()V

    :cond_0
    return-void
.end method
