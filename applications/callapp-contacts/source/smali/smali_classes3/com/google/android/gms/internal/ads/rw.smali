.class public final Lcom/google/android/gms/internal/ads/rw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Lcom/google/android/gms/internal/ads/xo;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/rx;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1012
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/rx;->a:Landroid/view/View;

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rw;->a:Landroid/view/View;

    .line 1013
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/rx;->b:Ljava/util/Map;

    .line 3
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/rw;->c:Ljava/util/Map;

    .line 2012
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/rx;->a:Landroid/view/View;

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ru;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/xo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rw;->b:Lcom/google/android/gms/internal/ads/xo;

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/ads/zzatj;

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/b;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v1}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/dynamic/b;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzatj;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 11
    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/xo;->a(Lcom/google/android/gms/internal/ads/zzatj;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "Failed to call remote method."

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/za;->zzex(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
