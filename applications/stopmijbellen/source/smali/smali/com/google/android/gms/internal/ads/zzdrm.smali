.class public final Lcom/google/android/gms/internal/ads/zzdrm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdwj;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzduy;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcxp;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzdqk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdwj;Lcom/google/android/gms/internal/ads/zzduy;Lcom/google/android/gms/internal/ads/zzcxp;Lcom/google/android/gms/internal/ads/zzdqk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrm;->zza:Lcom/google/android/gms/internal/ads/zzdwj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdrm;->zzb:Lcom/google/android/gms/internal/ads/zzduy;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdrm;->zzc:Lcom/google/android/gms/internal/ads/zzcxp;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdrm;->zzd:Lcom/google/android/gms/internal/ads/zzdqk;

    return-void
.end method


# virtual methods
.method public final zza()Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcpa;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrm;->zza:Lcom/google/android/gms/internal/ads/zzdwj;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbfi;->zzc()Lcom/google/android/gms/internal/ads/zzbfi;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzdwj;->zza(Lcom/google/android/gms/internal/ads/zzbfi;Lcom/google/android/gms/internal/ads/zzfdn;Lcom/google/android/gms/internal/ads/zzfdq;)Lcom/google/android/gms/internal/ads/zzcop;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x8

    .line 2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdrg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdrg;-><init>(Lcom/google/android/gms/internal/ads/zzdrm;)V

    const-string v2, "/sendMessageToSdk"

    .line 3
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzcop;->zzaf(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbrt;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdrh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdrh;-><init>(Lcom/google/android/gms/internal/ads/zzdrm;)V

    const-string v2, "/adMuted"

    .line 4
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzcop;->zzaf(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbrt;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdrm;->zzb:Lcom/google/android/gms/internal/ads/zzduy;

    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 5
    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdri;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzdri;-><init>(Lcom/google/android/gms/internal/ads/zzdrm;)V

    const-string v4, "/loadHtml"

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzduy;->zzj(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbrt;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdrm;->zzb:Lcom/google/android/gms/internal/ads/zzduy;

    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdrj;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzdrj;-><init>(Lcom/google/android/gms/internal/ads/zzdrm;)V

    const-string v4, "/showOverlay"

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzduy;->zzj(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbrt;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdrm;->zzb:Lcom/google/android/gms/internal/ads/zzduy;

    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 7
    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdrk;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzdrk;-><init>(Lcom/google/android/gms/internal/ads/zzdrm;)V

    const-string v4, "/hideOverlay"

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzduy;->zzj(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbrt;)V

    .line 8
    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzcop;Ljava/util/Map;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrm;->zzb:Lcom/google/android/gms/internal/ads/zzduy;

    const-string v0, "sendMessageToNativeJs"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzduy;->zzg(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final synthetic zzc(Lcom/google/android/gms/internal/ads/zzcop;Ljava/util/Map;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrm;->zzd:Lcom/google/android/gms/internal/ads/zzdqk;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdqk;->zzf()V

    return-void
.end method

.method public final synthetic zzd(Ljava/util/Map;Z)V
    .locals 2

    .line 1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "messageType"

    const-string v1, "htmlLoaded"

    .line 2
    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "id"

    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrm;->zzb:Lcom/google/android/gms/internal/ads/zzduy;

    const-string v0, "sendMessageToNativeJs"

    .line 4
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzduy;->zzg(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final synthetic zze(Lcom/google/android/gms/internal/ads/zzcop;Ljava/util/Map;)V
    .locals 0

    const-string p2, "Showing native ads overlay."

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzciz;->zzi(Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcop;->zzH()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrm;->zzc:Lcom/google/android/gms/internal/ads/zzcxp;

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcxp;->zze(Z)V

    return-void
.end method

.method public final synthetic zzf(Lcom/google/android/gms/internal/ads/zzcop;Ljava/util/Map;)V
    .locals 0

    const-string p2, "Hiding native ads overlay."

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzciz;->zzi(Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcop;->zzH()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrm;->zzc:Lcom/google/android/gms/internal/ads/zzcxp;

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcxp;->zze(Z)V

    return-void
.end method
