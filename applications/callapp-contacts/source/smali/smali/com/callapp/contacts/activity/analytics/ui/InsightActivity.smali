.class public Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;
.super Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$CardLoaded;
.implements Lcom/callapp/contacts/activity/analytics/ui/OnNewTabSelected;
.implements Lcom/google/android/material/tabs/TabLayout$c;


# instance fields
.field a:Ljava/lang/String;

.field private final d:Lcom/callapp/contacts/event/bus/EventBus;

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;-><init>()V

    .line 52
    new-instance v0, Lcom/callapp/contacts/event/bus/EventBus;

    invoke-direct {v0}, Lcom/callapp/contacts/event/bus/EventBus;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;->d:Lcom/callapp/contacts/event/bus/EventBus;

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;->e:I

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;)Lcom/callapp/contacts/event/bus/EventBus;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;->d:Lcom/callapp/contacts/event/bus/EventBus;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;->e:I

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 228
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;->e:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 229
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 231
    new-instance v0, Lcom/callapp/contacts/activity/analytics/cards/FirstTimeDialog;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/analytics/cards/FirstTimeDialog;-><init>()V

    .line 232
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;->d:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v2, Lcom/callapp/contacts/activity/analytics/data/UpdateAnalyticsCardEvent;->a:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v3, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->STATISTICS:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    .line 6091
    invoke-virtual {v0, v2, v3, v1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;->d:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v2, Lcom/callapp/contacts/activity/analytics/data/UpdateAnalyticsCardEvent;->a:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v3, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->INSIGHTS:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    .line 7091
    invoke-virtual {v0, v2, v3, v1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method

.method public final a(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 4

    .line 211
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gQ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const v1, 0x7f060244

    if-eqz v0, :cond_0

    .line 212
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    .line 213
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    .line 214
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->gQ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f06008a

    .line 217
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    .line 218
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    .line 220
    :goto_0
    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;->a_:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setTabTextColors(II)V

    .line 5087
    iget p1, p1, Lcom/google/android/material/tabs/TabLayout$f;->e:I

    .line 221
    iput p1, p0, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;->e:I

    .line 222
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;->d:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/analytics/ui/OnNewTabSelected;->b:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5091
    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 223
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;->a()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 0

    .line 188
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;->d()V

    return-void
.end method

.method public final b(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    .line 198
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;->a(Lcom/callapp/contacts/util/animation/AnimationListenerAdapter;)V

    return-void
.end method

.method public final c(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 0

    return-void
.end method

.method public getActivityTitleResource()I
    .locals 1

    const v0, 0x7f1203d1

    return v0
.end method

.method public getAnalyticsCategory()Ljava/lang/String;
    .locals 1

    const-string v0, "Insights"

    return-object v0
.end method

.method public getCardLoadedListener()Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$CardLoaded;
    .locals 0

    return-object p0
.end method

.method public getEventBus()Lcom/callapp/contacts/event/bus/EventBus;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;->d:Lcom/callapp/contacts/event/bus/EventBus;

    return-object v0
.end method

.method public getViewPagerAdapter()Landroidx/fragment/app/q;
    .locals 4

    .line 173
    new-instance v0, Lcom/callapp/contacts/activity/analytics/ui/InsightsPagerAdapter;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-boolean v2, p0, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;->f:Z

    iget-object v3, p0, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/callapp/contacts/activity/analytics/ui/InsightsPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;ZLjava/lang/String;)V

    return-object v0
.end method

.method public getViewPagerOnTabSelectedListener()Lcom/google/android/material/tabs/TabLayout$c;
    .locals 0

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 252
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x1d1d

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    const-string p1, "RESULT_USER_PHONE_NUMBER"

    .line 257
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "RESULT_USER_CALLAPP_TOKEN"

    .line 258
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "RESULT_USER_CALLAPP_TOKEN_TYPE"

    .line 259
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 261
    sget-object v0, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->SINCH:Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    invoke-virtual {v0}, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    invoke-static {}, Lcom/callapp/contacts/manager/PhoneVerifierManager;->get()Lcom/callapp/contacts/manager/PhoneVerifierManager;

    move-result-object p3

    sget-object v0, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->SINCH:Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    invoke-virtual {p3, p1, p2, v0}, Lcom/callapp/contacts/manager/PhoneVerifierManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;)V

    return-void

    .line 263
    :cond_1
    sget-object v0, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->CALLAPP:Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    invoke-virtual {v0}, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 264
    invoke-static {}, Lcom/callapp/contacts/manager/PhoneVerifierManager;->get()Lcom/callapp/contacts/manager/PhoneVerifierManager;

    move-result-object p3

    sget-object v0, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->CALLAPP:Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    invoke-virtual {p3, p1, p2, v0}, Lcom/callapp/contacts/manager/PhoneVerifierManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 59
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Insight Screen"

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "ENTER_FROM_BOTTOM_BAR"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;->f:Z

    .line 62
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "source"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;->a:Ljava/lang/String;

    .line 64
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;->f:Z

    if-nez p1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "CARD_PRIORITY"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 66
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "contactPriority: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    const/4 p1, 0x2

    new-array v10, p1, [Ljava/lang/String;

    aput-object v0, v10, v3

    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;->a:Ljava/lang/String;

    aput-object p1, v10, v1

    const-string v5, "Insights"

    const-string v6, "ViewInsightsStatsTab"

    invoke-virtual/range {v4 .. v10}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;->getViewPagerAdapter()Landroidx/fragment/app/q;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;->a(Landroidx/fragment/app/q;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 110
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 111
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroy()V
    .locals 11

    .line 90
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;->d:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/event/listener/DestroyListener;->d:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 91
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;->d:Lcom/callapp/contacts/event/bus/EventBus;

    invoke-virtual {v0}, Lcom/callapp/contacts/event/bus/EventBus;->a()V

    .line 92
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v4

    const/4 v0, 0x2

    new-array v10, v0, [Ljava/lang/String;

    const-string v0, "source"

    aput-object v0, v10, v3

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;->a:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object v0, v10, v1

    const-string v5, "Screen"

    const-string v6, "ScreenClose"

    const-string v7, "Insight Screen"

    const-wide/16 v8, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 93
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->onDestroy()V

    return-void
.end method

.method public onNewSelected()V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 116
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a05c6

    if-ne v0, v1, :cond_0

    .line 4125
    new-instance p1, Lcom/callapp/contacts/popup/contact/DialogList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/callapp/contacts/popup/contact/DialogList;-><init>(Ljava/lang/String;)V

    .line 4126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4127
    new-instance v1, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;

    const v2, 0x7f0802b2

    const v3, 0x7f1201de

    invoke-direct {v1, v2, v3}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4129
    new-instance v1, Lcom/callapp/contacts/popup/contact/AdapterIconAndText;

    const v2, 0x7f0d00aa

    invoke-direct {v1, p0, v2, v0}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 4130
    new-instance v0, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity$1;-><init>(Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;Lcom/callapp/contacts/popup/contact/DialogList;)V

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText;->setListener(Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;)V

    .line 4160
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/popup/contact/DialogList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4161
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    const/4 p1, 0x1

    return p1

    .line 121
    :cond_0
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;->d:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/event/listener/PauseListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 99
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 104
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->onResume()V

    .line 105
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;->d:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/event/listener/ResumeListener;->d:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method

.method public recreate()V
    .locals 5

    .line 73
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2090
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-virtual {v1}, Landroidx/fragment/app/r;->f()Ljava/util/List;

    move-result-object v1

    .line 75
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->a()Landroidx/fragment/app/s;

    move-result-object v0

    .line 77
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 78
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "analytics_graph"

    invoke-static {v3, v4}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    invoke-virtual {v0, v2}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/s;->d()V

    .line 85
    :cond_2
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->recreate()V

    return-void
.end method
