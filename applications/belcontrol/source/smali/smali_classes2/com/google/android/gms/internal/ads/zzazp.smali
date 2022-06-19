.class public final Lcom/google/android/gms/internal/ads/zzazp;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final zzeic:Lcom/google/android/gms/internal/ads/zzdzv;

.field public static final zzeid:Lcom/google/android/gms/internal/ads/zzdzv;

.field public static final zzeie:Lcom/google/android/gms/internal/ads/zzdzv;

.field public static final zzeif:Ljava/util/concurrent/ScheduledExecutorService;

.field public static final zzeig:Lcom/google/android/gms/internal/ads/zzdzv;

.field public static final zzeih:Lcom/google/android/gms/internal/ads/zzdzv;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    move-result v0

    const-string v1, "Default"

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdvd;->zzayx()Lcom/google/android/gms/internal/ads/zzdve;

    move-result-object v0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzazp;->zzfa(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    sget v2, Lcom/google/android/gms/internal/ads/zzdvm;->zzhvh:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdve;->zza(Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x2

    const v3, 0x7fffffff

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzazp;->zzfa(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazp;->zza(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzv;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzazp;->zzeic:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "Loader"

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdvd;->zzayx()Lcom/google/android/gms/internal/ads/zzdve;

    move-result-object v0

    const/4 v3, 0x5

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzazp;->zzfa(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    sget v4, Lcom/google/android/gms/internal/ads/zzdvm;->zzhvg:I

    invoke-interface {v0, v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzdve;->zza(ILjava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x5

    const/4 v4, 0x5

    const-wide/16 v5, 0xa

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzazp;->zzfa(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v9

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazp;->zza(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzv;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzazp;->zzeid:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    move-result v0

    const-string v2, "Activeview"

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdvd;->zzayx()Lcom/google/android/gms/internal/ads/zzdve;

    move-result-object v0

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzazp;->zzfa(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    sget v2, Lcom/google/android/gms/internal/ads/zzdvm;->zzhvg:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdve;->zzb(Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/16 v5, 0xa

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzazp;->zzfa(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v9

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazp;->zza(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzv;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzazp;->zzeie:Lcom/google/android/gms/internal/ads/zzdzv;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzazs;

    const/4 v1, 0x3

    const-string v2, "Schedule"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzazp;->zzfa(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzazs;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzazp;->zzeif:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzazu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzazu;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazp;->zza(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzv;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzazp;->zzeig:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdzy;->zzbaf()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazp;->zza(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzv;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzazp;->zzeih:Lcom/google/android/gms/internal/ads/zzdzv;

    return-void
.end method

.method private static zza(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzv;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzazt;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzazt;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzazs;)V

    return-object v0
.end method

.method private static zzfa(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzazr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzazr;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
