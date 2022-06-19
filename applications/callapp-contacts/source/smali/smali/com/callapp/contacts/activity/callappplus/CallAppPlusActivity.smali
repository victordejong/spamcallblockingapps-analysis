.class public Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;
.super Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter$OnFilterChangeListener;
.implements Lcom/callapp/contacts/activity/interfaces/CallAppPlusFilter;
.implements Lcom/callapp/contacts/activity/interfaces/FilterEvents;
.implements Lcom/callapp/contacts/activity/interfaces/SearchBarFilterEvents;
.implements Lcom/callapp/contacts/widget/SearchAnimationToolbar$OnSearchQueryChangedListener;


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/activity/interfaces/CallAppFilter;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/activity/interfaces/SearchBarFilter;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/callapp/contacts/activity/callappplus/SearchCallAppPlusFragment;

.field private f:Ljava/lang/String;

.field private g:Lcom/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController;

.field private h:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

.field private j:Lcom/google/android/material/appbar/AppBarLayout;

.field private k:F

.field private l:Landroid/view/MenuItem;

.field private m:Landroid/view/View;

.field private n:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->a:Ljava/util/Set;

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->d:Ljava/util/Set;

    .line 67
    new-instance v0, Lcom/callapp/contacts/activity/callappplus/SearchCallAppPlusFragment;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/callappplus/SearchCallAppPlusFragment;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->e:Lcom/callapp/contacts/activity/callappplus/SearchCallAppPlusFragment;

    const-string v0, ""

    .line 69
    iput-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->f:Ljava/lang/String;

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->k:F

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 127
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->d()V

    .line 128
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->g:Lcom/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController;->a()V

    const/4 p1, 0x1

    .line 129
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->setPagingEnabled(Z)V

    .line 130
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->a(Z)V

    .line 131
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method private a(Z)V
    .locals 7

    .line 328
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->getSearchAnimationToolbar()Lcom/callapp/contacts/widget/SearchAnimationToolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 4270
    iput p1, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->a:I

    .line 331
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->getSearchAnimationToolbar()Lcom/callapp/contacts/widget/SearchAnimationToolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->getY()F

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->k:F

    .line 332
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->j:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;

    .line 4952
    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 333
    move-object v1, v0

    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    if-eqz v1, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->getSearchAnimationToolbar()Lcom/callapp/contacts/widget/SearchAnimationToolbar;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->setY(F)V

    .line 336
    invoke-virtual {v1, p1}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->b(I)Z

    .line 337
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->j:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v3, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->j:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x447a0000    # 1000.0f

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    .line 339
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->h:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 341
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->getSearchAnimationToolbar()Lcom/callapp/contacts/widget/SearchAnimationToolbar;

    move-result-object p1

    iget v1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->k:F

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->setY(F)V

    const/4 p1, 0x1

    .line 5270
    iput p1, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->a:I

    .line 343
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->h:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    const v0, 0x7f060088

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setContentScrimColor(I)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .line 422
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->f:Ljava/lang/String;

    .line 424
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->a:Ljava/util/Set;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/interfaces/CallAppFilter;

    .line 426
    iget-object v2, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->f:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/callapp/contacts/activity/interfaces/CallAppFilter;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->d:Ljava/util/Set;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/interfaces/SearchBarFilter;

    .line 433
    invoke-interface {v1, p1}, Lcom/callapp/contacts/activity/interfaces/SearchBarFilter;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static synthetic lambda$ZWXsqcq6Jr7mIZMR8IMJ1zwPhKM(Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->a(Landroid/view/View;)V

    return-void
.end method

.method public static setPremiumFlow(Z)V
    .locals 1

    .line 439
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aL:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 440
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->aL:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 441
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->aM:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    .line 442
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->aN:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 443
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->aO:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 444
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->cD:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 445
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->cC:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/callapp/contacts/activity/interfaces/CallAppFilter;)V
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/callapp/contacts/activity/interfaces/SearchBarFilter;)V
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 361
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 2

    const-string v0, ""

    .line 349
    iput-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->f:Ljava/lang/String;

    .line 350
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->b(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->g:Lcom/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController;->isViewShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->d()V

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->getSearchContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 356
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->a()Landroidx/fragment/app/s;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->e:Lcom/callapp/contacts/activity/callappplus/SearchCallAppPlusFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/s;->b()I

    return-void
.end method

.method public final b(Lcom/callapp/contacts/activity/interfaces/CallAppFilter;)V
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lcom/callapp/contacts/activity/interfaces/SearchBarFilter;)V
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()V
    .locals 3

    const/4 v0, 0x0

    .line 366
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->a(Lcom/callapp/contacts/util/animation/AnimationListenerAdapter;)V

    const/4 v0, 0x0

    .line 367
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->setFilterViewVisiblity(Z)V

    .line 368
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->getSearchContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->e:Lcom/callapp/contacts/activity/callappplus/SearchCallAppPlusFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/callappplus/SearchCallAppPlusFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->a()Landroidx/fragment/app/s;

    move-result-object v0

    const v1, 0x7f0a07ad

    iget-object v2, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->e:Lcom/callapp/contacts/activity/callappplus/SearchCallAppPlusFragment;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/s;->a(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/s;->b()I

    :cond_0
    return-void
.end method

.method public getActiveFilter()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->g:Lcom/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController;->getActiveFilters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getActivityTitleResource()I
    .locals 1

    const v0, 0x7f12039c

    return v0
.end method

.method public getAnalyticsCategory()Ljava/lang/String;
    .locals 1

    const-string v0, "CallAppPlus"

    return-object v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0027

    return v0
.end method

.method public getViewPagerAdapter()Landroidx/fragment/app/q;
    .locals 2

    .line 251
    new-instance v0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusPagerAdapter;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusPagerAdapter;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    return-object v0
.end method

.method public getViewPagerOnTabSelectedListener()Lcom/google/android/material/tabs/TabLayout$c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAllSelected()Z
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->g:Lcom/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController;->isAllSelected()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 21

    move-object/from16 v6, p0

    .line 82
    const-class v7, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;

    invoke-super/range {p0 .. p1}, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    new-instance v8, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;

    const-string v0, "CallappPlusListInterstitialBidding"

    const-string v1, "CallappPlusListInterstitialAdUnitId"

    .line 85
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/AdUtils;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    new-instance v4, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$BottomBarActivityInterstitialAdEvents;

    invoke-direct {v4}, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$BottomBarActivityInterstitialAdEvents;-><init>()V

    sget-object v5, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$BottomBarActivityInterstitialAdEvents;->a:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$ShouldLoadIntervalPredicate;

    const-string v3, "CallappPlusListInterstitialPreferences"

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;-><init>(Landroid/app/Activity;Landroid/util/Pair;Ljava/lang/String;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$ShouldLoadIntervalPredicate;)V

    iput-object v8, v6, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->n:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v0

    iget-object v1, v6, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->n:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/j;->addObserver(Landroidx/lifecycle/o;)V

    .line 89
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "CallappPlus Screen"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;)V

    const-string v0, "CallAppPlus"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 91
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;->isAllowedToShowAccessRequestPopup()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f120385

    .line 92
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120384

    .line 93
    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 94
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getNotificationListenersSettingsScreenIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/callapp/contacts/util/Activities;->b()Z

    move-result v4

    if-nez v4, :cond_1

    .line 95
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v4

    const-string v5, "Permissions"

    const-string v8, "ViewPermissionToNotificationPopup"

    invoke-virtual {v4, v5, v8, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->cD:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 3039
    invoke-virtual {v4, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 97
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->cC:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    .line 98
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v4

    new-instance v5, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;

    const v9, 0x7f0800a6

    .line 100
    invoke-static {}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->isBillingAvailable()Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v8, Lcom/callapp/contacts/manager/preferences/Prefs;->aL:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v8}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v8, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v8}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_0

    const v8, 0x7f080078

    const v10, 0x7f080078

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x0

    new-array v8, v2, [C

    .line 102
    invoke-static {v3, v8}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f060088

    const v3, 0x7f1204ea

    .line 103
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v15

    new-instance v3, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity$1;

    invoke-direct {v3, v6}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity$1;-><init>(Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;)V

    const v8, 0x7f1202b5

    .line 109
    invoke-static {v8}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    const v8, 0x7f0601cc

    invoke-static {v8}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v19

    new-instance v8, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity$2;

    invoke-direct {v8, v6}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity$2;-><init>(Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;)V

    move-object/from16 v20, v8

    move-object v8, v5

    move-object/from16 v16, v3

    invoke-direct/range {v8 .. v20}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;-><init>(IIILjava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ZILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 98
    invoke-virtual {v4, v6, v5}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    :cond_1
    const v3, 0x7f0a00e4

    .line 117
    invoke-virtual {v6, v3}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v3, v6, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->j:Lcom/google/android/material/appbar/AppBarLayout;

    const v3, 0x7f0a07ad

    .line 118
    invoke-virtual {v6, v3}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v6, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->m:Landroid/view/View;

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->getViewPagerAdapter()Landroidx/fragment/app/q;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->a(Landroidx/fragment/app/q;)V

    const v3, 0x7f0a024f

    .line 120
    invoke-virtual {v6, v3}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object v3, v6, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->h:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    const v4, 0x7f060088

    .line 121
    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setContentScrimColor(I)V

    .line 122
    new-instance v3, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController;

    iget-object v4, v6, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->h:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    new-instance v5, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;

    invoke-direct {v5, v6}, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;-><init>(Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter$OnFilterChangeListener;)V

    invoke-direct {v3, v4, v5}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController;-><init>(Landroid/view/View;Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;)V

    iput-object v3, v6, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->g:Lcom/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController;

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->d()V

    .line 125
    iget-object v3, v6, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->g:Lcom/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController;->a()V

    .line 126
    iget-object v3, v6, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->g:Lcom/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController;

    new-instance v4, Lcom/callapp/contacts/activity/callappplus/-$$Lambda$CallAppPlusActivity$ZWXsqcq6Jr7mIZMR8IMJ1zwPhKM;

    invoke-direct {v4, v6}, Lcom/callapp/contacts/activity/callappplus/-$$Lambda$CallAppPlusActivity$ZWXsqcq6Jr7mIZMR8IMJ1zwPhKM;-><init>(Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;)V

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController;->setOnCloseFiltersClickedListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-virtual {v6, v1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->setPagingEnabled(Z)V

    .line 134
    new-instance v3, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity$3;

    invoke-direct {v3, v6}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity$3;-><init>(Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;)V

    .line 3105
    iget-object v4, v6, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->c:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    invoke-virtual {v4, v3}, Lcom/callapp/contacts/widget/PagingTogglableViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$e;)V

    .line 147
    invoke-direct {v6, v1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->a(Z)V

    .line 3162
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getNotificationListenersSettingsScreenIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/callapp/contacts/util/Activities;->b()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3164
    invoke-static {}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->isBillingAvailable()Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->aL:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_7

    .line 3165
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->aM:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, "user start the callapp + trial time, init the pref "

    .line 3167
    invoke-static {v7, v3}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 3168
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->aM:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    .line 3170
    :cond_2
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->aM:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Date;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4, v5}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    const-wide/16 v8, 0xa

    cmp-long v5, v3, v8

    if-gtz v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    const v5, 0x7f0a0892

    .line 3172
    invoke-virtual {v6, v5}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;

    .line 3173
    new-instance v8, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity$4;

    invoke-direct {v8, v6, v1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity$4;-><init>(Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;Z)V

    invoke-virtual {v5, v8}, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v1, :cond_4

    .line 3186
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "time for trial "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 3188
    invoke-virtual {v5, v2}, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->setVisibility(I)V

    .line 3189
    sget-object v1, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;->CALLAPP_PLUS_SMALL:Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;

    invoke-virtual {v5, v1}, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->setPremiumGroup(Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;)V

    .line 3190
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v7

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    new-array v13, v2, [Ljava/lang/String;

    const-string v8, "CallAppPlus"

    const-string v9, "ViewBannerTrial"

    const-string v10, "Trial"

    invoke-virtual/range {v7 .. v13}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3192
    :cond_4
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v8, "first time enter after trial ends + "

    invoke-virtual {v8, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 3193
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->aN:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    const v1, 0x7f12018c

    .line 3219
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f12018b

    .line 3220
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 3221
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->aN:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 3222
    new-instance v3, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;

    const v8, 0x7f0800aa

    const/4 v9, 0x0

    const v10, 0x7f080079

    new-array v4, v2, [C

    invoke-static {v1, v4}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f060088

    const v1, 0x7f120187

    .line 3223
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity$6;

    invoke-direct {v15, v6}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity$6;-><init>(Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;)V

    const/16 v17, 0x1

    const v18, 0x7f0601cc

    new-instance v1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity$7;

    invoke-direct {v1, v6}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity$7;-><init>(Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;)V

    const-string v16, ""

    move-object v7, v3

    move-object/from16 v19, v1

    invoke-direct/range {v7 .. v19}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;-><init>(IIILjava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ZILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 3239
    invoke-virtual {v3, v2}, Lcom/callapp/contacts/manager/popup/DialogPopup;->setCancelable(Z)V

    .line 3240
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v1

    invoke-virtual {v1, v6, v3}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    goto :goto_2

    .line 3197
    :cond_5
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "trial ends + "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 3199
    invoke-virtual {v5, v2}, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->setVisibility(I)V

    .line 3200
    sget-object v1, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;->CALLAPP_PLUS_BIG:Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;

    invoke-virtual {v5, v1}, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->setPremiumGroup(Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;)V

    .line 3201
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v7

    const-wide/16 v11, 0x0

    new-array v13, v2, [Ljava/lang/String;

    const-string v8, "CallAppPlus"

    const-string v9, "ViewBannerTrial"

    const-string v10, "Trial"

    invoke-virtual/range {v7 .. v13}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 3205
    :goto_2
    iget-object v1, v6, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->m:Landroid/view/View;

    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->di:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->isLightTheme()Z

    move-result v3

    if-eqz v3, :cond_6

    const v3, 0x7f08008c

    goto :goto_3

    :cond_6
    const v3, 0x7f08008d

    :goto_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3206
    iget-object v1, v6, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->m:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3207
    iget-object v1, v6, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->m:Landroid/view/View;

    new-instance v2, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity$5;

    invoke-direct {v2, v6}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity$5;-><init>(Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    :cond_7
    :goto_4
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    const-string v2, "ViewScreenCallAppPlus"

    invoke-virtual {v1, v0, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    .line 278
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e000a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a05c8

    .line 279
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->getViewPagerPosition()I

    move-result v2

    sget v3, Lcom/callapp/contacts/activity/callappplus/CallAppPlusPagerAdapter;->a:I

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->l:Landroid/view/MenuItem;

    .line 280
    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f060244

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 281
    invoke-static {}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->isBillingAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->aL:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 282
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->aM:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    const-wide/16 v5, 0xa

    cmp-long v3, v1, v5

    if-lez v3, :cond_1

    const v1, 0x7f0a00ab

    .line 285
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 286
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 289
    :cond_1
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroy()V
    .locals 4

    .line 156
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->n:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/j;->removeObserver(Landroidx/lifecycle/o;)V

    .line 157
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Screen"

    const-string v2, "ScreenClose"

    const-string v3, "CallappPlus Screen"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 294
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a00ab

    if-eq v0, v1, :cond_2

    const v1, 0x7f0a05c8

    if-eq v0, v1, :cond_0

    .line 310
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 300
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->g:Lcom/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController;->isViewShown()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    .line 301
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->setFilterViewVisiblity(Z)V

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 303
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->a(Lcom/callapp/contacts/util/animation/AnimationListenerAdapter;)V

    goto :goto_0

    .line 305
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->d()V

    :goto_0
    return v0

    .line 297
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->getSearchAnimationToolbar()Lcom/callapp/contacts/widget/SearchAnimationToolbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->a()Z

    move-result p1

    return p1
.end method

.method public onStop()V
    .locals 4

    .line 272
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/OnBadgeNotificationDataChangeListener;->b_:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v2, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CALLAPP_PLUS_UNREAD_COUNT_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const/4 v3, 0x0

    .line 4091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 273
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->onStop()V

    return-void
.end method

.method protected setFilterViewVisiblity(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 315
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->g:Lcom/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController;->b()V

    const/4 p1, 0x0

    .line 316
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->setPagingEnabled(Z)V

    .line 317
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->a(Z)V

    .line 318
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->l:Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const v0, 0x7f06008a

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void

    .line 320
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->g:Lcom/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController;->a()V

    const/4 p1, 0x1

    .line 321
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->setPagingEnabled(Z)V

    .line 322
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->a(Z)V

    .line 323
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->l:Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const v0, 0x7f060244

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
