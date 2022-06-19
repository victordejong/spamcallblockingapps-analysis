.class public final Lcom/google/android/gms/internal/ads/xs0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/hs0;


# instance fields
.field private final a:J

.field private final b:Lcom/google/android/gms/internal/ads/ms0;

.field private final c:Lcom/google/android/gms/internal/ads/rk1;


# direct methods
.method constructor <init>(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/ms0;Lcom/google/android/gms/internal/ads/fv;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/xs0;->a:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/xs0;->b:Lcom/google/android/gms/internal/ads/ms0;

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/fv;->w()Lcom/google/android/gms/internal/ads/tk1;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/tk1;->N(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/tk1;

    invoke-interface {p1, p6}, Lcom/google/android/gms/internal/ads/tk1;->u(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/tk1;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/tk1;->zza()Lcom/google/android/gms/internal/ads/uk1;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/uk1;->b()Lcom/google/android/gms/internal/ads/rk1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xs0;->c:Lcom/google/android/gms/internal/ads/rk1;

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/xs0;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/xs0;->a:J

    return-wide v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/xs0;)Lcom/google/android/gms/internal/ads/ms0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/xs0;->b:Lcom/google/android/gms/internal/ads/ms0;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzys;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xs0;->c:Lcom/google/android/gms/internal/ads/rk1;

    new-instance v1, Lcom/google/android/gms/internal/ads/vs0;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/vs0;-><init>(Lcom/google/android/gms/internal/ads/xs0;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/rk1;->l1(Lcom/google/android/gms/internal/ads/zzys;Lcom/google/android/gms/internal/ads/yk;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/po;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xs0;->c:Lcom/google/android/gms/internal/ads/rk1;

    new-instance v1, Lcom/google/android/gms/internal/ads/ws0;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/ws0;-><init>(Lcom/google/android/gms/internal/ads/xs0;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/rk1;->H2(Lcom/google/android/gms/internal/ads/uk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xs0;->c:Lcom/google/android/gms/internal/ads/rk1;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/gms/dynamic/b;->g3(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/rk1;->R(Lcom/google/android/gms/dynamic/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/po;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method
