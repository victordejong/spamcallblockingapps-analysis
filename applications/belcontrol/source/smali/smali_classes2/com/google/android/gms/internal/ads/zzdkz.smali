.class public final Lcom/google/android/gms/internal/ads/zzdkz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdzl<",
        "Lcom/google/android/gms/internal/ads/zzbyy;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgzg:Lcom/google/android/gms/internal/ads/zzcze;

.field private final synthetic zzhhx:Lcom/google/android/gms/internal/ads/zzbzy;

.field public final synthetic zzhhy:Lcom/google/android/gms/internal/ads/zzdkx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdkx;Lcom/google/android/gms/internal/ads/zzcze;Lcom/google/android/gms/internal/ads/zzbzy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkz;->zzhhy:Lcom/google/android/gms/internal/ads/zzdkx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdkz;->zzgzg:Lcom/google/android/gms/internal/ads/zzcze;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdkz;->zzhhx:Lcom/google/android/gms/internal/ads/zzbzy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbyy;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkz;->zzhhy:Lcom/google/android/gms/internal/ads/zzdkx;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdkz;->zzhhy:Lcom/google/android/gms/internal/ads/zzdkx;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdkx;->zza(Lcom/google/android/gms/internal/ads/zzdkx;Lcom/google/android/gms/internal/ads/zzdzw;)Lcom/google/android/gms/internal/ads/zzdzw;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzabp;->zzczu:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbnt;->zzakt()Lcom/google/android/gms/internal/ads/zzbve;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdkz;->zzhhy:Lcom/google/android/gms/internal/ads/zzdkx;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdkx;->zzb(Lcom/google/android/gms/internal/ads/zzdkx;)Lcom/google/android/gms/internal/ads/zzcxy;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbve;->zza(Lcom/google/android/gms/internal/ads/zzcxy;)Lcom/google/android/gms/internal/ads/zzbve;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdkz;->zzhhy:Lcom/google/android/gms/internal/ads/zzdkx;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdkx;->zza(Lcom/google/android/gms/internal/ads/zzdkx;)Lcom/google/android/gms/internal/ads/zzdlh;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbve;->zza(Lcom/google/android/gms/internal/ads/zzdlh;)Lcom/google/android/gms/internal/ads/zzbve;

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdkz;->zzgzg:Lcom/google/android/gms/internal/ads/zzcze;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzcze;->onSuccess(Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkz;->zzhhy:Lcom/google/android/gms/internal/ads/zzdkx;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdkx;->zzc(Lcom/google/android/gms/internal/ads/zzdkx;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdky;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdky;-><init>(Lcom/google/android/gms/internal/ads/zzdkz;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkz;->zzhhy:Lcom/google/android/gms/internal/ads/zzdkx;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdkx;->zzc(Lcom/google/android/gms/internal/ads/zzdkx;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdlb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdlb;-><init>(Lcom/google/android/gms/internal/ads/zzdkz;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkz;->zzhhx:Lcom/google/android/gms/internal/ads/zzbzy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzy;->zzagj()Lcom/google/android/gms/internal/ads/zzbou;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbou;->zze(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdkz;->zzhhy:Lcom/google/android/gms/internal/ads/zzdkx;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdkz;->zzhhy:Lcom/google/android/gms/internal/ads/zzdkx;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzdkx;->zza(Lcom/google/android/gms/internal/ads/zzdkx;Lcom/google/android/gms/internal/ads/zzdzw;)Lcom/google/android/gms/internal/ads/zzdzw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdkz;->zzhhx:Lcom/google/android/gms/internal/ads/zzbzy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbzy;->zzagk()Lcom/google/android/gms/internal/ads/zzbrp;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbrp;->zzc(Lcom/google/android/gms/internal/ads/zzvg;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzabp;->zzczu:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdkz;->zzhhy:Lcom/google/android/gms/internal/ads/zzdkx;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdkx;->zzc(Lcom/google/android/gms/internal/ads/zzdkx;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdla;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzdla;-><init>(Lcom/google/android/gms/internal/ads/zzdkz;Lcom/google/android/gms/internal/ads/zzvg;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdkz;->zzhhy:Lcom/google/android/gms/internal/ads/zzdkx;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdkx;->zzc(Lcom/google/android/gms/internal/ads/zzdkx;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdld;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzdld;-><init>(Lcom/google/android/gms/internal/ads/zzdkz;Lcom/google/android/gms/internal/ads/zzvg;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvg;->errorCode:I

    const-string v2, "InterstitialAdLoader.onFailure"

    invoke-static {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzdod;->zza(ILjava/lang/Throwable;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkz;->zzgzg:Lcom/google/android/gms/internal/ads/zzcze;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcze;->zzasi()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
