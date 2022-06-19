.class public final Lcom/google/android/gms/internal/ads/zzcfn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field private final zzfsj:Ljava/util/concurrent/Executor;

.field private final zzgcm:Lcom/google/android/gms/internal/ads/zzbxz;

.field private final zzgim:Lcom/google/android/gms/internal/ads/zzbkm;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbkm;Lcom/google/android/gms/internal/ads/zzbxz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zzfsj:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zzgcm:Lcom/google/android/gms/internal/ads/zzbxz;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zzgim:Lcom/google/android/gms/internal/ads/zzbkm;

    return-void
.end method


# virtual methods
.method final synthetic zzf(Lcom/google/android/gms/internal/ads/zzbeb;Ljava/util/Map;)V
    .locals 0

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zzgim:Lcom/google/android/gms/internal/ads/zzbkm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbkm;->disable()V

    return-void
.end method

.method final synthetic zzg(Lcom/google/android/gms/internal/ads/zzbeb;Ljava/util/Map;)V
    .locals 0

    .line 18
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zzgim:Lcom/google/android/gms/internal/ads/zzbkm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbkm;->enable()V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzbeb;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zzgcm:Lcom/google/android/gms/internal/ads/zzbxz;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeb;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbxz;->zzv(Landroid/view/View;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zzgcm:Lcom/google/android/gms/internal/ads/zzbxz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcfq;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzcfq;-><init>(Lcom/google/android/gms/internal/ads/zzbeb;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zzfsj:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbwf;->zza(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zzgcm:Lcom/google/android/gms/internal/ads/zzbxz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcfp;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzcfp;-><init>(Lcom/google/android/gms/internal/ads/zzbeb;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zzfsj:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbwf;->zza(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zzgcm:Lcom/google/android/gms/internal/ads/zzbxz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zzgim:Lcom/google/android/gms/internal/ads/zzbkm;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zzfsj:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbwf;->zza(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zzgim:Lcom/google/android/gms/internal/ads/zzbkm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbkm;->zzd(Lcom/google/android/gms/internal/ads/zzbeb;)V

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcfs;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcfs;-><init>(Lcom/google/android/gms/internal/ads/zzcfn;)V

    const-string v1, "/trackActiveViewUnit"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcfr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcfr;-><init>(Lcom/google/android/gms/internal/ads/zzcfn;)V

    const-string v1, "/untrackActiveViewUnit"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    return-void
.end method
