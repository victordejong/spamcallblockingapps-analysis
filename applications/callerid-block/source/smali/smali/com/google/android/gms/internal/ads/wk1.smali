.class final Lcom/google/android/gms/internal/ads/wk1;
.super Lcom/google/android/gms/internal/ads/zs1;
.source ""


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/a0;

.field final synthetic b:Lcom/google/android/gms/internal/ads/xk1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/xk1;Lcom/google/android/gms/internal/ads/a0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wk1;->b:Lcom/google/android/gms/internal/ads/xk1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/wk1;->a:Lcom/google/android/gms/internal/ads/a0;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zs1;-><init>()V

    return-void
.end method


# virtual methods
.method public final n()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wk1;->b:Lcom/google/android/gms/internal/ads/xk1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/xk1;->A6(Lcom/google/android/gms/internal/ads/xk1;)Lcom/google/android/gms/internal/ads/un0;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wk1;->a:Lcom/google/android/gms/internal/ads/a0;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/a0;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/po;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
