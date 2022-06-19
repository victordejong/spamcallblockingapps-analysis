.class public final Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;",
        "Landroidx/work/Worker;",
        "appContext",
        "Landroid/content/Context;",
        "workerParams",
        "Landroidx/work/WorkerParameters;",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "doWork",
        "Landroidx/work/ListenableWorker$Result;",
        "Companion",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final a:Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$Companion;

.field private static b:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

.field private static final c:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;

.field private static final h:Ljava/lang/String;

.field private static final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->a:Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$Companion;

    .line 36
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->c:Ljava/util/concurrent/locks/ReentrantLock;

    const-string v0, "job_missed_not_answered_preload_ad_tag"

    .line 38
    sput-object v0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->d:Ljava/lang/String;

    const-string v0, "phone"

    .line 39
    sput-object v0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->e:Ljava/lang/String;

    const-string v0, "deviceId"

    .line 40
    sput-object v0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->f:Ljava/lang/String;

    const-string v0, "time"

    .line 41
    sput-object v0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->g:Ljava/lang/String;

    const-string v0, "numberOfMissedCalls"

    .line 42
    sput-object v0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->h:Ljava/lang/String;

    const-string v0, "missedCallType"

    .line 43
    sput-object v0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method public static final synthetic a()Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;
    .locals 1

    .line 30
    sget-object v0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->b:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    return-object v0
.end method

