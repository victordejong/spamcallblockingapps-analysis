.class public final Lcom/google/android/gms/internal/ads/zzalo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile zza:Lcom/google/android/gms/internal/ads/zzfoj;

.field private static final zzc:Landroid/os/ConditionVariable;

.field private static volatile zzd:Ljava/util/Random;


# instance fields
.field public volatile zzb:Ljava/lang/Boolean;

.field private final zze:Lcom/google/android/gms/internal/ads/zzams;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzalo;->zzc:Landroid/os/ConditionVariable;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzalo;->zza:Lcom/google/android/gms/internal/ads/zzfoj;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzalo;->zzd:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzams;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalo;->zze:Lcom/google/android/gms/internal/ads/zzams;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzams;->zzk()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaln;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaln;-><init>(Lcom/google/android/gms/internal/ads/zzalo;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static bridge synthetic zza()Landroid/os/ConditionVariable;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzalo;->zzc:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzalo;)Lcom/google/android/gms/internal/ads/zzams;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzalo;->zze:Lcom/google/android/gms/internal/ads/zzams;

    return-object p0
.end method

.method public static final zzd()I
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2
    :catch_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzalo;->zze()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method private static zze()Ljava/util/Random;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzalo;->zzd:Ljava/util/Random;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/internal/ads/zzalo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzalo;->zzd:Ljava/util/Random;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzalo;->zzd:Ljava/util/Random;

    .line 2
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzalo;->zzd:Ljava/util/Random;

    return-object v0
.end method


# virtual methods
.method public final zzc(IIJLjava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzalo;->zzc:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzb:Ljava/lang/Boolean;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzalo;->zza:Lcom/google/android/gms/internal/ads/zzfoj;

    if-eqz v0, :cond_3

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaip;->zza()Lcom/google/android/gms/internal/ads/zzail;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzalo;->zze:Lcom/google/android/gms/internal/ads/zzams;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzams;->zza:Landroid/content/Context;

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzail;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzail;

    .line 5
    invoke-virtual {v0, p3, p4}, Lcom/google/android/gms/internal/ads/zzail;->zze(J)Lcom/google/android/gms/internal/ads/zzail;

    if-eqz p5, :cond_0

    .line 6
    invoke-virtual {v0, p5}, Lcom/google/android/gms/internal/ads/zzail;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzail;

    :cond_0
    if-eqz p6, :cond_1

    new-instance p3, Ljava/io/StringWriter;

    .line 7
    invoke-direct {p3}, Ljava/io/StringWriter;-><init>()V

    new-instance p4, Ljava/io/PrintWriter;

    .line 8
    invoke-direct {p4, p3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p6, p4}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 9
    invoke-virtual {p3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzail;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzail;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    .line 10
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzail;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzail;

    :cond_1
    sget-object p3, Lcom/google/android/gms/internal/ads/zzalo;->zza:Lcom/google/android/gms/internal/ads/zzfoj;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgkh;->zzah()Lcom/google/android/gms/internal/ads/zzgkl;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/ads/zzaip;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzgin;->zzar()[B

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/ads/zzfoj;->zza([B)Lcom/google/android/gms/internal/ads/zzfoi;

    move-result-object p3

    .line 12
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzfoi;->zza(I)Lcom/google/android/gms/internal/ads/zzfoi;

    const/4 p1, -0x1

    if-eq p2, p1, :cond_2

    .line 13
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzfoi;->zzb(I)Lcom/google/android/gms/internal/ads/zzfoi;

    .line 14
    :cond_2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzfoi;->zzc()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method
