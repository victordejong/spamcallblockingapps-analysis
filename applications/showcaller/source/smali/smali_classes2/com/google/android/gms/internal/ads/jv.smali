.class public final Lcom/google/android/gms/internal/ads/jv;
.super Lcom/google/android/gms/internal/ads/kt;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field private d:Lcom/google/android/gms/internal/ads/d40;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/kt;-><init>()V

    return-void
.end method


# virtual methods
.method public final O(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final O1(Lcom/google/android/gms/dynamic/a;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final Q0(Lcom/google/android/gms/internal/ads/d40;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jv;->d:Lcom/google/android/gms/internal/ads/d40;

    return-void
.end method

.method public final U1(F)V
    .locals 0

    return-void
.end method

.method public final X1(Ljava/lang/String;Lcom/google/android/gms/dynamic/a;)V
    .locals 0

    return-void
.end method

.method public final a()V
    .locals 2

    const-string v0, "The initialization is not processed because MobileAdsSettingsManager is not created successfully."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ei0;->c(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/xh0;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/iv;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/iv;-><init>(Lcom/google/android/gms/internal/ads/jv;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final synthetic b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jv;->d:Lcom/google/android/gms/internal/ads/d40;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/d40;->U4(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not notify onComplete event."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ei0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final h()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzbrl;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final k1(Lcom/google/android/gms/internal/ads/s70;)V
    .locals 0

    return-void
.end method

.method public final o()V
    .locals 0

    return-void
.end method

.method public final p2(Lcom/google/android/gms/internal/ads/zzbim;)V
    .locals 0

    return-void
.end method

.method public final t0(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final u5(Lcom/google/android/gms/internal/ads/wt;)V
    .locals 0

    return-void
.end method

.method public final y0(Z)V
    .locals 0

    return-void
.end method
