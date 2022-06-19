.class public final Lcom/google/android/gms/internal/ads/ecc;
.super Lcom/google/android/gms/internal/ads/ead;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/gi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ead;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 2
    const-string/jumbo v0, "The initialization is not processed because MobileAdsSettingsManager is not created successfully."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/xr;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/ece;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/ece;-><init>(Lcom/google/android/gms/internal/ads/ecc;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    return-void
.end method

.method public final a(F)V
    .locals 0

    .prologue
    .line 6
    return-void
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 9
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ech;)V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/gi;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ecc;->a:Lcom/google/android/gms/internal/ads/gi;

    .line 16
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ko;)V
    .locals 0

    .prologue
    .line 14
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 7
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/dynamic/a;)V
    .locals 0

    .prologue
    .line 5
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 8
    return-void
.end method

.method public final b()F
    .locals 1

    .prologue
    .line 10
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/gb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method final synthetic f()V
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ecc;->a:Lcom/google/android/gms/internal/ads/gi;

    if-eqz v0, :cond_0

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ecc;->a:Lcom/google/android/gms/internal/ads/gi;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/gi;->a(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :cond_0
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 23
    const-string/jumbo v1, "Could not notify onComplete event."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
