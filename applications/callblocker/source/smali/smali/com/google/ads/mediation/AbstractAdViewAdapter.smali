.class public abstract Lcom/google/ads/mediation/AbstractAdViewAdapter;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;
.implements Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;
.implements Lcom/google/android/gms/ads/mediation/v;
.implements Lcom/google/android/gms/ads/mediation/y;
.implements Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;
.implements Lcom/google/android/gms/internal/ads/zzbgz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/AbstractAdViewAdapter$a;,
        Lcom/google/ads/mediation/AbstractAdViewAdapter$d;,
        Lcom/google/ads/mediation/AbstractAdViewAdapter$b;,
        Lcom/google/ads/mediation/AbstractAdViewAdapter$e;,
        Lcom/google/ads/mediation/AbstractAdViewAdapter$f;,
        Lcom/google/ads/mediation/AbstractAdViewAdapter$c;
    }
.end annotation


# static fields
.field public static final AD_UNIT_ID_PARAMETER:Ljava/lang/String; = "pubid"


# instance fields
.field private zzlw:Lcom/google/android/gms/ads/AdView;

.field private zzlx:Lcom/google/android/gms/ads/i;

.field private zzly:Lcom/google/android/gms/ads/c;

.field private zzlz:Landroid/content/Context;

.field private zzma:Lcom/google/android/gms/ads/i;

.field private zzmb:Lcom/google/android/gms/ads/reward/mediation/a;

.field private final zzmc:Lcom/google/android/gms/ads/reward/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/ads/mediation/g;

    invoke-direct {v0, p0}, Lcom/google/ads/mediation/g;-><init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;)V

    iput-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmc:Lcom/google/android/gms/ads/reward/d;

    return-void
.end method

.method private final zza(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/e;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/d;
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 3
    new-instance v2, Lcom/google/android/gms/ads/d$a;

    invoke-direct {v2}, Lcom/google/android/gms/ads/d$a;-><init>()V

    .line 4
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/e;->a()Ljava/util/Date;

    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/d$a;->a(Ljava/util/Date;)Lcom/google/android/gms/ads/d$a;

    .line 7
    :cond_0
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/e;->b()I

    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/d$a;->a(I)Lcom/google/android/gms/ads/d$a;

    .line 10
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/e;->c()Ljava/util/Set;

    move-result-object v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 13
    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/d$a;->a(Ljava/lang/String;)Lcom/google/android/gms/ads/d$a;

    goto :goto_0

    .line 15
    :cond_2
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/e;->d()Landroid/location/Location;

    move-result-object v0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/d$a;->a(Landroid/location/Location;)Lcom/google/android/gms/ads/d$a;

    .line 18
    :cond_3
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/e;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/xr;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/d$a;->b(Ljava/lang/String;)Lcom/google/android/gms/ads/d$a;

    .line 20
    :cond_4
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/e;->e()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_5

    .line 22
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/e;->e()I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    .line 23
    :goto_1
    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/d$a;->a(Z)Lcom/google/android/gms/ads/d$a;

    .line 24
    :cond_5
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/e;->g()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/d$a;->b(Z)Lcom/google/android/gms/ads/d$a;

    .line 25
    invoke-virtual {p0, p3, p4}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 26
    const-class v1, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/ads/d$a;->a(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/d$a;

    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/ads/d$a;->a()Lcom/google/android/gms/ads/d;

    move-result-object v0

    return-object v0

    .line 22
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic zza(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lcom/google/android/gms/ads/i;)Lcom/google/android/gms/ads/i;
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzma:Lcom/google/android/gms/ads/i;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/ads/mediation/AbstractAdViewAdapter;)Lcom/google/android/gms/ads/reward/mediation/a;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmb:Lcom/google/android/gms/ads/reward/mediation/a;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/ads/mediation/AbstractAdViewAdapter;)Lcom/google/android/gms/ads/i;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzma:Lcom/google/android/gms/ads/i;

    return-object v0
.end method


