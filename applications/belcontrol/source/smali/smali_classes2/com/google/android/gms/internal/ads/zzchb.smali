.class public final Lcom/google/android/gms/internal/ads/zzchb;
.super Lcom/google/android/gms/internal/ads/zzbnt;
.source ""


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzdzk:Lcom/google/android/gms/internal/ads/zzavl;

.field private final zzgbe:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/zzbeb;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgbf:Lcom/google/android/gms/internal/ads/zzbxo;

.field private final zzgbg:Lcom/google/android/gms/internal/ads/zzboq;

.field private final zzgbh:Lcom/google/android/gms/internal/ads/zzdtm;

.field private final zzgbi:Lcom/google/android/gms/internal/ads/zzbrt;

.field private final zzgbj:Lcom/google/android/gms/internal/ads/zzcag;

.field private zzgiq:Z

.field private final zzgjf:Lcom/google/android/gms/internal/ads/zzbta;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbnw;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbeb;Lcom/google/android/gms/internal/ads/zzcag;Lcom/google/android/gms/internal/ads/zzbxo;Lcom/google/android/gms/internal/ads/zzbrt;Lcom/google/android/gms/internal/ads/zzbta;Lcom/google/android/gms/internal/ads/zzboq;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzdtm;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbnt;-><init>(Lcom/google/android/gms/internal/ads/zzbnw;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzchb;->zzgiq:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzchb;->context:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzchb;->zzgbj:Lcom/google/android/gms/internal/ads/zzcag;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchb;->zzgbe:Ljava/lang/ref/WeakReference;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzchb;->zzgbf:Lcom/google/android/gms/internal/ads/zzbxo;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzchb;->zzgbi:Lcom/google/android/gms/internal/ads/zzbrt;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzchb;->zzgjf:Lcom/google/android/gms/internal/ads/zzbta;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzchb;->zzgbg:Lcom/google/android/gms/internal/ads/zzboq;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzchb;->zzgbh:Lcom/google/android/gms/internal/ads/zzdtm;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzawi;

    iget-object p2, p9, Lcom/google/android/gms/internal/ads/zzdmw;->zzdwm:Lcom/google/android/gms/internal/ads/zzavj;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzawi;-><init>(Lcom/google/android/gms/internal/ads/zzavj;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchb;->zzdzk:Lcom/google/android/gms/internal/ads/zzavl;

    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchb;->zzgbe:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbeb;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzabp;->zzcyw:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzchb;->zzgiq:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzazp;->zzeig:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzche;->zze(Lcom/google/android/gms/internal/ads/zzbeb;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final getAdMetadata()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchb;->zzgjf:Lcom/google/android/gms/internal/ads/zzbta;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbta;->getAdMetadata()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final isClosed()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchb;->zzgbg:Lcom/google/android/gms/internal/ads/zzboq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzboq;->isClosed()Z

    move-result v0

    return v0
.end method

.method public final isUsed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzchb;->zzgiq:Z

    return v0
.end method

.method public final zzb(ZLandroid/app/Activity;)Z
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcov:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchb;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzaq(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Rewarded ads that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://googlemobileadssdk.page.link/admob-interstitial-policies"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchb;->zzgbi:Lcom/google/android/gms/internal/ads/zzbrt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbrt;->zzalp()V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzabp;->zzcow:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchb;->zzgbh:Lcom/google/android/gms/internal/ads/zzdtm;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbnt;->zzfrd:Lcom/google/android/gms/internal/ads/zzdnl;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzdnl;->zzhks:Lcom/google/android/gms/internal/ads/zzdnj;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzdnj;->zzess:Lcom/google/android/gms/internal/ads/zzdnb;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzdnb;->zzbvs:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdtm;->zzhf(Ljava/lang/String;)V

    :cond_0
    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzchb;->zzgiq:Z

    if-eqz v0, :cond_2

    const-string p1, "The rewarded ad have been showed."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchb;->zzgbi:Lcom/google/android/gms/internal/ads/zzbrt;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdom;->zzhmd:Lcom/google/android/gms/internal/ads/zzdom;

    const/4 v0, 0x0

    invoke-static {p2, v0, v0}, Lcom/google/android/gms/internal/ads/zzdok;->zza(Lcom/google/android/gms/internal/ads/zzdom;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbrt;->zzl(Lcom/google/android/gms/internal/ads/zzvg;)V

    return v1

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzchb;->zzgiq:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzchb;->zzgbf:Lcom/google/android/gms/internal/ads/zzbxo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbxo;->zzalf()V

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzchb;->context:Landroid/content/Context;

    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzchb;->zzgbj:Lcom/google/android/gms/internal/ads/zzcag;

    invoke-interface {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzcag;->zza(ZLandroid/content/Context;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchb;->zzgbf:Lcom/google/android/gms/internal/ads/zzbxo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbxo;->zzald()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcaf; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzchb;->zzgbi:Lcom/google/android/gms/internal/ads/zzbrt;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbrt;->zza(Lcom/google/android/gms/internal/ads/zzcaf;)V

    return v1
.end method

.method public final zzrv()Lcom/google/android/gms/internal/ads/zzavl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchb;->zzdzk:Lcom/google/android/gms/internal/ads/zzavl;

    return-object v0
.end method

.method public final zzrw()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchb;->zzgbe:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbeb;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zzadm()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
