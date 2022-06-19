.class public abstract Lcom/callapp/contacts/action/shared/SharedAction;
.super Lcom/callapp/contacts/action/Action;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/callapp/contacts/action/Action;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/callapp/common/model/message/OutgoingMessage;)Ljava/lang/String;
.end method

.method public final a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)V
    .locals 1

    .line 31
    new-instance v0, Lcom/callapp/contacts/action/shared/SharedAction$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/callapp/contacts/action/shared/SharedAction$1;-><init>(Lcom/callapp/contacts/action/shared/SharedAction;Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/callapp/contacts/util/SmsUtils$SelectNumberListener;->a(Lcom/callapp/framework/phone/Phone;)V

    return-void
.end method

.method public a(Lcom/callapp/contacts/action/Action$ContextType;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Z
    .locals 2

    if-eqz p2, :cond_2

    .line 80
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->isUnknownNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    sget-object v0, Lcom/callapp/contacts/action/shared/SharedAction$4;->a:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/action/Action$ContextType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 89
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/action/Action;->a(Lcom/callapp/contacts/action/Action$ContextType;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Z

    move-result p1

    return p1

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final b(Lcom/callapp/common/model/message/OutgoingMessage;)V
    .locals 2

    .line 64
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/action/shared/SharedAction$3;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/action/shared/SharedAction$3;-><init>(Lcom/callapp/contacts/action/shared/SharedAction;Lcom/callapp/common/model/message/OutgoingMessage;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
