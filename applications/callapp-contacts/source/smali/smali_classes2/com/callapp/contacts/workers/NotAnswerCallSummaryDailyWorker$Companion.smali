.class public final Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\r\u001a\u00020\u000eJ>\u0010\u000f\u001a\u00020\u000e2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u00042\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0019J\u0006\u0010\u001a\u001a\u00020\u000eJ\u0006\u0010\u001b\u001a\u00020\u000eR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0008X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;",
        "",
        "()V",
        "NOT_ANSWERED_HOUR_OF_DAY",
        "",
        "getNOT_ANSWERED_HOUR_OF_DAY",
        "()I",
        "TAG",
        "",
        "getTAG",
        "()Ljava/lang/String;",
        "multiSizeAdLoader",
        "Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;",
        "openNotAnsweredSummary",
        "",
        "openNotAnsweredSummaryActivity",
        "callList",
        "",
        "Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;",
        "numberOfCalls",
        "moPubView",
        "Lcom/mopub/mobileads/MoPubView;",
        "nativeAd",
        "Lcom/mopub/nativeads/NativeAd;",
        "disableRefresh",
        "",
        "scheduleJob",
        "showPendingNotAnsweredSummary",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/List;ILcom/mopub/mobileads/MoPubView;Lcom/mopub/nativeads/NativeAd;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;",
            ">;I",
            "Lcom/mopub/mobileads/MoPubView;",
            "Lcom/mopub/nativeads/NativeAd;",
            "Z)V"
        }
    .end annotation

    const-string v0, "callList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aW:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Prefs.setupCompleted.get()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 144
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/callapp/contacts/activity/missedcall/daySummary/NotAnswerDaySummaryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 145
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 146
    sget-object v1, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker;->a:Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;

    invoke-virtual {v1}, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;->getYESTERDAY_MISSED_CALL_LIST()Ljava/lang/String;

    move-result-object v1

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 148
    sget-object p0, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker;->a:Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;

    invoke-virtual {p0}, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;->getYESTERDAY_MISSED_CALL_TOTAL_NUMBER()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    invoke-static {}, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker;->c()Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    move-result-object p0

    if-eqz p0, :cond_1

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 150
    :cond_0
    new-instance p0, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;

    invoke-static {}, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker;->c()Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;-><init>(Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;Lcom/mopub/mobileads/MoPubView;Lcom/mopub/nativeads/NativeAd;Z)V

    .line 151
    sget-object p1, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache;->a:Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$Companion;

    const-class p1, Lcom/callapp/contacts/activity/missedcall/daySummary/NotAnswerDaySummaryActivity;

    invoke-static {p1, p0}, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$Companion;->a(Ljava/lang/Class;Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;)V

    const/4 p0, 0x1

    const-string p1, "AD_LOADED"

    .line 152
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 154
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker;->c()Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->b()V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 157
    invoke-static {p0}, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker;->a(Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;)V

    .line 159
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_3
    return-void
.end method

