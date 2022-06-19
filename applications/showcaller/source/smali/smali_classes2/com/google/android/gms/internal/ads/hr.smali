.class final Lcom/google/android/gms/internal/ads/hr;
.super Lcom/google/android/gms/internal/ads/vr;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/vr<",
        "Lcom/google/android/gms/internal/ads/ab0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/google/android/gms/internal/ads/s70;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ur;Landroid/content/Context;Lcom/google/android/gms/internal/ads/s70;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/hr;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/hr;->c:Lcom/google/android/gms/internal/ads/s70;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/vr;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hr;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->m2(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hr;->b:Landroid/content/Context;

    const-string v2, "com.google.android.gms.ads.DynamiteOfflineUtilsCreatorImpl"

    sget-object v3, Lcom/google/android/gms/internal/ads/gr;->a:Lcom/google/android/gms/internal/ads/gi0;

    .line 2
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/hi0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/gi0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/db0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hr;->c:Lcom/google/android/gms/internal/ads/s70;

    const v3, 0xcbe6bb0

    .line 3
    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/db0;->F0(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/s70;I)Lcom/google/android/gms/internal/ads/ab0;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcgw; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final bridge synthetic c(Lcom/google/android/gms/internal/ads/dt;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hr;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->m2(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hr;->c:Lcom/google/android/gms/internal/ads/s70;

    const v2, 0xcbe6bb0

    .line 2
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/dt;->p6(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/s70;I)Lcom/google/android/gms/internal/ads/ab0;

    move-result-object p1

    return-object p1
.end method
