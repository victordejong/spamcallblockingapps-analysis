.class public final Lcom/google/android/gms/internal/ads/zzdjr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdkn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/internal/ads/zzbqv<",
        "TAdT;>;AdT:",
        "Lcom/google/android/gms/internal/ads/zzbnt;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdkn<",
        "TR;TAdT;>;"
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzhfm:Lcom/google/android/gms/internal/ads/zzdkn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdkn<",
            "TR;TAdT;>;"
        }
    .end annotation
.end field

.field private final zzhgz:Lcom/google/android/gms/internal/ads/zzdkn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdkn<",
            "TR;",
            "Lcom/google/android/gms/internal/ads/zzdka<",
            "TAdT;>;>;"
        }
    .end annotation
.end field

.field private final zzhha:Lcom/google/android/gms/internal/ads/zzdpu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdpu<",
            "TAdT;>;"
        }
    .end annotation
.end field

.field private zzhhb:Lcom/google/android/gms/internal/ads/zzbqv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdkn;Lcom/google/android/gms/internal/ads/zzdkn;Lcom/google/android/gms/internal/ads/zzdpu;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdkn<",
            "TR;TAdT;>;",
            "Lcom/google/android/gms/internal/ads/zzdkn<",
            "TR;",
            "Lcom/google/android/gms/internal/ads/zzdka<",
            "TAdT;>;>;",
            "Lcom/google/android/gms/internal/ads/zzdpu<",
            "TAdT;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjr;->zzhfm:Lcom/google/android/gms/internal/ads/zzdkn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjr;->zzhgz:Lcom/google/android/gms/internal/ads/zzdkn;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdjr;->zzhha:Lcom/google/android/gms/internal/ads/zzdpu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdjr;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzdpm;Lcom/google/android/gms/internal/ads/zzdko;Lcom/google/android/gms/internal/ads/zzdkp;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdpm<",
            "TAdT;>;",
            "Lcom/google/android/gms/internal/ads/zzdko;",
            "Lcom/google/android/gms/internal/ads/zzdkp<",
            "TR;>;)",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "TAdT;>;"
        }
    .end annotation

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzdko;->zzhht:Lcom/google/android/gms/internal/ads/zzdkm;

    invoke-interface {p3, v0}, Lcom/google/android/gms/internal/ads/zzdkp;->zzc(Lcom/google/android/gms/internal/ads/zzdkm;)Lcom/google/android/gms/internal/ads/zzbqy;

    move-result-object p3

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdpm;->zzhoi:Lcom/google/android/gms/internal/ads/zzbnt;

    if-eqz v0, :cond_1

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzbqy;->zzagm()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzbqv;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbqv;->zzahh()Lcom/google/android/gms/internal/ads/zzdkk;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zzdpm;->zzhoi:Lcom/google/android/gms/internal/ads/zzbnt;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbnt;->zzaks()Lcom/google/android/gms/internal/ads/zzdkk;

    move-result-object p3

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbqv;->zzahh()Lcom/google/android/gms/internal/ads/zzdkk;

    move-result-object p2

    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/ads/zzdkk;->zzb(Lcom/google/android/gms/internal/ads/zzdkk;)V

    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdpm;->zzhoi:Lcom/google/android/gms/internal/ads/zzbnt;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdzk;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdpm;->zzeyz:Lcom/google/android/gms/internal/ads/zzdnl;

    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/zzbqy;->zza(Lcom/google/android/gms/internal/ads/zzdnl;)Lcom/google/android/gms/internal/ads/zzbqy;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjr;->zzhfm:Lcom/google/android/gms/internal/ads/zzdkn;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdjt;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/ads/zzdjt;-><init>(Lcom/google/android/gms/internal/ads/zzbqy;)V

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdkn;->zza(Lcom/google/android/gms/internal/ads/zzdko;Lcom/google/android/gms/internal/ads/zzdkp;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjr;->zzhfm:Lcom/google/android/gms/internal/ads/zzdkn;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdkn;->zzaun()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzbqv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjr;->zzhhb:Lcom/google/android/gms/internal/ads/zzbqv;

    return-object p1
.end method

.method private final declared-synchronized zzauo()Lcom/google/android/gms/internal/ads/zzbqv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjr;->zzhhb:Lcom/google/android/gms/internal/ads/zzbqv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzdko;Lcom/google/android/gms/internal/ads/zzdju;Lcom/google/android/gms/internal/ads/zzdkp;Lcom/google/android/gms/internal/ads/zzdka;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 9

    if-eqz p4, :cond_2

    iget-object v7, p4, Lcom/google/android/gms/internal/ads/zzdka;->zzhhg:Lcom/google/android/gms/internal/ads/zzdpl;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzdju;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzdju;->zzhhe:Lcom/google/android/gms/internal/ads/zzdkp;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzdju;->zzhhf:Lcom/google/android/gms/internal/ads/zzdko;

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzdju;->zzdud:Lcom/google/android/gms/internal/ads/zzvl;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzdju;->zzbut:Ljava/lang/String;

    iget-object v5, p2, Lcom/google/android/gms/internal/ads/zzdju;->executor:Ljava/util/concurrent/Executor;

    iget-object v6, p2, Lcom/google/android/gms/internal/ads/zzdju;->zzhba:Lcom/google/android/gms/internal/ads/zzvx;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzdju;-><init>(Lcom/google/android/gms/internal/ads/zzdkp;Lcom/google/android/gms/internal/ads/zzdko;Lcom/google/android/gms/internal/ads/zzvl;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzvx;Lcom/google/android/gms/internal/ads/zzdpl;)V

    iget-object p2, p4, Lcom/google/android/gms/internal/ads/zzdka;->zzhhn:Lcom/google/android/gms/internal/ads/zzdpm;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjr;->zzhhb:Lcom/google/android/gms/internal/ads/zzbqv;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjr;->zzhha:Lcom/google/android/gms/internal/ads/zzdpu;

    invoke-virtual {p2, v8}, Lcom/google/android/gms/internal/ads/zzdpu;->zzb(Lcom/google/android/gms/internal/ads/zzdqa;)V

    iget-object p2, p4, Lcom/google/android/gms/internal/ads/zzdka;->zzhhn:Lcom/google/android/gms/internal/ads/zzdpm;

    invoke-direct {p0, p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzdjr;->zza(Lcom/google/android/gms/internal/ads/zzdpm;Lcom/google/android/gms/internal/ads/zzdko;Lcom/google/android/gms/internal/ads/zzdkp;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjr;->zzhha:Lcom/google/android/gms/internal/ads/zzdpu;

    invoke-virtual {p2, v8}, Lcom/google/android/gms/internal/ads/zzdpu;->zzc(Lcom/google/android/gms/internal/ads/zzdqa;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdko;->zzhht:Lcom/google/android/gms/internal/ads/zzdkm;

    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/zzdkp;->zzc(Lcom/google/android/gms/internal/ads/zzdkm;)Lcom/google/android/gms/internal/ads/zzbqy;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbqy;->zzagm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbqv;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjr;->zzhhb:Lcom/google/android/gms/internal/ads/zzbqv;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdjs;

    invoke-direct {p1, p0, p3}, Lcom/google/android/gms/internal/ads/zzdjs;-><init>(Lcom/google/android/gms/internal/ads/zzdjr;Lcom/google/android/gms/internal/ads/zzdkp;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdjr;->executor:Ljava/util/concurrent/Executor;

    invoke-static {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzdzk;->zzb(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdyu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjr;->zzhha:Lcom/google/android/gms/internal/ads/zzdpu;

    invoke-virtual {p2, v8}, Lcom/google/android/gms/internal/ads/zzdpu;->zzb(Lcom/google/android/gms/internal/ads/zzdqa;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdko;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdko;->zzhht:Lcom/google/android/gms/internal/ads/zzdkm;

    iget-object p4, p4, Lcom/google/android/gms/internal/ads/zzdka;->zzgoq:Lcom/google/android/gms/internal/ads/zzatq;

    invoke-direct {p2, p1, p4}, Lcom/google/android/gms/internal/ads/zzdko;-><init>(Lcom/google/android/gms/internal/ads/zzdkm;Lcom/google/android/gms/internal/ads/zzatq;)V

    move-object p1, p2

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjr;->zzhfm:Lcom/google/android/gms/internal/ads/zzdkn;

    invoke-interface {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzdkn;->zza(Lcom/google/android/gms/internal/ads/zzdko;Lcom/google/android/gms/internal/ads/zzdkp;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjr;->zzhfm:Lcom/google/android/gms/internal/ads/zzdkn;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdkn;->zzaun()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzbqv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjr;->zzhhb:Lcom/google/android/gms/internal/ads/zzbqv;

    return-object p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzdko;Lcom/google/android/gms/internal/ads/zzdkp;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdko;",
            "Lcom/google/android/gms/internal/ads/zzdkp<",
            "TR;>;)",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "TAdT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdko;->zzhht:Lcom/google/android/gms/internal/ads/zzdkm;

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzdkp;->zzc(Lcom/google/android/gms/internal/ads/zzdkm;)Lcom/google/android/gms/internal/ads/zzbqy;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbqy;->zzagm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbqv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbqv;->zzahg()Lcom/google/android/gms/internal/ads/zzdnp;

    move-result-object v0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdnp;->zzhkw:Lcom/google/android/gms/internal/ads/zzvl;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzdnp;->zzhkx:Ljava/lang/String;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzdnp;->zzhla:Lcom/google/android/gms/internal/ads/zzvx;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdju;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzdjr;->executor:Ljava/util/concurrent/Executor;

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzdju;-><init>(Lcom/google/android/gms/internal/ads/zzdkp;Lcom/google/android/gms/internal/ads/zzdko;Lcom/google/android/gms/internal/ads/zzvl;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzvx;Lcom/google/android/gms/internal/ads/zzdpl;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjr;->zzhgz:Lcom/google/android/gms/internal/ads/zzdkn;

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzdkn;->zza(Lcom/google/android/gms/internal/ads/zzdko;Lcom/google/android/gms/internal/ads/zzdkp;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdzf;->zzg(Lcom/google/android/gms/internal/ads/zzdzw;)Lcom/google/android/gms/internal/ads/zzdzf;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdjq;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzdjq;-><init>(Lcom/google/android/gms/internal/ads/zzdjr;Lcom/google/android/gms/internal/ads/zzdko;Lcom/google/android/gms/internal/ads/zzdju;Lcom/google/android/gms/internal/ads/zzdkp;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjr;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdzf;->zzb(Lcom/google/android/gms/internal/ads/zzdyu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzf;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzdkp;Lcom/google/android/gms/internal/ads/zzdpy;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 4

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzdpy;->zzhhn:Lcom/google/android/gms/internal/ads/zzdpm;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzdpy;->zzhoy:Lcom/google/android/gms/internal/ads/zzdqa;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdju;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzug$zzb;->zznl()Lcom/google/android/gms/internal/ads/zzug$zzb$zzc;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzug$zzb$zza;->zznn()Lcom/google/android/gms/internal/ads/zzug$zzb$zza$zza;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzug$zzb$zzb;->zzbzt:Lcom/google/android/gms/internal/ads/zzug$zzb$zzb;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzug$zzb$zza$zza;->zza(Lcom/google/android/gms/internal/ads/zzug$zzb$zzb;)Lcom/google/android/gms/internal/ads/zzug$zzb$zza$zza;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;->zznp()Lcom/google/android/gms/internal/ads/zzug$zzb$zzd$zza;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzug$zzb$zza$zza;->zza(Lcom/google/android/gms/internal/ads/zzug$zzb$zzd$zza;)Lcom/google/android/gms/internal/ads/zzug$zzb$zza$zza;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzug$zzb$zzc;->zza(Lcom/google/android/gms/internal/ads/zzug$zzb$zza$zza;)Lcom/google/android/gms/internal/ads/zzug$zzb$zzc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbiw()Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzelb;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzug$zzb;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzdpy;->zzhhn:Lcom/google/android/gms/internal/ads/zzdpm;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzdpm;->zzhoh:Lcom/google/android/gms/internal/ads/zzbou;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbou;->zzalc()Lcom/google/android/gms/internal/ads/zzbvu;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbvu;->zze(Lcom/google/android/gms/internal/ads/zzug$zzb;)V

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzdpy;->zzhhn:Lcom/google/android/gms/internal/ads/zzdpm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdju;->zzhhf:Lcom/google/android/gms/internal/ads/zzdko;

    invoke-direct {p0, p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzdjr;->zza(Lcom/google/android/gms/internal/ads/zzdpm;Lcom/google/android/gms/internal/ads/zzdko;Lcom/google/android/gms/internal/ads/zzdkp;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcmb;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdom;->zzhlu:Lcom/google/android/gms/internal/ads/zzdom;

    const-string v0, "Empty prefetch"

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzcmb;-><init>(Lcom/google/android/gms/internal/ads/zzdom;Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic zzaun()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdjr;->zzauo()Lcom/google/android/gms/internal/ads/zzbqv;

    move-result-object v0

    return-object v0
.end method
