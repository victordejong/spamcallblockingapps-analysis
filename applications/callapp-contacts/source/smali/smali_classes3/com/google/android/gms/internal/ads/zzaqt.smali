.class public final Lcom/google/android/gms/internal/ads/zzaqt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

.field private c:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/zzaqt;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaqt;->b:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/zzaqt;)Landroid/app/Activity;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaqt;->a:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public final onDestroy()V
    .locals 1

    const-string v0, "Destroying AdMobCustomTabsAdapter adapter."

    .line 33
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/za;->zzdz(Ljava/lang/String;)V

    return-void
.end method

.method public final onPause()V
    .locals 1

    const-string v0, "Pausing AdMobCustomTabsAdapter adapter."

    .line 35
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/za;->zzdz(Ljava/lang/String;)V

    return-void
.end method

.method public final onResume()V
    .locals 1

    const-string v0, "Resuming AdMobCustomTabsAdapter adapter."

    .line 37
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/za;->zzdz(Ljava/lang/String;)V

    return-void
.end method

.method public final requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 0

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqt;->b:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    if-nez p2, :cond_0

    const-string p1, "Listener not set for mediation. Returning."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/za;->zzez(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    instance-of p2, p1, Landroid/app/Activity;

    const/4 p4, 0x0

    if-nez p2, :cond_1

    const-string p1, "AdMobCustomTabs can only work with Activity context. Bailing out."

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/za;->zzez(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqt;->b:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {p1, p0, p4}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    return-void

    .line 11
    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/util/n;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/br;->a(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_3

    const-string p1, "Default browser does not support custom tabs. Bailing out."

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/za;->zzez(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqt;->b:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {p1, p0, p4}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    return-void

    :cond_3
    const-string p2, "tab_url"

    .line 17
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 18
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p1, "The tab_url retrieved from mediation metadata is empty. Bailing out."

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/za;->zzez(Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqt;->b:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {p1, p0, p4}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    return-void

    .line 22
    :cond_4
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqt;->a:Landroid/app/Activity;

    .line 23
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqt;->c:Landroid/net/Uri;

    .line 24
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqt;->b:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {p1, p0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public final showInterstitial()V
    .locals 10

    .line 26
    new-instance v0, Landroidx/browser/customtabs/d$a;

    invoke-direct {v0}, Landroidx/browser/customtabs/d$a;-><init>()V

    invoke-virtual {v0}, Landroidx/browser/customtabs/d$a;->a()Landroidx/browser/customtabs/d;

    move-result-object v0

    .line 27
    iget-object v1, v0, Landroidx/browser/customtabs/d;->a:Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqt;->c:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 28
    new-instance v4, Lcom/google/android/gms/ads/internal/overlay/zzb;

    iget-object v0, v0, Landroidx/browser/customtabs/d;->a:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-direct {v4, v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzb;-><init>(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzv;)V

    .line 29
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    new-instance v6, Lcom/google/android/gms/internal/ads/pj;

    invoke-direct {v6, p0}, Lcom/google/android/gms/internal/ads/pj;-><init>(Lcom/google/android/gms/internal/ads/zzaqt;)V

    new-instance v8, Lcom/google/android/gms/internal/ads/zzbar;

    const/4 v1, 0x0

    invoke-direct {v8, v1, v1, v1}, Lcom/google/android/gms/internal/ads/zzbar;-><init>(IIZ)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzb;Lcom/google/android/gms/internal/ads/eir;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/ads/internal/overlay/zzx;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/internal/ads/adt;)V

    .line 30
    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lcom/google/android/gms/internal/ads/cxg;

    new-instance v2, Lcom/google/android/gms/internal/ads/pl;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/pl;-><init>(Lcom/google/android/gms/internal/ads/zzaqt;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/cxg;->post(Ljava/lang/Runnable;)Z

    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v0

    .line 1010
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/yd;->g:Lcom/google/android/gms/internal/ads/yi;

    .line 2007
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v1

    .line 2008
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/yi;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 2009
    :try_start_0
    iget v4, v0, Lcom/google/android/gms/internal/ads/yi;->b:I

    sget v5, Lcom/google/android/gms/internal/ads/yh;->b:I

    if-ne v4, v5, :cond_0

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/yi;->c:J

    sget-object v6, Lcom/google/android/gms/internal/ads/aq;->dA:Lcom/google/android/gms/internal/ads/af;

    .line 2011
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v6

    .line 2012
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    cmp-long v6, v4, v1

    if-gtz v6, :cond_0

    .line 2013
    sget v1, Lcom/google/android/gms/internal/ads/yh;->a:I

    iput v1, v0, Lcom/google/android/gms/internal/ads/yi;->b:I

    .line 2014
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2015
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v1

    .line 2016
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/yi;->a:Ljava/lang/Object;

    monitor-enter v4

    .line 2017
    :try_start_1
    iget v3, v0, Lcom/google/android/gms/internal/ads/yi;->b:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    .line 2018
    monitor-exit v4

    return-void

    :cond_1
    const/4 v3, 0x3

    .line 2019
    iput v3, v0, Lcom/google/android/gms/internal/ads/yi;->b:I

    .line 2020
    iget v3, v0, Lcom/google/android/gms/internal/ads/yi;->b:I

    sget v5, Lcom/google/android/gms/internal/ads/yh;->b:I

    if-ne v3, v5, :cond_2

    .line 2021
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/yi;->c:J

    .line 2022
    :cond_2
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    .line 2023
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 2014
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
