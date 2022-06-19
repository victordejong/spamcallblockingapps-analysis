.class public final Lcom/google/android/gms/internal/ads/zzcme;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field private final zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

.field private final zzgnr:Lcom/google/android/gms/internal/ads/zzdzv;

.field private final zzgns:Lcom/google/android/gms/internal/ads/zzcnj;

.field private final zzgnt:Lcom/google/android/gms/internal/ads/zzepv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzepv<",
            "Lcom/google/android/gms/internal/ads/zzcol;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdzv;Lcom/google/android/gms/internal/ads/zzdzv;Lcom/google/android/gms/internal/ads/zzcnj;Lcom/google/android/gms/internal/ads/zzepv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdzv;",
            "Lcom/google/android/gms/internal/ads/zzdzv;",
            "Lcom/google/android/gms/internal/ads/zzcnj;",
            "Lcom/google/android/gms/internal/ads/zzepv<",
            "Lcom/google/android/gms/internal/ads/zzcol;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcme;->zzgnr:Lcom/google/android/gms/internal/ads/zzdzv;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcme;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcme;->zzgns:Lcom/google/android/gms/internal/ads/zzcnj;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcme;->zzgnt:Lcom/google/android/gms/internal/ads/zzepv;

    return-void
.end method


# virtual methods
.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzatq;ILcom/google/android/gms/internal/ads/zzcoc;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcme;->zzgnt:Lcom/google/android/gms/internal/ads/zzepv;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzepv;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzcol;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzcol;->zzb(Lcom/google/android/gms/internal/ads/zzatq;I)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzatq;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 4
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

    .line 7
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzatq;->packageName:Ljava/lang/String;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzek(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcoc;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdom;->zzhlu:Lcom/google/android/gms/internal/ads/zzdom;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcoc;-><init>(Lcom/google/android/gms/internal/ads/zzdom;)V

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdzk;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcme;->zzgnr:Lcom/google/android/gms/internal/ads/zzdzv;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcmd;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcmd;-><init>(Lcom/google/android/gms/internal/ads/zzcme;Lcom/google/android/gms/internal/ads/zzatq;)V

    .line 13
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzv;->zze(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    .line 14
    const-class v1, Ljava/util/concurrent/ExecutionException;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzcmg;->zzboq:Lcom/google/android/gms/internal/ads/zzdyu;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcme;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    .line 15
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdzk;->zzb(Lcom/google/android/gms/internal/ads/zzdzw;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdyu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    .line 16
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 17
    const-class v2, Lcom/google/android/gms/internal/ads/zzcoc;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcmf;

    invoke-direct {v3, p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzcmf;-><init>(Lcom/google/android/gms/internal/ads/zzcme;Lcom/google/android/gms/internal/ads/zzatq;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcme;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    .line 18
    invoke-static {v0, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzdzk;->zzb(Lcom/google/android/gms/internal/ads/zzdzw;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdyu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzf(Lcom/google/android/gms/internal/ads/zzatq;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcme;->zzgns:Lcom/google/android/gms/internal/ads/zzcnj;

    .line 22
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcnj;->zzi(Lcom/google/android/gms/internal/ads/zzatq;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcwn:Lcom/google/android/gms/internal/ads/zzaba;

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdzw;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    return-object p1
.end method
