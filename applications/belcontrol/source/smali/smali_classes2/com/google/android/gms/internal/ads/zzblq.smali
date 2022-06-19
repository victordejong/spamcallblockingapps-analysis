.class public final Lcom/google/android/gms/internal/ads/zzblq;
.super Lcom/google/android/gms/internal/ads/zzbnt;
.source ""


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

.field private final zzfto:I

.field private final zzfud:Lcom/google/android/gms/internal/ads/zzbkv;

.field private final zzfui:Lcom/google/android/gms/internal/ads/zzcag;

.field private zzfuj:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbnw;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbeb;ILcom/google/android/gms/internal/ads/zzbkv;Lcom/google/android/gms/internal/ads/zzcag;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbnt;-><init>(Lcom/google/android/gms/internal/ads/zzbnw;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzblq;->zzfuj:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzblq;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzblq;->context:Landroid/content/Context;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzblq;->zzfto:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzblq;->zzfud:Lcom/google/android/gms/internal/ads/zzbkv;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzblq;->zzfui:Lcom/google/android/gms/internal/ads/zzcag;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbnt;->destroy()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblq;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->destroy()V

    :cond_0
    return-void
.end method

.method public final zza(Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzsv;Z)V
    .locals 5

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzblq;->context:Landroid/content/Context;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcov:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzj;->zzaq(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdom;->zzhme:Lcom/google/android/gms/internal/ads/zzdom;

    const/4 v3, 0x0

    invoke-static {v0, v3, v3}, Lcom/google/android/gms/internal/ads/zzdok;->zza(Lcom/google/android/gms/internal/ads/zzdom;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzsv;->zzb(Lcom/google/android/gms/internal/ads/zzvg;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcow:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdtm;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlf()Lcom/google/android/gms/ads/internal/util/zzbl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/ads/internal/util/zzbl;->zzzp()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzdtm;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbnt;->zzfrd:Lcom/google/android/gms/internal/ads/zzdnl;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzdnl;->zzhks:Lcom/google/android/gms/internal/ads/zzdnj;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzdnj;->zzess:Lcom/google/android/gms/internal/ads/zzdnb;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzdnb;->zzbvs:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzdtm;->zzhf(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzblq;->zzfuj:Z

    if-eqz v0, :cond_2

    const-string v0, "App open interstitial ad is already visible."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzblq;->zzfuj:Z

    if-nez v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    :goto_0
    if-nez v2, :cond_4

    return-void

    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblq;->zzfui:Lcom/google/android/gms/internal/ads/zzcag;

    invoke-interface {v0, p3, p1}, Lcom/google/android/gms/internal/ads/zzcag;->zza(ZLandroid/content/Context;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcaf; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzblq;->zzfuj:Z

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdok;->zzh(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzsv;->zzb(Lcom/google/android/gms/internal/ads/zzvg;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzsh;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblq;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbeb;->zza(Lcom/google/android/gms/internal/ads/zzsh;)V

    :cond_0
    return-void
.end method

.method public final zzajh()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzblq;->zzfto:I

    return v0
.end method

.method public final zzb(JI)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblq;->zzfud:Lcom/google/android/gms/internal/ads/zzbkv;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbkv;->zzb(JI)V

    return-void
.end method
