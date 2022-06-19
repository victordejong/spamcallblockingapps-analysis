.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$34$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$34;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$34;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$34;Z)V
    .locals 0

    .line 3371
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$34$1;->b:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$34;

    iput-boolean p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$34$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3374
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$34$1;->a:Z

    if-eqz v0, :cond_0

    .line 3375
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$34$1;->b:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$34;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$34;->b:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$34$1;->b:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$34;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$34;->b:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getState()Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->b(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;)Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;)V

    .line 3376
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$34$1;->b:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$34;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$34;->a:Lcom/callapp/contacts/activity/interfaces/MultiSelectEvents;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/interfaces/MultiSelectEvents;->setMultiSelectModeEnable(Z)V

    :cond_0
    return-void
.end method
