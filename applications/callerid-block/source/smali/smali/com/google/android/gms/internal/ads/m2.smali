.class public final Lcom/google/android/gms/internal/ads/m2;
.super Lcom/google/android/gms/internal/ads/n0;
.source ""


# instance fields
.field private b:Lcom/google/android/gms/internal/ads/wa;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/n0;-><init>()V

    return-void
.end method


# virtual methods
.method public final D0(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final H3(Ljava/lang/String;Lcom/google/android/gms/dynamic/a;)V
    .locals 0

    return-void
.end method

.method public final T(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final Y1(Lcom/google/android/gms/internal/ads/he;)V
    .locals 0

    return-void
.end method

.method public final a()V
    .locals 2

    const-string v0, "The initialization is not processed because MobileAdsSettingsManager is not created successfully."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/po;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/io;->b:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/l2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/l2;-><init>(Lcom/google/android/gms/internal/ads/m2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final synthetic b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m2;->b:Lcom/google/android/gms/internal/ads/wa;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/wa;->r3(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not notify onComplete event."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/po;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final e5(Lcom/google/android/gms/internal/ads/zzads;)V
    .locals 0

    return-void
.end method

.method public final j()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public final k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final k0(Z)V
    .locals 0

    return-void
.end method

.method public final l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzamj;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final n3(Lcom/google/android/gms/dynamic/a;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final o()V
    .locals 0

    return-void
.end method

.method public final o5(Lcom/google/android/gms/internal/ads/z0;)V
    .locals 0

    return-void
.end method

.method public final s2(Lcom/google/android/gms/internal/ads/wa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/m2;->b:Lcom/google/android/gms/internal/ads/wa;

    return-void
.end method

.method public final y3(F)V
    .locals 0

    return-void
.end method
