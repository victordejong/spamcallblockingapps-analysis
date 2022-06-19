.class public Lcom/google/firebase/perf/FirebasePerformance;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-perf@@19.0.2"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/FirebasePerformance$HttpMethod;
    }
.end annotation


# static fields
.field public static final MAX_TRACE_NAME_LENGTH:I = 0x64

.field private static volatile zzab:Lcom/google/firebase/perf/FirebasePerformance;


# instance fields
.field private final zzac:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzad:Lcom/google/android/gms/internal/firebase-perf/zzar;

.field private zzae:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)V
    .locals 6

    .line 10
    invoke-static {}, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzbi()Lcom/google/firebase/perf/internal/RemoteConfigManager;

    move-result-object v3

    .line 11
    invoke-static {}, Lcom/google/firebase/perf/internal/FeatureControl;->zzad()Lcom/google/firebase/perf/internal/FeatureControl;

    move-result-object v4

    .line 12
    invoke-static {}, Lcom/google/firebase/perf/internal/GaugeManager;->zzap()Lcom/google/firebase/perf/internal/GaugeManager;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/perf/FirebasePerformance;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;Lcom/google/firebase/perf/internal/RemoteConfigManager;Lcom/google/firebase/perf/internal/FeatureControl;Lcom/google/firebase/perf/internal/GaugeManager;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;Lcom/google/firebase/perf/internal/RemoteConfigManager;Lcom/google/firebase/perf/internal/FeatureControl;Lcom/google/firebase/perf/internal/GaugeManager;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/perf/FirebasePerformance;->zzac:Ljava/util/Map;

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/google/firebase/perf/FirebasePerformance;->zzae:Ljava/lang/Boolean;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 19
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/FirebasePerformance;->zzae:Ljava/lang/Boolean;

    .line 20
    new-instance p1, Lcom/google/android/gms/internal/firebase-perf/zzar;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase-perf/zzar;-><init>(Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/google/firebase/perf/FirebasePerformance;->zzad:Lcom/google/android/gms/internal/firebase-perf/zzar;

    return-void

    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 23
    invoke-static {p1}, Lcom/google/firebase/perf/FirebasePerformance;->zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/firebase-perf/zzar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/FirebasePerformance;->zzad:Lcom/google/android/gms/internal/firebase-perf/zzar;

    .line 24
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/FirebasePerformance;->zza(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/FirebasePerformance;->zzae:Ljava/lang/Boolean;

    .line 25
    invoke-virtual {p3, p2}, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zza(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)V

    .line 26
    iget-object p2, p0, Lcom/google/firebase/perf/FirebasePerformance;->zzad:Lcom/google/android/gms/internal/firebase-perf/zzar;

    invoke-virtual {p4, p2}, Lcom/google/firebase/perf/internal/FeatureControl;->zza(Lcom/google/android/gms/internal/firebase-perf/zzar;)V

    .line 27
    invoke-virtual {p5, p1}, Lcom/google/firebase/perf/internal/GaugeManager;->zzf(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance()Lcom/google/firebase/perf/FirebasePerformance;
    .locals 2

    .line 1
    const-class v0, Lcom/google/firebase/perf/FirebasePerformance;

    sget-object v1, Lcom/google/firebase/perf/FirebasePerformance;->zzab:Lcom/google/firebase/perf/FirebasePerformance;

    if-nez v1, :cond_1

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/FirebasePerformance;->zzab:Lcom/google/firebase/perf/FirebasePerformance;

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v0}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/perf/FirebasePerformance;

    .line 6
    sput-object v1, Lcom/google/firebase/perf/FirebasePerformance;->zzab:Lcom/google/firebase/perf/FirebasePerformance;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/firebase/perf/FirebasePerformance;->zzab:Lcom/google/firebase/perf/FirebasePerformance;

    return-object v0
.end method

.method public static startTrace(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;
    .locals 0

    .line 29
    invoke-static {p0}, Lcom/google/firebase/perf/metrics/Trace;->zzi(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;

    move-result-object p0

    .line 30
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->start()V

    return-object p0
.end method

.method private final zza(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 4

    const-string v0, "isEnabled"

    .line 53
    invoke-direct {p0}, Lcom/google/firebase/perf/FirebasePerformance;->zzm()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 54
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "FirebasePerfSharedPrefs"

    .line 56
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const/4 v1, 0x1

    .line 57
    :try_start_0
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 58
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v2, "Unable to access enable value: "

    .line 61
    invoke-virtual {p1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v2, "FirebasePerformance"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_2
    iget-object p1, p0, Lcom/google/firebase/perf/FirebasePerformance;->zzad:Lcom/google/android/gms/internal/firebase-perf/zzar;

    const-string v2, "firebase_performance_collection_enabled"

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/firebase-perf/zzar;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 64
    iget-object p1, p0, Lcom/google/firebase/perf/FirebasePerformance;->zzad:Lcom/google/android/gms/internal/firebase-perf/zzar;

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/firebase-perf/zzar;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_3
    const-string p1, "No perf enable meta data found in manifest."

    .line 65
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private static zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/firebase-perf/zzar;
    .locals 2

    .line 74
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 76
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    const-string v0, "No perf enable meta data found "

    .line 79
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string v0, "isEnabled"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_2
    if-eqz p0, :cond_1

    .line 80
    new-instance v0, Lcom/google/android/gms/internal/firebase-perf/zzar;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-perf/zzar;-><init>(Landroid/os/Bundle;)V

    return-object v0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/firebase-perf/zzar;

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-perf/zzar;-><init>()V

    return-object p0
.end method

.method private final zzm()Z
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/google/firebase/perf/FirebasePerformance;->zzad:Lcom/google/android/gms/internal/firebase-perf/zzar;

    const-string v1, "firebase_performance_collection_deactivated"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-perf/zzar;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final getAttributes()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/firebase/perf/FirebasePerformance;->zzac:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public isPerformanceCollectionEnabled()Z
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/firebase/perf/FirebasePerformance;->zzae:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 50
    :cond_0
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->isDataCollectionDefaultEnabled()Z

    move-result v0

    return v0
.end method

.method public newHttpMetric(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/perf/metrics/HttpMetric;
    .locals 3

    .line 69
    new-instance v0, Lcom/google/firebase/perf/metrics/HttpMetric;

    invoke-static {}, Lcom/google/firebase/perf/internal/zzf;->zzal()Lcom/google/firebase/perf/internal/zzf;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-direct {v2}, Lcom/google/android/gms/internal/firebase-perf/zzaz;-><init>()V

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/firebase/perf/metrics/HttpMetric;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/perf/internal/zzf;Lcom/google/android/gms/internal/firebase-perf/zzaz;)V

    return-object v0
.end method

.method public newHttpMetric(Ljava/net/URL;Ljava/lang/String;)Lcom/google/firebase/perf/metrics/HttpMetric;
    .locals 3

    .line 70
    new-instance v0, Lcom/google/firebase/perf/metrics/HttpMetric;

    invoke-static {}, Lcom/google/firebase/perf/internal/zzf;->zzal()Lcom/google/firebase/perf/internal/zzf;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-direct {v2}, Lcom/google/android/gms/internal/firebase-perf/zzaz;-><init>()V

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/firebase/perf/metrics/HttpMetric;-><init>(Ljava/net/URL;Ljava/lang/String;Lcom/google/firebase/perf/internal/zzf;Lcom/google/android/gms/internal/firebase-perf/zzaz;)V

    return-object v0
.end method

.method public newTrace(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;
    .locals 0

    .line 68
    invoke-static {p1}, Lcom/google/firebase/perf/metrics/Trace;->zzi(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;

    move-result-object p1

    return-object p1
.end method

.method public setPerformanceCollectionEnabled(Z)V
    .locals 3

    .line 32
    :try_start_0
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "FirebasePerfSharedPrefs"

    .line 38
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 40
    invoke-direct {p0}, Lcom/google/firebase/perf/FirebasePerformance;->zzm()Z

    move-result v1

    const-string v2, "FirebasePerformance"

    if-nez v1, :cond_1

    .line 41
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isEnabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 42
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/FirebasePerformance;->zzae:Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    const-string p1, "Firebase Performance is Enabled"

    .line 44
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p1, "Firebase Performance is Disabled"

    .line 45
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p1, "Firebase Performance is permanently disabled"

    .line 46
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :catch_0
    return-void
.end method
