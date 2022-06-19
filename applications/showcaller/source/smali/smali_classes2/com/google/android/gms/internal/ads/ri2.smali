.class public final Lcom/google/android/gms/internal/ads/ri2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/q42;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/q42<",
        "Lcom/google/android/gms/internal/ads/fk1;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/google/android/gms/internal/ads/sp0;

.field private final d:Lcom/google/android/gms/internal/ads/hi2;

.field private final e:Lcom/google/android/gms/internal/ads/sg2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/sg2<",
            "Lcom/google/android/gms/internal/ads/kk1;",
            "Lcom/google/android/gms/internal/ads/fk1;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/gms/internal/ads/sj2;

.field private final g:Lcom/google/android/gms/internal/ads/vj2;

.field private h:Lcom/google/android/gms/internal/ads/r03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/fk1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/sp0;Lcom/google/android/gms/internal/ads/sg2;Lcom/google/android/gms/internal/ads/hi2;Lcom/google/android/gms/internal/ads/vj2;Lcom/google/android/gms/internal/ads/sj2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/ads/sp0;",
            "Lcom/google/android/gms/internal/ads/sg2<",
            "Lcom/google/android/gms/internal/ads/kk1;",
            "Lcom/google/android/gms/internal/ads/fk1;",
            ">;",
            "Lcom/google/android/gms/internal/ads/hi2;",
            "Lcom/google/android/gms/internal/ads/vj2;",
            "Lcom/google/android/gms/internal/ads/sj2;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ri2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ri2;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ri2;->c:Lcom/google/android/gms/internal/ads/sp0;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ri2;->e:Lcom/google/android/gms/internal/ads/sg2;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/ri2;->d:Lcom/google/android/gms/internal/ads/hi2;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/ri2;->g:Lcom/google/android/gms/internal/ads/vj2;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/ri2;->f:Lcom/google/android/gms/internal/ads/sj2;

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/ri2;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ri2;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/ri2;)Lcom/google/android/gms/internal/ads/hi2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ri2;->d:Lcom/google/android/gms/internal/ads/hi2;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/ri2;)Lcom/google/android/gms/internal/ads/sg2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ri2;->e:Lcom/google/android/gms/internal/ads/sg2;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/ads/ri2;Lcom/google/android/gms/internal/ads/qg2;)Lcom/google/android/gms/internal/ads/jk1;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ri2;->j(Lcom/google/android/gms/internal/ads/qg2;)Lcom/google/android/gms/internal/ads/jk1;

    move-result-object p0

    return-object p0
.end method

