.class public Lcom/google/firebase/perf/metrics/AppStartTrace;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-perf@@19.0.2"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/metrics/AppStartTrace$zza;
    }
.end annotation


# static fields
.field private static final zzfa:J

.field private static volatile zzfb:Lcom/google/firebase/perf/metrics/AppStartTrace;


# instance fields
.field private mRegistered:Z

.field private zzax:Lcom/google/firebase/perf/internal/zzf;

.field private final zzay:Lcom/google/android/gms/internal/firebase-perf/zzan;

.field private zzfc:Landroid/content/Context;

.field private zzfd:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private zzfe:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private zzff:Z

.field private zzfg:Lcom/google/android/gms/internal/firebase-perf/zzaz;

.field private zzfh:Lcom/google/android/gms/internal/firebase-perf/zzaz;

.field private zzfi:Lcom/google/android/gms/internal/firebase-perf/zzaz;

.field private zzfj:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 99
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfa:J

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/perf/internal/zzf;Lcom/google/android/gms/internal/firebase-perf/zzan;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->mRegistered:Z

    .line 16
    iput-boolean p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzff:Z

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfg:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    .line 18
    iput-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfh:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    .line 19
    iput-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfi:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    .line 20
    iput-boolean p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfj:Z

    .line 21
    iput-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzax:Lcom/google/firebase/perf/internal/zzf;

    .line 22
    iput-object p2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzay:Lcom/google/android/gms/internal/firebase-perf/zzan;

    return-void
.end method

