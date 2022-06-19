.class public final Lcom/google/android/gms/internal/ads/zzctn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcag;


# instance fields
.field private zzfxz:Lcom/google/android/gms/internal/ads/zzbsd;

.field private final zzfya:Lcom/google/android/gms/internal/ads/zzdmw;

.field private final zzgul:Lcom/google/android/gms/internal/ads/zzapk;

.field private final zzgum:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzapk;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzctn;->zzfxz:Lcom/google/android/gms/internal/ads/zzbsd;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctn;->zzfya:Lcom/google/android/gms/internal/ads/zzdmw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzctn;->zzgul:Lcom/google/android/gms/internal/ads/zzapk;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzctn;->zzgum:Z

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbsd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctn;->zzfxz:Lcom/google/android/gms/internal/ads/zzbsd;

    return-void
.end method

.method public final zza(ZLandroid/content/Context;)V
    .locals 0

    :try_start_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzctn;->zzgum:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzctn;->zzgul:Lcom/google/android/gms/internal/ads/zzapk;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzapk;->zzaa(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzctn;->zzgul:Lcom/google/android/gms/internal/ads/zzapk;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzapk;->zzz(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzctn;->zzfxz:Lcom/google/android/gms/internal/ads/zzbsd;

    if-nez p1, :cond_1

    return-void

    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabp;->zzcre:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzctn;->zzfya:Lcom/google/android/gms/internal/ads/zzdmw;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjs:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzctn;->zzfxz:Lcom/google/android/gms/internal/ads/zzbsd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbsd;->onAdImpression()V

    :cond_2
    return-void

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcaf;

    const-string p2, "Adapter failed to show."

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzcaf;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcaf;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzcaf;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
