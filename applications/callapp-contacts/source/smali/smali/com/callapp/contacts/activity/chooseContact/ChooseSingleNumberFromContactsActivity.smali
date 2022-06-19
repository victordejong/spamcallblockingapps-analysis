.class public Lcom/callapp/contacts/activity/chooseContact/ChooseSingleNumberFromContactsActivity;
.super Lcom/callapp/contacts/activity/chooseContact/BaseChooseFromContactsActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/callapp/contacts/activity/chooseContact/BaseChooseFromContactsActivity;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/view/View;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 4

    .line 23
    instance-of p1, p2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    if-eqz p1, :cond_1

    .line 24
    check-cast p2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    .line 26
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->normalNumbers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    iget-object v1, p2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->normalNumbers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 34
    :cond_0
    new-instance v1, Lcom/callapp/contacts/activity/chooseContact/ChooseSingleNumberFromContactsActivity$1;

    invoke-direct {v1, p0, p2}, Lcom/callapp/contacts/activity/chooseContact/ChooseSingleNumberFromContactsActivity$1;-><init>(Lcom/callapp/contacts/activity/chooseContact/ChooseSingleNumberFromContactsActivity;Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;)V

    invoke-static {p0, p1, v0, v1}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Ljava/util/List;Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;)Z

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/chooseContact/ChooseSingleNumberFromContactsActivity;JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1045
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "fullName"

    .line 1046
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "contactId"

    .line 1047
    invoke-virtual {v0, p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "phone"

    .line 1048
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 1049
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/activity/chooseContact/ChooseSingleNumberFromContactsActivity;->setResult(ILandroid/content/Intent;)V

    .line 1050
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/chooseContact/ChooseSingleNumberFromContactsActivity;->finish()V

    return-void
.end method

.method public static synthetic lambda$pE4hD6NIXBQsuiE_jK21IxHtXgw(Lcom/callapp/contacts/activity/chooseContact/ChooseSingleNumberFromContactsActivity;Landroid/view/View;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/chooseContact/ChooseSingleNumberFromContactsActivity;->a(Landroid/view/View;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    return-void
.end method


# virtual methods
.method protected final b()Lcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            ">()",
            "Lcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener<",
            "TT;>;"
        }
    .end annotation

    .line 22
    new-instance v0, Lcom/callapp/contacts/activity/chooseContact/-$$Lambda$ChooseSingleNumberFromContactsActivity$pE4hD6NIXBQsuiE_jK21IxHtXgw;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/chooseContact/-$$Lambda$ChooseSingleNumberFromContactsActivity$pE4hD6NIXBQsuiE_jK21IxHtXgw;-><init>(Lcom/callapp/contacts/activity/chooseContact/ChooseSingleNumberFromContactsActivity;)V

    return-object v0
.end method
