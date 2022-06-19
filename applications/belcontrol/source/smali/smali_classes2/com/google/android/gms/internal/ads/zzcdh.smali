.class public final Lcom/google/android/gms/internal/ads/zzcdh;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzgdh:Lcom/google/android/gms/internal/ads/zzccl;

.field private final zzgge:Lcom/google/android/gms/internal/ads/zzcgk;

.field private final zzggk:Lcom/google/android/gms/internal/ads/zzchq;

.field private final zzggl:Lcom/google/android/gms/internal/ads/zzbkm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzchq;Lcom/google/android/gms/internal/ads/zzcgk;Lcom/google/android/gms/internal/ads/zzbkm;Lcom/google/android/gms/internal/ads/zzccl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdh;->zzggk:Lcom/google/android/gms/internal/ads/zzchq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdh;->zzgge:Lcom/google/android/gms/internal/ads/zzcgk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcdh;->zzggl:Lcom/google/android/gms/internal/ads/zzbkm;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcdh;->zzgdh:Lcom/google/android/gms/internal/ads/zzccl;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzbeb;Ljava/util/Map;)V
    .locals 0

    const-string p2, "Hiding native ads overlay."

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzazk;->zzew(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeb;->getView()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdh;->zzggl:Lcom/google/android/gms/internal/ads/zzbkm;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbkm;->zzbf(Z)V

    return-void
.end method

.method public final synthetic zza(Ljava/util/Map;Z)V
    .locals 2

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "messageType"

    const-string v1, "htmlLoaded"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdh;->zzgge:Lcom/google/android/gms/internal/ads/zzcgk;

    const-string v0, "sendMessageToNativeJs"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzcgk;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzapf()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdh;->zzggk:Lcom/google/android/gms/internal/ads/zzchq;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvs;->zzqe()Lcom/google/android/gms/internal/ads/zzvs;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzchq;->zza(Lcom/google/android/gms/internal/ads/zzvs;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzdnb;)Lcom/google/android/gms/internal/ads/zzbeb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->getView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcdk;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcdk;-><init>(Lcom/google/android/gms/internal/ads/zzcdh;)V

    const-string v2, "/sendMessageToSdk"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbeb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcdj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcdj;-><init>(Lcom/google/android/gms/internal/ads/zzcdh;)V

    const-string v2, "/adMuted"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbeb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdh;->zzgge:Lcom/google/android/gms/internal/ads/zzcgk;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcdm;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzcdm;-><init>(Lcom/google/android/gms/internal/ads/zzcdh;)V

    const-string v4, "/loadHtml"

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzcgk;->zza(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdh;->zzgge:Lcom/google/android/gms/internal/ads/zzcgk;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcdl;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzcdl;-><init>(Lcom/google/android/gms/internal/ads/zzcdh;)V

    const-string v4, "/showOverlay"

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzcgk;->zza(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdh;->zzgge:Lcom/google/android/gms/internal/ads/zzcgk;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcdo;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzcdo;-><init>(Lcom/google/android/gms/internal/ads/zzcdh;)V

    const-string v4, "/hideOverlay"

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzcgk;->zza(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzbeb;Ljava/util/Map;)V
    .locals 0

    const-string p2, "Showing native ads overlay."

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzazk;->zzew(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeb;->getView()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdh;->zzggl:Lcom/google/android/gms/internal/ads/zzbkm;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbkm;->zzbf(Z)V

    return-void
.end method

.method public final synthetic zzc(Lcom/google/android/gms/internal/ads/zzbeb;Ljava/util/Map;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdh;->zzgdh:Lcom/google/android/gms/internal/ads/zzccl;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzccl;->zzank()V

    return-void
.end method

.method public final synthetic zzd(Lcom/google/android/gms/internal/ads/zzbeb;Ljava/util/Map;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdh;->zzgge:Lcom/google/android/gms/internal/ads/zzcgk;

    const-string v0, "sendMessageToNativeJs"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzcgk;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
