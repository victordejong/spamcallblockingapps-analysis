.class public final Lcom/google/android/gms/internal/ads/zzbjo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbsh;


# instance fields
.field private final zzfrg:Lcom/google/android/gms/internal/ads/zzdog;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjo;->zzfrg:Lcom/google/android/gms/internal/ads/zzdog;

    return-void
.end method


# virtual methods
.method public final zzcb(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjo;->zzfrg:Lcom/google/android/gms/internal/ads/zzdog;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdog;->pause()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdnt; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Cannot invoke onPause for the mediation adapter."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzcc(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjo;->zzfrg:Lcom/google/android/gms/internal/ads/zzdog;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdog;->resume()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjo;->zzfrg:Lcom/google/android/gms/internal/ads/zzdog;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdog;->onContextChanged(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdnt; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "Cannot invoke onResume for the mediation adapter."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzcd(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjo;->zzfrg:Lcom/google/android/gms/internal/ads/zzdog;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdog;->destroy()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdnt; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Cannot invoke onDestroy for the mediation adapter."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
