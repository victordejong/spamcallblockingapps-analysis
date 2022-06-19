.class final synthetic Lcom/google/android/gms/internal/ads/jp1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/vp1;

.field private final e:Lcom/google/android/gms/internal/ads/d40;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/vp1;Lcom/google/android/gms/internal/ads/d40;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jp1;->d:Lcom/google/android/gms/internal/ads/vp1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/jp1;->e:Lcom/google/android/gms/internal/ads/d40;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jp1;->d:Lcom/google/android/gms/internal/ads/vp1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jp1;->e:Lcom/google/android/gms/internal/ads/d40;

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vp1;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/d40;->U4(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
