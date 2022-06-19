.class public final Lcom/google/android/gms/internal/ads/kh1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/v71;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/v71<",
        "Lcom/google/android/gms/internal/ads/u10;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/google/android/gms/internal/ads/fv;

.field private final d:Lcom/google/android/gms/internal/ads/f71;

.field private final e:Lcom/google/android/gms/internal/ads/j71;

.field private final f:Landroid/view/ViewGroup;

.field private g:Lcom/google/android/gms/internal/ads/i4;

.field private final h:Lcom/google/android/gms/internal/ads/ga0;

.field private final i:Lcom/google/android/gms/internal/ads/rl1;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private j:Lcom/google/android/gms/internal/ads/rz1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/rz1<",
            "Lcom/google/android/gms/internal/ads/u10;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzyx;Lcom/google/android/gms/internal/ads/fv;Lcom/google/android/gms/internal/ads/f71;Lcom/google/android/gms/internal/ads/j71;Lcom/google/android/gms/internal/ads/rl1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kh1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/kh1;->b:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/kh1;->c:Lcom/google/android/gms/internal/ads/fv;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/kh1;->d:Lcom/google/android/gms/internal/ads/f71;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/kh1;->e:Lcom/google/android/gms/internal/ads/j71;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/kh1;->i:Lcom/google/android/gms/internal/ads/rl1;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/fv;->k()Lcom/google/android/gms/internal/ads/ga0;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/kh1;->h:Lcom/google/android/gms/internal/ads/ga0;

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/kh1;->f:Landroid/view/ViewGroup;

    invoke-virtual {p7, p3}, Lcom/google/android/gms/internal/ads/rl1;->r(Lcom/google/android/gms/internal/ads/zzyx;)Lcom/google/android/gms/internal/ads/rl1;

    return-void
.end method

