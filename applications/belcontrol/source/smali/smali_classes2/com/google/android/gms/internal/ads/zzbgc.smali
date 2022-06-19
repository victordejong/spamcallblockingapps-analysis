.class public abstract Lcom/google/android/gms/internal/ads/zzbgc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbjd;


# static fields
.field private static zzewb:Lcom/google/android/gms/internal/ads/zzbgc;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "AppComponent.class"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzane;I)Lcom/google/android/gms/internal/ads/zzbgc;
    .locals 0

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/zzbgc;->zzh(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzbgc;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgc;->zzaff()Lcom/google/android/gms/internal/ads/zzcin;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzcin;->zzb(Lcom/google/android/gms/internal/ads/zzane;)V

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzazn;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbig$zza;)Lcom/google/android/gms/internal/ads/zzbgc;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/ads/zzbgc;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgc;->zzewb:Lcom/google/android/gms/internal/ads/zzbgc;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbhs;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzbhs;-><init>(Lcom/google/android/gms/internal/ads/zzbgy;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbgb$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzbgb$zza;-><init>()V

    invoke-virtual {v3, p0}, Lcom/google/android/gms/internal/ads/zzbgb$zza;->zza(Lcom/google/android/gms/internal/ads/zzazn;)Lcom/google/android/gms/internal/ads/zzbgb$zza;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzbgb$zza;->zzbw(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbgb$zza;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbgb;

    invoke-direct {v4, v3, v2}, Lcom/google/android/gms/internal/ads/zzbgb;-><init>(Lcom/google/android/gms/internal/ads/zzbgb$zza;Lcom/google/android/gms/internal/ads/zzbgd;)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzbhs;->zzc(Lcom/google/android/gms/internal/ads/zzbgb;)Lcom/google/android/gms/internal/ads/zzbhs;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbig;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/ads/zzbig;-><init>(Lcom/google/android/gms/internal/ads/zzbig$zza;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbhs;->zza(Lcom/google/android/gms/internal/ads/zzbig;)Lcom/google/android/gms/internal/ads/zzbhs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbhs;->zzahv()Lcom/google/android/gms/internal/ads/zzbgc;

    move-result-object p2

    sput-object p2, Lcom/google/android/gms/internal/ads/zzbgc;->zzewb:Lcom/google/android/gms/internal/ads/zzbgc;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzabp;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/internal/ads/zzayo;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/google/android/gms/internal/ads/zzayo;->zzd(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazn;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkx()Lcom/google/android/gms/internal/ads/zzsz;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzsz;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzj;->zzak(Landroid/content/Context;)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzj;->zzal(Landroid/content/Context;)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzj;->zzbb(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzb;->zzaj(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzku()Lcom/google/android/gms/internal/ads/zzrl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzrl;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlm()Lcom/google/android/gms/ads/internal/util/zzbv;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzbv;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/internal/ads/zzayo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzayo;->zzxs()Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzf;->initialize(Landroid/content/Context;)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaxa;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/zzf;)Lcom/google/android/gms/internal/ads/zzaxa;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzabp;->zzcxy:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/google/android/gms/internal/ads/zzabp;->zzcot:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcql;

    new-instance v4, Lcom/google/android/gms/internal/ads/zztu;

    new-instance v1, Lcom/google/android/gms/internal/ads/zztz;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zztz;-><init>(Landroid/content/Context;)V

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zztu;-><init>(Lcom/google/android/gms/internal/ads/zztz;)V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzcpv;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcpt;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzcpt;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbgc;->zzewb:Lcom/google/android/gms/internal/ads/zzbgc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbgc;->zzafd()Lcom/google/android/gms/internal/ads/zzdzv;

    move-result-object v2

    invoke-direct {v5, v1, v2}, Lcom/google/android/gms/internal/ads/zzcpv;-><init>(Lcom/google/android/gms/internal/ads/zzcpt;Lcom/google/android/gms/internal/ads/zzdzv;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzj;->zzyy()Ljava/lang/String;

    move-result-object v6

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgc;->zzewb:Lcom/google/android/gms/internal/ads/zzbgc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbgc;->zzaez()Lcom/google/android/gms/internal/ads/zzdrz;

    move-result-object v7

    move-object v1, p2

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzcql;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazn;Lcom/google/android/gms/internal/ads/zztu;Lcom/google/android/gms/internal/ads/zzcpv;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdrz;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcql;->zzarx()V

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbgc;->zzewb:Lcom/google/android/gms/internal/ads/zzbgc;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static zzh(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzbgc;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/ads/zzbgc;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgc;->zzewb:Lcom/google/android/gms/internal/ads/zzbgc;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzazn;

    const v1, 0xc2be7e0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzazn;-><init>(IIZZ)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbgw;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbgw;-><init>()V

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbgc;->zza(Lcom/google/android/gms/internal/ads/zzazn;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbig$zza;)Lcom/google/android/gms/internal/ads/zzbgc;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzatq;I)Lcom/google/android/gms/internal/ads/zzdga;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdhj;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdhj;-><init>(Lcom/google/android/gms/internal/ads/zzatq;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbgc;->zza(Lcom/google/android/gms/internal/ads/zzdhj;)Lcom/google/android/gms/internal/ads/zzdga;

    move-result-object p1

    return-object p1
.end method

.method public abstract zza(Lcom/google/android/gms/internal/ads/zzdhj;)Lcom/google/android/gms/internal/ads/zzdga;
.end method

.method public abstract zzaez()Lcom/google/android/gms/internal/ads/zzdrz;
.end method

.method public abstract zzafa()Ljava/util/concurrent/Executor;
.end method

.method public abstract zzafb()Ljava/util/concurrent/ScheduledExecutorService;
.end method

.method public abstract zzafc()Ljava/util/concurrent/Executor;
.end method

.method public abstract zzafd()Lcom/google/android/gms/internal/ads/zzdzv;
.end method

.method public abstract zzafe()Lcom/google/android/gms/internal/ads/zzbts;
.end method

.method public abstract zzaff()Lcom/google/android/gms/internal/ads/zzcin;
.end method

.method public abstract zzafg()Lcom/google/android/gms/internal/ads/zzbim;
.end method

.method public abstract zzafh()Lcom/google/android/gms/internal/ads/zzbmu;
.end method

.method public abstract zzafi()Lcom/google/android/gms/internal/ads/zzdjn;
.end method

.method public abstract zzafj()Lcom/google/android/gms/internal/ads/zzbla;
.end method

.method public abstract zzafk()Lcom/google/android/gms/internal/ads/zzblj;
.end method

.method public abstract zzafl()Lcom/google/android/gms/internal/ads/zzdic;
.end method

.method public abstract zzafm()Lcom/google/android/gms/internal/ads/zzbzx;
.end method

.method public abstract zzafn()Lcom/google/android/gms/internal/ads/zzdle;
.end method

.method public abstract zzafo()Lcom/google/android/gms/internal/ads/zzcat;
.end method

.method public abstract zzafp()Lcom/google/android/gms/internal/ads/zzchh;
.end method

.method public abstract zzafq()Lcom/google/android/gms/internal/ads/zzdmr;
.end method

.method public abstract zzafr()Lcom/google/android/gms/internal/ads/zzczl;
.end method

.method public abstract zzafs()Lcom/google/android/gms/internal/ads/zzczo;
.end method

.method public abstract zzaft()Lcom/google/android/gms/internal/ads/zzcrb;
.end method

.method public abstract zzafu()Lcom/google/android/gms/internal/ads/zzdof;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdof<",
            "Lcom/google/android/gms/internal/ads/zzcgk;",
            ">;"
        }
    .end annotation
.end method
