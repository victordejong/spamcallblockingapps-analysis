.class public final Lcom/google/android/gms/internal/ads/zzamo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private zzdld:Lcom/google/android/gms/internal/ads/zzakz;

.field private zzdle:Lcom/google/android/gms/internal/ads/zzdzw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Lcom/google/android/gms/internal/ads/zzalx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzakz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzdld:Lcom/google/android/gms/internal/ads/zzakz;

    return-void
.end method

.method private final zzus()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzdle:Lcom/google/android/gms/internal/ads/zzdzw;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbaa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbaa;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzdle:Lcom/google/android/gms/internal/ads/zzdzw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzdld:Lcom/google/android/gms/internal/ads/zzakz;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzakz;->zzb(Lcom/google/android/gms/internal/ads/zzei;)Lcom/google/android/gms/internal/ads/zzalm;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzamr;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzamr;-><init>(Lcom/google/android/gms/internal/ads/zzbaa;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzamq;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/zzamq;-><init>(Lcom/google/android/gms/internal/ads/zzbaa;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbad;->zza(Lcom/google/android/gms/internal/ads/zzbae;Lcom/google/android/gms/internal/ads/zzbac;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamc;Lcom/google/android/gms/internal/ads/zzamd;)Lcom/google/android/gms/internal/ads/zzamv;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzamc<",
            "TI;>;",
            "Lcom/google/android/gms/internal/ads/zzamd<",
            "TO;>;)",
            "Lcom/google/android/gms/internal/ads/zzamv<",
            "TI;TO;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzamo;->zzus()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzamv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzdle:Lcom/google/android/gms/internal/ads/zzdzw;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzamv;-><init>(Lcom/google/android/gms/internal/ads/zzdzw;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamc;Lcom/google/android/gms/internal/ads/zzamd;)V

    return-object v0
.end method

.method public final zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzaif<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzalx;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzamo;->zzus()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzdle:Lcom/google/android/gms/internal/ads/zzdzw;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzamt;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzamt;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzazp;->zzeih:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdzk;->zzb(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdyu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzdle:Lcom/google/android/gms/internal/ads/zzdzw;

    return-void
.end method

.method public final zzd(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzaif<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzalx;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzdle:Lcom/google/android/gms/internal/ads/zzdzw;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzams;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzams;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzazp;->zzeih:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdzk;->zzb(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdvz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzdle:Lcom/google/android/gms/internal/ads/zzdzw;

    return-void
.end method
