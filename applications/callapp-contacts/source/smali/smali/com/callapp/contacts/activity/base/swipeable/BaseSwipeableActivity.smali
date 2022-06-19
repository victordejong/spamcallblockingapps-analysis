.class public abstract Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;
.super Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/contact/list/ViewPagerManager;
.implements Lcom/callapp/contacts/widget/SearchAnimationToolbar$OnSearchQueryChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity$TabSelectedListenerWrapper;
    }
.end annotation


# instance fields
.field private a:Lcom/callapp/contacts/widget/SearchAnimationToolbar;

.field protected a_:Lcom/google/android/material/tabs/TabLayout;

.field public c:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

.field private d:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    return-void
.end method

.method protected final a(Landroidx/fragment/app/q;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->c:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/PagingTogglableViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    .line 64
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->a_:Lcom/google/android/material/tabs/TabLayout;

    iget-object v0, p0, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->c:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method

.method protected final a(Lcom/callapp/contacts/util/animation/AnimationListenerAdapter;)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->a_:Lcom/google/android/material/tabs/TabLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setVisibility(I)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 112
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/animation/AnimationListenerAdapter;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method protected final d()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->a_:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 118
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected abstract getActivityTitleResource()I
.end method

.method protected abstract getAnalyticsCategory()Ljava/lang/String;
.end method

.method public getCurrentPage()I
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->c:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/PagingTogglableViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0048

    return v0
.end method

.method public getSearchAnimationToolbar()Lcom/callapp/contacts/widget/SearchAnimationToolbar;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->a:Lcom/callapp/contacts/widget/SearchAnimationToolbar;

    return-object v0
.end method

.method protected getSearchContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->d:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected abstract getViewPagerOnTabSelectedListener()Lcom/google/android/material/tabs/TabLayout$c;
.end method

.method protected getViewPagerPosition()I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->c:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/PagingTogglableViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 4

    .line 124
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->getSearchAnimationToolbar()Lcom/callapp/contacts/widget/SearchAnimationToolbar;

    move-result-object v0

    .line 2225
    iget-object v1, v0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 2230
    :cond_1
    invoke-virtual {v0}, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->b()V

    .line 2231
    iget-object v0, v0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    :goto_1
    if-nez v2, :cond_2

    .line 127
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onBackPressed()V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 33
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a0aa8

    .line 34
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    iput-object p1, p0, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->c:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    const p1, 0x7f0a08d0

    .line 35
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->a_:Lcom/google/android/material/tabs/TabLayout;

    .line 36
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->c:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/PagingTogglableViewPager;->setPagingEnabled(Z)V

    const p1, 0x7f06008a

    .line 37
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    const v1, 0x7f060244

    .line 38
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    .line 39
    iget-object v2, p0, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->a_:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2, p1, v1}, Lcom/google/android/material/tabs/TabLayout;->setTabTextColors(II)V

    .line 40
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->a_:Lcom/google/android/material/tabs/TabLayout;

    new-instance v1, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity$TabSelectedListenerWrapper;

    iget-object v2, p0, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->c:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->getAnalyticsCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->getViewPagerOnTabSelectedListener()Lcom/google/android/material/tabs/TabLayout$c;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity$TabSelectedListenerWrapper;-><init>(Landroidx/viewpager/widget/ViewPager;Ljava/lang/String;Lcom/google/android/material/tabs/TabLayout$c;Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity$1;)V

    .line 1801
    invoke-virtual {p1, v1}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout$b;)V

    .line 41
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->a_:Lcom/google/android/material/tabs/TabLayout;

    const v1, 0x7f060088

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/android/material/tabs/TabLayout;->setBackgroundColor(I)V

    const p1, 0x7f0a07ab

    .line 2048
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/widget/SearchAnimationToolbar;

    iput-object p1, p0, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->a:Lcom/callapp/contacts/widget/SearchAnimationToolbar;

    .line 2049
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    .line 2050
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->a:Lcom/callapp/contacts/widget/SearchAnimationToolbar;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->getSearchToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    const v1, 0x7f060026

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    .line 2051
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->a:Lcom/callapp/contacts/widget/SearchAnimationToolbar;

    const v2, 0x7f06010d

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->setSearchTextColor(I)V

    .line 2052
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->a:Lcom/callapp/contacts/widget/SearchAnimationToolbar;

    const v2, 0x7f0601cc

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->setSearchHintColor(I)V

    .line 2053
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->a:Lcom/callapp/contacts/widget/SearchAnimationToolbar;

    invoke-virtual {p1, p0}, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->setSupportActionBar(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 2054
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->a:Lcom/callapp/contacts/widget/SearchAnimationToolbar;

    const v2, 0x7f12070f

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->setSearchHint(Ljava/lang/String;)V

    .line 2055
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->a:Lcom/callapp/contacts/widget/SearchAnimationToolbar;

    invoke-virtual {p1, p0}, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->setOnSearchQueryChangedListener(Lcom/callapp/contacts/widget/SearchAnimationToolbar$OnSearchQueryChangedListener;)V

    .line 2056
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->a:Lcom/callapp/contacts/widget/SearchAnimationToolbar;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->getActivityTitleResource()I

    move-result v2

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->setTitle(Ljava/lang/String;)V

    .line 2057
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->a:Lcom/callapp/contacts/widget/SearchAnimationToolbar;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 2058
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const v2, 0x7f0804c7

    invoke-static {v2}, Lcom/callapp/contacts/util/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/ActionBar;->b(Landroid/graphics/drawable/Drawable;)V

    .line 2059
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->a(Z)V

    const p1, 0x7f0a07ad

    .line 43
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->d:Landroid/view/ViewGroup;

    .line 44
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-void
.end method

.method protected setPagingEnabled(Z)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->c:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/PagingTogglableViewPager;->setPagingEnabled(Z)V

    return-void
.end method
