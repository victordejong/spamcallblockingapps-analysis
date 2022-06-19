.class public final Lcom/google/android/gms/internal/ads/zzcgc;
.super Lcom/google/android/gms/internal/ads/zzafi;
.source ""


# instance fields
.field private final zzcio:Ljava/lang/String;

.field private final zzgch:Lcom/google/android/gms/internal/ads/zzccd;

.field private final zzgfm:Lcom/google/android/gms/internal/ads/zzcbu;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcbu;Lcom/google/android/gms/internal/ads/zzccd;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzafi;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgc;->zzcio:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgc;->zzgfm:Lcom/google/android/gms/internal/ads/zzcbu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcgc;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->zzgfm:Lcom/google/android/gms/internal/ads/zzcbu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->destroy()V

    return-void
.end method

.method public final getAdvertiser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccd;->getAdvertiser()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccd;->getBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCallToAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccd;->getCallToAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccd;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getHeadline()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccd;->getHeadline()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccd;->getImages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->zzcio:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzzc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccd;->getVideoController()Lcom/google/android/gms/internal/ads/zzzc;

    move-result-object v0

    return-object v0
.end method

.method public final performClick(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->zzgfm:Lcom/google/android/gms/internal/ads/zzcbu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcbu;->zzf(Landroid/os/Bundle;)V

    return-void
.end method

.method public final recordImpression(Landroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->zzgfm:Lcom/google/android/gms/internal/ads/zzcbu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcbu;->zzh(Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final reportTouchEvent(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->zzgfm:Lcom/google/android/gms/internal/ads/zzcbu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcbu;->zzg(Landroid/os/Bundle;)V

    return-void
.end method

.method public final zztm()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->zzgfm:Lcom/google/android/gms/internal/ads/zzcbu;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzto()Lcom/google/android/gms/internal/ads/zzaej;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccd;->zzto()Lcom/google/android/gms/internal/ads/zzaej;

    move-result-object v0

    return-object v0
.end method

.method public final zztp()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccd;->zztp()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zztq()Lcom/google/android/gms/internal/ads/zzaer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccd;->zztq()Lcom/google/android/gms/internal/ads/zzaer;

    move-result-object v0

    return-object v0
.end method
