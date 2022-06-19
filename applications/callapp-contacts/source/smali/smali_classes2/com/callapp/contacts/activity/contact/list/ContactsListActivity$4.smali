.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/task/Task$DoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$4;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 2

    .line 525
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$4;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->f(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Z

    .line 527
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$4;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->g(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    .line 528
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$4;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->h(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    .line 530
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$4;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->i(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$4;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->j(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Z

    .line 532
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$4;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Landroid/content/Intent;)V

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$4;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->k(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$4;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->l(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Z

    .line 536
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$4;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->m(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    :cond_1
    return-void
.end method
