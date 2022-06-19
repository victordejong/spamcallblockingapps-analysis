.class public final Lcom/google/android/gms/internal/ads/zzcam;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbrm;
.implements Lcom/google/android/gms/internal/ads/zzbxp;


# instance fields
.field private final context:Landroid/content/Context;

.field private final view:Landroid/view/View;

.field private final zzbqv:Lcom/google/android/gms/internal/ads/zzaxc;

.field private final zzfwd:Lcom/google/android/gms/internal/ads/zzaxd;

.field private final zzgbp:Lcom/google/android/gms/internal/ads/zzug$zza$zza;

.field private zzgbr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaxd;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaxc;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzug$zza$zza;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcam;->zzfwd:Lcom/google/android/gms/internal/ads/zzaxd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcam;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcam;->zzbqv:Lcom/google/android/gms/internal/ads/zzaxc;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcam;->view:Landroid/view/View;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcam;->zzgbp:Lcom/google/android/gms/internal/ads/zzug$zza$zza;

    return-void
.end method


# virtual methods
.method public final onAdClosed()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcam;->zzfwd:Lcom/google/android/gms/internal/ads/zzaxd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaxd;->zzan(Z)V

    return-void
.end method

.method public final onAdLeftApplication()V
    .locals 0

    return-void
.end method

.method public final onAdOpened()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcam;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcam;->zzgbr:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcam;->zzbqv:Lcom/google/android/gms/internal/ads/zzaxc;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcam;->zzgbr:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzaxc;->zzf(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcam;->zzfwd:Lcom/google/android/gms/internal/ads/zzaxd;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaxd;->zzan(Z)V

    return-void
.end method

.method public final onRewardedVideoCompleted()V
    .locals 0

    return-void
.end method

.method public final onRewardedVideoStarted()V
    .locals 0

    return-void
.end method

.method public final zzald()V
    .locals 0

    return-void
.end method

.method public final zzalf()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcam;->zzbqv:Lcom/google/android/gms/internal/ads/zzaxc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcam;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaxc;->zzaa(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcam;->zzgbr:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcam;->zzgbp:Lcom/google/android/gms/internal/ads/zzug$zza$zza;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzug$zza$zza;->zzbyu:Lcom/google/android/gms/internal/ads/zzug$zza$zza;

    if-ne v1, v2, :cond_0

    const-string v1, "/Rewarded"

    goto :goto_0

    :cond_0
    const-string v1, "/Interstitial"

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcam;->zzgbr:Ljava/lang/String;

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzauk;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
    .end annotation

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcam;->zzbqv:Lcom/google/android/gms/internal/ads/zzaxc;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcam;->context:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzaxc;->zzy(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcam;->zzbqv:Lcom/google/android/gms/internal/ads/zzaxc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcam;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaxc;->zzad(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcam;->zzfwd:Lcom/google/android/gms/internal/ads/zzaxd;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaxd;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzauk;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzauk;->getAmount()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzaxc;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Remote Exception to get reward item."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
