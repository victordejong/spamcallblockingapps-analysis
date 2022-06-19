.class Lcom/callapp/contacts/activity/chooseContact/ChooseSingleNumberFromContactsActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/chooseContact/ChooseSingleNumberFromContactsActivity;->a(Landroid/view/View;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

.field final synthetic b:Lcom/callapp/contacts/activity/chooseContact/ChooseSingleNumberFromContactsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/chooseContact/ChooseSingleNumberFromContactsActivity;Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseSingleNumberFromContactsActivity$1;->b:Lcom/callapp/contacts/activity/chooseContact/ChooseSingleNumberFromContactsActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseSingleNumberFromContactsActivity$1;->a:Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/callapp/framework/phone/Phone;Z)V
    .locals 3

    .line 37
    iget-object p2, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseSingleNumberFromContactsActivity$1;->b:Lcom/callapp/contacts/activity/chooseContact/ChooseSingleNumberFromContactsActivity;

    iget-object v0, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseSingleNumberFromContactsActivity$1;->a:Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    iget-wide v0, v0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->contactId:J

    iget-object v2, p0, Lcom/callapp/contacts/activity/chooseContact/ChooseSingleNumberFromContactsActivity$1;->a:Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    iget-object v2, v2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, v1, v2, p1}, Lcom/callapp/contacts/activity/chooseContact/ChooseSingleNumberFromContactsActivity;->a(Lcom/callapp/contacts/activity/chooseContact/ChooseSingleNumberFromContactsActivity;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
