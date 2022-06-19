.class public final Lcom/google/android/gms/internal/ads/zzdto;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final context:Landroid/content/Context;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzhtb:Lcom/google/android/gms/internal/ads/zzdtu;

.field private final zzhtc:Lcom/google/android/gms/internal/ads/zzdtu;

.field private zzhtd:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/internal/ads/zzcf$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzhte:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/internal/ads/zzcf$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final zzvs:Lcom/google/android/gms/internal/ads/zzdsy;

.field private final zzyn:Lcom/google/android/gms/internal/ads/zzdtc;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdsy;Lcom/google/android/gms/internal/ads/zzdtc;Lcom/google/android/gms/internal/ads/zzdts;Lcom/google/android/gms/internal/ads/zzdtr;)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdto;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdto;->executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzvs:Lcom/google/android/gms/internal/ads/zzdsy;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzyn:Lcom/google/android/gms/internal/ads/zzdtc;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzhtb:Lcom/google/android/gms/internal/ads/zzdtu;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzhtc:Lcom/google/android/gms/internal/ads/zzdtu;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/internal/ads/zzcf$zza;)Lcom/google/android/gms/internal/ads/zzcf$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/internal/ads/zzcf$zza;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzcf$zza;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzcf$zza;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzcf$zza;

    return-object p0
.end method

.method public static zza(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdsy;Lcom/google/android/gms/internal/ads/zzdtc;)Lcom/google/android/gms/internal/ads/zzdto;
    .locals 8

    new-instance v7, Lcom/google/android/gms/internal/ads/zzdto;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzdts;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzdts;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzdtr;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzdtr;-><init>()V

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzdto;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdsy;Lcom/google/android/gms/internal/ads/zzdtc;Lcom/google/android/gms/internal/ads/zzdts;Lcom/google/android/gms/internal/ads/zzdtr;)V

    iget-object p0, v7, Lcom/google/android/gms/internal/ads/zzdto;->zzyn:Lcom/google/android/gms/internal/ads/zzdtc;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdtc;->zzaxq()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzdtn;

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/zzdtn;-><init>(Lcom/google/android/gms/internal/ads/zzdto;)V

    invoke-direct {v7, p0}, Lcom/google/android/gms/internal/ads/zzdto;->zzd(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, v7, Lcom/google/android/gms/internal/ads/zzdto;->zzhtb:Lcom/google/android/gms/internal/ads/zzdtu;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzdtu;->zzaxz()Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    :goto_0
    iput-object p0, v7, Lcom/google/android/gms/internal/ads/zzdto;->zzhtd:Lcom/google/android/gms/tasks/Task;

    new-instance p0, Lcom/google/android/gms/internal/ads/zzdtq;

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/zzdtq;-><init>(Lcom/google/android/gms/internal/ads/zzdto;)V

    invoke-direct {v7, p0}, Lcom/google/android/gms/internal/ads/zzdto;->zzd(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    iput-object p0, v7, Lcom/google/android/gms/internal/ads/zzdto;->zzhte:Lcom/google/android/gms/tasks/Task;

    return-object v7
.end method

.method private final zzd(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/google/android/gms/internal/ads/zzcf$zza;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/internal/ads/zzcf$zza;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdto;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, p1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdto;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdtp;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdtp;-><init>(Lcom/google/android/gms/internal/ads/zzdto;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zzaxw()Lcom/google/android/gms/internal/ads/zzcf$zza;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzhtd:Lcom/google/android/gms/tasks/Task;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzhtb:Lcom/google/android/gms/internal/ads/zzdtu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdtu;->zzaxz()Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdto;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/internal/ads/zzcf$zza;)Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzaxx()Lcom/google/android/gms/internal/ads/zzcf$zza;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzhtc:Lcom/google/android/gms/internal/ads/zzdtu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdto;->context:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdtu;->zzck(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzaxy()Lcom/google/android/gms/internal/ads/zzcf$zza;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzhtb:Lcom/google/android/gms/internal/ads/zzdtu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdto;->context:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdtu;->zzck(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzc(Ljava/lang/Exception;)V
    .locals 4

    instance-of v0, p1, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzvs:Lcom/google/android/gms/internal/ads/zzdsy;

    const/16 v1, 0x7e9

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzdsy;->zza(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final zzco()Lcom/google/android/gms/internal/ads/zzcf$zza;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzhte:Lcom/google/android/gms/tasks/Task;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzhtc:Lcom/google/android/gms/internal/ads/zzdtu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdtu;->zzaxz()Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdto;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/internal/ads/zzcf$zza;)Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object v0

    return-object v0
.end method
