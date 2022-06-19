.class public final Lcom/google/android/gms/internal/firebase-perf/zzah;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-perf@@19.0.2"


# static fields
.field private static final zzah:J

.field private static zzai:Lcom/google/android/gms/internal/firebase-perf/zzah;


# instance fields
.field private zzaj:Ljava/util/concurrent/ScheduledFuture;

.field private final zzak:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzal:J

.field private final zzam:J

.field private final zzan:Ljava/lang/String;

.field public final zzao:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/google/android/gms/internal/firebase-perf/zzbn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 83
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/firebase-perf/zzah;->zzah:J

    const/4 v0, 0x0

    .line 84
    sput-object v0, Lcom/google/android/gms/internal/firebase-perf/zzah;->zzai:Lcom/google/android/gms/internal/firebase-perf/zzah;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzah;->zzaj:Ljava/util/concurrent/ScheduledFuture;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzah;->zzal:J

    .line 4
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/firebase-perf/zzah;->zzao:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 5
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/firebase-perf/zzah;->zzak:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "/proc/"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/stat"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/firebase-perf/zzah;->zzan:Ljava/lang/String;

    .line 9
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 10
    sget v0, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    .line 12
    :cond_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzah;->zzam:J

    return-void
.end method

.method private final zzb(J)J
    .locals 2

    long-to-double p1, p1

    .line 73
    iget-wide v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzah;->zzam:J

    long-to-double v0, v0

    div-double/2addr p1, v0

    sget-wide v0, Lcom/google/android/gms/internal/firebase-perf/zzah;->zzah:J

    long-to-double v0, v0

    mul-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    return-wide p1
.end method

.method private final declared-synchronized zzb(JLcom/google/android/gms/internal/firebase-perf/zzaz;)V
    .locals 7

    monitor-enter p0

    .line 36
    :try_start_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/firebase-perf/zzah;->zzal:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzah;->zzak:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/firebase-perf/zzag;

    invoke-direct {v1, p0, p3}, Lcom/google/android/gms/internal/firebase-perf/zzag;-><init>(Lcom/google/android/gms/internal/firebase-perf/zzah;Lcom/google/android/gms/internal/firebase-perf/zzaz;)V

    const-wide/16 v2, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, p1

    .line 38
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-perf/zzah;->zzaj:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "FirebasePerformance"

    const-string p3, "Unable to start collecting Cpu Metrics: "

    .line 41
    invoke-virtual {p1}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized zzb(Lcom/google/android/gms/internal/firebase-perf/zzaz;)V
    .locals 4

    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzah;->zzak:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/firebase-perf/zzaj;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/firebase-perf/zzaj;-><init>(Lcom/google/android/gms/internal/firebase-perf/zzah;Lcom/google/android/gms/internal/firebase-perf/zzaz;)V

    const-wide/16 v2, 0x0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 44
    invoke-interface {v0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "FirebasePerformance"

    const-string v1, "Unable to collect Cpu Metric: "

    .line 47
    invoke-virtual {p1}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private final zzc(Lcom/google/android/gms/internal/firebase-perf/zzaz;)Lcom/google/android/gms/internal/firebase-perf/zzbn;
    .locals 13

    const-string v0, "FirebasePerformance"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 51
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase-perf/zzah;->zzan:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzbz()J

    move-result-wide v3

    .line 53
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    const-string v5, " "

    .line 54
    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/16 v5, 0xd

    .line 55
    aget-object v5, p1, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const/16 v7, 0xf

    .line 56
    aget-object v7, p1, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const/16 v9, 0xe

    .line 57
    aget-object v9, p1, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const/16 v11, 0x10

    .line 58
    aget-object p1, p1, v11

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 59
    invoke-static {}, Lcom/google/android/gms/internal/firebase-perf/zzbn;->zzcs()Lcom/google/android/gms/internal/firebase-perf/zzbn$zza;

    move-result-object p1

    .line 60
    invoke-virtual {p1, v3, v4}, Lcom/google/android/gms/internal/firebase-perf/zzbn$zza;->zzs(J)Lcom/google/android/gms/internal/firebase-perf/zzbn$zza;

    move-result-object p1

    add-long/2addr v9, v11

    .line 61
    invoke-direct {p0, v9, v10}, Lcom/google/android/gms/internal/firebase-perf/zzah;->zzb(J)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/google/android/gms/internal/firebase-perf/zzbn$zza;->zzu(J)Lcom/google/android/gms/internal/firebase-perf/zzbn$zza;

    move-result-object p1

    add-long/2addr v5, v7

    .line 62
    invoke-direct {p0, v5, v6}, Lcom/google/android/gms/internal/firebase-perf/zzah;->zzb(J)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/google/android/gms/internal/firebase-perf/zzbn$zza;->zzt(J)Lcom/google/android/gms/internal/firebase-perf/zzbn$zza;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-perf/zzeh$zza;->zzgm()Lcom/google/android/gms/internal/firebase-perf/zzfr;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-perf/zzeh;

    check-cast p1, Lcom/google/android/gms/internal/firebase-perf/zzbn;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 66
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/firebase-perf/zzz;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    :goto_1
    const-string v2, "Unexpected \'/proc/[pid]/stat\' file format encountered: "

    .line 71
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_3
    move-exception p1

    const-string v2, "Unable to read \'proc/[pid]/stat\' file: "

    .line 68
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-object v1
.end method

.method public static zzc(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static zzn()Lcom/google/android/gms/internal/firebase-perf/zzah;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/firebase-perf/zzah;->zzai:Lcom/google/android/gms/internal/firebase-perf/zzah;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/firebase-perf/zzah;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-perf/zzah;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-perf/zzah;->zzai:Lcom/google/android/gms/internal/firebase-perf/zzah;

    .line 16
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/firebase-perf/zzah;->zzai:Lcom/google/android/gms/internal/firebase-perf/zzah;

    return-object v0
.end method


# virtual methods
.method public final zza(JLcom/google/android/gms/internal/firebase-perf/zzaz;)V
    .locals 4

    .line 17
    iget-wide v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzah;->zzam:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/firebase-perf/zzah;->zzc(J)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzah;->zzaj:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_3

    .line 22
    iget-wide v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzah;->zzal:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_2

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-perf/zzah;->zzo()V

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-perf/zzah;->zzb(JLcom/google/android/gms/internal/firebase-perf/zzaz;)V

    :cond_2
    return-void

    .line 26
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-perf/zzah;->zzb(JLcom/google/android/gms/internal/firebase-perf/zzaz;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-perf/zzaz;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-perf/zzah;->zzb(Lcom/google/android/gms/internal/firebase-perf/zzaz;)V

    return-void
.end method

.method final synthetic zzd(Lcom/google/android/gms/internal/firebase-perf/zzaz;)V
    .locals 1

    .line 75
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-perf/zzah;->zzc(Lcom/google/android/gms/internal/firebase-perf/zzaz;)Lcom/google/android/gms/internal/firebase-perf/zzbn;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzah;->zzao:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method final synthetic zze(Lcom/google/android/gms/internal/firebase-perf/zzaz;)V
    .locals 1

    .line 79
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-perf/zzah;->zzc(Lcom/google/android/gms/internal/firebase-perf/zzaz;)Lcom/google/android/gms/internal/firebase-perf/zzbn;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzah;->zzao:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final zzo()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzah;->zzaj:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 30
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzah;->zzaj:Ljava/util/concurrent/ScheduledFuture;

    const-wide/16 v0, -0x1

    .line 32
    iput-wide v0, p0, Lcom/google/android/gms/internal/firebase-perf/zzah;->zzal:J

    return-void
.end method
