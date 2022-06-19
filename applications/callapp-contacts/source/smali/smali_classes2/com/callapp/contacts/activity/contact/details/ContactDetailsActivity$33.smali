.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->loadInterstitialIfNeeded(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Z)V
    .locals 0

    .line 2150
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iput-boolean p2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(ZLcom/callapp/contacts/util/ads/JSONAdPreferences;)Z
    .locals 7

    .line 2193
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ec:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_7

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gj:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 2196
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    const-string v3, "daysNotToShowAdsInCDInterstitialForNewUsers"

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->b(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    .line 2197
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ah:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->isNotNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2198
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getDaysSinceInstall()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-ltz v0, :cond_8

    .line 2201
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getCallNumberToday()I

    move-result v0

    .line 2202
    invoke-virtual {p2}, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->getInterstitialFirst()I

    move-result v3

    .line 2203
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->cI:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->cH:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 2204
    invoke-virtual {v4}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p2}, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->getInterstitialCap()I

    move-result v5

    if-ge v4, v5, :cond_2

    if-eq v0, v3, :cond_3

    if-le v0, v3, :cond_2

    sub-int v3, v0, v3

    .line 2205
    invoke-virtual {p2}, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->getInterstitialInterval()I

    move-result p2

    rem-int/2addr v3, p2

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 2207
    :cond_3
    :goto_0
    const-class p2, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "loadInterstitialIfNeeded res: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", missedInterstitialOnInterval: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->cI:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", amountOfInterstitialSeenToday: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->cH:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", callNumberToday: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    if-eqz v2, :cond_4

    .line 2210
    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->cI:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 2213
    :cond_4
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object p2

    const-string v0, "CDInterstitialShowOnCallState"

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_5

    const-string v0, "outgoing"

    .line 2214
    invoke-static {p2, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_5
    if-nez p1, :cond_6

    const-string p1, "incoming"

    invoke-static {p2, p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v1, 0x1

    .line 2220
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {p1, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$4902(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Z)Z

    .line 2221
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$4900(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object p1

    const-string p2, "cdInterstitialShowAnalytics"

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 2222
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string p2, "Ad"

    const-string v0, "InterstitialShowLoad"

    invoke-virtual {p1, p2, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return v1
.end method

.method public static synthetic lambda$gubne3NVVqcfoE4E8QXJC2L2SgU(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;ZLcom/callapp/contacts/util/ads/JSONAdPreferences;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;->a(ZLcom/callapp/contacts/util/ads/JSONAdPreferences;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 2154
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$4500(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2155
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$4500(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/j;->removeObserver(Landroidx/lifecycle/o;)V

    .line 2157
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    new-instance v1, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;

    sget-object v2, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->x:Ljava/lang/String;

    const-string v3, "CDInterstitialBidding"

    .line 2158
    invoke-static {v3, v2}, Lcom/callapp/contacts/util/ads/AdUtils;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v4

    new-instance v6, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33$1;

    invoke-direct {v6, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33$1;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;)V

    iget-boolean v2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;->a:Z

    new-instance v7, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$33$gubne3NVVqcfoE4E8QXJC2L2SgU;

    invoke-direct {v7, p0, v2}, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$33$gubne3NVVqcfoE4E8QXJC2L2SgU;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;Z)V

    const-string v5, "CDInterstitialPreferences"

    move-object v2, v1

    move-object v3, v0

    invoke-direct/range {v2 .. v7}, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;-><init>(Landroid/app/Activity;Landroid/util/Pair;Ljava/lang/String;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$ShouldLoadIntervalPredicate;)V

    .line 2157
    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$4502(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;)Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;

    .line 2228
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$4500(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/j;->addObserver(Landroidx/lifecycle/o;)V

    return-void
.end method
