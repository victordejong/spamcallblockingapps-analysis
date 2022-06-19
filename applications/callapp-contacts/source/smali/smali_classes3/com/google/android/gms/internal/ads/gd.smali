.class public final Lcom/google/android/gms/internal/ads/gd;
.super Lcom/google/android/gms/internal/ads/fk;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/ads/formats/OnAdManagerAdViewLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/OnAdManagerAdViewLoadedListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/fk;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gd;->a:Lcom/google/android/gms/ads/formats/OnAdManagerAdViewLoadedListener;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/gd;)Lcom/google/android/gms/ads/formats/OnAdManagerAdViewLoadedListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/gd;->a:Lcom/google/android/gms/ads/formats/OnAdManagerAdViewLoadedListener;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/ekw;Lcom/google/android/gms/dynamic/b;)V
    .locals 3

    const-string v0, ""

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_3

    .line 6
    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    .line 7
    new-instance v1, Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    invoke-direct {v1, p2}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 8
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ekw;->zzko()Lcom/google/android/gms/internal/ads/eki;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/gms/internal/ads/eiu;

    if-eqz v2, :cond_2

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ekw;->zzko()Lcom/google/android/gms/internal/ads/eki;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/eiu;

    if-eqz v2, :cond_1

    .line 1020
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/eiu;->a:Lcom/google/android/gms/ads/AdListener;

    goto :goto_0

    :cond_1
    move-object v2, p2

    .line 12
    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 15
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/za;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ekw;->zzkn()Lcom/google/android/gms/internal/ads/ele;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/gms/internal/ads/eew;

    if-eqz v2, :cond_4

    .line 18
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ekw;->zzkn()Lcom/google/android/gms/internal/ads/ele;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/eew;

    if-eqz v2, :cond_3

    .line 2006
    iget-object p2, v2, Lcom/google/android/gms/internal/ads/eew;->a:Lcom/google/android/gms/ads/admanager/AppEventListener;

    .line 21
    :cond_3
    invoke-virtual {v1, p2}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setAppEventListener(Lcom/google/android/gms/ads/admanager/AppEventListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    .line 24
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/za;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    :cond_4
    :goto_2
    sget-object p2, Lcom/google/android/gms/internal/ads/yq;->a:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/gg;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/internal/ads/gg;-><init>(Lcom/google/android/gms/internal/ads/gd;Lcom/google/android/gms/ads/admanager/AdManagerAdView;Lcom/google/android/gms/internal/ads/ekw;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_3
    return-void
.end method