.method private final j(Lcom/google/android/gms/internal/ads/qg2;)Lcom/google/android/gms/internal/ads/jk1;
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/qi2;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ri2;->c:Lcom/google/android/gms/internal/ads/sp0;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sp0;->v()Lcom/google/android/gms/internal/ads/jk1;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/h21;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/h21;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ri2;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/h21;->e(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/h21;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/qi2;->a:Lcom/google/android/gms/internal/ads/xj2;

    .line 4
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/h21;->f(Lcom/google/android/gms/internal/ads/xj2;)Lcom/google/android/gms/internal/ads/h21;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ri2;->f:Lcom/google/android/gms/internal/ads/sj2;

    .line 5
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/h21;->i(Lcom/google/android/gms/internal/ads/sj2;)Lcom/google/android/gms/internal/ads/h21;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/h21;->h()Lcom/google/android/gms/internal/ads/j21;

    move-result-object p1

    .line 6
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/jk1;->o(Lcom/google/android/gms/internal/ads/j21;)Lcom/google/android/gms/internal/ads/jk1;

    new-instance p1, Lcom/google/android/gms/internal/ads/n81;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/n81;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/n81;->c()Lcom/google/android/gms/internal/ads/p81;

    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/jk1;->l(Lcom/google/android/gms/internal/ads/p81;)Lcom/google/android/gms/internal/ads/jk1;

    return-object v0
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
            "Lcom/google/android/gms/internal/ads/fk1;",
            ">;)Z"
        }
    .end annotation

    .line 1
    new-instance p3, Lcom/google/android/gms/internal/ads/zzccg;

    invoke-direct {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzccg;-><init>(Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;)V

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzccg;->e:Ljava/lang/String;

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "Ad unit ID should not be null for rewarded video ad."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ri2;->b:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/google/android/gms/internal/ads/ki2;

    .line 3
    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/ki2;-><init>(Lcom/google/android/gms/internal/ads/ri2;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ri2;->h:Lcom/google/android/gms/internal/ads/r03;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ri2;->a:Landroid/content/Context;

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzccg;->d:Lcom/google/android/gms/internal/ads/zzbdg;

    .line 5
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzbdg;->i:Z

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/nk2;->b(Landroid/content/Context;Z)V

    .line 6
    sget-object p1, Lcom/google/android/gms/internal/ads/kw;->p6:Lcom/google/android/gms/internal/ads/cw;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p1

    .line 8
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzccg;->d:Lcom/google/android/gms/internal/ads/zzbdg;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzbdg;->i:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ri2;->c:Lcom/google/android/gms/internal/ads/sp0;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sp0;->C()Lcom/google/android/gms/internal/ads/lq1;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/lq1;->c(Z)V

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ri2;->g:Lcom/google/android/gms/internal/ads/vj2;

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzccg;->e:Ljava/lang/String;

    .line 10
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/vj2;->L(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/vj2;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdl;->m0()Lcom/google/android/gms/internal/ads/zzbdl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/vj2;->I(Lcom/google/android/gms/internal/ads/zzbdl;)Lcom/google/android/gms/internal/ads/vj2;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzccg;->d:Lcom/google/android/gms/internal/ads/zzbdg;

    .line 12
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/vj2;->G(Lcom/google/android/gms/internal/ads/zzbdg;)Lcom/google/android/gms/internal/ads/vj2;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vj2;->l()Lcom/google/android/gms/internal/ads/xj2;

    move-result-object p1

    new-instance p3, Lcom/google/android/gms/internal/ads/qi2;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lcom/google/android/gms/internal/ads/qi2;-><init>(Lcom/google/android/gms/internal/ads/pi2;)V

    iput-object p1, p3, Lcom/google/android/gms/internal/ads/qi2;->a:Lcom/google/android/gms/internal/ads/xj2;

    iput-object v0, p3, Lcom/google/android/gms/internal/ads/qi2;->b:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ri2;->e:Lcom/google/android/gms/internal/ads/sg2;

    new-instance v1, Lcom/google/android/gms/internal/ads/tg2;

    .line 14
    invoke-direct {v1, p3, v0}, Lcom/google/android/gms/internal/ads/tg2;-><init>(Lcom/google/android/gms/internal/ads/qg2;Lcom/google/android/gms/internal/ads/zzcbj;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/li2;

    .line 15
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/li2;-><init>(Lcom/google/android/gms/internal/ads/ri2;)V

    .line 16
    invoke-interface {p1, v1, v2, v0}, Lcom/google/android/gms/internal/ads/sg2;->a(Lcom/google/android/gms/internal/ads/tg2;Lcom/google/android/gms/internal/ads/rg2;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ri2;->h:Lcom/google/android/gms/internal/ads/r03;

    new-instance v0, Lcom/google/android/gms/internal/ads/oi2;

    .line 17
    invoke-direct {v0, p0, p4, p3}, Lcom/google/android/gms/internal/ads/oi2;-><init>(Lcom/google/android/gms/internal/ads/ri2;Lcom/google/android/gms/internal/ads/p42;Lcom/google/android/gms/internal/ads/qi2;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/ri2;->b:Ljava/util/concurrent/Executor;

    invoke-static {p1, v0, p3}, Lcom/google/android/gms/internal/ads/k03;->p(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/f03;Ljava/util/concurrent/Executor;)V

    :goto_1
    return p2
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method final synthetic g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ri2;->d:Lcom/google/android/gms/internal/ads/hi2;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/google/android/gms/internal/ads/sk2;->d(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbcz;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/hi2;->O(Lcom/google/android/gms/internal/ads/zzbcz;)V

    return-void
.end method

.method final bridge synthetic h(Lcom/google/android/gms/internal/ads/qg2;)Lcom/google/android/gms/internal/ads/jk1;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ri2;->j(Lcom/google/android/gms/internal/ads/qg2;)Lcom/google/android/gms/internal/ads/jk1;

    move-result-object p1

    return-object p1
.end method

.method final i(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ri2;->g:Lcom/google/android/gms/internal/ads/vj2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vj2;->O()Lcom/google/android/gms/internal/ads/lj2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/lj2;->b(I)Lcom/google/android/gms/internal/ads/lj2;

    return-void
.end method
