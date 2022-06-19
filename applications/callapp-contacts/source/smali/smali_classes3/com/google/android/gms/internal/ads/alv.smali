.class final synthetic Lcom/google/android/gms/internal/ads/alv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/als;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/als;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/alv;->a:Lcom/google/android/gms/internal/ads/als;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/alv;->a:Lcom/google/android/gms/internal/ads/als;

    .line 1048
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/als;->b:Lcom/google/android/gms/internal/ads/bcy;

    .line 2004
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/bcy;->d:Lcom/google/android/gms/internal/ads/fh;

    if-eqz v1, :cond_0

    .line 1049
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/als;->b:Lcom/google/android/gms/internal/ads/bcy;

    .line 3004
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/bcy;->d:Lcom/google/android/gms/internal/ads/fh;

    .line 1050
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/als;->c:Lcom/google/android/gms/internal/ads/dsb;

    .line 1051
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/dsb;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/ekw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/als;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/ads/fh;->a(Lcom/google/android/gms/internal/ads/ekw;Lcom/google/android/gms/dynamic/b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "RemoteException when notifyAdLoad is called"

    .line 1054
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
