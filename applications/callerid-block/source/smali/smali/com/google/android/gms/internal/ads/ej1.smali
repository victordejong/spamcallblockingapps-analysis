.class public final Lcom/google/android/gms/internal/ads/ej1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/v71;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/v71<",
        "Lcom/google/android/gms/internal/ads/lf0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/google/android/gms/internal/ads/fv;

.field private final d:Lcom/google/android/gms/internal/ads/f71;

.field private final e:Lcom/google/android/gms/internal/ads/dk1;

.field private f:Lcom/google/android/gms/internal/ads/i4;

.field private final g:Lcom/google/android/gms/internal/ads/rl1;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private h:Lcom/google/android/gms/internal/ads/rz1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/rz1<",
            "Lcom/google/android/gms/internal/ads/lf0;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/fv;Lcom/google/android/gms/internal/ads/f71;Lcom/google/android/gms/internal/ads/dk1;Lcom/google/android/gms/internal/ads/rl1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ej1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ej1;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ej1;->c:Lcom/google/android/gms/internal/ads/fv;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ej1;->d:Lcom/google/android/gms/internal/ads/f71;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/ej1;->g:Lcom/google/android/gms/internal/ads/rl1;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/ej1;->e:Lcom/google/android/gms/internal/ads/dk1;

    return-void
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/ej1;Lcom/google/android/gms/internal/ads/rz1;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ej1;->h:Lcom/google/android/gms/internal/ads/rz1;

    return-object p1
.end method

.method static synthetic f(Lcom/google/android/gms/internal/ads/ej1;)Lcom/google/android/gms/internal/ads/dk1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ej1;->e:Lcom/google/android/gms/internal/ads/dk1;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/ads/ej1;)Lcom/google/android/gms/internal/ads/f71;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ej1;->d:Lcom/google/android/gms/internal/ads/f71;

    return-object p0
.end method

