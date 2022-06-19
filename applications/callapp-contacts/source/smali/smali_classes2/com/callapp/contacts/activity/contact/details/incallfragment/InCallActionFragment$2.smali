.class Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$2;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/framework/phone/Phone;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;Lcom/callapp/framework/phone/Phone;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$2;->b:Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$2;->a:Lcom/callapp/framework/phone/Phone;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 5

    .line 240
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$2;->a:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getCallForPhone(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/call/CallData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 242
    invoke-virtual {v0}, Lcom/callapp/contacts/model/call/CallData;->getSimId()Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 244
    invoke-static {}, Lcom/callapp/contacts/manager/sim/SimManager;->get()Lcom/callapp/contacts/manager/sim/SimManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/manager/sim/SimManager;->a(Lcom/callapp/contacts/manager/sim/SimManager$SimId;)Ljava/lang/String;

    move-result-object v2

    .line 245
    invoke-static {}, Lcom/callapp/contacts/manager/sim/SimManager;->get()Lcom/callapp/contacts/manager/sim/SimManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/sim/SimManager;->getDualSimOperators()Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 246
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    new-instance v4, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$2$1;

    invoke-direct {v4, p0, v1, v2}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$2$1;-><init>(Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$2;Lcom/callapp/contacts/manager/sim/SimManager$SimId;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    .line 254
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$2$2;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$2$2;-><init>(Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$2;Lcom/callapp/contacts/model/call/CallData;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
