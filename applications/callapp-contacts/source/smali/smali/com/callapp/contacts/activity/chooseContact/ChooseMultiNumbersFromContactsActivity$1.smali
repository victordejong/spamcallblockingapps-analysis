.class Lcom/callapp/contacts/activity/chooseContact/ChooseMultiNumbersFromContactsActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$MultipleChoiceDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/chooseContact/ChooseMultiNumbersFromContactsActivity;->a(Landroid/view/View;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

.field final synthetic c:Lcom/callapp/contacts/activity/chooseContact/ChooseMultiNumbersFromContactsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/chooseContact/ChooseMultiNumbersFromContactsActivity;Ljava/util/ArrayList;Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseMultiNumbersFromContactsActivity$1;->c:Lcom/callapp/contacts/activity/chooseContact/ChooseMultiNumbersFromContactsActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseMultiNumbersFromContactsActivity$1;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseMultiNumbersFromContactsActivity$1;->b:Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 64
    iget-object v2, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseMultiNumbersFromContactsActivity$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseMultiNumbersFromContactsActivity$1;->c:Lcom/callapp/contacts/activity/chooseContact/ChooseMultiNumbersFromContactsActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseMultiNumbersFromContactsActivity$1;->b:Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    iget-wide v1, v1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->contactId:J

    iget-object v3, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseMultiNumbersFromContactsActivity$1;->b:Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    iget-object v3, v3, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p1, v1, v2, v3, v0}, Lcom/callapp/contacts/activity/chooseContact/ChooseMultiNumbersFromContactsActivity;->a(Lcom/callapp/contacts/activity/chooseContact/ChooseMultiNumbersFromContactsActivity;JLjava/lang/String;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method
