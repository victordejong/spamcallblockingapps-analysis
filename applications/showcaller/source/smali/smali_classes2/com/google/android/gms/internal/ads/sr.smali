.class final Lcom/google/android/gms/internal/ads/sr;
.super Lcom/google/android/gms/internal/ads/vr;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/vr<",
        "Lcom/google/android/gms/internal/ads/kz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Landroid/widget/FrameLayout;

.field final synthetic c:Landroid/widget/FrameLayout;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/google/android/gms/internal/ads/ur;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ur;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sr;->e:Lcom/google/android/gms/internal/ads/ur;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/sr;->b:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/sr;->c:Landroid/widget/FrameLayout;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/sr;->d:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/vr;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sr;->d:Landroid/content/Context;

    const-string v1, "native_ad_view_delegate"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ur;->h(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/kv;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/kv;-><init>()V

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sr;->d:Landroid/content/Context;

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

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sr;->d:Landroid/content/Context;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->m2(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sr;->b:Landroid/widget/FrameLayout;

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/dynamic/b;->m2(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/sr;->c:Landroid/widget/FrameLayout;

    .line 6
    invoke-static {v2}, Lcom/google/android/gms/dynamic/b;->m2(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/sr;->d:Landroid/content/Context;

    const-string v4, "com.google.android.gms.ads.ChimeraNativeAdViewDelegateCreatorImpl"

    sget-object v5, Lcom/google/android/gms/internal/ads/rr;->a:Lcom/google/android/gms/internal/ads/gi0;

    .line 7
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/ads/hi0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/gi0;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/nz;

    const v4, 0xcbe6bb0

    .line 8
    invoke-interface {v3, v0, v1, v2, v4}, Lcom/google/android/gms/internal/ads/nz;->E5(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;I)Landroid/os/IBinder;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jz;->E6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/kz;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcgw; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sr;->e:Lcom/google/android/gms/internal/ads/ur;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/sr;->d:Landroid/content/Context;

    .line 11
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ic0;->c(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/kc0;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/ur;->f(Lcom/google/android/gms/internal/ads/ur;Lcom/google/android/gms/internal/ads/kc0;)Lcom/google/android/gms/internal/ads/kc0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sr;->e:Lcom/google/android/gms/internal/ads/ur;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ur;->g(Lcom/google/android/gms/internal/ads/ur;)Lcom/google/android/gms/internal/ads/kc0;

    move-result-object v1

    const-string v2, "ClientApiBroker.createNativeAdViewDelegate"

    .line 12
    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/ads/kc0;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sr;->e:Lcom/google/android/gms/internal/ads/ur;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ur;->d(Lcom/google/android/gms/internal/ads/ur;)Lcom/google/android/gms/internal/ads/e10;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sr;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/sr;->b:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/sr;->c:Landroid/widget/FrameLayout;

    .line 14
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/e10;->c(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/ads/kz;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public final bridge synthetic c(Lcom/google/android/gms/internal/ads/dt;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sr;->b:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->m2(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sr;->c:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/b;->m2(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/dt;->R0(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/internal/ads/kz;

    move-result-object p1

    return-object p1
.end method
