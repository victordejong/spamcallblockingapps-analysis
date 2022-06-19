.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2;)V
    .locals 0

    .line 1104
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2$2;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 1

    .line 1107
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2$2;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    new-instance v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2$2$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2$2$1;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2$2;)V

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/Activities;->c(Landroid/app/Activity;Lcom/callapp/contacts/manager/popup/PopupDoneListener;)V

    return-void
.end method