.method public static synthetic a(Ljava/util/List;ILcom/mopub/mobileads/MoPubView;Lcom/mopub/nativeads/NativeAd;ZI)V
    .locals 2

    and-int/lit8 v0, p5, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p2, v1

    :cond_0
    and-int/lit8 v0, p5, 0x8

    if-eqz v0, :cond_1

    move-object p3, v1

    :cond_1
    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 142
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;->a(Ljava/util/List;ILcom/mopub/mobileads/MoPubView;Lcom/mopub/nativeads/NativeAd;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 15

    .line 64
    new-instance v0, Lkotlin/jvm/internal/ab$a;

    invoke-direct {v0}, Lkotlin/jvm/internal/ab$a;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lkotlin/jvm/internal/ab$a;->a:Z

    .line 66
    invoke-static {}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->isNotAnswerDailySummaryEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    const-string v2, "android.permission.READ_CALL_LOG"

    invoke-static {v2}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 67
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0x28

    .line 68
    move-object v4, p0

    check-cast v4, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;

    invoke-virtual {v4}, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;->getNOT_ANSWERED_HOUR_OF_DAY()I

    move-result v4

    invoke-static {v3, v4, v2}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->a(IILjava/util/Calendar;)Landroid/util/Pair;

    move-result-object v2

    .line 69
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Ljava/util/List;

    .line 70
    move-object v3, v4

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 71
    invoke-static {}, Lcom/callapp/contacts/util/ads/AdUtils;->a()Z

    move-result v3

    const-string/jumbo v5, "yesterdayCalls.second"

    const-string v6, "callList"

    if-nez v3, :cond_4

    const-string v3, "NotAnsweredSummaryPreferences"

    .line 72
    invoke-static {v3}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Ljava/lang/String;)Lcom/callapp/contacts/util/ads/JSONAdPreferences;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 73
    invoke-virtual {v3}, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->getRefreshInterval()I

    move-result v7

    move v11, v7

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    const/4 v7, 0x1

    if-eqz v3, :cond_1

    .line 74
    invoke-virtual {v3}, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->isRetryAfterFail()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    .line 75
    :goto_1
    invoke-static {v7}, Lcom/callapp/contacts/util/Activities;->getScreenWidth(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->b(F)F

    move-result v14

    .line 77
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 78
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroid/content/Context;

    .line 79
    new-instance v3, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$1;

    invoke-direct {v3, v0, v4, v2, v1}, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$1;-><init>(Lkotlin/jvm/internal/ab$a;Ljava/util/List;Landroid/util/Pair;Ljava/util/concurrent/CountDownLatch;)V

    move-object v9, v3

    check-cast v9, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    .line 112
    sget-object v3, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->o:Ljava/lang/String;

    sget-object v10, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->e:Ljava/lang/String;

    invoke-static {v3, v10}, Lcom/callapp/contacts/util/ads/AdUtils;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v10

    .line 113
    new-instance v3, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$2;

    invoke-direct {v3}, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$2;-><init>()V

    move-object v13, v3

    check-cast v13, Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    .line 78
    invoke-static/range {v8 .. v14}, Lcom/callapp/contacts/util/ads/loaders/AdLoaderFactory;->a(Landroid/content/Context;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Landroid/util/Pair;IZLcom/callapp/contacts/util/ads/NativeAdParamGetter;F)Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker;->a(Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;)V

    .line 126
    invoke-static {}, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker;->c()Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->a()V

    .line 128
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v3

    const-string v8, "MissedNotAnsweredPreloadTimeoutSec"

    invoke-virtual {v3, v8}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->b(Ljava/lang/String;)J

    move-result-wide v8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v8, v9, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    .line 130
    iget-boolean v1, v0, Lkotlin/jvm/internal/ab$a;->a:Z

    if-nez v1, :cond_3

    .line 131
    iput-boolean v7, v0, Lkotlin/jvm/internal/ab$a;->a:Z

    .line 132
    invoke-static {v4, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1c

    invoke-static/range {v4 .. v9}, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;->a(Ljava/util/List;ILcom/mopub/mobileads/MoPubView;Lcom/mopub/nativeads/NativeAd;ZI)V

    :cond_3
    return-void

    .line 136
    :cond_4
    invoke-static {v4, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1c

    invoke-static/range {v4 .. v9}, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;->a(Ljava/util/List;ILcom/mopub/mobileads/MoPubView;Lcom/mopub/nativeads/NativeAd;ZI)V

    :cond_5
    return-void
.end method

.method public final b()V
    .locals 7

    .line 164
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 165
    move-object v1, p0

    check-cast v1, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;

    invoke-virtual {v1}, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;->getNOT_ANSWERED_HOUR_OF_DAY()I

    move-result v2

    const/16 v3, 0xb

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 167
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 168
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x5

    const/4 v4, 0x1

    .line 169
    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    :cond_0
    const-string v3, "calendar"

    .line 172
    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const-string v0, "now"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 175
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1184
    invoke-static {v0}, Landroidx/work/impl/j;->b(Landroid/content/Context;)Landroidx/work/impl/j;

    move-result-object v0

    .line 175
    move-object v2, p0

    check-cast v2, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;

    invoke-virtual {v2}, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;->getTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/work/u;->a(Ljava/lang/String;)Landroidx/work/n;

    move-result-object v0

    const-string v2, "WorkManager.getInstance(\u2026).cancelAllWorkByTag(TAG)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Landroidx/work/n;->a()Lcom/google/common/util/concurrent/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/util/concurrent/a;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 177
    const-class v2, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 205
    :goto_0
    new-instance v0, Landroidx/work/m$a;

    const-class v2, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker;

    invoke-direct {v0, v2}, Landroidx/work/m$a;-><init>(Ljava/lang/Class;)V

    .line 180
    invoke-virtual {v1}, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;->getTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/work/m$a;->a(Ljava/lang/String;)Landroidx/work/v$a;

    move-result-object v0

    check-cast v0, Landroidx/work/m$a;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v1}, Landroidx/work/m$a;->a(JLjava/util/concurrent/TimeUnit;)Landroidx/work/v$a;

    move-result-object v0

    check-cast v0, Landroidx/work/m$a;

    invoke-virtual {v0}, Landroidx/work/m$a;->c()Landroidx/work/v;

    move-result-object v0

    const-string v1, "OneTimeWorkRequestBuilde\u2026nit.MILLISECONDS).build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/work/m;

    .line 182
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 2184
    invoke-static {v1}, Landroidx/work/impl/j;->b(Landroid/content/Context;)Landroidx/work/impl/j;

    move-result-object v1

    .line 182
    check-cast v0, Landroidx/work/v;

    invoke-virtual {v1, v0}, Landroidx/work/u;->a(Landroidx/work/v;)Landroidx/work/n;

    return-void
.end method

.method public final getNOT_ANSWERED_HOUR_OF_DAY()I
    .locals 1

    .line 49
    invoke-static {}, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker;->a()I

    move-result v0

    return v0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1

    .line 52
    invoke-static {}, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
