.class public Lcom/callapp/contacts/activity/chooseContact/ChooseMultiNumbersFromContactsActivity;
.super Lcom/callapp/contacts/activity/chooseContact/BaseChooseFromContactsActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/callapp/contacts/activity/chooseContact/BaseChooseFromContactsActivity;-><init>()V

    return-void
.end method

.method private varargs a(JLjava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "fullName"

    .line 86
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "contactId"

    .line 87
    invoke-virtual {v0, p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "phone nums"

    .line 88
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 89
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/activity/chooseContact/ChooseMultiNumbersFromContactsActivity;->setResult(ILandroid/content/Intent;)V

    .line 90
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/chooseContact/ChooseMultiNumbersFromContactsActivity;->finish()V

    return-void
.end method

.method private synthetic a(Landroid/view/View;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 5

    .line 30
    instance-of p1, p2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    if-eqz p1, :cond_5

    .line 31
    check-cast p2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->normalNumbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    iget-object v0, p2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->normalNumbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    .line 36
    invoke-static {v1}, Lcom/callapp/contacts/manager/BlockManager;->b(Lcom/callapp/framework/phone/Phone;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 37
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 43
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const v0, 0x7f120237

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p2, p2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    .line 45
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    .line 44
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 1132
    invoke-virtual {p1, p2, v0}, Lcom/callapp/contacts/manager/FeedbackManager;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    .line 47
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 49
    iget-wide v3, p2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->contactId:J

    iget-object p2, p2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/framework/phone/Phone;

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-direct {p0, v3, v4, p2, v0}, Lcom/callapp/contacts/activity/chooseContact/ChooseMultiNumbersFromContactsActivity;->a(JLjava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 52
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/framework/phone/Phone;

    .line 54
    new-instance v4, Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$MultipleChoiceRowData;

    invoke-virtual {v3}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3, v2}, Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$MultipleChoiceRowData;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 56
    :cond_4
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/chooseContact/ChooseMultiNumbersFromContactsActivity$2;

    iget-object v3, p2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/callapp/contacts/activity/chooseContact/ChooseMultiNumbersFromContactsActivity$1;

    invoke-direct {v4, p0, p1, p2}, Lcom/callapp/contacts/activity/chooseContact/ChooseMultiNumbersFromContactsActivity$1;-><init>(Lcom/callapp/contacts/activity/chooseContact/ChooseMultiNumbersFromContactsActivity;Ljava/util/ArrayList;Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;)V

    invoke-direct {v2, p0, v3, v0, v4}, Lcom/callapp/contacts/activity/chooseContact/ChooseMultiNumbersFromContactsActivity$2;-><init>(Lcom/callapp/contacts/activity/chooseContact/ChooseMultiNumbersFromContactsActivity;Ljava/lang/String;Ljava/util/ArrayList;Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$MultipleChoiceDialogListener;)V

    invoke-virtual {v1, p0, v2}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    :cond_5
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/chooseContact/ChooseMultiNumbersFromContactsActivity;JLjava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/activity/chooseContact/ChooseMultiNumbersFromContactsActivity;->a(JLjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$GYmU_oGebj0u46YWFFqlsZoNDwQ(Lcom/callapp/contacts/activity/chooseContact/ChooseMultiNumbersFromContactsActivity;Landroid/view/View;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/chooseContact/ChooseMultiNumbersFromContactsActivity;->a(Landroid/view/View;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

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

    .line 29
    new-instance v0, Lcom/callapp/contacts/activity/chooseContact/-$$Lambda$ChooseMultiNumbersFromContactsActivity$GYmU_oGebj0u46YWFFqlsZoNDwQ;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/chooseContact/-$$Lambda$ChooseMultiNumbersFromContactsActivity$GYmU_oGebj0u46YWFFqlsZoNDwQ;-><init>(Lcom/callapp/contacts/activity/chooseContact/ChooseMultiNumbersFromContactsActivity;)V

    return-object v0
.end method