.method static synthetic k(Lcom/google/android/gms/internal/ads/kh1;Lcom/google/android/gms/internal/ads/rz1;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kh1;->j:Lcom/google/android/gms/internal/ads/rz1;

    return-object p1
.end method

.method static synthetic l(Lcom/google/android/gms/internal/ads/kh1;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/kh1;->f:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic m(Lcom/google/android/gms/internal/ads/kh1;)Lcom/google/android/gms/internal/ads/j71;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/kh1;->e:Lcom/google/android/gms/internal/ads/j71;

    return-object p0
.end method

.method static synthetic n(Lcom/google/android/gms/internal/ads/kh1;)Lcom/google/android/gms/internal/ads/f71;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/kh1;->d:Lcom/google/android/gms/internal/ads/f71;

    return-object p0
.end method

.method static synthetic o(Lcom/google/android/gms/internal/ads/kh1;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/kh1;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic p(Lcom/google/android/gms/internal/ads/kh1;)Lcom/google/android/gms/internal/ads/ga0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/kh1;->h:Lcom/google/android/gms/internal/ads/ga0;

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
            "Lcom/google/android/gms/internal/ads/u10;",
            ">;)Z"
        }
    .end annotation

    const/4 p3, 0x0

    if-nez p2, :cond_0

    const-string p1, "Ad unit ID should not be null for banner ad."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/kh1;->b:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/google/android/gms/internal/ads/gh1;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/gh1;-><init>(Lcom/google/android/gms/internal/ads/kh1;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return p3

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/kh1;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    return p3

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kh1;->c:Lcom/google/android/gms/internal/ads/fv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fv;->B()Lcom/google/android/gms/internal/ads/zt0;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zt0;->b(Z)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kh1;->i:Lcom/google/android/gms/internal/ads/rl1;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/rl1;->u(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/rl1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/rl1;->p(Lcom/google/android/gms/internal/ads/zzys;)Lcom/google/android/gms/internal/ads/rl1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/rl1;->J()Lcom/google/android/gms/internal/ads/sl1;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/e5;->b:Lcom/google/android/gms/internal/ads/p4;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/p4;->e()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/kh1;->i:Lcom/google/android/gms/internal/ads/rl1;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/rl1;->t()Lcom/google/android/gms/internal/ads/zzyx;

    move-result-object p2

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzyx;->l:Z

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/kh1;->d:Lcom/google/android/gms/internal/ads/f71;

    if-eqz p1, :cond_3

    const/4 p2, 0x7

    invoke-static {p2, v0, v0}, Lcom/google/android/gms/internal/ads/nm1;->d(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzym;)Lcom/google/android/gms/internal/ads/zzym;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/f71;->f0(Lcom/google/android/gms/internal/ads/zzym;)V

    :cond_3
    return p3

    :cond_4
    sget-object p2, Lcom/google/android/gms/internal/ads/m3;->L4:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/kh1;->c:Lcom/google/android/gms/internal/ads/fv;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/fv;->n()Lcom/google/android/gms/internal/ads/r20;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/internal/ads/c70;

    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/c70;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kh1;->a:Landroid/content/Context;

    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/ads/c70;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/c70;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/c70;->b(Lcom/google/android/gms/internal/ads/sl1;)Lcom/google/android/gms/internal/ads/c70;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/c70;->d()Lcom/google/android/gms/internal/ads/d70;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/r20;->g(Lcom/google/android/gms/internal/ads/d70;)Lcom/google/android/gms/internal/ads/r20;

    new-instance p1, Lcom/google/android/gms/internal/ads/vc0;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/vc0;-><init>()V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/kh1;->d:Lcom/google/android/gms/internal/ads/f71;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kh1;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p3, v2}, Lcom/google/android/gms/internal/ads/vc0;->m(Lcom/google/android/gms/internal/ads/la0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/vc0;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/kh1;->d:Lcom/google/android/gms/internal/ads/f71;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kh1;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p3, v2}, Lcom/google/android/gms/internal/ads/vc0;->f(Lcom/google/android/gms/internal/ads/pk2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/vc0;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vc0;->n()Lcom/google/android/gms/internal/ads/wc0;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/r20;->e(Lcom/google/android/gms/internal/ads/wc0;)Lcom/google/android/gms/internal/ads/r20;

    new-instance p1, Lcom/google/android/gms/internal/ads/o51;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/kh1;->g:Lcom/google/android/gms/internal/ads/i4;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/o51;-><init>(Lcom/google/android/gms/internal/ads/i4;)V

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/r20;->t(Lcom/google/android/gms/internal/ads/o51;)Lcom/google/android/gms/internal/ads/r20;

    new-instance p1, Lcom/google/android/gms/internal/ads/ah0;

    sget-object p3, Lcom/google/android/gms/internal/ads/ej0;->h:Lcom/google/android/gms/internal/ads/ej0;

    invoke-direct {p1, p3, v0}, Lcom/google/android/gms/internal/ads/ah0;-><init>(Lcom/google/android/gms/internal/ads/ej0;Lcom/google/android/gms/internal/ads/j;)V

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/r20;->q(Lcom/google/android/gms/internal/ads/ah0;)Lcom/google/android/gms/internal/ads/r20;

    new-instance p1, Lcom/google/android/gms/internal/ads/o30;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/kh1;->h:Lcom/google/android/gms/internal/ads/ga0;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/o30;-><init>(Lcom/google/android/gms/internal/ads/ga0;)V

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/r20;->k(Lcom/google/android/gms/internal/ads/o30;)Lcom/google/android/gms/internal/ads/r20;

    new-instance p1, Lcom/google/android/gms/internal/ads/r10;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/kh1;->f:Landroid/view/ViewGroup;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/r10;-><init>(Landroid/view/ViewGroup;)V

    goto/16 :goto_0

    :cond_5
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/kh1;->c:Lcom/google/android/gms/internal/ads/fv;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/fv;->n()Lcom/google/android/gms/internal/ads/r20;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/internal/ads/c70;

    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/c70;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kh1;->a:Landroid/content/Context;

    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/ads/c70;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/c70;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/c70;->b(Lcom/google/android/gms/internal/ads/sl1;)Lcom/google/android/gms/internal/ads/c70;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/c70;->d()Lcom/google/android/gms/internal/ads/d70;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/r20;->g(Lcom/google/android/gms/internal/ads/d70;)Lcom/google/android/gms/internal/ads/r20;

    new-instance p1, Lcom/google/android/gms/internal/ads/vc0;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/vc0;-><init>()V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/kh1;->d:Lcom/google/android/gms/internal/ads/f71;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kh1;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p3, v2}, Lcom/google/android/gms/internal/ads/vc0;->m(Lcom/google/android/gms/internal/ads/la0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/vc0;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/kh1;->d:Lcom/google/android/gms/internal/ads/f71;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kh1;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p3, v2}, Lcom/google/android/gms/internal/ads/vc0;->g(Lcom/google/android/gms/internal/ads/hz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/vc0;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/kh1;->e:Lcom/google/android/gms/internal/ads/j71;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kh1;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p3, v2}, Lcom/google/android/gms/internal/ads/vc0;->g(Lcom/google/android/gms/internal/ads/hz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/vc0;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/kh1;->d:Lcom/google/android/gms/internal/ads/f71;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kh1;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p3, v2}, Lcom/google/android/gms/internal/ads/vc0;->h(Lcom/google/android/gms/internal/ads/k80;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/vc0;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/kh1;->d:Lcom/google/android/gms/internal/ads/f71;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kh1;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p3, v2}, Lcom/google/android/gms/internal/ads/vc0;->b(Lcom/google/android/gms/internal/ads/s70;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/vc0;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/kh1;->d:Lcom/google/android/gms/internal/ads/f71;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kh1;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p3, v2}, Lcom/google/android/gms/internal/ads/vc0;->c(Lcom/google/android/gms/internal/ads/f90;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/vc0;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/kh1;->d:Lcom/google/android/gms/internal/ads/f71;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kh1;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p3, v2}, Lcom/google/android/gms/internal/ads/vc0;->d(Lcom/google/android/gms/internal/ads/v70;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/vc0;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/kh1;->d:Lcom/google/android/gms/internal/ads/f71;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kh1;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p3, v2}, Lcom/google/android/gms/internal/ads/vc0;->f(Lcom/google/android/gms/internal/ads/pk2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/vc0;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/kh1;->d:Lcom/google/android/gms/internal/ads/f71;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kh1;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p3, v2}, Lcom/google/android/gms/internal/ads/vc0;->k(Lcom/google/android/gms/internal/ads/ca0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/vc0;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vc0;->n()Lcom/google/android/gms/internal/ads/wc0;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/r20;->e(Lcom/google/android/gms/internal/ads/wc0;)Lcom/google/android/gms/internal/ads/r20;

    new-instance p1, Lcom/google/android/gms/internal/ads/o51;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/kh1;->g:Lcom/google/android/gms/internal/ads/i4;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/o51;-><init>(Lcom/google/android/gms/internal/ads/i4;)V

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/r20;->t(Lcom/google/android/gms/internal/ads/o51;)Lcom/google/android/gms/internal/ads/r20;

    new-instance p1, Lcom/google/android/gms/internal/ads/ah0;

    sget-object p3, Lcom/google/android/gms/internal/ads/ej0;->h:Lcom/google/android/gms/internal/ads/ej0;

    invoke-direct {p1, p3, v0}, Lcom/google/android/gms/internal/ads/ah0;-><init>(Lcom/google/android/gms/internal/ads/ej0;Lcom/google/android/gms/internal/ads/j;)V

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/r20;->q(Lcom/google/android/gms/internal/ads/ah0;)Lcom/google/android/gms/internal/ads/r20;

    new-instance p1, Lcom/google/android/gms/internal/ads/o30;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/kh1;->h:Lcom/google/android/gms/internal/ads/ga0;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/o30;-><init>(Lcom/google/android/gms/internal/ads/ga0;)V

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/r20;->k(Lcom/google/android/gms/internal/ads/o30;)Lcom/google/android/gms/internal/ads/r20;

    new-instance p1, Lcom/google/android/gms/internal/ads/r10;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/kh1;->f:Landroid/view/ViewGroup;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/r10;-><init>(Landroid/view/ViewGroup;)V

    :goto_0
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/r20;->f(Lcom/google/android/gms/internal/ads/r10;)Lcom/google/android/gms/internal/ads/r20;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/r20;->zza()Lcom/google/android/gms/internal/ads/s20;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/s20;->b()Lcom/google/android/gms/internal/ads/y40;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/y40;->b()Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/y40;->c(Lcom/google/android/gms/internal/ads/rz1;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/kh1;->j:Lcom/google/android/gms/internal/ads/rz1;

    new-instance p3, Lcom/google/android/gms/internal/ads/jh1;

    invoke-direct {p3, p0, p4, p1}, Lcom/google/android/gms/internal/ads/jh1;-><init>(Lcom/google/android/gms/internal/ads/kh1;Lcom/google/android/gms/internal/ads/u71;Lcom/google/android/gms/internal/ads/s20;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/kh1;->b:Ljava/util/concurrent/Executor;

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/kz1;->o(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/gz1;Ljava/util/concurrent/Executor;)V

    return v1
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kh1;->j:Lcom/google/android/gms/internal/ads/rz1;

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

.method public final c()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kh1;->f:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final d(Lcom/google/android/gms/internal/ads/i4;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kh1;->g:Lcom/google/android/gms/internal/ads/i4;

    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/ads/g;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kh1;->e:Lcom/google/android/gms/internal/ads/j71;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/j71;->a(Lcom/google/android/gms/internal/ads/g;)V

    return-void
.end method

.method public final f()Lcom/google/android/gms/internal/ads/rl1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kh1;->i:Lcom/google/android/gms/internal/ads/rl1;

    return-object v0
.end method

.method public final g()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kh1;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    check-cast v0, Landroid/view/View;

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->d()Lcom/google/android/gms/ads/internal/util/l1;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/util/l1;->x(Landroid/view/View;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public final h(Lcom/google/android/gms/internal/ads/ha0;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kh1;->h:Lcom/google/android/gms/internal/ads/ga0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kh1;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/tc0;->t0(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kh1;->h:Lcom/google/android/gms/internal/ads/ga0;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ga0;->P0(I)V

    return-void
.end method

.method final synthetic j()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kh1;->d:Lcom/google/android/gms/internal/ads/f71;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/google/android/gms/internal/ads/nm1;->d(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzym;)Lcom/google/android/gms/internal/ads/zzym;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/f71;->f0(Lcom/google/android/gms/internal/ads/zzym;)V

    return-void
.end method
