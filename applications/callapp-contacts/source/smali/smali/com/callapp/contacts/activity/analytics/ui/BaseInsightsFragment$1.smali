.class Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$1;
.super Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;Lcom/callapp/contacts/event/bus/EventBus;Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$1;->this$0:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;

    invoke-direct {p0, p2, p3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;-><init>(Lcom/callapp/contacts/event/bus/EventBus;Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V

    return-void
.end method


# virtual methods
.method public findFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$1;->this$0:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->c(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$1;->this$0:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public finish()V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$1;->this$0:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method public getCardsAdapter()Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$1;->this$0:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;

    iget-object v0, v0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->cardsAdapter:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    return-object v0
.end method

.method public getContact()Lcom/callapp/contacts/model/contact/ContactData;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$1;->this$0:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;

    iget-object v0, v0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    return-object v0
.end method

.method public getEventBus()Lcom/callapp/contacts/event/bus/EventBus;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$1;->this$0:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;

    iget-object v0, v0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    return-object v0
.end method

.method public getRealContext()Landroid/content/Context;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$1;->this$0:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public hasIntentExtra(Ljava/lang/String;)Z
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$1;->this$0:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

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
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isFinishing()Z
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$1;->this$0:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method public openNotificationAccsess()V
    .locals 4

    .line 146
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$1;->this$0:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/Activities;->b(Landroid/app/Activity;Lcom/callapp/contacts/manager/popup/PopupDoneListener;)V

    .line 147
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Permissions"

    const-string v2, "ClickPermissionToNotificationInsights"

    const-string v3, "CallAppPlus"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public scrollToPosition(I)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$1;->this$0:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->access$000(Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;)Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->d(I)V

    :cond_0
    return-void
.end method
