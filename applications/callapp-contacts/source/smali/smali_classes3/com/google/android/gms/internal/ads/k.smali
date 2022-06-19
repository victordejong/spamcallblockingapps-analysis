.class final synthetic Lcom/google/android/gms/internal/ads/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/l;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/k;->a:Lcom/google/android/gms/internal/ads/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k;->a:Lcom/google/android/gms/internal/ads/l;

    .line 1020
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/l;->a:Lcom/google/android/gms/internal/ads/it;

    if-eqz v1, :cond_0

    .line 1021
    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/l;->a:Lcom/google/android/gms/internal/ads/it;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/it;->a(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not notify onComplete event."

    .line 1024
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
