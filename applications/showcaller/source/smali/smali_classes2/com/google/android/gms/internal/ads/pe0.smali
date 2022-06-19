.class public final Lcom/google/android/gms/internal/ads/pe0;
.super Lcom/google/android/gms/ads/z/b;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/gms/internal/ads/fe0;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/internal/ads/we0;

.field private e:Lcom/google/android/gms/ads/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/z/b;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/pe0;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/pe0;->a:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/wr;->b()Lcom/google/android/gms/internal/ads/ur;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/p70;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/p70;-><init>()V

    .line 3
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/ur;->m(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/s70;)Lcom/google/android/gms/internal/ads/fe0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pe0;->b:Lcom/google/android/gms/internal/ads/fe0;

    new-instance p1, Lcom/google/android/gms/internal/ads/we0;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/we0;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pe0;->d:Lcom/google/android/gms/internal/ads/we0;

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/ads/i;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pe0;->e:Lcom/google/android/gms/ads/i;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pe0;->d:Lcom/google/android/gms/internal/ads/we0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/we0;->E6(Lcom/google/android/gms/ads/i;)V

    return-void
.end method

.method public final c(Landroid/app/Activity;Lcom/google/android/gms/ads/o;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pe0;->d:Lcom/google/android/gms/internal/ads/we0;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/we0;->F6(Lcom/google/android/gms/ads/o;)V

    if-nez p1, :cond_0

    const-string p2, "The activity for show is null, will proceed with show using the context provided when loading the ad."

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/pe0;->b:Lcom/google/android/gms/internal/ads/fe0;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pe0;->d:Lcom/google/android/gms/internal/ads/we0;

    .line 3
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/fe0;->f5(Lcom/google/android/gms/internal/ads/ie0;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/pe0;->b:Lcom/google/android/gms/internal/ads/fe0;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->m2(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/fe0;->U(Lcom/google/android/gms/dynamic/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 5
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ei0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/pu;Lcom/google/android/gms/ads/z/c;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pe0;->b:Lcom/google/android/gms/internal/ads/fe0;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/xq;->a:Lcom/google/android/gms/internal/ads/xq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/pe0;->c:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/xq;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/pu;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/te0;

    invoke-direct {v1, p2, p0}, Lcom/google/android/gms/internal/ads/te0;-><init>(Lcom/google/android/gms/ads/z/c;Lcom/google/android/gms/ads/z/b;)V

    .line 2
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/fe0;->L3(Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/internal/ads/me0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 3
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ei0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
