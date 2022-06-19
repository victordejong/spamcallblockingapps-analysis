.class final Lcom/google/android/gms/internal/ads/qr;
.super Lcom/google/android/gms/internal/ads/vr;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/vr<",
        "Lcom/google/android/gms/internal/ads/lt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/google/android/gms/internal/ads/ur;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ur;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qr;->c:Lcom/google/android/gms/internal/ads/ur;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qr;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/vr;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qr;->b:Landroid/content/Context;

    const-string v1, "mobile_ads_settings"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ur;->h(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/jv;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/jv;-><init>()V

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qr;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/kw;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->W6:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qr;->b:Landroid/content/Context;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->m2(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qr;->b:Landroid/content/Context;

    const-string v3, "com.google.android.gms.ads.ChimeraMobileAdsSettingManagerCreatorImpl"

    sget-object v4, Lcom/google/android/gms/internal/ads/pr;->a:Lcom/google/android/gms/internal/ads/gi0;

    .line 5
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/hi0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/gi0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/mt;

    const v3, 0xcbe6bb0

    .line 6
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/mt;->a3(Lcom/google/android/gms/dynamic/a;I)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v2, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManager"

    .line 7
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 8
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/lt;

    if-eqz v3, :cond_1

    .line 9
    check-cast v2, Lcom/google/android/gms/internal/ads/lt;

    :goto_0
    move-object v1, v2

    goto :goto_2

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/jt;

    .line 10
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/jt;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcgw; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    .line 11
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qr;->c:Lcom/google/android/gms/internal/ads/ur;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/qr;->b:Landroid/content/Context;

    .line 12
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/ic0;->c(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/kc0;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/ur;->f(Lcom/google/android/gms/internal/ads/ur;Lcom/google/android/gms/internal/ads/kc0;)Lcom/google/android/gms/internal/ads/kc0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qr;->c:Lcom/google/android/gms/internal/ads/ur;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ur;->g(Lcom/google/android/gms/internal/ads/ur;)Lcom/google/android/gms/internal/ads/kc0;

    move-result-object v2

    const-string v3, "ClientApiBroker.getMobileAdsSettingsManager"

    .line 13
    invoke-interface {v2, v0, v3}, Lcom/google/android/gms/internal/ads/kc0;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qr;->c:Lcom/google/android/gms/internal/ads/ur;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ur;->c(Lcom/google/android/gms/internal/ads/ur;)Lcom/google/android/gms/internal/ads/av;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qr;->b:Landroid/content/Context;

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/av;->c(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/lt;

    move-result-object v1

    :goto_2
    return-object v1
.end method

.method public final bridge synthetic c(Lcom/google/android/gms/internal/ads/dt;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qr;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->m2(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    const v1, 0xcbe6bb0

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/dt;->Z4(Lcom/google/android/gms/dynamic/a;I)Lcom/google/android/gms/internal/ads/lt;

    move-result-object p1

    return-object p1
.end method
