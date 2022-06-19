.class public final Lcom/google/android/gms/internal/ads/lt;
.super Lcom/google/android/gms/internal/ads/ks;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<NETWORK_EXTRAS::",
        "Lcom/google/ads/mediation/e;",
        "SERVER_PARAMETERS:",
        "Lcom/google/ads/mediation/MediationServerParameters;",
        ">",
        "Lcom/google/android/gms/internal/ads/ks;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/mediation/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/mediation/b",
            "<TNETWORK_EXTRAS;TSERVER_PARAMETERS;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/ads/mediation/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TNETWORK_EXTRAS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/b;Lcom/google/ads/mediation/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/b",
            "<TNETWORK_EXTRAS;TSERVER_PARAMETERS;>;TNETWORK_EXTRAS;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ks;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lt;->a:Lcom/google/ads/mediation/b;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/lt;->b:Lcom/google/ads/mediation/e;

    .line 4
    return-void
.end method

.method private final a(Ljava/lang/String;)Lcom/google/ads/mediation/MediationServerParameters;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TSERVER_PARAMETERS;"
        }
    .end annotation

    .prologue
    .line 100
    if-eqz p1, :cond_0

    .line 101
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 102
    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 103
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 108
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    move-object v1, v0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lt;->a:Lcom/google/ads/mediation/b;

    invoke-interface {v0}, Lcom/google/ads/mediation/b;->getServerParametersType()Ljava/lang/Class;

    move-result-object v2

    .line 110
    const/4 v0, 0x0

    .line 111
    if-eqz v2, :cond_2

    .line 112
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/MediationServerParameters;

    .line 113
    invoke-virtual {v0, v1}, Lcom/google/ads/mediation/MediationServerParameters;->a(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 114
    :cond_2
    return-object v0
.end method

.method private static a(Lcom/google/android/gms/internal/ads/dya;)Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dya;->f:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    invoke-static {}, Lcom/google/android/gms/internal/ads/xr;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/dynamic/a;
    .locals 3

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lt;->a:Lcom/google/ads/mediation/b;

    instance-of v0, v0, Lcom/google/ads/mediation/MediationBannerAdapter;

    if-nez v0, :cond_1

    .line 6
    const-string/jumbo v1, "Not a MediationBannerAdapter: "

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lt;->a:Lcom/google/ads/mediation/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;)V

    .line 7
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lt;->a:Lcom/google/ads/mediation/b;

    check-cast v0, Lcom/google/ads/mediation/MediationBannerAdapter;

    .line 9
    invoke-interface {v0}, Lcom/google/ads/mediation/MediationBannerAdapter;->getBannerView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;)V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ku;)V
    .locals 6

    .prologue
    .line 40
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/lt;->a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ku;)V

    .line 41
    return-void
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Lcom/google/android/gms/internal/ads/rm;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ku;)V
    .locals 6

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lt;->a:Lcom/google/ads/mediation/b;

    instance-of v0, v0, Lcom/google/ads/mediation/MediationInterstitialAdapter;

    if-nez v0, :cond_1

    .line 43
    const-string/jumbo v1, "Not a MediationInterstitialAdapter: "

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lt;->a:Lcom/google/ads/mediation/b;

    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;)V

    .line 46
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_1
    const-string/jumbo v0, "Requesting interstitial ad from adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->b(Ljava/lang/String;)V

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lt;->a:Lcom/google/ads/mediation/b;

    check-cast v0, Lcom/google/ads/mediation/MediationInterstitialAdapter;

    .line 49
    new-instance v1, Lcom/google/android/gms/internal/ads/ls;

    invoke-direct {v1, p5}, Lcom/google/android/gms/internal/ads/ls;-><init>(Lcom/google/android/gms/internal/ads/ku;)V

    .line 50
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 51
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/lt;->a(Ljava/lang/String;)Lcom/google/ads/mediation/MediationServerParameters;

    move-result-object v3

    .line 52
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/lt;->a(Lcom/google/android/gms/internal/ads/dya;)Z

    move-result v4

    invoke-static {p2, v4}, Lcom/google/android/gms/internal/ads/lx;->a(Lcom/google/android/gms/internal/ads/dya;Z)Lcom/google/ads/mediation/a;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/lt;->b:Lcom/google/ads/mediation/e;

    .line 53
    invoke-interface/range {v0 .. v5}, Lcom/google/ads/mediation/MediationInterstitialAdapter;->requestInterstitialAd(Lcom/google/ads/mediation/d;Landroid/app/Activity;Lcom/google/ads/mediation/MediationServerParameters;Lcom/google/ads/mediation/a;Lcom/google/ads/mediation/e;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ku;Lcom/google/android/gms/internal/ads/bl;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/dynamic/a;",
            "Lcom/google/android/gms/internal/ads/dya;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/ku;",
            "Lcom/google/android/gms/internal/ads/bl;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    return-void
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/dyd;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ku;)V
    .locals 7

    .prologue
    .line 13
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/lt;->a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/dyd;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ku;)V

    .line 14
    return-void
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/dyd;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ku;)V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v4, 0x0

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lt;->a:Lcom/google/ads/mediation/b;

    instance-of v0, v0, Lcom/google/ads/mediation/MediationBannerAdapter;

    if-nez v0, :cond_1

    .line 16
    const-string/jumbo v1, "Not a MediationBannerAdapter: "

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lt;->a:Lcom/google/ads/mediation/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;)V

    .line 17
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_1
    const-string/jumbo v0, "Requesting banner ad from adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->b(Ljava/lang/String;)V

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lt;->a:Lcom/google/ads/mediation/b;

    check-cast v0, Lcom/google/ads/mediation/MediationBannerAdapter;

    .line 20
    new-instance v1, Lcom/google/android/gms/internal/ads/ls;

    invoke-direct {v1, p6}, Lcom/google/android/gms/internal/ads/ls;-><init>(Lcom/google/android/gms/internal/ads/ku;)V

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 22
    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/ads/lt;->a(Ljava/lang/String;)Lcom/google/ads/mediation/MediationServerParameters;

    move-result-object v3

    .line 24
    const/4 v5, 0x6

    new-array v5, v5, [Lcom/google/ads/b;

    const/4 v6, 0x0

    sget-object v7, Lcom/google/ads/b;->a:Lcom/google/ads/b;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lcom/google/ads/b;->b:Lcom/google/ads/b;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Lcom/google/ads/b;->c:Lcom/google/ads/b;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Lcom/google/ads/b;->d:Lcom/google/ads/b;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    sget-object v7, Lcom/google/ads/b;->e:Lcom/google/ads/b;

    aput-object v7, v5, v6

    const/4 v6, 0x5

    sget-object v7, Lcom/google/ads/b;->f:Lcom/google/ads/b;

    aput-object v7, v5, v6

    .line 25
    :goto_1
    if-ge v4, v8, :cond_3

    .line 26
    aget-object v6, v5, v4

    invoke-virtual {v6}, Lcom/google/ads/b;->a()I

    move-result v6

    iget v7, p2, Lcom/google/android/gms/internal/ads/dyd;->e:I

    if-ne v6, v7, :cond_2

    aget-object v6, v5, v4

    .line 27
    invoke-virtual {v6}, Lcom/google/ads/b;->b()I

    move-result v6

    iget v7, p2, Lcom/google/android/gms/internal/ads/dyd;->b:I

    if-ne v6, v7, :cond_2

    .line 28
    aget-object v4, v5, v4

    .line 33
    :goto_2
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/lt;->a(Lcom/google/android/gms/internal/ads/dya;)Z

    move-result v5

    invoke-static {p3, v5}, Lcom/google/android/gms/internal/ads/lx;->a(Lcom/google/android/gms/internal/ads/dya;Z)Lcom/google/ads/mediation/a;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/lt;->b:Lcom/google/ads/mediation/e;

    .line 34
    invoke-interface/range {v0 .. v6}, Lcom/google/ads/mediation/MediationBannerAdapter;->requestBannerAd(Lcom/google/ads/mediation/c;Landroid/app/Activity;Lcom/google/ads/mediation/MediationServerParameters;Lcom/google/ads/b;Lcom/google/ads/mediation/a;Lcom/google/ads/mediation/e;)V

    .line 35
    return-void

    .line 29
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 30
    :cond_3
    new-instance v4, Lcom/google/ads/b;

    iget v5, p2, Lcom/google/android/gms/internal/ads/dyd;->e:I

    iget v6, p2, Lcom/google/android/gms/internal/ads/dyd;->b:I

    iget-object v7, p2, Lcom/google/android/gms/internal/ads/dyd;->a:Ljava/lang/String;

    .line 31
    invoke-static {v5, v6, v7}, Lcom/google/android/gms/ads/s;->a(IILjava/lang/String;)Lcom/google/android/gms/ads/e;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/ads/b;-><init>(Lcom/google/android/gms/ads/e;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 36
    :catch_0
    move-exception v0

    .line 37
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/gd;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/dynamic/a;",
            "Lcom/google/android/gms/internal/ads/gd;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/gl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    return-void
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/rm;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/dynamic/a;",
            "Lcom/google/android/gms/internal/ads/rm;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lt;->a:Lcom/google/ads/mediation/b;

    instance-of v0, v0, Lcom/google/ads/mediation/MediationInterstitialAdapter;

    if-nez v0, :cond_1

    .line 62
    const-string/jumbo v1, "Not a MediationInterstitialAdapter: "

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lt;->a:Lcom/google/ads/mediation/b;

    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;)V

    .line 65
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_1
    const-string/jumbo v0, "Showing interstitial from adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->b(Ljava/lang/String;)V

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lt;->a:Lcom/google/ads/mediation/b;

    check-cast v0, Lcom/google/ads/mediation/MediationInterstitialAdapter;

    .line 68
    invoke-interface {v0}, Lcom/google/ads/mediation/MediationInterstitialAdapter;->showInterstitial()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final b(Lcom/google/android/gms/dynamic/a;)V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public final b(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ku;)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lt;->a:Lcom/google/ads/mediation/b;

    invoke-interface {v0}, Lcom/google/ads/mediation/b;->destroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final c(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ku;)V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public final h()Lcom/google/android/gms/internal/ads/kx;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public final i()Lcom/google/android/gms/internal/ads/ld;
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public final j()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final k()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 58
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final l()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 74
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public final n()Lcom/google/android/gms/internal/ads/cr;
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public final o()Lcom/google/android/gms/internal/ads/eba;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public final p()Lcom/google/android/gms/internal/ads/le;
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public final q()Lcom/google/android/gms/internal/ads/nb;
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public final r()Lcom/google/android/gms/internal/ads/nb;
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method
