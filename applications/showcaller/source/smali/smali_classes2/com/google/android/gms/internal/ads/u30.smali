.class final Lcom/google/android/gms/internal/ads/u30;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/d$a;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/vi0;

.field final synthetic b:Lcom/google/android/gms/internal/ads/w30;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/w30;Lcom/google/android/gms/internal/ads/vi0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/u30;->b:Lcom/google/android/gms/internal/ads/w30;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/u30;->a:Lcom/google/android/gms/internal/ads/vi0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final J0(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/u30;->a:Lcom/google/android/gms/internal/ads/vi0;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u30;->b:Lcom/google/android/gms/internal/ads/w30;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/w30;->b(Lcom/google/android/gms/internal/ads/w30;)Lcom/google/android/gms/internal/ads/k30;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/k30;->i0()Lcom/google/android/gms/internal/ads/q30;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/vi0;->c(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u30;->a:Lcom/google/android/gms/internal/ads/vi0;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/vi0;->f(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final c0(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u30;->a:Lcom/google/android/gms/internal/ads/vi0;

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x22

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onConnectionSuspended: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vi0;->f(Ljava/lang/Throwable;)Z

    return-void
.end method
