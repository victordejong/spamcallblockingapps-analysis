.class public final Lcom/google/android/gms/internal/ads/zzcmx;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzfri:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

.field private final zzgnt:Lcom/google/android/gms/internal/ads/zzepv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzepv<",
            "Lcom/google/android/gms/internal/ads/zzcol;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgod:Lcom/google/android/gms/internal/ads/zzcnn;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzdzv;Lcom/google/android/gms/internal/ads/zzcnn;Lcom/google/android/gms/internal/ads/zzepv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/android/gms/internal/ads/zzdzv;",
            "Lcom/google/android/gms/internal/ads/zzcnn;",
            "Lcom/google/android/gms/internal/ads/zzepv<",
            "Lcom/google/android/gms/internal/ads/zzcol;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmx;->zzfri:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmx;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcmx;->zzgod:Lcom/google/android/gms/internal/ads/zzcnn;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcmx;->zzgnt:Lcom/google/android/gms/internal/ads/zzepv;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzatq;ILjava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 0

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcmx;->zzgnt:Lcom/google/android/gms/internal/ads/zzepv;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzepv;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzcol;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzcol;->zzd(Lcom/google/android/gms/internal/ads/zzatq;I)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzatq;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzatq;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzatq;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzek(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcoc;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdom;->zzhlu:Lcom/google/android/gms/internal/ads/zzdom;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcoc;-><init>(Lcom/google/android/gms/internal/ads/zzdom;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdzk;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmx;->zzgod:Lcom/google/android/gms/internal/ads/zzcnn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcnn;->zzj(Lcom/google/android/gms/internal/ads/zzatq;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdzf;->zzg(Lcom/google/android/gms/internal/ads/zzdzw;)Lcom/google/android/gms/internal/ads/zzdzf;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzabp;->zzcwn:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcmx;->zzfri:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdzf;->zza(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzdzf;

    move-result-object v0

    const-class v2, Ljava/lang/Throwable;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcna;

    invoke-direct {v3, p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzcna;-><init>(Lcom/google/android/gms/internal/ads/zzcmx;Lcom/google/android/gms/internal/ads/zzatq;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmx;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-virtual {v0, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzdzf;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdyu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzf;

    move-result-object p1

    return-object p1
.end method
