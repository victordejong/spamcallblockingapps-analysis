.class public final Lcom/google/android/gms/internal/ads/gh2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/q42;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/q42<",
        "Lcom/google/android/gms/internal/ads/lb1;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/google/android/gms/internal/ads/sp0;

.field private final d:Lcom/google/android/gms/internal/ads/a42;

.field private final e:Lcom/google/android/gms/internal/ads/hi2;

.field private f:Lcom/google/android/gms/internal/ads/gx;

.field private final g:Lcom/google/android/gms/internal/ads/vj2;

.field private h:Lcom/google/android/gms/internal/ads/r03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/lb1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/sp0;Lcom/google/android/gms/internal/ads/a42;Lcom/google/android/gms/internal/ads/hi2;Lcom/google/android/gms/internal/ads/vj2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gh2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gh2;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/gh2;->c:Lcom/google/android/gms/internal/ads/sp0;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/gh2;->d:Lcom/google/android/gms/internal/ads/a42;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/gh2;->g:Lcom/google/android/gms/internal/ads/vj2;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/gh2;->e:Lcom/google/android/gms/internal/ads/hi2;

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/gh2;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/gh2;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/gh2;)Lcom/google/android/gms/internal/ads/a42;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/gh2;->d:Lcom/google/android/gms/internal/ads/a42;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/gh2;)Lcom/google/android/gms/internal/ads/hi2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/gh2;->e:Lcom/google/android/gms/internal/ads/hi2;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/ads/gh2;Lcom/google/android/gms/internal/ads/r03;)Lcom/google/android/gms/internal/ads/r03;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gh2;->h:Lcom/google/android/gms/internal/ads/r03;

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/o42;Lcom/google/android/gms/internal/ads/p42;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbdg;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/o42;",
            "Lcom/google/android/gms/internal/ads/p42<",
            "-",
            "Lcom/google/android/gms/internal/ads/lb1;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string p1, "Ad unit ID should not be null for interstitial ad."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gh2;->b:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/google/android/gms/internal/ads/ah2;

    .line 2
    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/ah2;-><init>(Lcom/google/android/gms/internal/ads/gh2;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/gh2;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 4
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->p6:Lcom/google/android/gms/internal/ads/cw;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzbdg;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gh2;->c:Lcom/google/android/gms/internal/ads/sp0;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sp0;->C()Lcom/google/android/gms/internal/ads/lq1;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/lq1;->c(Z)V

    :cond_2
    check-cast p3, Lcom/google/android/gms/internal/ads/zg2;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zg2;->a:Lcom/google/android/gms/internal/ads/zzbdl;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gh2;->g:Lcom/google/android/gms/internal/ads/vj2;

    .line 8
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/vj2;->L(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/vj2;

    .line 9
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/vj2;->I(Lcom/google/android/gms/internal/ads/zzbdl;)Lcom/google/android/gms/internal/ads/vj2;

    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/vj2;->G(Lcom/google/android/gms/internal/ads/zzbdg;)Lcom/google/android/gms/internal/ads/vj2;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vj2;->l()Lcom/google/android/gms/internal/ads/xj2;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/kw;->Q5:Lcom/google/android/gms/internal/ads/cw;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p2

    .line 13
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/gh2;->c:Lcom/google/android/gms/internal/ads/sp0;

    .line 14
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/sp0;->s()Lcom/google/android/gms/internal/ads/ic1;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/internal/ads/h21;

    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/h21;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gh2;->a:Landroid/content/Context;

    .line 15
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/ads/h21;->e(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/h21;

    .line 16
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/h21;->f(Lcom/google/android/gms/internal/ads/xj2;)Lcom/google/android/gms/internal/ads/h21;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/h21;->h()Lcom/google/android/gms/internal/ads/j21;

    move-result-object p1

    .line 17
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/ic1;->a(Lcom/google/android/gms/internal/ads/j21;)Lcom/google/android/gms/internal/ads/ic1;

    new-instance p1, Lcom/google/android/gms/internal/ads/n81;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/n81;-><init>()V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/gh2;->d:Lcom/google/android/gms/internal/ads/a42;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gh2;->b:Ljava/util/concurrent/Executor;

    .line 18
    invoke-virtual {p1, p3, v0}, Lcom/google/android/gms/internal/ads/n81;->b(Lcom/google/android/gms/internal/ads/u51;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/n81;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/gh2;->d:Lcom/google/android/gms/internal/ads/a42;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gh2;->b:Ljava/util/concurrent/Executor;

    .line 19
    invoke-virtual {p1, p3, v0}, Lcom/google/android/gms/internal/ads/n81;->w(Lcom/google/android/gms/internal/ads/bb;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/n81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/n81;->c()Lcom/google/android/gms/internal/ads/p81;

    move-result-object p1

    .line 20
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/ic1;->i(Lcom/google/android/gms/internal/ads/p81;)Lcom/google/android/gms/internal/ads/ic1;

    new-instance p1, Lcom/google/android/gms/internal/ads/g22;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/gh2;->f:Lcom/google/android/gms/internal/ads/gx;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/g22;-><init>(Lcom/google/android/gms/internal/ads/gx;)V

    .line 21
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/ic1;->r(Lcom/google/android/gms/internal/ads/g22;)Lcom/google/android/gms/internal/ads/ic1;

    .line 22
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ic1;->zza()Lcom/google/android/gms/internal/ads/jc1;

    move-result-object p1

    goto/16 :goto_0

    .line 23
    :cond_3
    new-instance p2, Lcom/google/android/gms/internal/ads/n81;

    .line 24
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/n81;-><init>()V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/gh2;->e:Lcom/google/android/gms/internal/ads/hi2;

    if-eqz p3, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gh2;->b:Ljava/util/concurrent/Executor;

    .line 25
    invoke-virtual {p2, p3, v0}, Lcom/google/android/gms/internal/ads/n81;->s(Lcom/google/android/gms/internal/ads/y21;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/n81;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/gh2;->e:Lcom/google/android/gms/internal/ads/hi2;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gh2;->b:Ljava/util/concurrent/Executor;

    .line 26
    invoke-virtual {p2, p3, v0}, Lcom/google/android/gms/internal/ads/n81;->t(Lcom/google/android/gms/internal/ads/n41;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/n81;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/gh2;->e:Lcom/google/android/gms/internal/ads/hi2;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gh2;->b:Ljava/util/concurrent/Executor;

    .line 27
    invoke-virtual {p2, p3, v0}, Lcom/google/android/gms/internal/ads/n81;->u(Lcom/google/android/gms/internal/ads/b31;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/n81;

    :cond_4
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/gh2;->c:Lcom/google/android/gms/internal/ads/sp0;

    .line 28
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/sp0;->s()Lcom/google/android/gms/internal/ads/ic1;

    move-result-object p3

    new-instance v0, Lcom/google/android/gms/internal/ads/h21;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/h21;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/gh2;->a:Landroid/content/Context;

    .line 29
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/h21;->e(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/h21;

    .line 30
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/h21;->f(Lcom/google/android/gms/internal/ads/xj2;)Lcom/google/android/gms/internal/ads/h21;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/h21;->h()Lcom/google/android/gms/internal/ads/j21;

    move-result-object p1

    .line 31
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/ic1;->a(Lcom/google/android/gms/internal/ads/j21;)Lcom/google/android/gms/internal/ads/ic1;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gh2;->d:Lcom/google/android/gms/internal/ads/a42;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gh2;->b:Ljava/util/concurrent/Executor;

    .line 32
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/n81;->b(Lcom/google/android/gms/internal/ads/u51;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/n81;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gh2;->d:Lcom/google/android/gms/internal/ads/a42;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gh2;->b:Ljava/util/concurrent/Executor;

    .line 33
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/n81;->s(Lcom/google/android/gms/internal/ads/y21;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/n81;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gh2;->d:Lcom/google/android/gms/internal/ads/a42;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gh2;->b:Ljava/util/concurrent/Executor;

    .line 34
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/n81;->t(Lcom/google/android/gms/internal/ads/n41;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/n81;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gh2;->d:Lcom/google/android/gms/internal/ads/a42;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gh2;->b:Ljava/util/concurrent/Executor;

    .line 35
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/n81;->u(Lcom/google/android/gms/internal/ads/b31;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/n81;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gh2;->d:Lcom/google/android/gms/internal/ads/a42;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gh2;->b:Ljava/util/concurrent/Executor;

    .line 36
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/n81;->x(Lcom/google/android/gms/internal/ads/kq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/n81;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gh2;->d:Lcom/google/android/gms/internal/ads/a42;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gh2;->b:Ljava/util/concurrent/Executor;

    .line 37
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/n81;->y(Lcom/google/android/gms/internal/ads/qa1;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/n81;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gh2;->d:Lcom/google/android/gms/internal/ads/a42;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gh2;->b:Ljava/util/concurrent/Executor;

    .line 38
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/n81;->w(Lcom/google/android/gms/internal/ads/bb;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/n81;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gh2;->d:Lcom/google/android/gms/internal/ads/a42;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gh2;->b:Ljava/util/concurrent/Executor;

    .line 39
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/n81;->C(Lcom/google/android/gms/internal/ads/k51;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/n81;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gh2;->d:Lcom/google/android/gms/internal/ads/a42;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gh2;->b:Ljava/util/concurrent/Executor;

    .line 40
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/n81;->v(Lcom/google/android/gms/internal/ads/o31;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/n81;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/n81;->c()Lcom/google/android/gms/internal/ads/p81;

    move-result-object p1

    .line 41
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/ic1;->i(Lcom/google/android/gms/internal/ads/p81;)Lcom/google/android/gms/internal/ads/ic1;

    new-instance p1, Lcom/google/android/gms/internal/ads/g22;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/gh2;->f:Lcom/google/android/gms/internal/ads/gx;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/g22;-><init>(Lcom/google/android/gms/internal/ads/gx;)V

    .line 42
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/ic1;->r(Lcom/google/android/gms/internal/ads/g22;)Lcom/google/android/gms/internal/ads/ic1;

    .line 43
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/ic1;->zza()Lcom/google/android/gms/internal/ads/jc1;

    move-result-object p1

    .line 44
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/jc1;->b()Lcom/google/android/gms/internal/ads/b01;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/b01;->c()Lcom/google/android/gms/internal/ads/r03;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/b01;->d(Lcom/google/android/gms/internal/ads/r03;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gh2;->h:Lcom/google/android/gms/internal/ads/r03;

    new-instance p3, Lcom/google/android/gms/internal/ads/fh2;

    .line 45
    invoke-direct {p3, p0, p4, p1}, Lcom/google/android/gms/internal/ads/fh2;-><init>(Lcom/google/android/gms/internal/ads/gh2;Lcom/google/android/gms/internal/ads/p42;Lcom/google/android/gms/internal/ads/jc1;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gh2;->b:Ljava/util/concurrent/Executor;

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/k03;->p(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/f03;Ljava/util/concurrent/Executor;)V

    return v1
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gh2;->h:Lcom/google/android/gms/internal/ads/r03;

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

.method public final g(Lcom/google/android/gms/internal/ads/gx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gh2;->f:Lcom/google/android/gms/internal/ads/gx;

    return-void
.end method

.method final synthetic h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gh2;->d:Lcom/google/android/gms/internal/ads/a42;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/google/android/gms/internal/ads/sk2;->d(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbcz;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/a42;->O(Lcom/google/android/gms/internal/ads/zzbcz;)V

    return-void
.end method
