.class public Lcom/google/android/gms/ads/AdLoader;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.7.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/AdLoader$Builder;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzact:Lcom/google/android/gms/internal/ads/zzvq;

.field private final zzacu:Lcom/google/android/gms/internal/ads/zzxd;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzxd;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzvq;->zzcif:Lcom/google/android/gms/internal/ads/zzvq;

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/ads/AdLoader;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzxd;Lcom/google/android/gms/internal/ads/zzvq;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzxd;Lcom/google/android/gms/internal/ads/zzvq;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/ads/AdLoader;->context:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/google/android/gms/ads/AdLoader;->zzacu:Lcom/google/android/gms/internal/ads/zzxd;

    .line 8
    iput-object p3, p0, Lcom/google/android/gms/ads/AdLoader;->zzact:Lcom/google/android/gms/internal/ads/zzvq;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzzk;)V
    .locals 2

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader;->zzacu:Lcom/google/android/gms/internal/ads/zzxd;

    iget-object v1, p0, Lcom/google/android/gms/ads/AdLoader;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzvq;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzzk;)Lcom/google/android/gms/internal/ads/zzvl;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzxd;->zzb(Lcom/google/android/gms/internal/ads/zzvl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to load ad."

    .line 13
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getMediationAdapterClassName()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader;->zzacu:Lcom/google/android/gms/internal/ads/zzxd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzxd;->zzkh()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get the mediation adapter class name."

    .line 29
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public isLoading()Z
    .locals 2

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader;->zzacu:Lcom/google/android/gms/internal/ads/zzxd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzxd;->isLoading()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to check if ad is loading."

    .line 33
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    .locals 0

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest;->zzds()Lcom/google/android/gms/internal/ads/zzzk;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/AdLoader;->zza(Lcom/google/android/gms/internal/ads/zzzk;)V

    return-void
.end method

.method public loadAd(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;)V
    .locals 0

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest;->zzds()Lcom/google/android/gms/internal/ads/zzzk;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/AdLoader;->zza(Lcom/google/android/gms/internal/ads/zzzk;)V

    return-void
.end method

.method public loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zzds()Lcom/google/android/gms/internal/ads/zzzk;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/AdLoader;->zza(Lcom/google/android/gms/internal/ads/zzzk;)V

    return-void
.end method

.method public loadAds(Lcom/google/android/gms/ads/AdRequest;I)V
    .locals 2

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest;->zzds()Lcom/google/android/gms/internal/ads/zzzk;

    move-result-object p1

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader;->zzacu:Lcom/google/android/gms/internal/ads/zzxd;

    iget-object v1, p0, Lcom/google/android/gms/ads/AdLoader;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzvq;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzzk;)Lcom/google/android/gms/internal/ads/zzvl;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzxd;->zza(Lcom/google/android/gms/internal/ads/zzvl;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Failed to load ads."

    .line 25
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