.method public static final synthetic b()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic c()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic d()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic e()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic f()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic g()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->i:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final doWork()Landroidx/work/ListenableWorker$a;
    .locals 30

    .line 60
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->getInputData()Landroidx/work/d;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/work/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    const-string v1, "PhoneManager.get().from(\u2026a.getString(phone_param))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->getInputData()Landroidx/work/d;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->f:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroidx/work/d;->a(Ljava/lang/String;J)J

    move-result-wide v12

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->getInputData()Landroidx/work/d;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->g:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroidx/work/d;->a(Ljava/lang/String;J)J

    move-result-wide v14

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->getInputData()Landroidx/work/d;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->h:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/work/d;->a(Ljava/lang/String;I)I

    move-result v1

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->getInputData()Landroidx/work/d;

    move-result-object v2

    sget-object v4, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->i:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroidx/work/d;->a(Ljava/lang/String;I)I

    move-result v11

    .line 66
    const-class v2, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;

    const-string v4, "MissedNotAnsweredPreloadAdWorker doWork"

    invoke-static {v2, v4}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v2, 0x3

    if-ne v11, v2, :cond_0

    const-string v4, "MissedCallPreferences"

    goto :goto_0

    :cond_0
    const-string v4, "NotAnsweredPreferences"

    :goto_0
    if-ne v11, v2, :cond_1

    .line 69
    sget-object v5, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->n:Ljava/lang/String;

    goto :goto_1

    :cond_1
    sget-object v5, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->o:Ljava/lang/String;

    :goto_1
    move-object v10, v5

    if-ne v11, v2, :cond_2

    .line 70
    sget-object v5, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->d:Ljava/lang/String;

    goto :goto_2

    :cond_2
    sget-object v5, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->e:Ljava/lang/String;

    :goto_2
    move-object v9, v5

    if-ne v11, v2, :cond_3

    const-string v2, "MissedCallExperiments"

    goto :goto_3

    :cond_3
    const-string v2, "NotAnsweredExperiments"

    :goto_3
    move-object v7, v2

    .line 73
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v8, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 74
    invoke-static {v4}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Ljava/lang/String;)Lcom/callapp/contacts/util/ads/JSONAdPreferences;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 75
    invoke-virtual {v2}, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->getRefreshInterval()I

    move-result v4

    move/from16 v19, v4

    goto :goto_4

    :cond_4
    const/16 v19, 0x0

    :goto_4
    if-eqz v2, :cond_5

    .line 76
    invoke-virtual {v2}, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->isRetryAfterFail()Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v20, 0x1

    goto :goto_5

    :cond_5
    const/16 v20, 0x0

    .line 77
    :goto_5
    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getScreenWidth(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->b(F)F

    move-result v22

    .line 78
    new-instance v6, Lkotlin/jvm/internal/ab$a;

    invoke-direct {v6}, Lkotlin/jvm/internal/ab$a;-><init>()V

    iput-boolean v3, v6, Lkotlin/jvm/internal/ab$a;->a:Z

    .line 80
    sget-object v2, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v3

    .line 81
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const-string v23, "multiSizeAdLoader"

    if-nez v3, :cond_7

    .line 84
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/content/Context;

    new-instance v17, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;

    move-object/from16 v2, v17

    move-object v3, v6

    move-object v4, v0

    move-object/from16 v24, v0

    move-object v0, v6

    move-wide v5, v12

    move-wide/from16 v25, v12

    move-object v12, v7

    move-object v13, v8

    move-wide v7, v14

    move-wide/from16 v27, v14

    move-object v14, v9

    move v9, v1

    move-object v15, v10

    move v10, v11

    move/from16 v29, v11

    move-object v11, v13

    invoke-direct/range {v2 .. v11}, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;-><init>(Lkotlin/jvm/internal/ab$a;Lcom/callapp/framework/phone/Phone;JJIILjava/util/concurrent/CountDownLatch;)V

    check-cast v17, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    .line 117
    invoke-static {v15, v14}, Lcom/callapp/contacts/util/ads/AdUtils;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v18

    new-instance v2, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$2;

    invoke-direct {v2, v12}, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$2;-><init>(Ljava/lang/String;)V

    move-object/from16 v21, v2

    check-cast v21, Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    .line 84
    invoke-static/range {v16 .. v22}, Lcom/callapp/contacts/util/ads/loaders/AdLoaderFactory;->a(Landroid/content/Context;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Landroid/util/Pair;IZLcom/callapp/contacts/util/ads/NativeAdParamGetter;F)Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    move-result-object v2

    const-string v3, "AdLoaderFactory.createMu\u2026              }, adWidth)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    sput-object v2, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->b:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    invoke-virtual {v2}, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :try_start_1
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v2

    const-string v3, "MissedNotAnsweredPreloadTimeoutSec"

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->b(Ljava/lang/String;)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v13, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .line 134
    :catch_0
    :try_start_2
    iget-boolean v2, v0, Lkotlin/jvm/internal/ab$a;->a:Z

    if-nez v2, :cond_9

    const/4 v2, 0x1

    .line 135
    iput-boolean v2, v0, Lkotlin/jvm/internal/ab$a;->a:Z

    .line 136
    sget-object v9, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->b:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    if-nez v9, :cond_6

    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_6
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, v24

    move-wide/from16 v3, v25

    move-wide/from16 v5, v27

    move v7, v1

    move/from16 v8, v29

    invoke-static/range {v2 .. v12}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->a(Lcom/callapp/framework/phone/Phone;JJIILcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;Lcom/mopub/mobileads/MoPubView;Lcom/mopub/nativeads/NativeAd;Z)V

    goto :goto_6

    :cond_7
    move-object/from16 v24, v0

    move/from16 v29, v11

    move-wide/from16 v25, v12

    move-wide/from16 v27, v14

    .line 140
    sget-object v9, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->b:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    if-nez v9, :cond_8

    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_8
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, v24

    move-wide/from16 v3, v25

    move-wide/from16 v5, v27

    move v7, v1

    move/from16 v8, v29

    invoke-static/range {v2 .. v12}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->a(Lcom/callapp/framework/phone/Phone;JJIILcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;Lcom/mopub/mobileads/MoPubView;Lcom/mopub/nativeads/NativeAd;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    :cond_9
    :goto_6
    sget-object v0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1334
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    const-string v1, "Result.success()"

    .line 146
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 143
    sget-object v1, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
