.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/CallAppBarManager$CallAppBarEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;
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

    .line 874
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 877
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->s(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setTranslationY(F)V

    .line 878
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->s(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setVisibility(I)V

    .line 879
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->y(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    move-result-object v0

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->x(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/widget/PagingTogglableViewPager;->setPagingEnabled(Z)V

    .line 880
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->b(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Z)V

    .line 1945
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v2, "SEARCH_BAR_TAG"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    if-eqz v0, :cond_0

    .line 1947
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->a()Landroidx/fragment/app/s;

    move-result-object v2

    .line 1948
    invoke-virtual {v2, v0}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/s;->c()I

    .line 1949
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->C(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    .line 1952
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->d(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Z)Z

    .line 1953
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->y(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/widget/PagingTogglableViewPager;->getCurrentItem()I

    move-result v2

    invoke-static {v0, v2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->c(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;I)V

    .line 1954
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    const-string v2, ""

    invoke-static {v0, v2, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Ljava/lang/String;Z)V

    .line 882
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->c(I)V

    .line 883
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getState()Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 884
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->c(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Z)V

    .line 885
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getState()Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->b(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;)Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;)V

    .line 887
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->p(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->c()V

    .line 888
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->z(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/widget/tutorial/TutorialViewController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 889
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->z(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/widget/tutorial/TutorialViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->d()V

    .line 891
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->A(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 901
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Ljava/lang/String;Z)V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 896
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->B(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .line 906
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Ljava/lang/String;Z)V

    return-void
.end method

.method public final c()V
    .locals 3

    .line 912
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->y(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/PagingTogglableViewPager;->getCurrentItem()I

    move-result v1

    new-instance v2, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13$1;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13$1;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13;)V

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/list/MoreDialogManager;->a(Landroid/content/Context;ILcom/callapp/contacts/activity/contact/list/MoreDialogManager$OnMoreDialogItemClickListener;)V

    return-void
.end method

.method public final d()V
    .locals 2

    .line 940
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method public final e()V
    .locals 3

    .line 959
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    const-class v2, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "PLAN_PAGE_SOURCE"

    const-string v2, "topBar"

    .line 960
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 961
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
