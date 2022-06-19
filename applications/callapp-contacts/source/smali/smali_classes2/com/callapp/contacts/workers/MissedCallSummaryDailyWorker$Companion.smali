.class public final Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker;
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
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J@\u0010\r\u001a\u00020\u000e2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00102\u0006\u0010\u0012\u001a\u00020\u00132\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0019H\u0002J\u0006\u0010\u001a\u001a\u00020\u000eJ\u0006\u0010\u001b\u001a\u00020\u000eJ\u0006\u0010\u001c\u001a\u00020\u000eR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "getTAG",
        "()Ljava/lang/String;",
        "YESTERDAY_MISSED_CALL_LIST",
        "getYESTERDAY_MISSED_CALL_LIST",
        "YESTERDAY_MISSED_CALL_TOTAL_NUMBER",
        "getYESTERDAY_MISSED_CALL_TOTAL_NUMBER",
        "multiSizeAdLoader",
        "Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;",
        "openMissedCallDaySummeryActivity",
        "",
        "callList",
        "",
        "Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;",
        "numberOfCalls",
        "",
        "moPubView",
        "Lcom/mopub/mobileads/MoPubView;",
        "nativeAd",
        "Lcom/mopub/nativeads/NativeAd;",
        "disableRefresh",
        "",
        "openMissedCallSummary",
        "scheduleJob",
        "showPendingMissedCallSummary",
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

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;Ljava/util/List;ILcom/mopub/mobileads/MoPubView;Lcom/mopub/nativeads/NativeAd;ZI)V
    .locals 8

    and-int/lit8 v0, p6, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, p4

    :goto_1
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    const/4 p5, 0x0

    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    move v7, p5

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    .line 145
    invoke-direct/range {v2 .. v7}, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;->a(Ljava/util/List;ILcom/mopub/mobileads/MoPubView;Lcom/mopub/nativeads/NativeAd;Z)V

    return-void
.end method

