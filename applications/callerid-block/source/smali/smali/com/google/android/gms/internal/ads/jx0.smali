.class public final Lcom/google/android/gms/internal/ads/jx0;
.super Lcom/google/android/gms/internal/ads/bj;
.source ""


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Lcom/google/android/gms/internal/ads/uj;

.field private final e:Lcom/google/android/gms/internal/ads/ty;

.field private final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/gx0;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/internal/ads/vj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/vj;Lcom/google/android/gms/internal/ads/ty;Lcom/google/android/gms/internal/ads/uj;Ljava/util/HashMap;Lcom/google/android/gms/internal/ads/ox0;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/ads/vj;",
            "Lcom/google/android/gms/internal/ads/ty;",
            "Lcom/google/android/gms/internal/ads/uj;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/gx0;",
            ">;",
            "Lcom/google/android/gms/internal/ads/ox0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bj;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/m3;->a(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jx0;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/jx0;->c:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/jx0;->g:Lcom/google/android/gms/internal/ads/vj;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/jx0;->d:Lcom/google/android/gms/internal/ads/uj;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/jx0;->e:Lcom/google/android/gms/internal/ads/ty;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/jx0;->f:Ljava/util/HashMap;

    return-void
.end method

.method private static E6(Lcom/google/android/gms/internal/ads/zzawc;Lcom/google/android/gms/internal/ads/qp1;Lcom/google/android/gms/internal/ads/ae1;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzawc;",
            "Lcom/google/android/gms/internal/ads/qp1;",
            "Lcom/google/android/gms/internal/ads/ae1;",
            ")",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/xw0;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/xw0;-><init>(Lcom/google/android/gms/internal/ads/ae1;)V

    sget-object p2, Lcom/google/android/gms/internal/ads/yw0;->a:Lcom/google/android/gms/internal/ads/uo1;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzduy;->f:Lcom/google/android/gms/internal/ads/zzduy;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzawc;->b:Landroid/os/Bundle;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/kz1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/google/android/gms/internal/ads/ip1;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/rz1;)Lcom/google/android/gms/internal/ads/hp1;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/hp1;->c(Lcom/google/android/gms/internal/ads/uy1;)Lcom/google/android/gms/internal/ads/hp1;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/hp1;->b(Lcom/google/android/gms/internal/ads/uo1;)Lcom/google/android/gms/internal/ads/hp1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/hp1;->i()Lcom/google/android/gms/internal/ads/wo1;

    move-result-object p0

    return-object p0
.end method

.method private static F6(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/qp1;Lcom/google/android/gms/internal/ads/jd;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/google/android/gms/internal/ads/qp1;",
            "Lcom/google/android/gms/internal/ads/jd;",
            ")",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "Lcom/google/android/gms/internal/ads/mj;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/gd;->b:Lcom/google/android/gms/internal/ads/cd;

    sget-object v1, Lcom/google/android/gms/internal/ads/zw0;->a:Lcom/google/android/gms/internal/ads/ad;

    const-string v2, "AFMA_getAdDictionary"

    invoke-virtual {p2, v2, v0, v1}, Lcom/google/android/gms/internal/ads/jd;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/bd;Lcom/google/android/gms/internal/ads/ad;)Lcom/google/android/gms/internal/ads/yc;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzduy;->h:Lcom/google/android/gms/internal/ads/zzduy;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/ads/ip1;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/rz1;)Lcom/google/android/gms/internal/ads/hp1;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/hp1;->c(Lcom/google/android/gms/internal/ads/uy1;)Lcom/google/android/gms/internal/ads/hp1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/hp1;->i()Lcom/google/android/gms/internal/ads/wo1;

    move-result-object p0

    return-object p0
.end method

