.class final Lcom/google/android/gms/internal/ads/or;
.super Lcom/google/android/gms/internal/ads/vr;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/vr<",
        "Lcom/google/android/gms/internal/ads/ps;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/google/android/gms/internal/ads/s70;

.field final synthetic e:Lcom/google/android/gms/internal/ads/ur;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ur;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/s70;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/or;->e:Lcom/google/android/gms/internal/ads/ur;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/or;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/or;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/or;->d:Lcom/google/android/gms/internal/ads/s70;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/vr;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/or;->b:Landroid/content/Context;

    const-string v1, "native_ad"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ur;->h(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/fv;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/fv;-><init>()V

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/or;->b:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/or;->b:Landroid/content/Context;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->m2(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/or;->b:Landroid/content/Context;

    const-string v3, "com.google.android.gms.ads.ChimeraAdLoaderBuilderCreatorImpl"

    sget-object v4, Lcom/google/android/gms/internal/ads/nr;->a:Lcom/google/android/gms/internal/ads/gi0;

    .line 5
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/hi0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/gi0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/qs;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/or;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/or;->d:Lcom/google/android/gms/internal/ads/s70;

    const v5, 0xcbe6bb0

    .line 6
    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/google/android/gms/internal/ads/qs;->a3(Lcom/google/android/gms/dynamic/a;Ljava/lang/String;Lcom/google/android/gms/internal/ads/s70;I)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v2, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder"

    .line 7
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 8
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/ps;

    if-eqz v3, :cond_1

    .line 9
    check-cast v2, Lcom/google/android/gms/internal/ads/ps;

    :goto_0
    move-object v1, v2

    goto :goto_2

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/ns;

    .line 10
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/ns;-><init>(Landroid/os/IBinder;)V
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
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/or;->e:Lcom/google/android/gms/internal/ads/ur;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/or;->b:Landroid/content/Context;

    .line 12
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/ic0;->c(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/kc0;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/ur;->f(Lcom/google/android/gms/internal/ads/ur;Lcom/google/android/gms/internal/ads/kc0;)Lcom/google/android/gms/internal/ads/kc0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/or;->e:Lcom/google/android/gms/internal/ads/ur;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ur;->g(Lcom/google/android/gms/internal/ads/ur;)Lcom/google/android/gms/internal/ads/kc0;

    move-result-object v2

    const-string v3, "ClientApiBroker.createAdLoaderBuilder"

    .line 13
    invoke-interface {v2, v0, v3}, Lcom/google/android/gms/internal/ads/kc0;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/or;->e:Lcom/google/android/gms/internal/ads/ur;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ur;->b(Lcom/google/android/gms/internal/ads/ur;)Lcom/google/android/gms/internal/ads/rq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/or;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/or;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/or;->d:Lcom/google/android/gms/internal/ads/s70;

    .line 15
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/rq;->c(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/s70;)Lcom/google/android/gms/internal/ads/ps;

    move-result-object v1

    :goto_2
    return-object v1
.end method

.method public final bridge synthetic c(Lcom/google/android/gms/internal/ads/dt;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/or;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->m2(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/or;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/or;->d:Lcom/google/android/gms/internal/ads/s70;

    const v3, 0xcbe6bb0

    .line 2
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dt;->p4(Lcom/google/android/gms/dynamic/a;Ljava/lang/String;Lcom/google/android/gms/internal/ads/s70;I)Lcom/google/android/gms/internal/ads/ps;

    move-result-object p1

    return-object p1
.end method
