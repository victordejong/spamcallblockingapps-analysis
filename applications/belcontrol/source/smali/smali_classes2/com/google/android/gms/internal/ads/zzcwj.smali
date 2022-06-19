.class public final Lcom/google/android/gms/internal/ads/zzcwj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbsx;


# instance fields
.field private final synthetic zzgvx:Lcom/google/android/gms/internal/ads/zzcrl;

.field private zzgwj:Z

.field private final synthetic zzgwk:Lcom/google/android/gms/internal/ads/zzbaa;

.field private final synthetic zzgwl:Lcom/google/android/gms/internal/ads/zzcwi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcwi;Lcom/google/android/gms/internal/ads/zzcrl;Lcom/google/android/gms/internal/ads/zzbaa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwj;->zzgwl:Lcom/google/android/gms/internal/ads/zzcwi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcwj;->zzgvx:Lcom/google/android/gms/internal/ads/zzcrl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcwj;->zzgwk:Lcom/google/android/gms/internal/ads/zzbaa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcwj;->zzgwj:Z

    return-void
.end method

.method private final zzm(Lcom/google/android/gms/internal/ads/zzvg;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdom;->zzhlu:Lcom/google/android/gms/internal/ads/zzdom;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzabp;->zzcwj:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdom;->zzhlw:Lcom/google/android/gms/internal/ads/zzdom;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcwj;->zzgwk:Lcom/google/android/gms/internal/ads/zzbaa;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcrn;

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/internal/ads/zzcrn;-><init>(Lcom/google/android/gms/internal/ads/zzdom;Lcom/google/android/gms/internal/ads/zzvg;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbaa;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method


# virtual methods
.method public final onAdFailedToLoad(I)V
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcwj;->zzgwj:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwj;->zzgvx:Lcom/google/android/gms/internal/ads/zzcrl;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcrl;->zzcio:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcwi;->zza(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzvg;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "undefined"

    move-object v1, v0

    move v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzvg;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;Landroid/os/IBinder;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcwj;->zzm(Lcom/google/android/gms/internal/ads/zzvg;)V

    return-void
.end method

.method public final declared-synchronized onAdLoaded()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwj;->zzgwk:Lcom/google/android/gms/internal/ads/zzbaa;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbaa;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzc(Lcom/google/android/gms/internal/ads/zzvg;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcwj;->zzgwj:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcwj;->zzm(Lcom/google/android/gms/internal/ads/zzvg;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzf(ILjava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcwj;->zzgwj:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcwj;->zzgwj:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcwj;->zzgvx:Lcom/google/android/gms/internal/ads/zzcrl;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzcrl;->zzcio:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcwi;->zza(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    move-object v2, p2

    new-instance p2, Lcom/google/android/gms/internal/ads/zzvg;

    const-string v3, "undefined"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzvg;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;Landroid/os/IBinder;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzcwj;->zzm(Lcom/google/android/gms/internal/ads/zzvg;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
