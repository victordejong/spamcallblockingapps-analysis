.class public final Lcom/google/android/gms/internal/ads/fn;
.super Lcom/google/android/gms/ads/internal/b;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/ads/internal/b",
        "<",
        "Lcom/google/android/gms/internal/ads/fs;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/c$a;Lcom/google/android/gms/common/internal/c$b;)V
    .locals 7

    .prologue
    .line 1
    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qs;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    const/16 v3, 0xa6

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/b;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/c$a;Lcom/google/android/gms/common/internal/c$b;Ljava/lang/String;)V

    .line 4
    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    .prologue
    .line 8
    .line 10
    if-nez p1, :cond_0

    .line 11
    const/4 v0, 0x0

    .line 16
    :goto_0
    return-object v0

    .line 12
    :cond_0
    const-string/jumbo v0, "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 13
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/fs;

    if-eqz v1, :cond_1

    .line 14
    check-cast v0, Lcom/google/android/gms/internal/ads/fs;

    goto :goto_0

    .line 15
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/fv;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/fv;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5
    const-string/jumbo v0, "com.google.android.gms.ads.service.HTTP"

    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6
    const-string/jumbo v0, "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService"

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/fs;
    .locals 1

    .prologue
    .line 7
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/b;->v()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/fs;

    return-object v0
.end method
