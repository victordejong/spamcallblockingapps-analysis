.class public final Lcom/google/android/gms/internal/ads/zzdmc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzczc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzczc<",
        "Lcom/google/android/gms/internal/ads/zzchb;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfsj:Ljava/util/concurrent/Executor;

.field private final zzfyy:Lcom/google/android/gms/internal/ads/zzdnk;

.field private final zzgxu:Lcom/google/android/gms/internal/ads/zzdnr;

.field private final zzgzs:Lcom/google/android/gms/internal/ads/zzbgc;

.field private final zzhfk:Landroid/content/Context;

.field private final zzhfm:Lcom/google/android/gms/internal/ads/zzdkn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdkn<",
            "Lcom/google/android/gms/internal/ads/zzchi;",
            "Lcom/google/android/gms/internal/ads/zzchb;",
            ">;"
        }
    .end annotation
.end field

.field private zzhgj:Lcom/google/android/gms/internal/ads/zzdzw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Lcom/google/android/gms/internal/ads/zzchb;",
            ">;"
        }
    .end annotation
.end field

.field private final zzhii:Lcom/google/android/gms/internal/ads/zzdlh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbgc;Lcom/google/android/gms/internal/ads/zzdkn;Lcom/google/android/gms/internal/ads/zzdlh;Lcom/google/android/gms/internal/ads/zzdnr;Lcom/google/android/gms/internal/ads/zzdnk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/ads/zzbgc;",
            "Lcom/google/android/gms/internal/ads/zzdkn<",
            "Lcom/google/android/gms/internal/ads/zzchi;",
            "Lcom/google/android/gms/internal/ads/zzchb;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdlh;",
            "Lcom/google/android/gms/internal/ads/zzdnr;",
            "Lcom/google/android/gms/internal/ads/zzdnk;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhfk:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzfsj:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzgzs:Lcom/google/android/gms/internal/ads/zzbgc;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhfm:Lcom/google/android/gms/internal/ads/zzdkn;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhii:Lcom/google/android/gms/internal/ads/zzdlh;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzgxu:Lcom/google/android/gms/internal/ads/zzdnr;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzfyy:Lcom/google/android/gms/internal/ads/zzdnk;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdmc;Lcom/google/android/gms/internal/ads/zzdkm;)Lcom/google/android/gms/internal/ads/zzchh;
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdmc;->zzd(Lcom/google/android/gms/internal/ads/zzdkm;)Lcom/google/android/gms/internal/ads/zzchh;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdmc;)Lcom/google/android/gms/internal/ads/zzdlh;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhii:Lcom/google/android/gms/internal/ads/zzdlh;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdmc;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzfsj:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzdmc;)Lcom/google/android/gms/internal/ads/zzdkn;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhfm:Lcom/google/android/gms/internal/ads/zzdkn;

    return-object p0
.end method

