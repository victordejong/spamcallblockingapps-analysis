.class public final Lcom/google/android/gms/internal/ads/c81;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/v71;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/v71<",
        "Lcom/google/android/gms/internal/ads/u30;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/rl1;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/fv;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/internal/ads/s71;

.field private e:Lcom/google/android/gms/internal/ads/i40;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/fv;Landroid/content/Context;Lcom/google/android/gms/internal/ads/s71;Lcom/google/android/gms/internal/ads/rl1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/c81;->b:Lcom/google/android/gms/internal/ads/fv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/c81;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/c81;->d:Lcom/google/android/gms/internal/ads/s71;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/c81;->a:Lcom/google/android/gms/internal/ads/rl1;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/s71;->c()Lcom/google/android/gms/internal/ads/f71;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/ads/rl1;->H(Lcom/google/android/gms/internal/ads/f71;)Lcom/google/android/gms/internal/ads/rl1;

    return-void
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/c81;)Lcom/google/android/gms/internal/ads/s71;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/c81;->d:Lcom/google/android/gms/internal/ads/s71;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/ads/c81;)Lcom/google/android/gms/internal/ads/fv;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/c81;->b:Lcom/google/android/gms/internal/ads/fv;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzys;Ljava/lang/String;Lcom/google/android/gms/internal/ads/t71;Lcom/google/android/gms/internal/ads/u71;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzys;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/t71;",
            "Lcom/google/android/gms/internal/ads/u71<",
            "-",
            "Lcom/google/android/gms/internal/ads/u30;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->d()Lcom/google/android/gms/ads/internal/util/l1;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c81;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/l1;->j(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzys;->t:Lcom/google/android/gms/internal/ads/zzyk;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "Failed to load the ad because app ID is missing."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/c81;->b:Lcom/google/android/gms/internal/ads/fv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/fv;->h()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/x71;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/x71;-><init>(Lcom/google/android/gms/internal/ads/c81;)V

    :goto_0
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v1

    :cond_1
    :goto_1
    if-nez p2, :cond_2

    const-string p1, "Ad unit ID should not be null for NativeAdLoader."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/c81;->b:Lcom/google/android/gms/internal/ads/fv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/fv;->h()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/y71;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/y71;-><init>(Lcom/google/android/gms/internal/ads/c81;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/c81;->c:Landroid/content/Context;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzys;->g:Z

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/hm1;->b(Landroid/content/Context;Z)V

    sget-object p2, Lcom/google/android/gms/internal/ads/m3;->m5:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzys;->g:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/c81;->b:Lcom/google/android/gms/internal/ads/fv;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/fv;->B()Lcom/google/android/gms/internal/ads/zt0;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zt0;->b(Z)V

    :cond_3
    check-cast p3, Lcom/google/android/gms/internal/ads/w71;

    iget p2, p3, Lcom/google/android/gms/internal/ads/w71;->a:I

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/c81;->a:Lcom/google/android/gms/internal/ads/rl1;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/rl1;->p(Lcom/google/android/gms/internal/ads/zzys;)Lcom/google/android/gms/internal/ads/rl1;

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/rl1;->z(I)Lcom/google/android/gms/internal/ads/rl1;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/rl1;->J()Lcom/google/android/gms/internal/ads/sl1;

    move-result-object p1

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/sl1;->n:Lcom/google/android/gms/internal/ads/e0;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/c81;->d:Lcom/google/android/gms/internal/ads/s71;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/s71;->c()Lcom/google/android/gms/internal/ads/f71;

    move-result-object p2

    iget-object p3, p1, Lcom/google/android/gms/internal/ads/sl1;->n:Lcom/google/android/gms/internal/ads/e0;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/f71;->C(Lcom/google/android/gms/internal/ads/e0;)V

    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/c81;->b:Lcom/google/android/gms/internal/ads/fv;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/fv;->u()Lcom/google/android/gms/internal/ads/eh0;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/internal/ads/c70;

    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/c70;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/c81;->c:Landroid/content/Context;

    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/ads/c70;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/c70;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/c70;->b(Lcom/google/android/gms/internal/ads/sl1;)Lcom/google/android/gms/internal/ads/c70;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/c70;->d()Lcom/google/android/gms/internal/ads/d70;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/eh0;->n(Lcom/google/android/gms/internal/ads/d70;)Lcom/google/android/gms/internal/ads/eh0;

    new-instance p1, Lcom/google/android/gms/internal/ads/vc0;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/vc0;-><init>()V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/c81;->d:Lcom/google/android/gms/internal/ads/s71;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/s71;->c()Lcom/google/android/gms/internal/ads/f71;

    move-result-object p3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/c81;->b:Lcom/google/android/gms/internal/ads/fv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/fv;->h()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p1, p3, v1}, Lcom/google/android/gms/internal/ads/vc0;->f(Lcom/google/android/gms/internal/ads/pk2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/vc0;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vc0;->n()Lcom/google/android/gms/internal/ads/wc0;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/eh0;->r(Lcom/google/android/gms/internal/ads/wc0;)Lcom/google/android/gms/internal/ads/eh0;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/c81;->d:Lcom/google/android/gms/internal/ads/s71;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/s71;->b()Lcom/google/android/gms/internal/ads/ah0;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/eh0;->l(Lcom/google/android/gms/internal/ads/ah0;)Lcom/google/android/gms/internal/ads/eh0;

    new-instance p1, Lcom/google/android/gms/internal/ads/r10;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/r10;-><init>(Landroid/view/ViewGroup;)V

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/eh0;->m(Lcom/google/android/gms/internal/ads/r10;)Lcom/google/android/gms/internal/ads/eh0;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eh0;->zza()Lcom/google/android/gms/internal/ads/fh0;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/c81;->b:Lcom/google/android/gms/internal/ads/fv;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/fv;->A()Lcom/google/android/gms/internal/ads/jm1;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/jm1;->a(I)V

    new-instance p2, Lcom/google/android/gms/internal/ads/i40;

    sget-object p3, Lcom/google/android/gms/internal/ads/zo;->a:Lcom/google/android/gms/internal/ads/sz1;

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/jh2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/c81;->b:Lcom/google/android/gms/internal/ads/fv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/fv;->i()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/fh0;->a()Lcom/google/android/gms/internal/ads/y40;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/y40;->b()Lcom/google/android/gms/internal/ads/rz1;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/y40;->c(Lcom/google/android/gms/internal/ads/rz1;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object v2

    invoke-direct {p2, p3, v1, v2}, Lcom/google/android/gms/internal/ads/i40;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/rz1;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/c81;->e:Lcom/google/android/gms/internal/ads/i40;

    new-instance p3, Lcom/google/android/gms/internal/ads/b81;

    invoke-direct {p3, p0, p4, p1}, Lcom/google/android/gms/internal/ads/b81;-><init>(Lcom/google/android/gms/internal/ads/c81;Lcom/google/android/gms/internal/ads/u71;Lcom/google/android/gms/internal/ads/fh0;)V

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/i40;->a(Lcom/google/android/gms/internal/ads/gz1;)V

    return v0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c81;->e:Lcom/google/android/gms/internal/ads/i40;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/i40;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final synthetic c()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c81;->d:Lcom/google/android/gms/internal/ads/s71;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/s71;->e()Lcom/google/android/gms/internal/ads/v70;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/google/android/gms/internal/ads/nm1;->d(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzym;)Lcom/google/android/gms/internal/ads/zzym;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/v70;->f0(Lcom/google/android/gms/internal/ads/zzym;)V

    return-void
.end method

.method final synthetic d()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c81;->d:Lcom/google/android/gms/internal/ads/s71;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/s71;->e()Lcom/google/android/gms/internal/ads/v70;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/google/android/gms/internal/ads/nm1;->d(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzym;)Lcom/google/android/gms/internal/ads/zzym;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/v70;->f0(Lcom/google/android/gms/internal/ads/zzym;)V

    return-void
.end method
