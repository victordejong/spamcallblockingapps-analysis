.class public abstract Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;
.super Lcom/callapp/contacts/activity/base/TopBarFragmentActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity$searchBarEventsImpl;
    }
.end annotation


# instance fields
.field public a:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/TopBarFragmentActivity;-><init>()V

    const-string v0, ""

    .line 33
    iput-object v0, p0, Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;->b:Ljava/lang/String;

    return-void
.end method

.method private setTitle(Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "activity_title"

    .line 78
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 81
    :goto_0
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f120602

    .line 82
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 85
    :cond_1
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected b()Lcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            ">()",
            "Lcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getInitialSearchText()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getNewFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;->getNewFragment()Lcom/callapp/contacts/activity/base/BaseListFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getNewFragment()Lcom/callapp/contacts/activity/base/BaseListFragment;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getSearchBarEvents()Lcom/callapp/contacts/widget/SimpleSearchBarFragment$SearchBarEvents;
.end method

.method public getSearchText()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;->a:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->getSearchText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTopBarTitleType()Lcom/callapp/contacts/util/TopBarUtils$TopBarTitle;
    .locals 1

    .line 178
    sget-object v0, Lcom/callapp/contacts/util/TopBarUtils$TopBarTitle;->SUBTITLE_TOP_BAR:Lcom/callapp/contacts/util/TopBarUtils$TopBarTitle;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 109
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/base/TopBarFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/16 p2, 0x1388

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "android.speech.extra.RESULTS"

    .line 113
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 115
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 116
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p2

    const-string p3, "Choose From Contacts"

    const-string v0, "Voice search successfully finished"

    invoke-virtual {p2, p3, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object p2, p0, Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;->a:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

    const-string p3, ""

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->setSearchText(Ljava/lang/String;)V

    .line 119
    iget-object p2, p0, Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;->a:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->setSearchText(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;->a:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->getSearchText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;->a:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->getSearchText()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;->a:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->setSearchText(Ljava/lang/String;)V

    return-void

    .line 101
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/TopBarFragmentActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 42
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/TopBarFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;->setTitle(Landroid/content/Intent;)V

    .line 45
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f0a07b4

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->c(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

    iput-object p1, p0, Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;->a:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

    .line 46
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;->getSearchBarEvents()Lcom/callapp/contacts/widget/SimpleSearchBarFragment$SearchBarEvents;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->setSearchBarEventsListener(Lcom/callapp/contacts/widget/SimpleSearchBarFragment$SearchBarEvents;)V

    .line 47
    iget-object p1, p0, Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;->a:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->b(Z)V

    .line 48
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 50
    iget-object v0, p0, Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;->a:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

    const-string v1, "search_title"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->setTitleText(Ljava/lang/String;)V

    const-string v0, "PERSON_SELECT_AUTO_SEARCH_TEXT"

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;->b:Ljava/lang/String;

    .line 54
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;->a:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

    iget-object v1, p0, Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->setSearchTextWithOutNotifying(Ljava/lang/String;)V

    :cond_0
    const-string v0, "search hint"

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f120603

    .line 60
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;->a:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->setSearchHint(Ljava/lang/String;)V

    .line 65
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    return-void
.end method

.method public onHomeButtonSelected()V
    .locals 0

    .line 94
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;->onBackPressed()V

    return-void
.end method

.method public setHintText(Ljava/lang/String;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;->a:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->setSearchHint(Ljava/lang/String;)V

    return-void
.end method

.method public setSearchText(Ljava/lang/String;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;->a:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->setSearchText(Ljava/lang/String;)V

    return-void
.end method