.method private final zzd(Lcom/google/android/gms/internal/ads/zzdkm;)Lcom/google/android/gms/internal/ads/zzchh;
    .locals 3

    .line 37
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdmi;

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzgzs:Lcom/google/android/gms/internal/ads/zzbgc;

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbgc;->zzafp()Lcom/google/android/gms/internal/ads/zzchh;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbqx$zza;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbqx$zza;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhfk:Landroid/content/Context;

    .line 40
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbqx$zza;->zzcf(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbqx$zza;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzdmi;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    .line 41
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbqx$zza;->zza(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzbqx$zza;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdmi;->zzhij:Ljava/lang/String;

    .line 42
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbqx$zza;->zzfs(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbqx$zza;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzfyy:Lcom/google/android/gms/internal/ads/zzdnk;

    .line 43
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbqx$zza;->zza(Lcom/google/android/gms/internal/ads/zzdnk;)Lcom/google/android/gms/internal/ads/zzbqx$zza;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbqx$zza;->zzalo()Lcom/google/android/gms/internal/ads/zzbqx;

    move-result-object p1

    .line 45
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzchh;->zzf(Lcom/google/android/gms/internal/ads/zzbqx;)Lcom/google/android/gms/internal/ads/zzchh;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbwg$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbwg$zza;-><init>()V

    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbwg$zza;->zzaml()Lcom/google/android/gms/internal/ads/zzbwg;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzchh;->zzf(Lcom/google/android/gms/internal/ads/zzbwg;)Lcom/google/android/gms/internal/ads/zzchh;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final isLoading()Z
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhgj:Lcom/google/android/gms/internal/ads/zzdzw;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdzw;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzczb;Lcom/google/android/gms/internal/ads/zzcze;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzvl;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzczb;",
            "Lcom/google/android/gms/internal/ads/zzcze<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzchb;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzava;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzava;-><init>(Lcom/google/android/gms/internal/ads/zzvl;Ljava/lang/String;)V

    .line 12
    instance-of p1, p3, Lcom/google/android/gms/internal/ads/zzdmd;

    if-eqz p1, :cond_0

    .line 13
    check-cast p3, Lcom/google/android/gms/internal/ads/zzdmd;

    .line 15
    :cond_0
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzava;->zzbut:Ljava/lang/String;

    const/4 p2, 0x0

    if-nez p1, :cond_1

    const-string p1, "Ad unit ID should not be null for rewarded video ad."

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzev(Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzfsj:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzdmf;

    invoke-direct {p3, p0}, Lcom/google/android/gms/internal/ads/zzdmf;-><init>(Lcom/google/android/gms/internal/ads/zzdmc;)V

    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return p2

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhgj:Lcom/google/android/gms/internal/ads/zzdzw;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdzw;->isDone()Z

    move-result p1

    if-nez p1, :cond_2

    return p2

    .line 21
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhfk:Landroid/content/Context;

    iget-object p2, v0, Lcom/google/android/gms/internal/ads/zzava;->zzdud:Lcom/google/android/gms/internal/ads/zzvl;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzvl;->zzchq:Z

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzdod;->zze(Landroid/content/Context;Z)V

    .line 22
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzgxu:Lcom/google/android/gms/internal/ads/zzdnr;

    iget-object p2, v0, Lcom/google/android/gms/internal/ads/zzava;->zzbut:Ljava/lang/String;

    .line 23
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdnr;->zzgs(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdnr;

    move-result-object p1

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvs;->zzqf()Lcom/google/android/gms/internal/ads/zzvs;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdnr;->zzg(Lcom/google/android/gms/internal/ads/zzvs;)Lcom/google/android/gms/internal/ads/zzdnr;

    move-result-object p1

    iget-object p2, v0, Lcom/google/android/gms/internal/ads/zzava;->zzdud:Lcom/google/android/gms/internal/ads/zzvl;

    .line 25
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdnr;->zzh(Lcom/google/android/gms/internal/ads/zzvl;)Lcom/google/android/gms/internal/ads/zzdnr;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdnr;->zzavh()Lcom/google/android/gms/internal/ads/zzdnp;

    move-result-object p1

    .line 27
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdmi;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzdmi;-><init>(Lcom/google/android/gms/internal/ads/zzdmh;)V

    .line 28
    iput-object p1, p2, Lcom/google/android/gms/internal/ads/zzdmi;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    .line 29
    iput-object p3, p2, Lcom/google/android/gms/internal/ads/zzdmi;->zzhij:Ljava/lang/String;

    .line 30
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhfm:Lcom/google/android/gms/internal/ads/zzdkn;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzdko;

    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/ads/zzdko;-><init>(Lcom/google/android/gms/internal/ads/zzdkm;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdme;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdme;-><init>(Lcom/google/android/gms/internal/ads/zzdmc;)V

    .line 31
    invoke-interface {p1, p3, v0}, Lcom/google/android/gms/internal/ads/zzdkn;->zza(Lcom/google/android/gms/internal/ads/zzdko;Lcom/google/android/gms/internal/ads/zzdkp;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhgj:Lcom/google/android/gms/internal/ads/zzdzw;

    .line 32
    new-instance p3, Lcom/google/android/gms/internal/ads/zzdmh;

    invoke-direct {p3, p0, p4, p2}, Lcom/google/android/gms/internal/ads/zzdmh;-><init>(Lcom/google/android/gms/internal/ads/zzdmc;Lcom/google/android/gms/internal/ads/zzcze;Lcom/google/android/gms/internal/ads/zzdmi;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzfsj:Ljava/util/concurrent/Executor;

    invoke-static {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzdzk;->zza(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdzl;Ljava/util/concurrent/Executor;)V

    const/4 p1, 0x1

    return p1
.end method

.method final synthetic zzauv()V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzhii:Lcom/google/android/gms/internal/ads/zzdlh;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdom;->zzhlz:Lcom/google/android/gms/internal/ads/zzdom;

    const/4 v2, 0x0

    .line 49
    invoke-static {v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzdok;->zza(Lcom/google/android/gms/internal/ads/zzdom;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdlh;->zzc(Lcom/google/android/gms/internal/ads/zzvg;)V

    return-void
.end method

.method final synthetic zze(Lcom/google/android/gms/internal/ads/zzdkm;)Lcom/google/android/gms/internal/ads/zzchh;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdmc;->zzd(Lcom/google/android/gms/internal/ads/zzdkm;)Lcom/google/android/gms/internal/ads/zzchh;

    move-result-object p1

    return-object p1
.end method

.method final zzec(I)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzgxu:Lcom/google/android/gms/internal/ads/zzdnr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdnr;->zzavg()Lcom/google/android/gms/internal/ads/zzdne;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdne;->zzed(I)Lcom/google/android/gms/internal/ads/zzdne;

    return-void
.end method
