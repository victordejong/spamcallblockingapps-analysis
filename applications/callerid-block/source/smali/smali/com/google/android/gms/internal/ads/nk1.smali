.class public final Lcom/google/android/gms/internal/ads/nk1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/v71;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/v71<",
        "Lcom/google/android/gms/internal/ads/un0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/google/android/gms/internal/ads/fv;

.field private final d:Lcom/google/android/gms/internal/ads/dk1;

.field private final e:Lcom/google/android/gms/internal/ads/qi1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/qi1<",
            "Lcom/google/android/gms/internal/ads/ao0;",
            "Lcom/google/android/gms/internal/ads/un0;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/gms/internal/ads/nl1;

.field private final g:Lcom/google/android/gms/internal/ads/rl1;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private h:Lcom/google/android/gms/internal/ads/rz1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/rz1<",
            "Lcom/google/android/gms/internal/ads/un0;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/fv;Lcom/google/android/gms/internal/ads/qi1;Lcom/google/android/gms/internal/ads/dk1;Lcom/google/android/gms/internal/ads/rl1;Lcom/google/android/gms/internal/ads/nl1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/ads/fv;",
            "Lcom/google/android/gms/internal/ads/qi1<",
            "Lcom/google/android/gms/internal/ads/ao0;",
            "Lcom/google/android/gms/internal/ads/un0;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dk1;",
            "Lcom/google/android/gms/internal/ads/rl1;",
            "Lcom/google/android/gms/internal/ads/nl1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nk1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/nk1;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/nk1;->c:Lcom/google/android/gms/internal/ads/fv;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/nk1;->e:Lcom/google/android/gms/internal/ads/qi1;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/nk1;->d:Lcom/google/android/gms/internal/ads/dk1;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/nk1;->g:Lcom/google/android/gms/internal/ads/rl1;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/nk1;->f:Lcom/google/android/gms/internal/ads/nl1;

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/nk1;)Lcom/google/android/gms/internal/ads/dk1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/nk1;->d:Lcom/google/android/gms/internal/ads/dk1;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/nk1;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/nk1;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/ads/nk1;)Lcom/google/android/gms/internal/ads/qi1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/nk1;->e:Lcom/google/android/gms/internal/ads/qi1;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/ads/nk1;Lcom/google/android/gms/internal/ads/oi1;)Lcom/google/android/gms/internal/ads/zn0;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/nk1;->j(Lcom/google/android/gms/internal/ads/oi1;)Lcom/google/android/gms/internal/ads/zn0;

    move-result-object p0

    return-object p0
.end method

