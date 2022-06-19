.class public Lcom/google/firebase/perf/internal/RemoteConfigManager;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-perf@@19.0.2"


# static fields
.field private static final zzei:Lcom/google/firebase/perf/internal/RemoteConfigManager;

.field private static final zzej:J


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private zzek:J

.field private zzel:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 64
    new-instance v0, Lcom/google/firebase/perf/internal/RemoteConfigManager;

    invoke-direct {v0}, Lcom/google/firebase/perf/internal/RemoteConfigManager;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzei:Lcom/google/firebase/perf/internal/RemoteConfigManager;

    .line 65
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xc

    .line 66
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzej:J

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .line 1
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    const/4 v0, 0x0

    invoke-direct {p0, v7, v0}, Lcom/google/firebase/perf/internal/RemoteConfigManager;-><init>(Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzek:J

    .line 5
    iput-object p1, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->executor:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzel:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    return-void
.end method

.method public static zzbi()Lcom/google/firebase/perf/internal/RemoteConfigManager;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzei:Lcom/google/firebase/perf/internal/RemoteConfigManager;

    return-object v0
.end method

.method private final zzbk()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzel:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final zza(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzel:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    return-void
.end method

.method final synthetic zza(Ljava/lang/Exception;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 62
    iput-wide v0, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzek:J

    return-void
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzbk()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 17
    iget-wide v5, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzek:J

    sub-long/2addr v3, v5

    sget-wide v5, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzej:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 22
    iput-wide v3, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzek:J

    .line 23
    iget-object v0, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzel:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    .line 24
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->fetchAndActivate()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v3, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->executor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/firebase/perf/internal/zzy;

    invoke-direct {v4, p0}, Lcom/google/firebase/perf/internal/zzy;-><init>(Lcom/google/firebase/perf/internal/RemoteConfigManager;)V

    .line 25
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 26
    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzbk()Z

    move-result v0

    const-string v3, "FirebasePerformance"

    const/4 v4, 0x2

    if-eqz v0, :cond_2

    .line 27
    iget-object v0, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzel:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    .line 28
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-perf/zzaq;->zzk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 29
    invoke-virtual {v0, v5}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getValue(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;

    move-result-object v0

    .line 30
    invoke-interface {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;->getSource()I

    move-result v5

    if-ne v5, v4, :cond_2

    new-array v5, v4, [Ljava/lang/Object;

    .line 32
    invoke-interface {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;->asString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    aput-object p1, v5, v1

    const-string v6, "Fetched value: \'%s\' for key: \'%s\' from Firebase Remote Config."

    .line 33
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 34
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_8

    .line 39
    :try_start_0
    instance-of v5, p2, Ljava/lang/Boolean;

    if-eqz v5, :cond_3

    .line 40
    invoke-interface {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;->asBoolean()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_4

    .line 41
    :cond_3
    instance-of v5, p2, Ljava/lang/Float;

    if-eqz v5, :cond_4

    .line 42
    invoke-interface {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;->asDouble()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->floatValue()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    goto :goto_4

    .line 43
    :cond_4
    instance-of v5, p2, Ljava/lang/Long;

    if-nez v5, :cond_7

    instance-of v5, p2, Ljava/lang/Integer;

    if-eqz v5, :cond_5

    goto :goto_2

    .line 45
    :cond_5
    instance-of v5, p2, Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 46
    invoke-interface {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;->asString()Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    .line 47
    :cond_6
    invoke-interface {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;->asString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v6, "No matching type found for the defaultValue: \'%s\', using String."

    new-array v7, v1, [Ljava/lang/Object;

    aput-object p2, v7, v2

    .line 49
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 50
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-object p2, v5

    goto :goto_4

    :catch_0
    move-object p2, v5

    goto :goto_3

    .line 44
    :cond_7
    :goto_2
    :try_start_2
    invoke-interface {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;->asLong()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 53
    :catch_1
    :goto_3
    invoke-interface {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;->asString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    new-array v4, v4, [Ljava/lang/Object;

    .line 55
    invoke-interface {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;->asString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    aput-object p1, v4, v1

    const-string p1, "Could not parse value: \'%s\' for key: \'%s\'."

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_4
    return-object p2
.end method

.method final zzbj()Z
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzel:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getInfo()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigInfo;->getLastFetchStatus()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method
