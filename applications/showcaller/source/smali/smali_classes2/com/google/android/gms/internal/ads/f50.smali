.class public final Lcom/google/android/gms/internal/ads/f50;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/x40;
.implements Lcom/google/android/gms/internal/ads/u40;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/wn0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/u;Lcom/google/android/gms/ads/internal/a;)V
    .locals 14

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->e()Lcom/google/android/gms/internal/ads/ho0;

    invoke-static {}, Lcom/google/android/gms/internal/ads/mp0;->b()Lcom/google/android/gms/internal/ads/mp0;

    move-result-object v1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/pm;->a()Lcom/google/android/gms/internal/ads/pm;

    move-result-object v11

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p1

    move-object/from16 v7, p2

    .line 3
    invoke-static/range {v0 .. v13}, Lcom/google/android/gms/internal/ads/ho0;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/mp0;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/u;Lcom/google/android/gms/internal/ads/kx;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/ax;Lcom/google/android/gms/ads/internal/k;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/pm;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/jj2;)Lcom/google/android/gms/internal/ads/wn0;

    move-result-object v0

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/f50;->d:Lcom/google/android/gms/internal/ads/wn0;

    check-cast v0, Landroid/view/View;

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method private static final S(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/wr;->a()Lcom/google/android/gms/internal/ads/xh0;

    invoke-static {}, Lcom/google/android/gms/internal/ads/xh0;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/internal/util/c2;->a:Lcom/google/android/gms/internal/ads/au2;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final D0(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/t40;->d(Lcom/google/android/gms/internal/ads/u40;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final E0(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/t40;->a(Lcom/google/android/gms/internal/ads/u40;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final J(Lcom/google/android/gms/internal/ads/w40;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f50;->d:Lcom/google/android/gms/internal/ads/wn0;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->c0()Lcom/google/android/gms/internal/ads/jp0;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/d50;->a(Lcom/google/android/gms/internal/ads/w40;)Lcom/google/android/gms/internal/ads/ip0;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/jp0;->V(Lcom/google/android/gms/internal/ads/ip0;)V

    return-void
.end method

.method public final O(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/a50;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/a50;-><init>(Lcom/google/android/gms/internal/ads/f50;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/f50;->S(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final U(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/n20<",
            "-",
            "Lcom/google/android/gms/internal/ads/e60;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f50;->d:Lcom/google/android/gms/internal/ads/wn0;

    new-instance v1, Lcom/google/android/gms/internal/ads/c50;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/c50;-><init>(Lcom/google/android/gms/internal/ads/n20;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/wn0;->X0(Ljava/lang/String;Lcom/google/android/gms/common/util/p;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/t40;->c(Lcom/google/android/gms/internal/ads/u40;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method final synthetic b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f50;->d:Lcom/google/android/gms/internal/ads/wn0;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/wn0;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic c(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f50;->d:Lcom/google/android/gms/internal/ads/wn0;

    const-string v1, "text/html"

    const-string v2, "UTF-8"

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/wn0;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final synthetic e(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f50;->d:Lcom/google/android/gms/internal/ads/wn0;

    const-string v1, "text/html"

    const-string v2, "UTF-8"

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/wn0;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f50;->d:Lcom/google/android/gms/internal/ads/wn0;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->h0()Z

    move-result v0

    return v0
.end method

.method public final h()Lcom/google/android/gms/internal/ads/f60;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/f60;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/f60;-><init>(Lcom/google/android/gms/internal/ads/e60;)V

    return-object v0
.end method

.method public final i0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/n20<",
            "-",
            "Lcom/google/android/gms/internal/ads/e60;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f50;->d:Lcom/google/android/gms/internal/ads/wn0;

    new-instance v1, Lcom/google/android/gms/internal/ads/e50;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/ads/e50;-><init>(Lcom/google/android/gms/internal/ads/f50;Lcom/google/android/gms/internal/ads/n20;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/wn0;->l0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/y40;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/y40;-><init>(Lcom/google/android/gms/internal/ads/f50;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/f50;->S(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/b50;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/b50;-><init>(Lcom/google/android/gms/internal/ads/f50;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/f50;->S(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/t40;->b(Lcom/google/android/gms/internal/ads/u40;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final synthetic t(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f50;->d:Lcom/google/android/gms/internal/ads/wn0;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/g50;->n(Ljava/lang/String;)V

    return-void
.end method

.method public final y(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>"

    .line 1
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/z40;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/z40;-><init>(Lcom/google/android/gms/internal/ads/f50;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/f50;->S(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzi()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f50;->d:Lcom/google/android/gms/internal/ads/wn0;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->destroy()V

    return-void
.end method
