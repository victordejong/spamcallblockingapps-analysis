.class Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$1;
.super Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;Lcom/callapp/contacts/event/bus/EventBus;Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$1;->this$0:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    invoke-direct {p0, p2, p3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;-><init>(Lcom/callapp/contacts/event/bus/EventBus;Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V

    return-void
.end method


# virtual methods
.method public findFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$1;->this$0:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->c(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$1;->this$0:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public finish()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$1;->this$0:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->finish()V

    return-void
.end method

.method public getCardsAdapter()Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$1;->this$0:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->cardsAdapter:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    return-object v0
.end method

.method public getContact()Lcom/callapp/contacts/model/contact/ContactData;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$1;->this$0:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    return-object v0
.end method

.method public getEventBus()Lcom/callapp/contacts/event/bus/EventBus;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$1;->this$0:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    return-object v0
.end method

.method public getFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$1;->this$0:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getRealContext()Landroid/content/Context;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$1;->this$0:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    return-object v0
.end method

.method public hasIntentExtra(Ljava/lang/String;)Z
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$1;->this$0:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {v0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isClickValid(Landroid/view/View;)Z
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$1;->this$0:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->isClickValid(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public isFinishing()Z
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$1;->this$0:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method public scrollToPosition(I)V
    .locals 1

    .line 166
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$1;->this$0:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->getRecyclerView()Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 168
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->d(I)V

    :cond_0
    return-void
.end method
