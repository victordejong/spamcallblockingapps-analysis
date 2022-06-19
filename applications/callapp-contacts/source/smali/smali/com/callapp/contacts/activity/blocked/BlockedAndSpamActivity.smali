.class public Lcom/callapp/contacts/activity/blocked/BlockedAndSpamActivity;
.super Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/ThemeChangedListener;


# instance fields
.field private a:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/blocked/BlockedAndSpamActivity;->d()V

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/blocked/BlockedAndSpamActivity;->a(Lcom/callapp/contacts/util/animation/AnimationListenerAdapter;)V

    return-void
.end method

.method public getActivityTitleResource()I
    .locals 1

    const v0, 0x7f120115

    return v0
.end method

.method public getAnalyticsCategory()Ljava/lang/String;
    .locals 1

    const-string v0, "Block and Spam"

    return-object v0
.end method

.method public getViewPagerAdapter()Landroidx/fragment/app/q;
    .locals 2

    .line 65
    new-instance v0, Lcom/callapp/contacts/activity/blocked/BlockedAndSpamPagerAdapter;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/blocked/BlockedAndSpamActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/activity/blocked/BlockedAndSpamPagerAdapter;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    return-object v0
.end method

.method public getViewPagerOnTabSelectedListener()Lcom/google/android/material/tabs/TabLayout$c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 29
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    new-instance p1, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;

    const-string v0, "SpamListInterstitialBidding"

    const-string v1, "SpamListInterstitialAdUnitId"

    .line 32
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/AdUtils;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    new-instance v4, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$BottomBarActivityInterstitialAdEvents;

    invoke-direct {v4}, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$BottomBarActivityInterstitialAdEvents;-><init>()V

    sget-object v5, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$BottomBarActivityInterstitialAdEvents;->a:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$ShouldLoadIntervalPredicate;

    const-string v3, "SpamListInterstitialPreferences"

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;-><init>(Landroid/app/Activity;Landroid/util/Pair;Ljava/lang/String;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$ShouldLoadIntervalPredicate;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/blocked/BlockedAndSpamActivity;->a:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;

    .line 34
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/blocked/BlockedAndSpamActivity;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/blocked/BlockedAndSpamActivity;->a:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/j;->addObserver(Landroidx/lifecycle/o;)V

    .line 36
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Call Blocker screen"

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/blocked/BlockedAndSpamActivity;->getViewPagerAdapter()Landroidx/fragment/app/q;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/blocked/BlockedAndSpamActivity;->a(Landroidx/fragment/app/q;)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 42
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/blocked/BlockedAndSpamActivity;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/blocked/BlockedAndSpamActivity;->a:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/j;->removeObserver(Landroidx/lifecycle/o;)V

    .line 43
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Screen"

    const-string v2, "ScreenClose"

    const-string v3, "Call Blocker screen"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->onDestroy()V

    return-void
.end method
