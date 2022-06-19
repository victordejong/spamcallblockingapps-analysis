.class public final Lcom/google/android/gms/internal/ads/r40;
.super Lcom/google/android/gms/ads/admanager/a;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/ads/admanager/a;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/xq;

.field private final c:Lcom/google/android/gms/internal/ads/ts;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/google/android/gms/internal/ads/p70;

.field private f:Lcom/google/android/gms/ads/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/admanager/a;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/p70;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/p70;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/r40;->e:Lcom/google/android/gms/internal/ads/p70;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/r40;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/r40;->d:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/ads/xq;->a:Lcom/google/android/gms/internal/ads/xq;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/r40;->b:Lcom/google/android/gms/internal/ads/xq;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/wr;->b()Lcom/google/android/gms/internal/ads/ur;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbdl;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzbdl;-><init>()V

    .line 3
    invoke-virtual {v1, p1, v2, p2, v0}, Lcom/google/android/gms/internal/ads/ur;->j(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/s70;)Lcom/google/android/gms/internal/ads/ts;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/r40;->c:Lcom/google/android/gms/internal/ads/ts;

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/ads/i;)V
    .locals 2

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/r40;->f:Lcom/google/android/gms/ads/i;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r40;->c:Lcom/google/android/gms/internal/ads/ts;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zr;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zr;-><init>(Lcom/google/android/gms/ads/i;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ts;->S1(Lcom/google/android/gms/internal/ads/it;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ei0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r40;->c:Lcom/google/android/gms/internal/ads/ts;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ts;->s0(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ei0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final d(Landroid/app/Activity;)V
    .locals 1

    if-nez p1, :cond_0

    const-string v0, "The activity for show is null, will proceed with show using the context provided when loading the ad."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r40;->c:Lcom/google/android/gms/internal/ads/ts;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->m2(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ts;->W3(Lcom/google/android/gms/dynamic/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ei0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/ads/pu;Lcom/google/android/gms/ads/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/pu;",
            "Lcom/google/android/gms/ads/c<",
            "TAdT;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r40;->c:Lcom/google/android/gms/internal/ads/ts;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r40;->e:Lcom/google/android/gms/internal/ads/p70;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/pu;->l()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/p70;->F6(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r40;->c:Lcom/google/android/gms/internal/ads/ts;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/r40;->b:Lcom/google/android/gms/internal/ads/xq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/r40;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/xq;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/pu;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/qq;

    invoke-direct {v1, p2, p0}, Lcom/google/android/gms/internal/ads/qq;-><init>(Lcom/google/android/gms/ads/c;Ljava/lang/Object;)V

    .line 3
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/ts;->O5(Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/internal/ads/js;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ei0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lcom/google/android/gms/ads/j;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, "Internal Error."

    const-string v4, "com.google.android.gms.ads"

    move-object v1, p1

    .line 5
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/j;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/a;Lcom/google/android/gms/ads/r;)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/c;->a(Lcom/google/android/gms/ads/j;)V

    return-void
.end method
