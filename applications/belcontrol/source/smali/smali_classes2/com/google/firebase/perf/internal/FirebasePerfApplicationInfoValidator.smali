.class public Lcom/google/firebase/perf/internal/FirebasePerfApplicationInfoValidator;
.super Lcom/google/firebase/perf/internal/PerfMetricValidator;
.source ""


# static fields
.field private static final logger:Lcom/google/firebase/perf/logging/AndroidLogger;


# instance fields
.field private final mApplicationInfo:Lcom/google/firebase/perf/v1/ApplicationInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/perf/logging/AndroidLogger;->getInstance()Lcom/google/firebase/perf/logging/AndroidLogger;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/internal/FirebasePerfApplicationInfoValidator;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/perf/v1/ApplicationInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/internal/PerfMetricValidator;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/internal/FirebasePerfApplicationInfoValidator;->mApplicationInfo:Lcom/google/firebase/perf/v1/ApplicationInfo;

    return-void
.end method

.method private isValidApplicationInfo()Z
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/perf/internal/FirebasePerfApplicationInfoValidator;->mApplicationInfo:Lcom/google/firebase/perf/v1/ApplicationInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/firebase/perf/internal/FirebasePerfApplicationInfoValidator;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ApplicationInfo is null"

    invoke-virtual {v0, v3, v2}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->hasGoogleAppId()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/firebase/perf/internal/FirebasePerfApplicationInfoValidator;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "GoogleAppId is null"

    invoke-virtual {v0, v3, v2}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/perf/internal/FirebasePerfApplicationInfoValidator;->mApplicationInfo:Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->hasAppInstanceId()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/firebase/perf/internal/FirebasePerfApplicationInfoValidator;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "AppInstanceId is null"

    invoke-virtual {v0, v3, v2}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2
    iget-object v0, p0, Lcom/google/firebase/perf/internal/FirebasePerfApplicationInfoValidator;->mApplicationInfo:Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->hasApplicationProcessState()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/google/firebase/perf/internal/FirebasePerfApplicationInfoValidator;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ApplicationProcessState is null"

    invoke-virtual {v0, v3, v2}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_3
    iget-object v0, p0, Lcom/google/firebase/perf/internal/FirebasePerfApplicationInfoValidator;->mApplicationInfo:Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->hasAndroidAppInfo()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/firebase/perf/internal/FirebasePerfApplicationInfoValidator;->mApplicationInfo:Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->getAndroidAppInfo()Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->hasPackageName()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/google/firebase/perf/internal/FirebasePerfApplicationInfoValidator;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "AndroidAppInfo.packageName is null"

    invoke-virtual {v0, v3, v2}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_4
    iget-object v0, p0, Lcom/google/firebase/perf/internal/FirebasePerfApplicationInfoValidator;->mApplicationInfo:Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->getAndroidAppInfo()Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->hasSdkVersion()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/google/firebase/perf/internal/FirebasePerfApplicationInfoValidator;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "AndroidAppInfo.sdkVersion is null"

    invoke-virtual {v0, v3, v2}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_5
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public isValidPerfMetric()Z
    .locals 4

    invoke-direct {p0}, Lcom/google/firebase/perf/internal/FirebasePerfApplicationInfoValidator;->isValidApplicationInfo()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/firebase/perf/internal/FirebasePerfApplicationInfoValidator;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ApplicationInfo is invalid"

    invoke-virtual {v0, v3, v2}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
