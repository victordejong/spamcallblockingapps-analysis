.class public final Lcom/google/android/gms/internal/ads/zzaol;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/google/android/gms/ads/mediation/l;

.field private c:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/zzaol;)Lcom/google/android/gms/ads/mediation/l;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaol;->b:Lcom/google/android/gms/ads/mediation/l;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/zzaol;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaol;->a:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final onDestroy()V
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, "Destroying AdMobCustomTabsAdapter adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->b(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public final onPause()V
    .locals 1

    .prologue
    .line 35
    const-string/jumbo v0, "Pausing AdMobCustomTabsAdapter adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->b(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public final onResume()V
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "Resuming AdMobCustomTabsAdapter adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->b(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public final requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/l;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/e;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaol;->b:Lcom/google/android/gms/ads/mediation/l;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaol;->b:Lcom/google/android/gms/ads/mediation/l;

    if-nez v0, :cond_0

    .line 4
    const-string/jumbo v0, "Listener not set for mediation. Returning."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;)V

    .line 25
    :goto_0
    return-void

    .line 6
    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 7
    const-string/jumbo v0, "AdMobCustomTabs can only work with Activity context. Bailing out."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaol;->b:Lcom/google/android/gms/ads/mediation/l;

    invoke-interface {v0, p0, v1}, Lcom/google/android/gms/ads/mediation/l;->a(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/util/m;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/y;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 13
    :goto_1
    if-nez v0, :cond_3

    .line 14
    const-string/jumbo v0, "Default browser does not support custom tabs. Bailing out."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaol;->b:Lcom/google/android/gms/ads/mediation/l;

    invoke-interface {v0, p0, v1}, Lcom/google/android/gms/ads/mediation/l;->a(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 12
    goto :goto_1

    .line 17
    :cond_3
    const-string/jumbo v0, "tab_url"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 19
    const-string/jumbo v0, "The tab_url retrieved from mediation metadata is empty. Bailing out."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaol;->b:Lcom/google/android/gms/ads/mediation/l;

    invoke-interface {v0, p0, v1}, Lcom/google/android/gms/ads/mediation/l;->a(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    goto :goto_0

    .line 22
    :cond_4
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaol;->a:Landroid/app/Activity;

    .line 23
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaol;->c:Landroid/net/Uri;

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaol;->b:Lcom/google/android/gms/ads/mediation/l;

    invoke-interface {v0, p0}, Lcom/google/android/gms/ads/mediation/l;->a(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    goto :goto_0
.end method

.method public final showInterstitial()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 26
    new-instance v0, Landroidx/browser/a/b$a;

    invoke-direct {v0}, Landroidx/browser/a/b$a;-><init>()V

    invoke-virtual {v0}, Landroidx/browser/a/b$a;->a()Landroidx/browser/a/b;

    move-result-object v0

    .line 27
    iget-object v1, v0, Landroidx/browser/a/b;->a:Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaol;->c:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 28
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/d;

    iget-object v0, v0, Landroidx/browser/a/b;->a:Landroid/content/Intent;

    invoke-direct {v1, v0}, Lcom/google/android/gms/ads/internal/overlay/d;-><init>(Landroid/content/Intent;)V

    .line 29
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    new-instance v3, Lcom/google/android/gms/internal/ads/nc;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/nc;-><init>(Lcom/google/android/gms/internal/ads/zzaol;)V

    new-instance v5, Lcom/google/android/gms/internal/ads/yd;

    invoke-direct {v5, v4, v4, v4}, Lcom/google/android/gms/internal/ads/yd;-><init>(IIZ)V

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/d;Lcom/google/android/gms/internal/ads/dxs;Lcom/google/android/gms/ads/internal/overlay/o;Lcom/google/android/gms/ads/internal/overlay/t;Lcom/google/android/gms/internal/ads/yd;)V

    .line 30
    sget-object v1, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v2, Lcom/google/android/gms/internal/ads/ne;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/ne;-><init>(Lcom/google/android/gms/internal/ads/zzaol;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ug;->c()V

    .line 32
    return-void
.end method