# virtual methods
.method public getAdUnitId(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string/jumbo v0, "pubid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBannerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzlw:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method

.method public getInterstitialAdapterInfo()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lcom/google/android/gms/ads/mediation/f$a;

    invoke-direct {v0}, Lcom/google/android/gms/ads/mediation/f$a;-><init>()V

    const/4 v1, 0x1

    .line 70
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/mediation/f$a;->a(I)Lcom/google/android/gms/ads/mediation/f$a;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/f$a;->a()Landroid/os/Bundle;

    move-result-object v0

    .line 72
    return-object v0
.end method

.method public getVideoController()Lcom/google/android/gms/internal/ads/eba;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzlw:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzlw:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->getVideoController()Lcom/google/android/gms/ads/p;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/ads/p;->a()Lcom/google/android/gms/internal/ads/eba;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/e;Ljava/lang/String;Lcom/google/android/gms/ads/reward/mediation/a;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzlz:Landroid/content/Context;

    .line 101
    iput-object p4, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmb:Lcom/google/android/gms/ads/reward/mediation/a;

    .line 102
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmb:Lcom/google/android/gms/ads/reward/mediation/a;

    invoke-interface {v0, p0}, Lcom/google/android/gms/ads/reward/mediation/a;->a(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    .line 103
    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmb:Lcom/google/android/gms/ads/reward/mediation/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd(Lcom/google/android/gms/ads/mediation/e;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzlz:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmb:Lcom/google/android/gms/ads/reward/mediation/a;

    if-nez v0, :cond_1

    .line 105
    :cond_0
    const-string/jumbo v0, "AdMobAdapter.loadAd called before initialize."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;)V

    .line 115
    :goto_0
    return-void

    .line 107
    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/i;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzlz:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzma:Lcom/google/android/gms/ads/i;

    .line 108
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzma:Lcom/google/android/gms/ads/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/i;->a(Z)V

    .line 109
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzma:Lcom/google/android/gms/ads/i;

    invoke-virtual {p0, p2}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->getAdUnitId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/i;->a(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzma:Lcom/google/android/gms/ads/i;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzmc:Lcom/google/android/gms/ads/reward/d;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/i;->a(Lcom/google/android/gms/ads/reward/d;)V

    .line 111
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzma:Lcom/google/android/gms/ads/i;

    new-instance v1, Lcom/google/ads/mediation/f;

    invoke-direct {v1, p0}, Lcom/google/ads/mediation/f;-><init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/i;->a(Lcom/google/android/gms/ads/reward/a;)V

    .line 112
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzma:Lcom/google/android/gms/ads/i;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzlz:Landroid/content/Context;

    .line 113
    invoke-direct {p0, v1, p1, p3, p2}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/e;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/d;

    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/i;->a(Lcom/google/android/gms/ads/d;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzlw:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzlw:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->c()V

    .line 30
    iput-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzlw:Lcom/google/android/gms/ads/AdView;

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzlx:Lcom/google/android/gms/ads/i;

    if-eqz v0, :cond_1

    .line 32
    iput-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzlx:Lcom/google/android/gms/ads/i;

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzly:Lcom/google/android/gms/ads/c;

    if-eqz v0, :cond_2

    .line 34
    iput-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzly:Lcom/google/android/gms/ads/c;

    .line 35
    :cond_2
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzma:Lcom/google/android/gms/ads/i;

    if-eqz v0, :cond_3

    .line 36
    iput-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzma:Lcom/google/android/gms/ads/i;

    .line 37
    :cond_3
    return-void
.end method

.method public onImmersiveModeUpdated(Z)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzlx:Lcom/google/android/gms/ads/i;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzlx:Lcom/google/android/gms/ads/i;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/i;->b(Z)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzma:Lcom/google/android/gms/ads/i;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzma:Lcom/google/android/gms/ads/i;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/i;->b(Z)V

    .line 61
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzlw:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzlw:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->b()V

    .line 40
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzlw:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzlw:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->a()V

    .line 43
    :cond_0
    return-void
.end method

.method public requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/h;Landroid/os/Bundle;Lcom/google/android/gms/ads/e;Lcom/google/android/gms/ads/mediation/e;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 45
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzlw:Lcom/google/android/gms/ads/AdView;

    .line 46
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzlw:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/google/android/gms/ads/e;

    invoke-virtual {p4}, Lcom/google/android/gms/ads/e;->b()I

    move-result v2

    invoke-virtual {p4}, Lcom/google/android/gms/ads/e;->a()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/ads/e;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/e;)V

    .line 47
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzlw:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p0, p3}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->getAdUnitId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzlw:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/google/ads/mediation/AbstractAdViewAdapter$c;

    invoke-direct {v1, p0, p2}, Lcom/google/ads/mediation/AbstractAdViewAdapter$c;-><init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lcom/google/android/gms/ads/mediation/h;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/b;)V

    .line 49
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzlw:Lcom/google/android/gms/ads/AdView;

    invoke-direct {p0, p1, p5, p6, p3}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/e;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->a(Lcom/google/android/gms/ads/d;)V

    .line 50
    return-void
.end method

.method public requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/l;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/e;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lcom/google/android/gms/ads/i;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzlx:Lcom/google/android/gms/ads/i;

    .line 53
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzlx:Lcom/google/android/gms/ads/i;

    invoke-virtual {p0, p3}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->getAdUnitId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/i;->a(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzlx:Lcom/google/android/gms/ads/i;

    new-instance v1, Lcom/google/ads/mediation/AbstractAdViewAdapter$f;

    invoke-direct {v1, p0, p2}, Lcom/google/ads/mediation/AbstractAdViewAdapter$f;-><init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lcom/google/android/gms/ads/mediation/l;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/i;->a(Lcom/google/android/gms/ads/b;)V

    .line 55
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzlx:Lcom/google/android/gms/ads/i;

    invoke-direct {p0, p1, p4, p5, p3}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/e;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/i;->a(Lcom/google/android/gms/ads/d;)V

    .line 56
    return-void
.end method

.method public requestNativeAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/n;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/t;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 73
    new-instance v2, Lcom/google/ads/mediation/AbstractAdViewAdapter$e;

    invoke-direct {v2, p0, p2}, Lcom/google/ads/mediation/AbstractAdViewAdapter$e;-><init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lcom/google/android/gms/ads/mediation/n;)V

    .line 74
    const-string/jumbo v0, "pubid"

    .line 75
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    new-instance v1, Lcom/google/android/gms/ads/c$a;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/ads/c$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/c$a;->a(Lcom/google/android/gms/ads/b;)Lcom/google/android/gms/ads/c$a;

    move-result-object v3

    .line 79
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/t;->h()Lcom/google/android/gms/ads/b/d;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v3, v0}, Lcom/google/android/gms/ads/c$a;->a(Lcom/google/android/gms/ads/b/d;)Lcom/google/android/gms/ads/c$a;

    .line 82
    :cond_0
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/t;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/c$a;->a(Lcom/google/android/gms/ads/b/k$a;)Lcom/google/android/gms/ads/c$a;

    .line 84
    :cond_1
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/t;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/c$a;->a(Lcom/google/android/gms/ads/b/g$a;)Lcom/google/android/gms/ads/c$a;

    .line 86
    :cond_2
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/t;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/c$a;->a(Lcom/google/android/gms/ads/b/h$a;)Lcom/google/android/gms/ads/c$a;

    .line 88
    :cond_3
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/t;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 89
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/t;->m()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 90
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/t;->m()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v2

    .line 95
    :goto_1
    invoke-virtual {v3, v0, v2, v1}, Lcom/google/android/gms/ads/c$a;->a(Ljava/lang/String;Lcom/google/android/gms/ads/b/i$b;Lcom/google/android/gms/ads/b/i$a;)Lcom/google/android/gms/ads/c$a;

    goto :goto_0

    .line 94
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 97
    :cond_5
    invoke-virtual {v3}, Lcom/google/android/gms/ads/c$a;->a()Lcom/google/android/gms/ads/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzly:Lcom/google/android/gms/ads/c;

    .line 98
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzly:Lcom/google/android/gms/ads/c;

    invoke-direct {p0, p1, p4, p5, p3}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/e;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/c;->a(Lcom/google/android/gms/ads/d;)V

    .line 99
    return-void
.end method

.method public showInterstitial()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzlx:Lcom/google/android/gms/ads/i;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/i;->b()V

    .line 68
    return-void
.end method

.method public showVideo()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzma:Lcom/google/android/gms/ads/i;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/i;->b()V

    .line 117
    return-void
.end method

.method protected abstract zza(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method
