.class final Lcom/google/android/gms/internal/ads/zzczh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdzl<",
        "Lcom/google/android/gms/internal/ads/zzbnt;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgzg:Lcom/google/android/gms/internal/ads/zzcze;

.field private final synthetic zzgzh:Lcom/google/android/gms/internal/ads/zzcau;

.field final synthetic zzgzi:Lcom/google/android/gms/internal/ads/zzczg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzczg;Lcom/google/android/gms/internal/ads/zzcze;Lcom/google/android/gms/internal/ads/zzcau;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczh;->zzgzi:Lcom/google/android/gms/internal/ads/zzczg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzczh;->zzgzg:Lcom/google/android/gms/internal/ads/zzcze;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzczh;->zzgzh:Lcom/google/android/gms/internal/ads/zzcau;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 9
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbnt;

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczh;->zzgzi:Lcom/google/android/gms/internal/ads/zzczg;

    monitor-enter v0

    .line 11
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbnt;->zzakt()Lcom/google/android/gms/internal/ads/zzbve;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzczh;->zzgzi:Lcom/google/android/gms/internal/ads/zzczg;

    .line 12
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzczg;->zza(Lcom/google/android/gms/internal/ads/zzczg;)Lcom/google/android/gms/internal/ads/zzcza;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcza;->zzasp()Lcom/google/android/gms/internal/ads/zzcxy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbve;->zza(Lcom/google/android/gms/internal/ads/zzcxy;)Lcom/google/android/gms/internal/ads/zzbve;

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczh;->zzgzg:Lcom/google/android/gms/internal/ads/zzcze;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzcze;->onSuccess(Ljava/lang/Object;)V

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzczh;->zzgzi:Lcom/google/android/gms/internal/ads/zzczg;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzczg;->zzb(Lcom/google/android/gms/internal/ads/zzczg;)Lcom/google/android/gms/internal/ads/zzbgc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbgc;->zzafa()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzczk;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzczk;-><init>(Lcom/google/android/gms/internal/ads/zzczh;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 15
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
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczh;->zzgzh:Lcom/google/android/gms/internal/ads/zzcau;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcau;->zzagj()Lcom/google/android/gms/internal/ads/zzbou;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbou;->zze(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczh;->zzgzh:Lcom/google/android/gms/internal/ads/zzcau;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcau;->zzagk()Lcom/google/android/gms/internal/ads/zzbrp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbrp;->zzc(Lcom/google/android/gms/internal/ads/zzvg;)V

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczh;->zzgzi:Lcom/google/android/gms/internal/ads/zzczg;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzczg;->zzb(Lcom/google/android/gms/internal/ads/zzczg;)Lcom/google/android/gms/internal/ads/zzbgc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbgc;->zzafa()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzczj;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzczj;-><init>(Lcom/google/android/gms/internal/ads/zzczh;Lcom/google/android/gms/internal/ads/zzvg;)V

    .line 5
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 6
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvg;->errorCode:I

    const-string v1, "NativeAdLoader.onFailure"

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdod;->zza(ILjava/lang/Throwable;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzczh;->zzgzg:Lcom/google/android/gms/internal/ads/zzcze;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcze;->zzasi()V

    return-void
.end method
