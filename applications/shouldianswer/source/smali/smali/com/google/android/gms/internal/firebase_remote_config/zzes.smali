.class public final Lcom/google/android/gms/internal/firebase_remote_config/zzes;
.super Ljava/lang/Object;


# static fields
.field public static final zzla:J

.field private static final zzlb:[I

.field private static final zzlg:Ljava/util/regex/Pattern;


# instance fields
.field private final appId:Ljava/lang/String;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final namespace:Ljava/lang/String;

.field private final zzja:Landroid/content/Context;

.field private final zzjd:Lcom/google/android/gms/internal/firebase_remote_config/zzei;

.field private final zzji:Lcom/google/android/gms/internal/firebase_remote_config/zzev;

.field private final zzjy:Lcom/google/firebase/iid/FirebaseInstanceId;

.field private final zzjz:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

.field private final zzlc:Lcom/google/android/gms/common/util/Clock;

.field private final zzld:Ljava/util/Random;

.field private final zzle:Lcom/google/android/gms/internal/firebase_remote_config/zzcy;

.field private final zzlf:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 170
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zzla:J

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 171
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zzlb:[I

    const-string v0, "^[^:]+:([0-9]+):(android|ios|web):([0-9a-f]+)"

    .line 173
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zzlg:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 4
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/analytics/connector/AnalyticsConnector;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/common/util/Clock;Ljava/util/Random;Lcom/google/android/gms/internal/firebase_remote_config/zzei;Lcom/google/android/gms/internal/firebase_remote_config/zzcy;Lcom/google/android/gms/internal/firebase_remote_config/zzev;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zzja:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->appId:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zzjy:Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zzjz:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->namespace:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->executor:Ljava/util/concurrent/Executor;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zzlc:Lcom/google/android/gms/common/util/Clock;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zzld:Ljava/util/Random;

    .line 10
    iput-object p9, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zzjd:Lcom/google/android/gms/internal/firebase_remote_config/zzei;

    .line 11
    iput-object p10, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zzle:Lcom/google/android/gms/internal/firebase_remote_config/zzcy;

    .line 12
    iput-object p11, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zzji:Lcom/google/android/gms/internal/firebase_remote_config/zzev;

    .line 14
    sget-object p1, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zzlg:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zzlf:Ljava/lang/String;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase_remote_config/zzdf;Ljava/util/Date;)Lcom/google/android/gms/internal/firebase_remote_config/zzen;
    .locals 1

    .line 97
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase_remote_config/zzen;->zzct()Lcom/google/android/gms/internal/firebase_remote_config/zzep;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_remote_config/zzep;->zza(Ljava/util/Date;)Lcom/google/android/gms/internal/firebase_remote_config/zzep;

    move-result-object p1

    .line 98
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_remote_config/zzdf;->getEntries()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase_remote_config/zzep;->zzd(Ljava/util/Map;)Lcom/google/android/gms/internal/firebase_remote_config/zzep;

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_remote_config/zzdf;->zzcf()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 104
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase_remote_config/zzep;->zzb(Ljava/util/List;)Lcom/google/android/gms/internal/firebase_remote_config/zzep;

    .line 105
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_remote_config/zzep;->zzcv()Lcom/google/android/gms/internal/firebase_remote_config/zzen;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 107
    new-instance p1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;

    const-string v0, "Fetch failed: fetch response could not be parsed."

    invoke-direct {p1, v0, p0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static zza(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "FirebaseRemoteConfig"

    const/4 v1, 0x0

    .line 89
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/gms/common/util/AndroidUtilsLight;->getPackageCertificateHashBytes(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "Could not get fingerprint hash for package: "

    .line 91
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p0, v2

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    const/4 v2, 0x0

    .line 93
    invoke-static {p0, v2}, Lcom/google/android/gms/common/util/Hex;->bytesToStringUppercase([BZ)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v2, "No such package: "

    .line 95
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method private final zzb(Ljava/util/Date;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/internal/firebase_remote_config/zzet;",
            ">;"
        }
    .end annotation

    .line 23
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zzc(Ljava/util/Date;)Lcom/google/android/gms/internal/firebase_remote_config/zzdf;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_remote_config/zzdf;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_remote_config/zzdf;->getState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NO_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    .line 27
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_remote_config/zzet;->zzd(Ljava/util/Date;)Lcom/google/android/gms/internal/firebase_remote_config/zzet;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 28
    :cond_2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zza(Lcom/google/android/gms/internal/firebase_remote_config/zzdf;Ljava/util/Date;)Lcom/google/android/gms/internal/firebase_remote_config/zzen;

    move-result-object p1

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zzjd:Lcom/google/android/gms/internal/firebase_remote_config/zzei;

    .line 30
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_remote_config/zzei;->zzc(Lcom/google/android/gms/internal/firebase_remote_config/zzen;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->executor:Ljava/util/concurrent/Executor;

    sget-object v1, Lcom/google/android/gms/internal/firebase_remote_config/zzeu;->zzjk:Lcom/google/android/gms/tasks/SuccessContinuation;

    .line 31
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 33
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private final zzc(Ljava/util/Date;)Lcom/google/android/gms/internal/firebase_remote_config/zzdf;
    .locals 13

    .line 34
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zzcw()Lcom/google/android/gms/internal/firebase_remote_config/zzdg;

    move-result-object v0

    const/4 v1, 0x0

    .line 35
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zzle:Lcom/google/android/gms/internal/firebase_remote_config/zzcy;

    .line 37
    new-instance v3, Lcom/google/android/gms/internal/firebase_remote_config/zzda;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/firebase_remote_config/zzda;-><init>(Lcom/google/android/gms/internal/firebase_remote_config/zzcy;)V

    .line 39
    new-instance v2, Lcom/google/android/gms/internal/firebase_remote_config/zzcz;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/firebase_remote_config/zzcz;-><init>(Lcom/google/android/gms/internal/firebase_remote_config/zzda;)V

    .line 40
    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zzlf:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->namespace:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/internal/firebase_remote_config/zzcz;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase_remote_config/zzdg;)Lcom/google/android/gms/internal/firebase_remote_config/zzdc;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_remote_config/zzf;->zzg()Lcom/google/android/gms/internal/firebase_remote_config/zzw;

    move-result-object v2

    .line 44
    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zzji:Lcom/google/android/gms/internal/firebase_remote_config/zzev;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase_remote_config/zzev;->zzcz()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase_remote_config/zzw;->zzr(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_remote_config/zzw;

    const-string v3, "X-Android-Package"

    .line 45
    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zzja:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/firebase_remote_config/zzby;->zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_remote_config/zzby;

    const-string v3, "X-Android-Cert"

    .line 46
    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zzja:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zzja:Landroid/content/Context;

    .line 47
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zza(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 48
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/firebase_remote_config/zzby;->zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_remote_config/zzby;

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_remote_config/zzf;->zzi()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase_remote_config/zzdf;

    .line 50
    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zzji:Lcom/google/android/gms/internal/firebase_remote_config/zzev;

    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_remote_config/zzf;->zzh()Lcom/google/android/gms/internal/firebase_remote_config/zzw;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_remote_config/zzw;->zzq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/firebase_remote_config/zzev;->zzbd(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zzji:Lcom/google/android/gms/internal/firebase_remote_config/zzev;

    .line 54
    sget-object v3, Lcom/google/android/gms/internal/firebase_remote_config/zzev;->zzlj:Ljava/util/Date;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/firebase_remote_config/zzev;->zza(ILjava/util/Date;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase_remote_config/zzaf; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 88
    new-instance v0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;

    const-string v1, "Fetch failed due to an unexpected error! Check logs for details."

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v0

    const-string v2, "FirebaseRemoteConfig"

    const-string v3, "Fetch failed! Server responded with an error."

    .line 57
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_remote_config/zzaf;->getStatusCode()I

    move-result v2

    const/16 v3, 0x1f8

    const/16 v4, 0x1f7

    const/16 v5, 0x1ad

    const/4 v6, 0x1

    if-eq v2, v5, :cond_0

    if-eq v2, v4, :cond_0

    if-ne v2, v3, :cond_1

    .line 61
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zzji:Lcom/google/android/gms/internal/firebase_remote_config/zzev;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase_remote_config/zzev;->zzda()Lcom/google/android/gms/internal/firebase_remote_config/zzey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase_remote_config/zzey;->zzdd()I

    move-result v2

    add-int/2addr v2, v6

    .line 64
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zzlb:[I

    array-length v9, v8

    .line 65
    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    sub-int/2addr v9, v6

    aget v8, v8, v9

    int-to-long v8, v8

    .line 66
    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    const-wide/16 v9, 0x2

    .line 67
    div-long v9, v7, v9

    iget-object v11, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zzld:Ljava/util/Random;

    long-to-int v7, v7

    invoke-virtual {v11, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v9, v7

    .line 69
    new-instance v7, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    add-long/2addr v11, v9

    invoke-direct {v7, v11, v12}, Ljava/util/Date;-><init>(J)V

    .line 70
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zzji:Lcom/google/android/gms/internal/firebase_remote_config/zzev;

    invoke-virtual {p1, v2, v7}, Lcom/google/android/gms/internal/firebase_remote_config/zzev;->zza(ILjava/util/Date;)V

    .line 71
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_remote_config/zzaf;->getStatusCode()I

    move-result p1

    const/16 v0, 0x191

    if-eq p1, v0, :cond_6

    const/16 v0, 0x193

    if-eq p1, v0, :cond_5

    if-eq p1, v5, :cond_4

    const/16 v0, 0x1f4

    if-eq p1, v0, :cond_3

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_2

    const-string v0, "The server returned an unexpected error."

    goto :goto_0

    :cond_2
    const-string v0, "The server is unavailable. Please try again later."

    goto :goto_0

    :cond_3
    const-string v0, "There was an internal server error."

    goto :goto_0

    :cond_4
    const-string v0, "You have reached the throttle limit for your project. Please wait before making more requests."

    goto :goto_0

    :cond_5
    const-string v0, "The user is not authorized to access the project. Please make sure you are using the API key that corresponds to your Firebase project."

    goto :goto_0

    :cond_6
    const-string v0, "The request did not have the required credentials. Please make sure your google-services.json is valid."

    .line 84
    :goto_0
    new-instance v2, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigServerException;

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v1

    const-string v0, "Fetch failed: %s"

    .line 85
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigServerException;-><init>(ILjava/lang/String;)V

    .line 86
    throw v2
.end method

.method private final zzcw()Lcom/google/android/gms/internal/firebase_remote_config/zzdg;
    .locals 5

    .line 108
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zzjy:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 111
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zzjy:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 112
    new-instance v2, Lcom/google/android/gms/internal/firebase_remote_config/zzdg;

    invoke-direct {v2}, Lcom/google/android/gms/internal/firebase_remote_config/zzdg;-><init>()V

    .line 113
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/firebase_remote_config/zzdg;->zzas(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_remote_config/zzdg;

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/firebase_remote_config/zzdg;->zzat(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_remote_config/zzdg;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->appId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/firebase_remote_config/zzdg;->zzar(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_remote_config/zzdg;

    .line 117
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zzja:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 118
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/firebase_remote_config/zzdg;->zzav(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_remote_config/zzdg;

    .line 119
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/firebase_remote_config/zzdg;->zzaw(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_remote_config/zzdg;

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/firebase_remote_config/zzdg;->zzay(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_remote_config/zzdg;

    .line 121
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/firebase_remote_config/zzdg;->zzba(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_remote_config/zzdg;

    const/4 v0, 0x0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zzja:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zzja:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 124
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/firebase_remote_config/zzdg;->zzau(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_remote_config/zzdg;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :catch_0
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zzja:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/firebase_remote_config/zzdg;->zzax(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_remote_config/zzdg;

    const-string v1, "17.0.0"

    .line 128
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/firebase_remote_config/zzdg;->zzaz(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_remote_config/zzdg;

    .line 130
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 131
    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zzjz:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    if-eqz v3, :cond_2

    .line 132
    invoke-interface {v3, v0}, Lcom/google/firebase/analytics/connector/AnalyticsConnector;->getUserProperties(Z)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 133
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 136
    :cond_2
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/firebase_remote_config/zzdg;->zza(Ljava/util/Map;)Lcom/google/android/gms/internal/firebase_remote_config/zzdg;

    return-object v2

    .line 110
    :cond_3
    new-instance v0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;

    const-string v1, "Fetch request could not be created: Firebase instance id is null."

    invoke-direct {v0, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static final synthetic zzf(Lcom/google/android/gms/internal/firebase_remote_config/zzen;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 138
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_remote_config/zzet;->zzg(Lcom/google/android/gms/internal/firebase_remote_config/zzen;)Lcom/google/android/gms/internal/firebase_remote_config/zzet;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza(Z)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/internal/firebase_remote_config/zzet;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zzji:Lcom/google/android/gms/internal/firebase_remote_config/zzev;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_remote_config/zzev;->getMinimumFetchIntervalInSeconds()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zza(ZJ)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(ZJ)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJ)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/internal/firebase_remote_config/zzet;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zzjd:Lcom/google/android/gms/internal/firebase_remote_config/zzei;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_remote_config/zzei;->zzcp()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/firebase_remote_config/zzer;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase_remote_config/zzer;-><init>(Lcom/google/android/gms/internal/firebase_remote_config/zzes;ZJ)V

    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zza(ZJLcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 4

    .line 140
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zzlc:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 141
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p4

    const/4 v1, 0x0

    if-eqz p4, :cond_2

    if-eqz p1, :cond_0

    :goto_0
    move p1, v1

    goto :goto_1

    .line 145
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zzji:Lcom/google/android/gms/internal/firebase_remote_config/zzev;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_remote_config/zzev;->zzcy()Ljava/util/Date;

    move-result-object p1

    .line 146
    sget-object p4, Lcom/google/android/gms/internal/firebase_remote_config/zzev;->zzli:Ljava/util/Date;

    invoke-virtual {p1, p4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_0

    .line 148
    :cond_1
    new-instance p4, Ljava/util/Date;

    .line 149
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    add-long/2addr v2, p1

    invoke-direct {p4, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 150
    invoke-virtual {v0, p4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_2

    .line 152
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_remote_config/zzet;->zze(Ljava/util/Date;)Lcom/google/android/gms/internal/firebase_remote_config/zzet;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 154
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zzji:Lcom/google/android/gms/internal/firebase_remote_config/zzev;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_remote_config/zzev;->zzda()Lcom/google/android/gms/internal/firebase_remote_config/zzey;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_remote_config/zzey;->zzde()Ljava/util/Date;

    move-result-object p1

    .line 155
    invoke-virtual {v0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_4

    .line 160
    new-instance p2, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigFetchThrottledException;

    .line 161
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p3

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr p3, v2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 162
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 163
    invoke-virtual {v2, p3, p4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p3

    invoke-static {p3, p4}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, v1

    const-string p3, "Fetch is throttled. Please wait before calling fetch again: %s"

    .line 164
    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 166
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p2, p3, v0, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigFetchThrottledException;-><init>(Ljava/lang/String;J)V

    .line 167
    invoke-static {p2}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 168
    :cond_4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zzb(Ljava/util/Date;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