.method private final G6(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/gj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/android/gms/internal/ads/gj;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/dx0;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/dx0;-><init>(Lcom/google/android/gms/internal/ads/jx0;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zo;->a:Lcom/google/android/gms/internal/ads/sz1;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/kz1;->h(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/uy1;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/fx0;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/fx0;-><init>(Lcom/google/android/gms/internal/ads/jx0;Lcom/google/android/gms/internal/ads/gj;)V

    sget-object p2, Lcom/google/android/gms/internal/ads/zo;->f:Lcom/google/android/gms/internal/ads/sz1;

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/kz1;->o(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/gz1;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final A6(Lcom/google/android/gms/internal/ads/zzawc;I)Lcom/google/android/gms/internal/ads/rz1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzawc;",
            "I)",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/f5;->a:Lcom/google/android/gms/internal/ads/p4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p4;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Split request is disabled."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/kz1;->b(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzawc;->j:Lcom/google/android/gms/internal/ads/zzdsy;

    if-nez v0, :cond_1

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Pool configuration missing from request."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/kz1;->b(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    return-object p1

    :cond_1
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzdsy;->f:I

    if-eqz v1, :cond_3

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdsy;->g:I

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->q()Lcom/google/android/gms/internal/ads/zc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jx0;->b:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbq;->a()Lcom/google/android/gms/internal/ads/zzbbq;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zc;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbq;)Lcom/google/android/gms/internal/ads/jd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jx0;->e:Lcom/google/android/gms/internal/ads/ty;

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/ty;->a(Lcom/google/android/gms/internal/ads/zzawc;I)Lcom/google/android/gms/internal/ads/ae1;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/ae1;->c()Lcom/google/android/gms/internal/ads/qp1;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/internal/ads/jx0;->E6(Lcom/google/android/gms/internal/ads/zzawc;Lcom/google/android/gms/internal/ads/qp1;Lcom/google/android/gms/internal/ads/ae1;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/ads/jx0;->F6(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/qp1;Lcom/google/android/gms/internal/ads/jd;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzduy;->x:Lcom/google/android/gms/internal/ads/zzduy;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/rz1;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/ip1;->b(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/rz1;)Lcom/google/android/gms/internal/ads/zo1;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/bx0;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/internal/ads/bx0;-><init>(Lcom/google/android/gms/internal/ads/jx0;Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/rz1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zo1;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/hp1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/hp1;->i()Lcom/google/android/gms/internal/ads/wo1;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Caching is disabled."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/kz1;->b(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    return-object p1
.end method

.method public final B6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/f5;->a:Lcom/google/android/gms/internal/ads/p4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p4;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Split request is disabled."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/kz1;->b(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/ex0;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ex0;-><init>(Lcom/google/android/gms/internal/ads/jx0;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jx0;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/gx0;

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/Exception;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "URL to be removed not found for cache key: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/kz1;->b(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/kz1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    return-object p1
.end method

.method public final C6(Lcom/google/android/gms/internal/ads/zzawc;I)Lcom/google/android/gms/internal/ads/rz1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzawc;",
            "I)",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->q()Lcom/google/android/gms/internal/ads/zc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jx0;->b:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbq;->a()Lcom/google/android/gms/internal/ads/zzbbq;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zc;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbq;)Lcom/google/android/gms/internal/ads/jd;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/k5;->a:Lcom/google/android/gms/internal/ads/p4;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/p4;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Signal collection disabled."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/kz1;->b(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jx0;->e:Lcom/google/android/gms/internal/ads/ty;

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/ty;->a(Lcom/google/android/gms/internal/ads/zzawc;I)Lcom/google/android/gms/internal/ads/ae1;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/ae1;->b()Lcom/google/android/gms/internal/ads/ld1;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/gd;->b:Lcom/google/android/gms/internal/ads/cd;

    sget-object v3, Lcom/google/android/gms/internal/ads/gd;->c:Lcom/google/android/gms/internal/ads/ad;

    const-string v4, "google.afma.request.getSignals"

    invoke-virtual {v0, v4, v2, v3}, Lcom/google/android/gms/internal/ads/jd;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/bd;Lcom/google/android/gms/internal/ads/ad;)Lcom/google/android/gms/internal/ads/yc;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/ae1;->c()Lcom/google/android/gms/internal/ads/qp1;

    move-result-object p2

    sget-object v2, Lcom/google/android/gms/internal/ads/zzduy;->k:Lcom/google/android/gms/internal/ads/zzduy;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzawc;->b:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/kz1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lcom/google/android/gms/internal/ads/ip1;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/rz1;)Lcom/google/android/gms/internal/ads/hp1;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/cx0;

    invoke-direct {p2, v1}, Lcom/google/android/gms/internal/ads/cx0;-><init>(Lcom/google/android/gms/internal/ads/ld1;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/hp1;->c(Lcom/google/android/gms/internal/ads/uy1;)Lcom/google/android/gms/internal/ads/hp1;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzduy;->l:Lcom/google/android/gms/internal/ads/zzduy;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/hp1;->j(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/hp1;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/hp1;->c(Lcom/google/android/gms/internal/ads/uy1;)Lcom/google/android/gms/internal/ads/hp1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/hp1;->i()Lcom/google/android/gms/internal/ads/wo1;

    move-result-object p1

    return-object p1
.end method

.method final synthetic D6(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/rz1;)Ljava/io/InputStream;
    .locals 3

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/mj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jx0;->f:Ljava/util/HashMap;

    new-instance v2, Lcom/google/android/gms/internal/ads/gx0;

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/mj;

    invoke-direct {v2, p1, p2}, Lcom/google/android/gms/internal/ads/gx0;-><init>(Lcom/google/android/gms/internal/ads/mj;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/io/ByteArrayInputStream;

    sget-object p2, Lcom/google/android/gms/internal/ads/cw1;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p1
.end method

.method public final J5(Lcom/google/android/gms/internal/ads/zzawc;Lcom/google/android/gms/internal/ads/gj;)V
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/jx0;->z6(Lcom/google/android/gms/internal/ads/zzawc;I)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/jx0;->G6(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/gj;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/ax0;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/ax0;-><init>(Lcom/google/android/gms/internal/ads/jx0;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jx0;->c:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/rz1;->e(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final K2(Lcom/google/android/gms/internal/ads/zzawc;Lcom/google/android/gms/internal/ads/gj;)V
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/jx0;->A6(Lcom/google/android/gms/internal/ads/zzawc;I)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/jx0;->G6(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/gj;)V

    return-void
.end method

.method public final R2(Ljava/lang/String;Lcom/google/android/gms/internal/ads/gj;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/jx0;->B6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/jx0;->G6(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/gj;)V

    return-void
.end method

.method final synthetic j()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jx0;->d:Lcom/google/android/gms/internal/ads/uj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uj;->a()Lcom/google/android/gms/internal/ads/rz1;

    move-result-object v0

    const-string v1, "persistFlags"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cp;->a(Lcom/google/android/gms/internal/ads/rz1;Ljava/lang/String;)V

    return-void
.end method

.method public final x1(Lcom/google/android/gms/internal/ads/zzawc;Lcom/google/android/gms/internal/ads/gj;)V
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/jx0;->C6(Lcom/google/android/gms/internal/ads/zzawc;I)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/jx0;->G6(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/gj;)V

    return-void
.end method

.method public final z6(Lcom/google/android/gms/internal/ads/zzawc;I)Lcom/google/android/gms/internal/ads/rz1;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzawc;",
            "I)",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->q()Lcom/google/android/gms/internal/ads/zc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jx0;->b:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbq;->a()Lcom/google/android/gms/internal/ads/zzbbq;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zc;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbq;)Lcom/google/android/gms/internal/ads/jd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jx0;->e:Lcom/google/android/gms/internal/ads/ty;

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/ty;->a(Lcom/google/android/gms/internal/ads/zzawc;I)Lcom/google/android/gms/internal/ads/ae1;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/ix0;->d:Lcom/google/android/gms/internal/ads/bd;

    sget-object v3, Lcom/google/android/gms/internal/ads/gd;->c:Lcom/google/android/gms/internal/ads/ad;

    const-string v4, "google.afma.response.normalize"

    invoke-virtual {v0, v4, v2, v3}, Lcom/google/android/gms/internal/ads/jd;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/bd;Lcom/google/android/gms/internal/ads/ad;)Lcom/google/android/gms/internal/ads/yc;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/qx0;

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzawc;->h:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/qx0;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/jx0;->b:Landroid/content/Context;

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzawc;->c:Lcom/google/android/gms/internal/ads/zzbbq;

    iget-object v7, v4, Lcom/google/android/gms/internal/ads/zzbbq;->b:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/jx0;->g:Lcom/google/android/gms/internal/ads/vj;

    new-instance v4, Lcom/google/android/gms/internal/ads/nx0;

    const/4 v10, 0x0

    move-object v5, v4

    move v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/nx0;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/vj;I[B)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ae1;->c()Lcom/google/android/gms/internal/ads/qp1;

    move-result-object p2

    sget-object v5, Lcom/google/android/gms/internal/ads/f5;->a:Lcom/google/android/gms/internal/ads/p4;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/p4;->e()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzawc;->k:Ljava/lang/String;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "Request contained a PoolKey but split request is disabled."

    :goto_0
    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/y0;->k(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzawc;->k:Ljava/lang/String;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/jx0;->f:Ljava/util/HashMap;

    iget-object v7, p1, Lcom/google/android/gms/internal/ads/zzawc;->k:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/gx0;

    if-nez v5, :cond_1

    const-string v5, "Request contained a PoolKey but no matching parameters were found."

    goto :goto_0

    :cond_1
    move-object v6, v5

    :cond_2
    :goto_1
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-nez v6, :cond_3

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/internal/ads/jx0;->E6(Lcom/google/android/gms/internal/ads/zzawc;Lcom/google/android/gms/internal/ads/qp1;Lcom/google/android/gms/internal/ads/ae1;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/jx0;->F6(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/qp1;Lcom/google/android/gms/internal/ads/jd;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzduy;->i:Lcom/google/android/gms/internal/ads/zzduy;

    new-array v6, v8, [Lcom/google/android/gms/internal/ads/rz1;

    aput-object v0, v6, v7

    aput-object p1, v6, v5

    invoke-virtual {p2, v1, v6}, Lcom/google/android/gms/internal/ads/ip1;->b(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/rz1;)Lcom/google/android/gms/internal/ads/zo1;

    move-result-object v1

    new-instance v6, Lcom/google/android/gms/internal/ads/uw0;

    invoke-direct {v6, p1, v0}, Lcom/google/android/gms/internal/ads/uw0;-><init>(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/rz1;)V

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zo1;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/hp1;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/hp1;->b(Lcom/google/android/gms/internal/ads/uo1;)Lcom/google/android/gms/internal/ads/hp1;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/hp1;->b(Lcom/google/android/gms/internal/ads/uo1;)Lcom/google/android/gms/internal/ads/hp1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/hp1;->i()Lcom/google/android/gms/internal/ads/wo1;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzduy;->j:Lcom/google/android/gms/internal/ads/zzduy;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/google/android/gms/internal/ads/rz1;

    aput-object p1, v4, v7

    aput-object v0, v4, v5

    aput-object v1, v4, v8

    invoke-virtual {p2, v3, v4}, Lcom/google/android/gms/internal/ads/ip1;->b(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/rz1;)Lcom/google/android/gms/internal/ads/zo1;

    move-result-object p2

    new-instance v3, Lcom/google/android/gms/internal/ads/vw0;

    invoke-direct {v3, v1, p1, v0}, Lcom/google/android/gms/internal/ads/vw0;-><init>(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/rz1;)V

    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/ads/zo1;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/hp1;

    move-result-object p1

    :goto_2
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/hp1;->c(Lcom/google/android/gms/internal/ads/uy1;)Lcom/google/android/gms/internal/ads/hp1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/hp1;->i()Lcom/google/android/gms/internal/ads/wo1;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/ads/px0;

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/gx0;->b:Lorg/json/JSONObject;

    iget-object v1, v6, Lcom/google/android/gms/internal/ads/gx0;->a:Lcom/google/android/gms/internal/ads/mj;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/px0;-><init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/mj;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzduy;->i:Lcom/google/android/gms/internal/ads/zzduy;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/kz1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/ads/ip1;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/rz1;)Lcom/google/android/gms/internal/ads/hp1;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/hp1;->b(Lcom/google/android/gms/internal/ads/uo1;)Lcom/google/android/gms/internal/ads/hp1;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/hp1;->b(Lcom/google/android/gms/internal/ads/uo1;)Lcom/google/android/gms/internal/ads/hp1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/hp1;->i()Lcom/google/android/gms/internal/ads/wo1;

    move-result-object p1

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/kz1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzduy;->j:Lcom/google/android/gms/internal/ads/zzduy;

    new-array v3, v8, [Lcom/google/android/gms/internal/ads/rz1;

    aput-object p1, v3, v7

    aput-object v0, v3, v5

    invoke-virtual {p2, v1, v3}, Lcom/google/android/gms/internal/ads/ip1;->b(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/rz1;)Lcom/google/android/gms/internal/ads/zo1;

    move-result-object p2

    new-instance v1, Lcom/google/android/gms/internal/ads/ww0;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/ww0;-><init>(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/rz1;)V

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zo1;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/hp1;

    move-result-object p1

    goto :goto_2
.end method
