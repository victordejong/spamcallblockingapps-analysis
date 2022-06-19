.class final synthetic Lcom/google/android/gms/internal/ads/amz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/amx;

.field private final b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/amx;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/amz;->a:Lcom/google/android/gms/internal/ads/amx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/amz;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/amz;->a:Lcom/google/android/gms/internal/ads/amx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/amz;->b:Ljava/lang/Runnable;

    .line 1018
    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/amx;->a:Lcom/google/android/gms/internal/ads/fn;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/fn;->a(Lcom/google/android/gms/dynamic/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1019
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    .line 1022
    :catch_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
