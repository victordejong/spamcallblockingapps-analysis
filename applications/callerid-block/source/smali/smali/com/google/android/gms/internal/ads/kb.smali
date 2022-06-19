.class public final Lcom/google/android/gms/internal/ads/kb;
.super Lcom/google/android/gms/ads/admanager/a;
.source ""


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

.field private final b:Lcom/google/android/gms/internal/ads/sz2;

.field private final c:Lcom/google/android/gms/internal/ads/w;

.field private final d:Lcom/google/android/gms/internal/ads/de;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/ads/admanager/a;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/de;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/de;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/kb;->d:Lcom/google/android/gms/internal/ads/de;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kb;->a:Landroid/content/Context;

    sget-object v1, Lcom/google/android/gms/internal/ads/sz2;->a:Lcom/google/android/gms/internal/ads/sz2;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/kb;->b:Lcom/google/android/gms/internal/ads/sz2;

    invoke-static {}, Lcom/google/android/gms/internal/ads/m03;->b()Lcom/google/android/gms/internal/ads/k03;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzyx;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzyx;-><init>()V

    invoke-virtual {v1, p1, v2, p2, v0}, Lcom/google/android/gms/internal/ads/k03;->b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzyx;Ljava/lang/String;Lcom/google/android/gms/internal/ads/he;)Lcom/google/android/gms/internal/ads/w;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kb;->c:Lcom/google/android/gms/internal/ads/w;

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/ads/i;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kb;->c:Lcom/google/android/gms/internal/ads/w;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/d;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/d;-><init>(Lcom/google/android/gms/ads/i;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/w;->q3(Lcom/google/android/gms/internal/ads/l0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/po;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kb;->c:Lcom/google/android/gms/internal/ads/w;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/w;->S0(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/po;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final d(Landroid/app/Activity;)V
    .locals 1

    if-nez p1, :cond_0

    const-string v0, "The activity for show is null, will proceed with show using the context provided when loading the ad."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/po;->f(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kb;->c:Lcom/google/android/gms/internal/ads/w;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->g3(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/w;->c2(Lcom/google/android/gms/dynamic/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/po;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/ads/s1;Lcom/google/android/gms/ads/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/s1;",
            "Lcom/google/android/gms/ads/c<",
            "TAdT;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kb;->c:Lcom/google/android/gms/internal/ads/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kb;->d:Lcom/google/android/gms/internal/ads/de;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/s1;->l()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/de;->A6(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kb;->c:Lcom/google/android/gms/internal/ads/w;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kb;->b:Lcom/google/android/gms/internal/ads/sz2;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kb;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/sz2;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/s1;)Lcom/google/android/gms/internal/ads/zzys;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/mz2;

    invoke-direct {v1, p2, p0}, Lcom/google/android/gms/internal/ads/mz2;-><init>(Lcom/google/android/gms/ads/c;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/w;->F4(Lcom/google/android/gms/internal/ads/zzys;Lcom/google/android/gms/internal/ads/m;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/po;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lcom/google/android/gms/ads/j;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, "Internal Error."

    const-string v4, "com.google.android.gms.ads"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/j;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/a;Lcom/google/android/gms/ads/q;)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/c;->a(Lcom/google/android/gms/ads/j;)V

    return-void
.end method
