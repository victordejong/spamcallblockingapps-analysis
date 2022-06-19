.class public Lcom/callapp/contacts/activity/chooseContact/ChooseContactFromContactsActivity;
.super Lcom/callapp/contacts/activity/chooseContact/BaseChooseFromContactsActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/callapp/contacts/activity/chooseContact/BaseChooseFromContactsActivity;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/view/View;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 2

    .line 17
    instance-of p1, p2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    if-eqz p1, :cond_0

    .line 18
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 19
    iget-object v0, p2, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->displayName:Ljava/lang/String;

    const-string v1, "fullName"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    iget-wide v0, p2, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->contactId:J

    const-string p2, "contactId"

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 p2, -0x1

    .line 22
    invoke-virtual {p0, p2, p1}, Lcom/callapp/contacts/activity/chooseContact/ChooseContactFromContactsActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/chooseContact/ChooseContactFromContactsActivity;->setResult(ILandroid/content/Intent;)V

    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/chooseContact/ChooseContactFromContactsActivity;->finish()V

    return-void
.end method

.method public static synthetic lambda$yfCR1mqMSdb-MDEh9qUG1vmxkNM(Lcom/callapp/contacts/activity/chooseContact/ChooseContactFromContactsActivity;Landroid/view/View;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/chooseContact/ChooseContactFromContactsActivity;->a(Landroid/view/View;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

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

    .line 16
    new-instance v0, Lcom/callapp/contacts/activity/chooseContact/-$$Lambda$ChooseContactFromContactsActivity$yfCR1mqMSdb-MDEh9qUG1vmxkNM;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/chooseContact/-$$Lambda$ChooseContactFromContactsActivity$yfCR1mqMSdb-MDEh9qUG1vmxkNM;-><init>(Lcom/callapp/contacts/activity/chooseContact/ChooseContactFromContactsActivity;)V

    return-object v0
.end method
