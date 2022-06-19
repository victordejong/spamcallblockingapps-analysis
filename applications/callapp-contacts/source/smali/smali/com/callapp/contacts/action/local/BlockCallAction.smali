.class public Lcom/callapp/contacts/action/local/BlockCallAction;
.super Lcom/callapp/contacts/action/local/BlockOrUnblockCallAction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/callapp/contacts/action/local/BlockOrUnblockCallAction;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/action/Action$ContextType;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Z
    .locals 1

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    .line 11
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/manager/BlockManager;->b(Lcom/callapp/framework/phone/Phone;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->isUnknownNumber()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    sget-object p2, Lcom/callapp/contacts/action/local/BlockCallAction$1;->a:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/action/Action$ContextType;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    return p3

    :cond_1
    return p2

    :cond_2
    :goto_0
    return p3
.end method
