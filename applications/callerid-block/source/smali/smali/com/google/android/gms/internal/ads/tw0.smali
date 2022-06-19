.class public final Lcom/google/android/gms/internal/ads/tw0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/sz1;

.field private final b:Lcom/google/android/gms/internal/ads/dw0;

.field private final c:Lcom/google/android/gms/internal/ads/yg2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/yg2<",
            "Lcom/google/android/gms/internal/ads/jx0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/sz1;Lcom/google/android/gms/internal/ads/dw0;Lcom/google/android/gms/internal/ads/yg2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/sz1;",
            "Lcom/google/android/gms/internal/ads/dw0;",
            "Lcom/google/android/gms/internal/ads/yg2<",
            "Lcom/google/android/gms/internal/ads/jx0;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tw0;->a:Lcom/google/android/gms/internal/ads/sz1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/tw0;->b:Lcom/google/android/gms/internal/ads/dw0;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/tw0;->c:Lcom/google/android/gms/internal/ads/yg2;

    return-void
.end method

.method private final g(Lcom/google/android/gms/internal/ads/zzawc;Lcom/google/android/gms/internal/ads/sw0;Lcom/google/android/gms/internal/ads/sw0;Lcom/google/android/gms/internal/ads/uy1;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RetT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzawc;",
            "Lcom/google/android/gms/internal/ads/sw0<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/android/gms/internal/ads/sw0<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/android/gms/internal/ads/uy1<",
            "Ljava/io/InputStream;",
            "TRetT;>;)",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "TRetT;>;"
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzawc;->e:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->d()Lcom/google/android/gms/ads/internal/util/l1;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/l1;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcsk;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzcsk;-><init>(I)V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/kz1;->b(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/sw0;->a(Lcom/google/android/gms/internal/ads/zzawc;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p2

    const-class v0, Ljava/util/concurrent/ExecutionException;

    sget-object v1, Lcom/google/android/gms/internal/ads/kw0;->a:Lcom/google/android/gms/internal/ads/uy1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tw0;->a:Lcom/google/android/gms/internal/ads/sz1;

    invoke-static {p2, v0, v1, v2}, Lcom/google/android/gms/internal/ads/kz1;->f(Lcom/google/android/gms/internal/ads/rz1;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/uy1;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p2

    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/bz1;->E(Lcom/google/android/gms/internal/ads/rz1;)Lcom/google/android/gms/internal/ads/bz1;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tw0;->a:Lcom/google/android/gms/internal/ads/sz1;

    invoke-static {p2, p4, v0}, Lcom/google/android/gms/internal/ads/kz1;->h(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/uy1;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/lw0;

    invoke-direct {v0, p0, p3, p1, p4}, Lcom/google/android/gms/internal/ads/lw0;-><init>(Lcom/google/android/gms/internal/ads/tw0;Lcom/google/android/gms/internal/ads/sw0;Lcom/google/android/gms/internal/ads/zzawc;Lcom/google/android/gms/internal/ads/uy1;)V

    const-class p1, Lcom/google/android/gms/internal/ads/zzcsk;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/tw0;->a:Lcom/google/android/gms/internal/ads/sz1;

    invoke-static {p2, p1, v0, p3}, Lcom/google/android/gms/internal/ads/kz1;->f(Lcom/google/android/gms/internal/ads/rz1;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/uy1;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzawc;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzawc;",
            ")",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "Lcom/google/android/gms/internal/ads/zzawc;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/mw0;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/mw0;-><init>(Lcom/google/android/gms/internal/ads/zzawc;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tw0;->b:Lcom/google/android/gms/internal/ads/dw0;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/nw0;->b(Lcom/google/android/gms/internal/ads/dw0;)Lcom/google/android/gms/internal/ads/sw0;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/ow0;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/ow0;-><init>(Lcom/google/android/gms/internal/ads/tw0;)V

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/google/android/gms/internal/ads/tw0;->g(Lcom/google/android/gms/internal/ads/zzawc;Lcom/google/android/gms/internal/ads/sw0;Lcom/google/android/gms/internal/ads/sw0;Lcom/google/android/gms/internal/ads/uy1;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzawc;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzawc;",
            ")",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzawc;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/vi2;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcql;

    const/4 v0, 0x2

    const-string v1, "Pool key missing from removeUrl call."

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcql;-><init>(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/kz1;->b(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/pw0;->a:Lcom/google/android/gms/internal/ads/uy1;

    new-instance v1, Lcom/google/android/gms/internal/ads/qw0;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/qw0;-><init>(Lcom/google/android/gms/internal/ads/tw0;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/rw0;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/rw0;-><init>(Lcom/google/android/gms/internal/ads/tw0;)V

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/google/android/gms/internal/ads/tw0;->g(Lcom/google/android/gms/internal/ads/zzawc;Lcom/google/android/gms/internal/ads/sw0;Lcom/google/android/gms/internal/ads/sw0;Lcom/google/android/gms/internal/ads/uy1;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    return-object p1
.end method

.method final synthetic c(Lcom/google/android/gms/internal/ads/zzawc;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tw0;->c:Lcom/google/android/gms/internal/ads/yg2;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/yg2;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/jx0;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzawc;->k:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/jx0;->B6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    return-object p1
.end method

.method final synthetic d(Lcom/google/android/gms/internal/ads/zzawc;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tw0;->b:Lcom/google/android/gms/internal/ads/dw0;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzawc;->k:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dw0;->f(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    return-object p1
.end method

.method final synthetic e(Lcom/google/android/gms/internal/ads/zzawc;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tw0;->c:Lcom/google/android/gms/internal/ads/yg2;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/yg2;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/jx0;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/jx0;->A6(Lcom/google/android/gms/internal/ads/zzawc;I)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    return-object p1
.end method

.method final synthetic f(Lcom/google/android/gms/internal/ads/sw0;Lcom/google/android/gms/internal/ads/zzawc;Lcom/google/android/gms/internal/ads/uy1;Lcom/google/android/gms/internal/ads/zzcsk;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 0

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/sw0;->a(Lcom/google/android/gms/internal/ads/zzawc;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/tw0;->a:Lcom/google/android/gms/internal/ads/sz1;

    invoke-static {p1, p3, p2}, Lcom/google/android/gms/internal/ads/kz1;->h(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/uy1;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    return-object p1
.end method