.method public static setLauncherActivityOnCreateTime(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static setLauncherActivityOnResumeTime(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static setLauncherActivityOnStartTime(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/perf/metrics/AppStartTrace;)Lcom/google/android/gms/internal/firebase-perf/zzaz;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfg:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    return-object p0
.end method

.method private static zza(Lcom/google/firebase/perf/internal/zzf;Lcom/google/android/gms/internal/firebase-perf/zzan;)Lcom/google/firebase/perf/metrics/AppStartTrace;
    .locals 2

    .line 8
    sget-object p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfb:Lcom/google/firebase/perf/metrics/AppStartTrace;

    if-nez p0, :cond_1

    .line 9
    const-class p0, Lcom/google/firebase/perf/metrics/AppStartTrace;

    monitor-enter p0

    .line 10
    :try_start_0
    sget-object v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfb:Lcom/google/firebase/perf/metrics/AppStartTrace;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lcom/google/firebase/perf/metrics/AppStartTrace;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/perf/metrics/AppStartTrace;-><init>(Lcom/google/firebase/perf/internal/zzf;Lcom/google/android/gms/internal/firebase-perf/zzan;)V

    sput-object v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfb:Lcom/google/firebase/perf/metrics/AppStartTrace;

    .line 12
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 13
    :cond_1
    :goto_0
    sget-object p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfb:Lcom/google/firebase/perf/metrics/AppStartTrace;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/firebase/perf/metrics/AppStartTrace;Z)Z
    .locals 0

    const/4 p1, 0x1

    .line 98
    iput-boolean p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfj:Z

    return p1
.end method

.method public static zzbo()Lcom/google/firebase/perf/metrics/AppStartTrace;
    .locals 2

    .line 4
    sget-object v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfb:Lcom/google/firebase/perf/metrics/AppStartTrace;

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfb:Lcom/google/firebase/perf/metrics/AppStartTrace;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/firebase-perf/zzan;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-perf/zzan;-><init>()V

    invoke-static {v0, v1}, Lcom/google/firebase/perf/metrics/AppStartTrace;->zza(Lcom/google/firebase/perf/internal/zzf;Lcom/google/android/gms/internal/firebase-perf/zzan;)Lcom/google/firebase/perf/metrics/AppStartTrace;

    move-result-object v0

    return-object v0
.end method

.method private final declared-synchronized zzbp()V
    .locals 1

    monitor-enter p0

    .line 32
    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->mRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 33
    monitor-exit p0

    return-void

    .line 34
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfc:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->mRegistered:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    monitor-enter p0

    .line 37
    :try_start_0
    iget-boolean p2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfj:Z

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfg:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfd:Ljava/lang/ref/WeakReference;

    .line 41
    new-instance p1, Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-perf/zzaz;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfg:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    .line 43
    invoke-static {}, Lcom/google/firebase/perf/provider/FirebasePerfProvider;->zzbw()Lcom/google/android/gms/internal/firebase-perf/zzaz;

    move-result-object p1

    iget-object p2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfg:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzk(Lcom/google/android/gms/internal/firebase-perf/zzaz;)J

    move-result-wide p1

    sget-wide v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfa:J

    cmp-long p1, p1, v0

    if-lez p1, :cond_1

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzff:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    monitor-exit p0

    return-void

    .line 38
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onActivityResumed(Landroid/app/Activity;)V
    .locals 6

    monitor-enter p0

    .line 52
    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfj:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfi:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzff:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfe:Ljava/lang/ref/WeakReference;

    .line 56
    new-instance v0, Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-perf/zzaz;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfi:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    .line 58
    invoke-static {}, Lcom/google/firebase/perf/provider/FirebasePerfProvider;->zzbw()Lcom/google/android/gms/internal/firebase-perf/zzaz;

    move-result-object v0

    const-string v1, "FirebasePerformance"

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfi:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    .line 61
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzk(Lcom/google/android/gms/internal/firebase-perf/zzaz;)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "onResume(): "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " microseconds"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {}, Lcom/google/android/gms/internal/firebase-perf/zzcp;->zzez()Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/internal/firebase-perf/zzao;->zzgo:Lcom/google/android/gms/internal/firebase-perf/zzao;

    .line 64
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-perf/zzao;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;->zzac(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;

    move-result-object p1

    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzbx()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;->zzai(J)Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;

    move-result-object p1

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfi:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    .line 66
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzk(Lcom/google/android/gms/internal/firebase-perf/zzaz;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;->zzaj(J)Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;

    move-result-object p1

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 68
    invoke-static {}, Lcom/google/android/gms/internal/firebase-perf/zzcp;->zzez()Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-perf/zzao;->zzgp:Lcom/google/android/gms/internal/firebase-perf/zzao;

    .line 69
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-perf/zzao;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;->zzac(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;

    move-result-object v2

    .line 70
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzbx()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;->zzai(J)Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfg:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    .line 71
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzk(Lcom/google/android/gms/internal/firebase-perf/zzaz;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;->zzaj(J)Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-perf/zzeh$zza;->zzgm()Lcom/google/android/gms/internal/firebase-perf/zzfr;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-perf/zzeh;

    check-cast v0, Lcom/google/android/gms/internal/firebase-perf/zzcp;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-static {}, Lcom/google/android/gms/internal/firebase-perf/zzcp;->zzez()Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;

    move-result-object v0

    .line 74
    sget-object v2, Lcom/google/android/gms/internal/firebase-perf/zzao;->zzgq:Lcom/google/android/gms/internal/firebase-perf/zzao;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-perf/zzao;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;->zzac(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfg:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    .line 75
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzbx()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;->zzai(J)Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfg:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    iget-object v4, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfh:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    .line 76
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzk(Lcom/google/android/gms/internal/firebase-perf/zzaz;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;->zzaj(J)Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;

    .line 77
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-perf/zzeh$zza;->zzgm()Lcom/google/android/gms/internal/firebase-perf/zzfr;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-perf/zzeh;

    check-cast v0, Lcom/google/android/gms/internal/firebase-perf/zzcp;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-static {}, Lcom/google/android/gms/internal/firebase-perf/zzcp;->zzez()Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;

    move-result-object v0

    .line 79
    sget-object v2, Lcom/google/android/gms/internal/firebase-perf/zzao;->zzgr:Lcom/google/android/gms/internal/firebase-perf/zzao;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-perf/zzao;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;->zzac(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfh:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    .line 80
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzbx()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;->zzai(J)Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfh:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    iget-object v4, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfi:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    .line 81
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzk(Lcom/google/android/gms/internal/firebase-perf/zzaz;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;->zzaj(J)Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;

    .line 82
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-perf/zzeh$zza;->zzgm()Lcom/google/android/gms/internal/firebase-perf/zzfr;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-perf/zzeh;

    check-cast v0, Lcom/google/android/gms/internal/firebase-perf/zzcp;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;->zzd(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;

    move-result-object v0

    .line 85
    invoke-static {}, Lcom/google/firebase/perf/internal/SessionManager;->zzbl()Lcom/google/firebase/perf/internal/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/internal/SessionManager;->zzbm()Lcom/google/firebase/perf/internal/zzt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/internal/zzt;->zzay()Lcom/google/android/gms/internal/firebase-perf/zzch;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;->zzb(Lcom/google/android/gms/internal/firebase-perf/zzch;)Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;

    .line 86
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzax:Lcom/google/firebase/perf/internal/zzf;

    if-nez v0, :cond_1

    .line 87
    invoke-static {}, Lcom/google/firebase/perf/internal/zzf;->zzal()Lcom/google/firebase/perf/internal/zzf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzax:Lcom/google/firebase/perf/internal/zzf;

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzax:Lcom/google/firebase/perf/internal/zzf;

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzax:Lcom/google/firebase/perf/internal/zzf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-perf/zzeh$zza;->zzgm()Lcom/google/android/gms/internal/firebase-perf/zzfr;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-perf/zzeh;

    check-cast p1, Lcom/google/android/gms/internal/firebase-perf/zzcp;

    sget-object v1, Lcom/google/android/gms/internal/firebase-perf/zzbj;->zzil:Lcom/google/android/gms/internal/firebase-perf/zzbj;

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/perf/internal/zzf;->zza(Lcom/google/android/gms/internal/firebase-perf/zzcp;Lcom/google/android/gms/internal/firebase-perf/zzbj;)V

    .line 90
    :cond_2
    iget-boolean p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->mRegistered:Z

    if-eqz p1, :cond_3

    .line 91
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzbp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_3
    monitor-exit p0

    return-void

    .line 53
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    monitor-enter p0

    .line 46
    :try_start_0
    iget-boolean p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfj:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfh:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzff:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-perf/zzaz;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfh:Lcom/google/android/gms/internal/firebase-perf/zzaz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    .line 47
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    monitor-enter p0

    .line 94
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized zzc(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 24
    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->mRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 25
    monitor-exit p0

    return-void

    .line 26
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 27
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 28
    move-object v0, p1

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->mRegistered:Z

    .line 30
    iput-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfc:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
