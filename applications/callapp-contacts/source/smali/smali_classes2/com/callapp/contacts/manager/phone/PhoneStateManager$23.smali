.class Lcom/callapp/contacts/manager/phone/PhoneStateManager$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/phone/PhoneStateManager;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic b:Lcom/callapp/contacts/manager/phone/PhoneStateManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 2509
    iput-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$23;->b:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    iput-object p2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$23;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2513
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2514
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$23;->b:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-static {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$1600(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)[I

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/ArrayUtils;->a([I)[Z

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/Constants;->CALL_BEFORE_MERGE:[Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2515
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getActiveCall()Lcom/callapp/contacts/model/call/CallData;

    move-result-object v0

    goto :goto_0

    .line 2517
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$23;->b:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getLastCall()Lcom/callapp/contacts/model/call/CallData;

    move-result-object v0

    goto :goto_0

    .line 2520
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$23;->b:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getLastCall()Lcom/callapp/contacts/model/call/CallData;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 2523
    invoke-virtual {v0}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallState;->isIdle()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$23;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhones()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2524
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$23;->a:Lcom/callapp/contacts/model/contact/ContactData;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/callapp/contacts/manager/NotificationManager;->a(Lcom/callapp/contacts/model/call/CallData;Lcom/callapp/contacts/model/contact/ContactData;ZZ)V

    :cond_2
    return-void
.end method