.method private final a(Ljava/util/List;ILcom/mopub/mobileads/MoPubView;Lcom/mopub/nativeads/NativeAd;Z)V
    .locals 4
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

    .line 146
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aW:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Prefs.setupCompleted.get()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallDaySummaryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 149
    move-object v1, p0

    check-cast v1, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;

    invoke-virtual {v1}, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;->getYESTERDAY_MISSED_CALL_LIST()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type java.util.ArrayList<out android.os.Parcelable>"

    invoke-static {p1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 150
    invoke-virtual {v1}, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;->getYESTERDAY_MISSED_CALL_TOTAL_NUMBER()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    invoke-static {}, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker;->d()Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    move-result-object p1

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    .line 152
    :cond_0
    new-instance p1, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;

    invoke-static {}, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker;->d()Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-direct {p1, p2, p3, p4, p5}, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;-><init>(Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;Lcom/mopub/mobileads/MoPubView;Lcom/mopub/nativeads/NativeAd;Z)V

    .line 153
    sget-object p2, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache;->a:Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$Companion;

    const-class p2, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallDaySummaryActivity;

    invoke-static {p2, p1}, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$Companion;->a(Ljava/lang/Class;Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;)V

    const/4 p1, 0x1

    const-string p2, "AD_LOADED"

    .line 154
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 156
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker;->d()Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->b()V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 159
    invoke-static {p1}, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker;->a(Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;)V

    .line 161
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_3
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 15

    .line 65
    new-instance v0, Lkotlin/jvm/internal/ab$a;

    invoke-direct {v0}, Lkotlin/jvm/internal/ab$a;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lkotlin/jvm/internal/ab$a;->a:Z

    .line 67
    invoke-static {}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->isMissedCallDailySummaryEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    const-string v2, "android.permission.READ_CALL_LOG"

    invoke-static {v2}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 68
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xb

    .line 69
    invoke-virtual {v2, v3, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    .line 70
    invoke-virtual {v2, v3, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x3

    .line 71
    invoke-static {v3, v1, v2}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->a(IILjava/util/Calendar;)Landroid/util/Pair;

    move-result-object v2

    .line 72
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v3

    check-cast v5, Ljava/util/List;

    .line 73
    move-object v3, v5

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 74
    invoke-static {}, Lcom/callapp/contacts/util/ads/AdUtils;->a()Z

    move-result v3

    const-string v4, "yesterdayCalls.second"

    const-string v6, "callList"

    if-nez v3, :cond_4

    const-string v3, "MissedCallSummaryPreferences"

    .line 75
    invoke-static {v3}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Ljava/lang/String;)Lcom/callapp/contacts/util/ads/JSONAdPreferences;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 76
    invoke-virtual {v3}, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->getRefreshInterval()I

    move-result v7

    move v11, v7

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    const/4 v7, 0x1

    if-eqz v3, :cond_1

    .line 77
    invoke-virtual {v3}, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->isRetryAfterFail()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    .line 78
    :goto_1
    invoke-static {v7}, Lcom/callapp/contacts/util/Activities;->getScreenWidth(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->b(F)F

    move-result v14

    .line 80
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 81
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroid/content/Context;

    .line 82
    new-instance v3, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion$openMissedCallSummary$1;

    invoke-direct {v3, v0, v5, v2, v1}, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion$openMissedCallSummary$1;-><init>(Lkotlin/jvm/internal/ab$a;Ljava/util/List;Landroid/util/Pair;Ljava/util/concurrent/CountDownLatch;)V

    move-object v9, v3

    check-cast v9, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    .line 115
    sget-object v3, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->n:Ljava/lang/String;

    sget-object v10, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->d:Ljava/lang/String;

    invoke-static {v3, v10}, Lcom/callapp/contacts/util/ads/AdUtils;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v10

    .line 116
    new-instance v3, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion$openMissedCallSummary$2;

    invoke-direct {v3}, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion$openMissedCallSummary$2;-><init>()V

    move-object v13, v3

    check-cast v13, Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    .line 81
    invoke-static/range {v8 .. v14}, Lcom/callapp/contacts/util/ads/loaders/AdLoaderFactory;->a(Landroid/content/Context;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Landroid/util/Pair;IZLcom/callapp/contacts/util/ads/NativeAdParamGetter;F)Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker;->a(Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;)V

    .line 129
    invoke-static {}, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker;->d()Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->a()V

    .line 131
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

    .line 133
    iget-boolean v1, v0, Lkotlin/jvm/internal/ab$a;->a:Z

    if-nez v1, :cond_3

    .line 134
    iput-boolean v7, v0, Lkotlin/jvm/internal/ab$a;->a:Z

    .line 135
    move-object v0, p0

    check-cast v0, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1c

    move-object v4, v0

    invoke-static/range {v4 .. v10}, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;->a(Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;Ljava/util/List;ILcom/mopub/mobileads/MoPubView;Lcom/mopub/nativeads/NativeAd;ZI)V

    :cond_3
    return-void

    .line 139
    :cond_4
    move-object v0, p0

    check-cast v0, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1c

    move-object v4, v0

    invoke-static/range {v4 .. v10}, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;->a(Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;Ljava/util/List;ILcom/mopub/mobileads/MoPubView;Lcom/mopub/nativeads/NativeAd;ZI)V

    :cond_5
    return-void
.end method

.method public final b()V
    .locals 4

    .line 166
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    const/16 v2, 0x9

    .line 167
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    const/16 v2, 0x1e

    .line 168
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 170
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 171
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x5

    const/4 v3, 0x1

    .line 172
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    :cond_0
    const-string v2, "calendar"

    .line 175
    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-string v0, "now"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long/2addr v2, v0

    .line 178
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1184
    invoke-static {v0}, Landroidx/work/impl/j;->b(Landroid/content/Context;)Landroidx/work/impl/j;

    move-result-object v0

    .line 178
    move-object v1, p0

    check-cast v1, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;

    invoke-virtual {v1}, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;->getTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/work/u;->a(Ljava/lang/String;)Landroidx/work/n;

    move-result-object v0

    const-string v1, "WorkManager.getInstance(\u2026).cancelAllWorkByTag(TAG)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Landroidx/work/n;->a()Lcom/google/common/util/concurrent/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/util/concurrent/a;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 180
    const-class v1, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 218
    :goto_0
    new-instance v0, Landroidx/work/m$a;

    const-class v1, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker;

    invoke-direct {v0, v1}, Landroidx/work/m$a;-><init>(Ljava/lang/Class;)V

    .line 183
    move-object v1, p0

    check-cast v1, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;

    invoke-virtual {v1}, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;->getTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/work/m$a;->a(Ljava/lang/String;)Landroidx/work/v$a;

    move-result-object v0

    check-cast v0, Landroidx/work/m$a;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Landroidx/work/m$a;->a(JLjava/util/concurrent/TimeUnit;)Landroidx/work/v$a;

    move-result-object v0

    check-cast v0, Landroidx/work/m$a;

    invoke-virtual {v0}, Landroidx/work/m$a;->c()Landroidx/work/v;

    move-result-object v0

    const-string v1, "OneTimeWorkRequestBuilde\u2026nit.MILLISECONDS).build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/work/m;

    .line 185
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 2184
    invoke-static {v1}, Landroidx/work/impl/j;->b(Landroid/content/Context;)Landroidx/work/impl/j;

    move-result-object v1

    .line 185
    check-cast v0, Landroidx/work/v;

    invoke-virtual {v1, v0}, Landroidx/work/u;->a(Landroidx/work/v;)Landroidx/work/n;

    return-void
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1

    .line 55
    invoke-static {}, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getYESTERDAY_MISSED_CALL_LIST()Ljava/lang/String;
    .locals 1

    .line 50
    invoke-static {}, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getYESTERDAY_MISSED_CALL_TOTAL_NUMBER()Ljava/lang/String;
    .locals 1

    .line 51
    invoke-static {}, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
