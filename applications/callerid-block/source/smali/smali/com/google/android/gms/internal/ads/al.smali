.class public final Lcom/google/android/gms/internal/ads/al;
.super Lcom/google/android/gms/ads/z/b;
.source ""


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/rk;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/il;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/ads/z/b;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/al;->b:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/ads/m03;->b()Lcom/google/android/gms/internal/ads/k03;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/de;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/de;-><init>()V

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/k03;->e(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/he;)Lcom/google/android/gms/internal/ads/rk;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/al;->a:Lcom/google/android/gms/internal/ads/rk;

    new-instance p1, Lcom/google/android/gms/internal/ads/il;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/il;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/al;->c:Lcom/google/android/gms/internal/ads/il;

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/ads/i;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/al;->c:Lcom/google/android/gms/internal/ads/il;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/il;->z6(Lcom/google/android/gms/ads/i;)V

    return-void
.end method

.method public final c(Landroid/app/Activity;Lcom/google/android/gms/ads/n;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/al;->c:Lcom/google/android/gms/internal/ads/il;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/il;->A6(Lcom/google/android/gms/ads/n;)V

    if-nez p1, :cond_0

    const-string p2, "The activity for show is null, will proceed with show using the context provided when loading the ad."

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/po;->f(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/al;->a:Lcom/google/android/gms/internal/ads/rk;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/al;->c:Lcom/google/android/gms/internal/ads/il;

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/rk;->H2(Lcom/google/android/gms/internal/ads/uk;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/al;->a:Lcom/google/android/gms/internal/ads/rk;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->g3(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/rk;->R(Lcom/google/android/gms/dynamic/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/po;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/s1;Lcom/google/android/gms/ads/z/c;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/al;->a:Lcom/google/android/gms/internal/ads/rk;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/sz2;->a:Lcom/google/android/gms/internal/ads/sz2;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/al;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/sz2;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/s1;)Lcom/google/android/gms/internal/ads/zzys;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/el;

    invoke-direct {v1, p2, p0}, Lcom/google/android/gms/internal/ads/el;-><init>(Lcom/google/android/gms/ads/z/c;Lcom/google/android/gms/ads/z/b;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/rk;->l1(Lcom/google/android/gms/internal/ads/zzys;Lcom/google/android/gms/internal/ads/yk;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/po;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
