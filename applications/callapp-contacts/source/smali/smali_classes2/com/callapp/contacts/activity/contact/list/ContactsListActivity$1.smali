.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$1;
.super Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Lcom/callapp/contacts/event/bus/EventBus;Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$1;->this$0:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-direct {p0, p2, p3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;-><init>(Lcom/callapp/contacts/event/bus/EventBus;Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V

    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$1;->this$0:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public finish()V
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$1;->this$0:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->finish()V

    return-void
.end method

.method public getContact()Lcom/callapp/contacts/model/contact/ContactData;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEventBus()Lcom/callapp/contacts/event/bus/EventBus;
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$1;->this$0:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v0

    return-object v0
.end method

.method public getRealContext()Landroid/content/Context;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$1;->this$0:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    return-object v0
.end method

.method public hasIntentExtra(Ljava/lang/String;)Z
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$1;->this$0:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 390
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    invoke-virtual {v0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isFinishing()Z
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$1;->this$0:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->isFinishing()Z

    move-result v0

    return v0
.end method
