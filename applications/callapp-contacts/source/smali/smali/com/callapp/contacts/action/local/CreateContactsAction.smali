.class public Lcom/callapp/contacts/action/local/CreateContactsAction;
.super Lcom/callapp/contacts/action/local/EditOrCreateContactsAction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/callapp/contacts/action/local/EditOrCreateContactsAction;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/action/Action$ContextType;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Z
    .locals 3

    .line 11
    sget-object v0, Lcom/callapp/contacts/action/local/CreateContactsAction$1;->a:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/action/Action$ContextType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    .line 13
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->isUnknownNumber()Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/action/local/EditOrCreateContactsAction;->a(Lcom/callapp/contacts/action/Action$ContextType;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method