.method static synthetic h(Lcom/google/android/gms/internal/ads/ej1;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ej1;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzys;Ljava/lang/String;Lcom/google/android/gms/internal/ads/t71;Lcom/google/android/gms/internal/ads/u71;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzys;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/t71;",
            "Lcom/google/android/gms/internal/ads/u71<",
            "-",
            "Lcom/google/android/gms/internal/ads/lf0;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string p1, "Ad unit ID should not be null for interstitial ad."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ej1;->b:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/google/android/gms/internal/ads/yi1;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/yi1;-><init>(Lcom/google/android/gms/internal/ads/ej1;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ej1;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->m5:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzys;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ej1;->c:Lcom/google/android/gms/internal/ads/fv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fv;->B()Lcom/google/android/gms/internal/ads/zt0;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zt0;->b(Z)V

    :cond_2
    check-cast p3, Lcom/google/android/gms/internal/ads/xi1;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/xi1;->a:Lcom/google/android/gms/internal/ads/zzyx;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ej1;->g:Lcom/google/android/gms/internal/ads/rl1;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/rl1;->u(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/rl1;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/rl1;->r(Lcom/google/android/gms/internal/ads/zzyx;)Lcom/google/android/gms/internal/ads/rl1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/rl1;->p(Lcom/google/android/gms/internal/ads/zzys;)Lcom/google/android/gms/internal/ads/rl1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/rl1;->J()Lcom/google/android/gms/internal/ads/sl1;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/m3;->N4:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ej1;->c:Lcom/google/android/gms/internal/ads/fv;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/fv;->s()Lcom/google/android/gms/internal/ads/ig0;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/internal/ads/c70;

    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/c70;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ej1;->a:Landroid/content/Context;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/ads/c70;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/c70;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/c70;->b(Lcom/google/android/gms/internal/ads/sl1;)Lcom/google/android/gms/internal/ads/c70;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/c70;->d()Lcom/google/android/gms/internal/ads/d70;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/ig0;->c(Lcom/google/android/gms/internal/ads/d70;)Lcom/google/android/gms/internal/ads/ig0;

    new-instance p1, Lcom/google/android/gms/internal/ads/vc0;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/vc0;-><init>()V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/ej1;->d:Lcom/google/android/gms/internal/ads/f71;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ej1;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p3, v0}, Lcom/google/android/gms/internal/ads/vc0;->m(Lcom/google/android/gms/internal/ads/la0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/vc0;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/ej1;->d:Lcom/google/android/gms/internal/ads/f71;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ej1;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p3, v0}, Lcom/google/android/gms/internal/ads/vc0;->f(Lcom/google/android/gms/internal/ads/pk2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/vc0;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vc0;->n()Lcom/google/android/gms/internal/ads/wc0;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/ig0;->u(Lcom/google/android/gms/internal/ads/wc0;)Lcom/google/android/gms/internal/ads/ig0;

    new-instance p1, Lcom/google/android/gms/internal/ads/o51;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/ej1;->f:Lcom/google/android/gms/internal/ads/i4;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/o51;-><init>(Lcom/google/android/gms/internal/ads/i4;)V

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/ig0;->p(Lcom/google/android/gms/internal/ads/o51;)Lcom/google/android/gms/internal/ads/ig0;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ig0;->zza()Lcom/google/android/gms/internal/ads/jg0;

    move-result-object p1

    goto/16 :goto_0

    :cond_3
    new-instance p2, Lcom/google/android/gms/internal/ads/vc0;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/vc0;-><init>()V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/ej1;->e:Lcom/google/android/gms/internal/ads/dk1;

    if-eqz p3, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ej1;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, p3, v0}, Lcom/google/android/gms/internal/ads/vc0;->b(Lcom/google/android/gms/internal/ads/s70;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/vc0;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/ej1;->e:Lcom/google/android/gms/internal/ads/dk1;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ej1;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, p3, v0}, Lcom/google/android/gms/internal/ads/vc0;->c(Lcom/google/android/gms/internal/ads/f90;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/vc0;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/ej1;->e:Lcom/google/android/gms/internal/ads/dk1;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ej1;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, p3, v0}, Lcom/google/android/gms/internal/ads/vc0;->d(Lcom/google/android/gms/internal/ads/v70;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/vc0;

    :cond_4
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/ej1;->c:Lcom/google/android/gms/internal/ads/fv;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/fv;->s()Lcom/google/android/gms/internal/ads/ig0;

    move-result-object p3

    new-instance v0, Lcom/google/android/gms/internal/ads/c70;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/c70;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ej1;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/c70;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/c70;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/c70;->b(Lcom/google/android/gms/internal/ads/sl1;)Lcom/google/android/gms/internal/ads/c70;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/c70;->d()Lcom/google/android/gms/internal/ads/d70;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/ig0;->c(Lcom/google/android/gms/internal/ads/d70;)Lcom/google/android/gms/internal/ads/ig0;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ej1;->d:Lcom/google/android/gms/internal/ads/f71;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ej1;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/vc0;->m(Lcom/google/android/gms/internal/ads/la0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/vc0;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ej1;->d:Lcom/google/android/gms/internal/ads/f71;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ej1;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/vc0;->b(Lcom/google/android/gms/internal/ads/s70;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/vc0;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ej1;->d:Lcom/google/android/gms/internal/ads/f71;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ej1;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/vc0;->c(Lcom/google/android/gms/internal/ads/f90;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/vc0;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ej1;->d:Lcom/google/android/gms/internal/ads/f71;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ej1;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/vc0;->d(Lcom/google/android/gms/internal/ads/v70;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/vc0;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ej1;->d:Lcom/google/android/gms/internal/ads/f71;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ej1;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/vc0;->g(Lcom/google/android/gms/internal/ads/hz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/vc0;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ej1;->d:Lcom/google/android/gms/internal/ads/f71;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ej1;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/vc0;->f(Lcom/google/android/gms/internal/ads/pk2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/vc0;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ej1;->d:Lcom/google/android/gms/internal/ads/f71;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ej1;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/vc0;->k(Lcom/google/android/gms/internal/ads/ca0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/vc0;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ej1;->d:Lcom/google/android/gms/internal/ads/f71;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ej1;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/vc0;->e(Lcom/google/android/gms/internal/ads/g80;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/vc0;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/vc0;->n()Lcom/google/android/gms/internal/ads/wc0;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/ig0;->u(Lcom/google/android/gms/internal/ads/wc0;)Lcom/google/android/gms/internal/ads/ig0;

    new-instance p1, Lcom/google/android/gms/internal/ads/o51;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ej1;->f:Lcom/google/android/gms/internal/ads/i4;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/o51;-><init>(Lcom/google/android/gms/internal/ads/i4;)V

    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/ig0;->p(Lcom/google/android/gms/internal/ads/o51;)Lcom/google/android/gms/internal/ads/ig0;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/ig0;->zza()Lcom/google/android/gms/internal/ads/jg0;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/jg0;->b()Lcom/google/android/gms/internal/ads/y40;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/y40;->b()Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/y40;->c(Lcom/google/android/gms/internal/ads/rz1;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ej1;->h:Lcom/google/android/gms/internal/ads/rz1;

    new-instance p3, Lcom/google/android/gms/internal/ads/dj1;

    invoke-direct {p3, p0, p4, p1}, Lcom/google/android/gms/internal/ads/dj1;-><init>(Lcom/google/android/gms/internal/ads/ej1;Lcom/google/android/gms/internal/ads/u71;Lcom/google/android/gms/internal/ads/jg0;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ej1;->b:Ljava/util/concurrent/Executor;

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/kz1;->o(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/gz1;Ljava/util/concurrent/Executor;)V

    return v1
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ej1;->h:Lcom/google/android/gms/internal/ads/rz1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c(Lcom/google/android/gms/internal/ads/i4;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ej1;->f:Lcom/google/android/gms/internal/ads/i4;

    return-void
.end method

.method final synthetic d()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ej1;->d:Lcom/google/android/gms/internal/ads/f71;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/google/android/gms/internal/ads/nm1;->d(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzym;)Lcom/google/android/gms/internal/ads/zzym;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/f71;->f0(Lcom/google/android/gms/internal/ads/zzym;)V

    return-void
.end method
