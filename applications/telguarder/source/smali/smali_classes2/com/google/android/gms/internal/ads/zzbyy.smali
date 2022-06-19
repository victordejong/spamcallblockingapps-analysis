.class public final Lcom/google/android/gms/internal/ads/zzbyy;
.super Lcom/google/android/gms/internal/ads/zzbnt;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzfui:Lcom/google/android/gms/internal/ads/zzcag;

.field private zzfuj:Z

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


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbnw;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbeb;Lcom/google/android/gms/internal/ads/zzbxo;Lcom/google/android/gms/internal/ads/zzcag;Lcom/google/android/gms/internal/ads/zzboq;Lcom/google/android/gms/internal/ads/zzdtm;Lcom/google/android/gms/internal/ads/zzbrt;)V
    .locals 0
    .param p3    # Lcom/google/android/gms/internal/ads/zzbeb;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbnt;-><init>(Lcom/google/android/gms/internal/ads/zzbnw;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbyy;->zzfuj:Z

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbyy;->context:Landroid/content/Context;

    .line 4
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyy;->zzgbe:Ljava/lang/ref/WeakReference;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbyy;->zzgbf:Lcom/google/android/gms/internal/ads/zzbxo;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbyy;->zzfui:Lcom/google/android/gms/internal/ads/zzcag;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzbyy;->zzgbg:Lcom/google/android/gms/internal/ads/zzboq;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzbyy;->zzgbh:Lcom/google/android/gms/internal/ads/zzdtm;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzbyy;->zzgbi:Lcom/google/android/gms/internal/ads/zzbrt;

    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyy;->zzgbe:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbeb;

    .line 37
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabp;->zzcyw:Lcom/google/android/gms/internal/ads/zzaba;

    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v1

    .line 39
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbyy;->zzfuj:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 41
    sget-object v1, Lcom/google/android/gms/internal/ads/zzazp;->zzeig:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbyx;->zze(Lcom/google/android/gms/internal/ads/zzbeb;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzdzv;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 43
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    .line 46
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 47
    throw v0
.end method

.method public final isClosed()Z
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyy;->zzgbg:Lcom/google/android/gms/internal/ads/zzboq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzboq;->isClosed()Z

    move-result v0

    return v0
.end method

.method public final zzb(ZLandroid/app/Activity;)Z
    .locals 4
    .param p2    # Landroid/app/Activity;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcov:Lcom/google/android/gms/internal/ads/zzaba;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyy;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzaq(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies"

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyy;->zzgbi:Lcom/google/android/gms/internal/ads/zzbrt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbrt;->zzalp()V

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcow:Lcom/google/android/gms/internal/ads/zzaba;

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyy;->zzgbh:Lcom/google/android/gms/internal/ads/zzdtm;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbyy;->zzfrd:Lcom/google/android/gms/internal/ads/zzdnl;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzdnl;->zzhks:Lcom/google/android/gms/internal/ads/zzdnj;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzdnj;->zzess:Lcom/google/android/gms/internal/ads/zzdnb;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzdnb;->zzbvs:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzdtm;->zzhf(Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbyy;->zzfuj:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    return v2

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyy;->zzgbf:Lcom/google/android/gms/internal/ads/zzbxo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbxo;->zzalf()V

    if-nez p2, :cond_3

    .line 26
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbyy;->context:Landroid/content/Context;

    .line 27
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyy;->zzfui:Lcom/google/android/gms/internal/ads/zzcag;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcag;->zza(ZLandroid/content/Context;)V

    .line 28
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyy;->zzgbf:Lcom/google/android/gms/internal/ads/zzbxo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbxo;->zzald()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcaf; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbyy;->zzfuj:Z

    return v1

    :catch_0
    move-exception p1

    .line 31
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbyy;->zzgbi:Lcom/google/android/gms/internal/ads/zzbrt;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbrt;->zza(Lcom/google/android/gms/internal/ads/zzcaf;)V

    return v2
.end method
