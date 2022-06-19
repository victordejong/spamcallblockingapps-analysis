.class public abstract Lcom/callapp/contacts/activity/chooseContact/BaseChooseFromContactsActivity;
.super Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;
.source "SourceFile"


# instance fields
.field private b:Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getContactsFragment()Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/callapp/contacts/activity/chooseContact/BaseChooseFromContactsActivity;->b:Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/chooseContact/BaseChooseFromContactsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a029b

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->c(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;

    iput-object v0, p0, Lcom/callapp/contacts/activity/chooseContact/BaseChooseFromContactsActivity;->b:Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/chooseContact/BaseChooseFromContactsActivity;->b:Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;

    return-object v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0028

    return v0
.end method

.method protected getSearchBarEvents()Lcom/callapp/contacts/widget/SimpleSearchBarFragment$SearchBarEvents;
    .locals 1

    .line 34
    new-instance v0, Lcom/callapp/contacts/activity/chooseContact/BaseChooseFromContactsActivity$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/chooseContact/BaseChooseFromContactsActivity$1;-><init>(Lcom/callapp/contacts/activity/chooseContact/BaseChooseFromContactsActivity;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 21
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Choose From Contacts"

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/chooseContact/BaseChooseFromContactsActivity;->getContactsFragment()Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/chooseContact/BaseChooseFromContactsActivity;->b()Lcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;->setOnItemClickedListener(Lcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 28
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Screen"

    const-string v2, "ScreenClose"

    const-string v3, "Choose From Contacts"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-super {p0}, Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;->onDestroy()V

    return-void
.end method
