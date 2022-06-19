.class public final Lcom/google/android/gms/internal/ads/xb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/pb;
.implements Lcom/google/android/gms/internal/ads/nb;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/jt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbq;Lcom/google/android/gms/internal/ads/zh2;Lcom/google/android/gms/ads/internal/a;)V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->e()Lcom/google/android/gms/internal/ads/ut;

    invoke-static {}, Lcom/google/android/gms/internal/ads/yu;->b()Lcom/google/android/gms/internal/ads/yu;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/wv2;->a()Lcom/google/android/gms/internal/ads/wv2;

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

    invoke-static/range {v0 .. v13}, Lcom/google/android/gms/internal/ads/ut;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yu;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zh2;Lcom/google/android/gms/internal/ads/m4;Lcom/google/android/gms/internal/ads/zzbbq;Lcom/google/android/gms/internal/ads/c4;Lcom/google/android/gms/ads/internal/k;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/wv2;Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/dl1;)Lcom/google/android/gms/internal/ads/jt;

    move-result-object v0

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/xb;->b:Lcom/google/android/gms/internal/ads/jt;

    check-cast v0, Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method private static final F(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/m03;->a()Lcom/google/android/gms/internal/ads/io;

    invoke-static {}, Lcom/google/android/gms/internal/ads/io;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/internal/util/l1;->i:Lcom/google/android/gms/internal/ads/tv1;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final H0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/h9<",
            "-",
            "Lcom/google/android/gms/internal/ads/wc;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xb;->b:Lcom/google/android/gms/internal/ads/jt;

    new-instance v1, Lcom/google/android/gms/internal/ads/wb;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/ads/wb;-><init>(Lcom/google/android/gms/internal/ads/xb;Lcom/google/android/gms/internal/ads/h9;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/jt;->T0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V

    return-void
.end method

.method public final O(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/mb;->b(Lcom/google/android/gms/internal/ads/nb;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final T(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/sb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/sb;-><init>(Lcom/google/android/gms/internal/ads/xb;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/xb;->F(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final X(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/mb;->d(Lcom/google/android/gms/internal/ads/nb;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/mb;->c(Lcom/google/android/gms/internal/ads/nb;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method final synthetic b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xb;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/jt;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic c(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xb;->b:Lcom/google/android/gms/internal/ads/jt;

    const-string v1, "text/html"

    const-string v2, "UTF-8"

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/jt;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final synthetic f(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xb;->b:Lcom/google/android/gms/internal/ads/jt;

    const-string v1, "text/html"

    const-string v2, "UTF-8"

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/jt;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/qb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/qb;-><init>(Lcom/google/android/gms/internal/ads/xb;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/xb;->F(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xb;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jt;->p0()Z

    move-result v0

    return v0
.end method

.method public final h0(Lcom/google/android/gms/internal/ads/ob;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xb;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jt;->b1()Lcom/google/android/gms/internal/ads/wu;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/vb;->a(Lcom/google/android/gms/internal/ads/ob;)Lcom/google/android/gms/internal/ads/vu;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/wu;->U(Lcom/google/android/gms/internal/ads/vu;)V

    return-void
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xb;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jt;->destroy()V

    return-void
.end method

.method public final j()Lcom/google/android/gms/internal/ads/xc;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/xc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/xc;-><init>(Lcom/google/android/gms/internal/ads/wc;)V

    return-object v0
.end method

.method public final l0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/h9<",
            "-",
            "Lcom/google/android/gms/internal/ads/wc;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xb;->b:Lcom/google/android/gms/internal/ads/jt;

    new-instance v1, Lcom/google/android/gms/internal/ads/ub;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/ub;-><init>(Lcom/google/android/gms/internal/ads/h9;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/jt;->L0(Ljava/lang/String;Lcom/google/android/gms/common/util/o;)V

    return-void
.end method

.method public final m0(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/mb;->a(Lcom/google/android/gms/internal/ads/nb;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/tb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/tb;-><init>(Lcom/google/android/gms/internal/ads/xb;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/xb;->F(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic u(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xb;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/yb;->g(Ljava/lang/String;)V

    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/rb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/rb;-><init>(Lcom/google/android/gms/internal/ads/xb;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/xb;->F(Ljava/lang/Runnable;)V

    return-void
.end method
