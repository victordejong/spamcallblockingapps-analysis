.class final Lcom/google/firebase/perf/internal/zzr;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-perf@@19.0.2"


# instance fields
.field private final zzas:Ljava/lang/Runtime;

.field private final zzdp:Landroid/app/ActivityManager;

.field private final zzdq:Landroid/app/ActivityManager$MemoryInfo;

.field private final zzdr:Ljava/lang/String;

.field private final zzds:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/firebase/perf/internal/zzr;-><init>(Ljava/lang/Runtime;Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Runtime;Landroid/content/Context;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/firebase/perf/internal/zzr;->zzas:Ljava/lang/Runtime;

    .line 5
    iput-object p2, p0, Lcom/google/firebase/perf/internal/zzr;->zzds:Landroid/content/Context;

    const-string p1, "activity"

    .line 7
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/google/firebase/perf/internal/zzr;->zzdp:Landroid/app/ActivityManager;

    .line 8
    new-instance p1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {p1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/internal/zzr;->zzdq:Landroid/app/ActivityManager$MemoryInfo;

    .line 9
    iget-object p1, p0, Lcom/google/firebase/perf/internal/zzr;->zzdp:Landroid/app/ActivityManager;

    iget-object p2, p0, Lcom/google/firebase/perf/internal/zzr;->zzdq:Landroid/app/ActivityManager$MemoryInfo;

    invoke-virtual {p1, p2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 11
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    .line 12
    iget-object p2, p0, Lcom/google/firebase/perf/internal/zzr;->zzdp:Landroid/app/ActivityManager;

    .line 13
    invoke-virtual {p2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 15
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 16
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v1, p1, :cond_0

    .line 17
    iget-object p1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/google/firebase/perf/internal/zzr;->zzds:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 20
    :goto_0
    iput-object p1, p0, Lcom/google/firebase/perf/internal/zzr;->zzdr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getProcessName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/google/firebase/perf/internal/zzr;->zzdr:Ljava/lang/String;

    return-object v0
.end method

.method public final zzar()I
    .locals 3

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/firebase-perf/zzat;->zzhi:Lcom/google/android/gms/internal/firebase-perf/zzat;

    iget-object v1, p0, Lcom/google/firebase/perf/internal/zzr;->zzas:Ljava/lang/Runtime;

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-perf/zzat;->zzn(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-perf/zzaa;->zza(J)I

    move-result v0

    return v0
.end method

.method public final zzas()I
    .locals 3

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/firebase-perf/zzat;->zzhg:Lcom/google/android/gms/internal/firebase-perf/zzat;

    iget-object v1, p0, Lcom/google/firebase/perf/internal/zzr;->zzdp:Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-perf/zzat;->zzn(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-perf/zzaa;->zza(J)I

    move-result v0

    return v0
.end method

.method public final zzat()I
    .locals 3

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/firebase-perf/zzat;->zzhi:Lcom/google/android/gms/internal/firebase-perf/zzat;

    iget-object v1, p0, Lcom/google/firebase/perf/internal/zzr;->zzdq:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v1, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-perf/zzat;->zzn(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-perf/zzaa;->zza(J)I

    move-result v0

    return v0
.end method
