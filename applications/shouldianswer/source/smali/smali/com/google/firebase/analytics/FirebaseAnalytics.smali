.class public final Lcom/google/firebase/analytics/FirebaseAnalytics;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-api@@17.2.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/analytics/FirebaseAnalytics$UserProperty;,
        Lcom/google/firebase/analytics/FirebaseAnalytics$Param;,
        Lcom/google/firebase/analytics/FirebaseAnalytics$Event;
    }
.end annotation


# static fields
.field private static volatile zza:Lcom/google/firebase/analytics/FirebaseAnalytics;


# instance fields
.field private final zzb:Lcom/google/android/gms/measurement/internal/zzga;

.field private final zzc:Lcom/google/android/gms/internal/measurement/zzx;

.field private final zzd:Z

.field private zze:Ljava/lang/String;

.field private zzf:J

.field private final zzg:Ljava/lang/Object;

.field private zzh:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzx;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/measurement/internal/zzga;

    .line 74
    iput-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzc:Lcom/google/android/gms/internal/measurement/zzx;

    const/4 p1, 0x1

    .line 75
    iput-boolean p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzd:Z

    .line 76
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzg:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzga;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iput-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/measurement/internal/zzga;

    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzc:Lcom/google/android/gms/internal/measurement/zzx;

    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzd:Z

    .line 69
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzg:Ljava/lang/Object;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-nez v0, :cond_2

    .line 2
    const-class v0, Lcom/google/firebase/analytics/FirebaseAnalytics;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/firebase/analytics/FirebaseAnalytics;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-nez v1, :cond_1

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzx;->zzb(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzx;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzx;

    move-result-object p0

    .line 6
    new-instance v1, Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-direct {v1, p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;-><init>(Lcom/google/android/gms/internal/measurement/zzx;)V

    sput-object v1, Lcom/google/firebase/analytics/FirebaseAnalytics;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 9
    invoke-static {p0, v1}, Lcom/google/android/gms/measurement/internal/zzga;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzv;)Lcom/google/android/gms/measurement/internal/zzga;

    move-result-object p0

    .line 11
    new-instance v1, Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-direct {v1, p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;-><init>(Lcom/google/android/gms/measurement/internal/zzga;)V

    sput-object v1, Lcom/google/firebase/analytics/FirebaseAnalytics;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 12
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 13
    :cond_2
    :goto_1
    sget-object p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object p0
.end method

.method public static getScionFrontendApiImplementation(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/measurement/internal/zzia;
    .locals 2

    .line 98
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzx;->zzb(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 101
    :cond_0
    invoke-static {p0, v1, v1, v1, p1}, Lcom/google/android/gms/internal/measurement/zzx;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/zzx;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 104
    :cond_1
    new-instance p1, Lcom/google/firebase/analytics/zza;

    invoke-direct {p1, p0}, Lcom/google/firebase/analytics/zza;-><init>(Lcom/google/android/gms/internal/measurement/zzx;)V

    return-object p1
.end method

.method static synthetic zza(Lcom/google/firebase/analytics/FirebaseAnalytics;)Ljava/lang/String;
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final zza()Ljava/util/concurrent/ExecutorService;
    .locals 9

    .line 47
    const-class v0, Lcom/google/firebase/analytics/FirebaseAnalytics;

    monitor-enter v0

    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzh:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x1e

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v2, 0x64

    invoke-direct {v8, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzh:Ljava/util/concurrent/ExecutorService;

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzh:Ljava/util/concurrent/ExecutorService;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 51
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic zza(Lcom/google/firebase/analytics/FirebaseAnalytics;Ljava/lang/String;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->zza(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;)V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzg:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_0
    iput-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zze:Ljava/lang/String;

    .line 86
    iget-boolean p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzd:Z

    if-eqz p1, :cond_0

    .line 87
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzf:J

    goto :goto_0

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzga;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzf:J

    .line 89
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final zzb()Ljava/lang/String;
    .locals 5

    .line 90
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzg:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_0
    iget-boolean v1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzd:Z

    if-eqz v1, :cond_0

    .line 92
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    goto :goto_0

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    .line 94
    :goto_0
    iget-wide v3, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzf:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zze:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    .line 96
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 97
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic zzb(Lcom/google/firebase/analytics/FirebaseAnalytics;)Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzd:Z

    return p0
.end method

.method static synthetic zzc(Lcom/google/firebase/analytics/FirebaseAnalytics;)Lcom/google/android/gms/internal/measurement/zzx;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzc:Lcom/google/android/gms/internal/measurement/zzx;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/firebase/analytics/FirebaseAnalytics;)Lcom/google/android/gms/measurement/internal/zzga;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/measurement/internal/zzga;

    return-object p0
.end method


# virtual methods
.method public final getAppInstanceId()Lcom/google/android/gms/tasks/Task;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 52
    :try_start_0
    invoke-direct {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 56
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->zza()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/analytics/zzb;

    invoke-direct {v1, p0}, Lcom/google/firebase/analytics/zzb;-><init>(Lcom/google/firebase/analytics/FirebaseAnalytics;)V

    .line 57
    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 60
    iget-boolean v1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzd:Z

    if-eqz v1, :cond_1

    .line 61
    iget-object v2, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzc:Lcom/google/android/gms/internal/measurement/zzx;

    const/4 v3, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, "Failed to schedule task for getAppInstanceId"

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzx;->zza(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    const-string v2, "Failed to schedule task for getAppInstanceId"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    .line 63
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final getFirebaseInstanceId()Ljava/lang/String;
    .locals 1

    .line 83
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 14
    iget-boolean v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzd:Z

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzc:Lcom/google/android/gms/internal/measurement/zzx;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzx;->zza(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzh()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "app"

    invoke-virtual {v0, v2, p1, p2, v1}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public final resetAnalyticsData()V
    .locals 3

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->zza(Ljava/lang/String;)V

    .line 79
    iget-boolean v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzd:Z

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzc:Lcom/google/android/gms/internal/measurement/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzx;->zzb()V

    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzh()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzhb;->zzd(J)V

    return-void
.end method

.method public final setAnalyticsCollectionEnabled(Z)V
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzd:Z

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzc:Lcom/google/android/gms/internal/measurement/zzx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzx;->zza(Z)V

    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzh()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Z)V

    return-void
.end method

.method public final setCurrentScreen(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzd:Z

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzc:Lcom/google/android/gms/internal/measurement/zzx;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzx;->zza(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 24
    :cond_0
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzw;->zza()Z

    move-result v0

    if-nez v0, :cond_1

    .line 25
    iget-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    const-string p2, "setCurrentScreen must be called from the main thread"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    return-void

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzv()Lcom/google/android/gms/measurement/internal/zzii;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzii;->zza(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setMinimumSessionDuration(J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    iget-boolean v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzd:Z

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzc:Lcom/google/android/gms/internal/measurement/zzx;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzx;->zza(J)V

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzh()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(J)V

    return-void
.end method

.method public final setSessionTimeoutDuration(J)V
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzd:Z

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzc:Lcom/google/android/gms/internal/measurement/zzx;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzx;->zzb(J)V

    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzh()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzhb;->zzb(J)V

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 4

    .line 33
    iget-boolean v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzd:Z

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzc:Lcom/google/android/gms/internal/measurement/zzx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzx;->zza(Ljava/lang/String;)V

    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/measurement/internal/zzga;

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzh()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "app"

    const-string v3, "_id"

    .line 37
    invoke-virtual {v0, v2, v3, p1, v1}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public final setUserProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 18
    iget-boolean v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzd:Z

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzc:Lcom/google/android/gms/internal/measurement/zzx;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzx;->zza(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzh()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "app"

    invoke-virtual {v0, v2, p1, p2, v1}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method
