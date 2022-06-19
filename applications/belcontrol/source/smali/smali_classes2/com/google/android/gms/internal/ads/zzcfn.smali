.class public final Lcom/google/android/gms/internal/ads/zzcfn;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzfsj:Ljava/util/concurrent/Executor;

.field private final zzgcm:Lcom/google/android/gms/internal/ads/zzbxz;

.field private final zzgim:Lcom/google/android/gms/internal/ads/zzbkm;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbkm;Lcom/google/android/gms/internal/ads/zzbxz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zzfsj:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zzgcm:Lcom/google/android/gms/internal/ads/zzbxz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zzgim:Lcom/google/android/gms/internal/ads/zzbkm;

    return-void
.end method


# virtual methods
.method public final synthetic zzf(Lcom/google/android/gms/internal/ads/zzbeb;Ljava/util/Map;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zzgim:Lcom/google/android/gms/internal/ads/zzbkm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbkm;->disable()V

    return-void
.end method

.method public final synthetic zzg(Lcom/google/android/gms/internal/ads/zzbeb;Ljava/util/Map;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zzgim:Lcom/google/android/gms/internal/ads/zzbkm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbkm;->enable()V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzbeb;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zzgcm:Lcom/google/android/gms/internal/ads/zzbxz;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeb;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbxz;->zzv(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zzgcm:Lcom/google/android/gms/internal/ads/zzbxz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcfq;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzcfq;-><init>(Lcom/google/android/gms/internal/ads/zzbeb;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zzfsj:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbwf;->zza(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zzgcm:Lcom/google/android/gms/internal/ads/zzbxz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcfp;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzcfp;-><init>(Lcom/google/android/gms/internal/ads/zzbeb;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zzfsj:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbwf;->zza(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zzgcm:Lcom/google/android/gms/internal/ads/zzbxz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zzgim:Lcom/google/android/gms/internal/ads/zzbkm;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zzfsj:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbwf;->zza(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zzgim:Lcom/google/android/gms/internal/ads/zzbkm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbkm;->zzd(Lcom/google/android/gms/internal/ads/zzbeb;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcfs;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcfs;-><init>(Lcom/google/android/gms/internal/ads/zzcfn;)V

    const-string v1, "/trackActiveViewUnit"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcfr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcfr;-><init>(Lcom/google/android/gms/internal/ads/zzcfn;)V

    const-string v1, "/untrackActiveViewUnit"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    return-void
.end method
