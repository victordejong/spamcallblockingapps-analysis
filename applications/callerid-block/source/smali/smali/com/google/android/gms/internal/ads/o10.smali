.class public final Lcom/google/android/gms/internal/ads/o10;
.super Lcom/google/android/gms/internal/ads/ru2;
.source ""


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/n10;

.field private final c:Lcom/google/android/gms/internal/ads/w;

.field private final d:Lcom/google/android/gms/internal/ads/wg1;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/n10;Lcom/google/android/gms/internal/ads/w;Lcom/google/android/gms/internal/ads/wg1;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ru2;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/o10;->e:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/o10;->b:Lcom/google/android/gms/internal/ads/n10;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/o10;->c:Lcom/google/android/gms/internal/ads/w;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/o10;->d:Lcom/google/android/gms/internal/ads/wg1;

    return-void
.end method


# virtual methods
.method public final T1(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/zu2;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/o10;->d:Lcom/google/android/gms/internal/ads/wg1;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/wg1;->c(Lcom/google/android/gms/internal/ads/zu2;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/o10;->b:Lcom/google/android/gms/internal/ads/n10;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->M1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/o10;->e:Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/n10;->h(Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zu2;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/po;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a()Lcom/google/android/gms/internal/ads/w;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/o10;->c:Lcom/google/android/gms/internal/ads/w;

    return-object v0
.end method

.method public final g()Lcom/google/android/gms/internal/ads/j1;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->o4:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/o10;->b:Lcom/google/android/gms/internal/ads/n10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/u30;->d()Lcom/google/android/gms/internal/ads/k70;

    move-result-object v0

    return-object v0
.end method

.method public final k0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/o10;->e:Z

    return-void
.end method

.method public final m3(Lcom/google/android/gms/internal/ads/wu2;)V
    .locals 0

    return-void
.end method

.method public final n5(Lcom/google/android/gms/internal/ads/g1;)V
    .locals 1

    const-string v0, "setOnPaidEventListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/o10;->d:Lcom/google/android/gms/internal/ads/wg1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/wg1;->f(Lcom/google/android/gms/internal/ads/g1;)V

    :cond_0
    return-void
.end method
