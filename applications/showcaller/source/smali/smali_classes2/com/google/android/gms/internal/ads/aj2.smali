.class final Lcom/google/android/gms/internal/ads/aj2;
.super Lcom/google/android/gms/internal/ads/hr2;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/xs;

.field final synthetic b:Lcom/google/android/gms/internal/ads/bj2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bj2;Lcom/google/android/gms/internal/ads/xs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aj2;->b:Lcom/google/android/gms/internal/ads/bj2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aj2;->a:Lcom/google/android/gms/internal/ads/xs;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hr2;-><init>()V

    return-void
.end method


# virtual methods
.method public final r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aj2;->b:Lcom/google/android/gms/internal/ads/bj2;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bj2;->F6(Lcom/google/android/gms/internal/ads/bj2;)Lcom/google/android/gms/internal/ads/fk1;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aj2;->a:Lcom/google/android/gms/internal/ads/xs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/xs;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ei0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