.method private final j(Lcom/google/android/gms/internal/ads/oi1;)Lcom/google/android/gms/internal/ads/zn0;
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/ads/mk1;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nk1;->c:Lcom/google/android/gms/internal/ads/fv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fv;->v()Lcom/google/android/gms/internal/ads/zn0;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/c70;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/c70;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/nk1;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/c70;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/c70;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/mk1;->a:Lcom/google/android/gms/internal/ads/sl1;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/c70;->b(Lcom/google/android/gms/internal/ads/sl1;)Lcom/google/android/gms/internal/ads/c70;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/mk1;->b:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nk1;->f:Lcom/google/android/gms/internal/ads/nl1;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/c70;->e(Lcom/google/android/gms/internal/ads/nl1;)Lcom/google/android/gms/internal/ads/c70;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/c70;->d()Lcom/google/android/gms/internal/ads/d70;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zn0;->h(Lcom/google/android/gms/internal/ads/d70;)Lcom/google/android/gms/internal/ads/zn0;

    new-instance p1, Lcom/google/android/gms/internal/ads/vc0;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/vc0;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vc0;->n()Lcom/google/android/gms/internal/ads/wc0;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zn0;->j(Lcom/google/android/gms/internal/ads/wc0;)Lcom/google/android/gms/internal/ads/zn0;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzys;Ljava/lang/String;Lcom/google/android/gms/internal/ads/t71;Lcom/google/android/gms/internal/ads/u71;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzys;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/t71;",
            "Lcom/google/android/gms/internal/ads/u71<",
            "-",
            "Lcom/google/android/gms/internal/ads/un0;",
            ">;)Z"
        }
    .end annotation

    new-instance p3, Lcom/google/android/gms/internal/ads/zzawz;

    invoke-direct {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzawz;-><init>(Lcom/google/android/gms/internal/ads/zzys;Ljava/lang/String;)V

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzawz;->c:Ljava/lang/String;

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "Ad unit ID should not be null for rewarded video ad."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nk1;->b:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/google/android/gms/internal/ads/gk1;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/gk1;-><init>(Lcom/google/android/gms/internal/ads/nk1;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nk1;->h:Lcom/google/android/gms/internal/ads/rz1;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nk1;->a:Landroid/content/Context;

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzawz;->b:Lcom/google/android/gms/internal/ads/zzys;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzys;->g:Z

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/hm1;->b(Landroid/content/Context;Z)V

    sget-object p1, Lcom/google/android/gms/internal/ads/m3;->m5:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzawz;->b:Lcom/google/android/gms/internal/ads/zzys;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzys;->g:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nk1;->c:Lcom/google/android/gms/internal/ads/fv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/fv;->B()Lcom/google/android/gms/internal/ads/zt0;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zt0;->b(Z)V

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nk1;->g:Lcom/google/android/gms/internal/ads/rl1;

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzawz;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/rl1;->u(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/rl1;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyx;->x()Lcom/google/android/gms/internal/ads/zzyx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/rl1;->r(Lcom/google/android/gms/internal/ads/zzyx;)Lcom/google/android/gms/internal/ads/rl1;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzawz;->b:Lcom/google/android/gms/internal/ads/zzys;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/rl1;->p(Lcom/google/android/gms/internal/ads/zzys;)Lcom/google/android/gms/internal/ads/rl1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/rl1;->J()Lcom/google/android/gms/internal/ads/sl1;

    move-result-object p1

    new-instance p3, Lcom/google/android/gms/internal/ads/mk1;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lcom/google/android/gms/internal/ads/mk1;-><init>(Lcom/google/android/gms/internal/ads/kk1;)V

    iput-object p1, p3, Lcom/google/android/gms/internal/ads/mk1;->a:Lcom/google/android/gms/internal/ads/sl1;

    iput-object v0, p3, Lcom/google/android/gms/internal/ads/mk1;->b:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nk1;->e:Lcom/google/android/gms/internal/ads/qi1;

    new-instance v1, Lcom/google/android/gms/internal/ads/ri1;

    invoke-direct {v1, p3, v0}, Lcom/google/android/gms/internal/ads/ri1;-><init>(Lcom/google/android/gms/internal/ads/oi1;Lcom/google/android/gms/internal/ads/zzawc;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/hk1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/hk1;-><init>(Lcom/google/android/gms/internal/ads/nk1;)V

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/qi1;->a(Lcom/google/android/gms/internal/ads/ri1;Lcom/google/android/gms/internal/ads/pi1;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nk1;->h:Lcom/google/android/gms/internal/ads/rz1;

    new-instance v0, Lcom/google/android/gms/internal/ads/kk1;

    invoke-direct {v0, p0, p4, p3}, Lcom/google/android/gms/internal/ads/kk1;-><init>(Lcom/google/android/gms/internal/ads/nk1;Lcom/google/android/gms/internal/ads/u71;Lcom/google/android/gms/internal/ads/mk1;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/nk1;->b:Ljava/util/concurrent/Executor;

    invoke-static {p1, v0, p3}, Lcom/google/android/gms/internal/ads/kz1;->o(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/gz1;Ljava/util/concurrent/Executor;)V

    :goto_1
    return p2
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method final synthetic c()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nk1;->d:Lcom/google/android/gms/internal/ads/dk1;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/google/android/gms/internal/ads/nm1;->d(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzym;)Lcom/google/android/gms/internal/ads/zzym;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dk1;->f0(Lcom/google/android/gms/internal/ads/zzym;)V

    return-void
.end method

.method final bridge synthetic h(Lcom/google/android/gms/internal/ads/oi1;)Lcom/google/android/gms/internal/ads/zn0;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/nk1;->j(Lcom/google/android/gms/internal/ads/oi1;)Lcom/google/android/gms/internal/ads/zn0;

    move-result-object p1

    return-object p1
.end method

.method final i(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nk1;->g:Lcom/google/android/gms/internal/ads/rl1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/rl1;->x()Lcom/google/android/gms/internal/ads/gl1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/gl1;->a(I)Lcom/google/android/gms/internal/ads/gl1;

    return-void
.end method
