.class public final Lcom/google/android/gms/internal/ads/ni0;
.super Lcom/google/android/gms/internal/ads/u30;
.source ""


# instance fields
.field private final A:Lcom/google/android/gms/internal/ads/pi0;

.field private final B:Lcom/google/android/gms/internal/ads/i71;

.field private final C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/ys2;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/concurrent/Executor;

.field private final j:Lcom/google/android/gms/internal/ads/si0;

.field private final k:Lcom/google/android/gms/internal/ads/bj0;

.field private final l:Lcom/google/android/gms/internal/ads/sj0;

.field private final m:Lcom/google/android/gms/internal/ads/yi0;

.field private final n:Lcom/google/android/gms/internal/ads/ej0;

.field private final o:Lcom/google/android/gms/internal/ads/yg2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/yg2<",
            "Lcom/google/android/gms/internal/ads/sm0;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Lcom/google/android/gms/internal/ads/yg2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/yg2<",
            "Lcom/google/android/gms/internal/ads/qm0;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Lcom/google/android/gms/internal/ads/yg2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/yg2<",
            "Lcom/google/android/gms/internal/ads/xm0;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Lcom/google/android/gms/internal/ads/yg2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/yg2<",
            "Lcom/google/android/gms/internal/ads/om0;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Lcom/google/android/gms/internal/ads/yg2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/yg2<",
            "Lcom/google/android/gms/internal/ads/vm0;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/google/android/gms/internal/ads/ok0;

.field private u:Z

.field private v:Z

.field private final w:Lcom/google/android/gms/internal/ads/em;

.field private final x:Lcom/google/android/gms/internal/ads/zh2;

.field private final y:Lcom/google/android/gms/internal/ads/zzbbq;

.field private final z:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/t30;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/si0;Lcom/google/android/gms/internal/ads/bj0;Lcom/google/android/gms/internal/ads/sj0;Lcom/google/android/gms/internal/ads/yi0;Lcom/google/android/gms/internal/ads/ej0;Lcom/google/android/gms/internal/ads/yg2;Lcom/google/android/gms/internal/ads/yg2;Lcom/google/android/gms/internal/ads/yg2;Lcom/google/android/gms/internal/ads/yg2;Lcom/google/android/gms/internal/ads/yg2;Lcom/google/android/gms/internal/ads/em;Lcom/google/android/gms/internal/ads/zh2;Lcom/google/android/gms/internal/ads/zzbbq;Landroid/content/Context;Lcom/google/android/gms/internal/ads/pi0;Lcom/google/android/gms/internal/ads/i71;Lcom/google/android/gms/internal/ads/zs2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/t30;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/ads/si0;",
            "Lcom/google/android/gms/internal/ads/bj0;",
            "Lcom/google/android/gms/internal/ads/sj0;",
            "Lcom/google/android/gms/internal/ads/yi0;",
            "Lcom/google/android/gms/internal/ads/ej0;",
            "Lcom/google/android/gms/internal/ads/yg2<",
            "Lcom/google/android/gms/internal/ads/sm0;",
            ">;",
            "Lcom/google/android/gms/internal/ads/yg2<",
            "Lcom/google/android/gms/internal/ads/qm0;",
            ">;",
            "Lcom/google/android/gms/internal/ads/yg2<",
            "Lcom/google/android/gms/internal/ads/xm0;",
            ">;",
            "Lcom/google/android/gms/internal/ads/yg2<",
            "Lcom/google/android/gms/internal/ads/om0;",
            ">;",
            "Lcom/google/android/gms/internal/ads/yg2<",
            "Lcom/google/android/gms/internal/ads/vm0;",
            ">;",
            "Lcom/google/android/gms/internal/ads/em;",
            "Lcom/google/android/gms/internal/ads/zh2;",
            "Lcom/google/android/gms/internal/ads/zzbbq;",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/pi0;",
            "Lcom/google/android/gms/internal/ads/i71;",
            "Lcom/google/android/gms/internal/ads/zs2;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/u30;-><init>(Lcom/google/android/gms/internal/ads/t30;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/ni0;->v:Z

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ni0;->i:Ljava/util/concurrent/Executor;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ni0;->j:Lcom/google/android/gms/internal/ads/si0;

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ni0;->k:Lcom/google/android/gms/internal/ads/bj0;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ni0;->l:Lcom/google/android/gms/internal/ads/sj0;

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ni0;->m:Lcom/google/android/gms/internal/ads/yi0;

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ni0;->n:Lcom/google/android/gms/internal/ads/ej0;

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ni0;->o:Lcom/google/android/gms/internal/ads/yg2;

    move-object v1, p9

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ni0;->p:Lcom/google/android/gms/internal/ads/yg2;

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ni0;->q:Lcom/google/android/gms/internal/ads/yg2;

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ni0;->r:Lcom/google/android/gms/internal/ads/yg2;

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ni0;->s:Lcom/google/android/gms/internal/ads/yg2;

    move-object v1, p13

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ni0;->w:Lcom/google/android/gms/internal/ads/em;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ni0;->x:Lcom/google/android/gms/internal/ads/zh2;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ni0;->y:Lcom/google/android/gms/internal/ads/zzbbq;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ni0;->z:Landroid/content/Context;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ni0;->A:Lcom/google/android/gms/internal/ads/pi0;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ni0;->B:Lcom/google/android/gms/internal/ads/i71;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ni0;->C:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ni0;->D:Ljava/util/List;

    return-void
.end method

.method public static P(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic r(Lcom/google/android/gms/internal/ads/ni0;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ni0;->C:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic s(Lcom/google/android/gms/internal/ads/ni0;)Lcom/google/android/gms/internal/ads/ok0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ni0;->t:Lcom/google/android/gms/internal/ads/ok0;

    return-object p0
.end method

.method private final u(Lcom/google/android/gms/internal/ads/ok0;)V
    .locals 7

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ni0;->t:Lcom/google/android/gms/internal/ads/ok0;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->l:Lcom/google/android/gms/internal/ads/sj0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/sj0;->a(Lcom/google/android/gms/internal/ads/ok0;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni0;->k:Lcom/google/android/gms/internal/ads/bj0;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ok0;->M4()Landroid/view/View;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ok0;->j()Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ok0;->k()Ljava/util/Map;

    move-result-object v4

    move-object v5, p1

    move-object v6, p1

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/bj0;->c(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->w1:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->x:Lcom/google/android/gms/internal/ads/zh2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zh2;->b()Lcom/google/android/gms/internal/ads/xf2;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ok0;->M4()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/xf2;->f(Landroid/view/View;)V

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->Z0:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u30;->b:Lcom/google/android/gms/internal/ads/al1;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/al1;->f0:Z

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/al1;->e0:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ni0;->t:Lcom/google/android/gms/internal/ads/ok0;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/ok0;->h()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ni0;->C:Ljava/util/Map;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ni0;->z:Landroid/content/Context;

    new-instance v4, Lcom/google/android/gms/internal/ads/ys2;

    invoke-direct {v4, v3, v2}, Lcom/google/android/gms/internal/ads/ys2;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ni0;->D:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/gms/internal/ads/mi0;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/ads/mi0;-><init>(Lcom/google/android/gms/internal/ads/ni0;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/ys2;->a(Lcom/google/android/gms/internal/ads/xs2;)V

    goto :goto_0

    :cond_3
    :goto_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ok0;->e()Lcom/google/android/gms/internal/ads/ys2;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ok0;->e()Lcom/google/android/gms/internal/ads/ys2;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->w:Lcom/google/android/gms/internal/ads/em;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/ys2;->a(Lcom/google/android/gms/internal/ads/xs2;)V

    :cond_4
    return-void
.end method

.method private final v(Lcom/google/android/gms/internal/ads/ok0;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->k:Lcom/google/android/gms/internal/ads/bj0;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ok0;->M4()Landroid/view/View;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ok0;->h()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/bj0;->d(Landroid/view/View;Ljava/util/Map;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ok0;->w4()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ok0;->w4()Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ok0;->w4()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ok0;->e()Lcom/google/android/gms/internal/ads/ys2;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ok0;->e()Lcom/google/android/gms/internal/ads/ys2;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->w:Lcom/google/android/gms/internal/ads/em;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/ys2;->b(Lcom/google/android/gms/internal/ads/xs2;)V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ni0;->t:Lcom/google/android/gms/internal/ads/ok0;

    return-void
.end method


# virtual methods
.method public final declared-synchronized A(Landroid/os/Bundle;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->k:Lcom/google/android/gms/internal/ads/bj0;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/bj0;->k(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized B(Lcom/google/android/gms/internal/ads/ok0;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->Y0:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/ads/internal/util/l1;->i:Lcom/google/android/gms/internal/ads/tv1;

    new-instance v1, Lcom/google/android/gms/internal/ads/ji0;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/ji0;-><init>(Lcom/google/android/gms/internal/ads/ni0;Lcom/google/android/gms/internal/ads/ok0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ni0;->u(Lcom/google/android/gms/internal/ads/ok0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized C(Lcom/google/android/gms/internal/ads/ok0;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->Y0:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/ads/internal/util/l1;->i:Lcom/google/android/gms/internal/ads/tv1;

    new-instance v1, Lcom/google/android/gms/internal/ads/ki0;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/ki0;-><init>(Lcom/google/android/gms/internal/ads/ni0;Lcom/google/android/gms/internal/ads/ok0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ni0;->v(Lcom/google/android/gms/internal/ads/ok0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized D(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;Z)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->l:Lcom/google/android/gms/internal/ads/sj0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni0;->t:Lcom/google/android/gms/internal/ads/ok0;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/sj0;->b(Lcom/google/android/gms/internal/ads/ok0;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ni0;->k:Lcom/google/android/gms/internal/ads/bj0;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/bj0;->f(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/ni0;->v:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/ads/m3;->Q1:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ni0;->j:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/si0;->o()Lcom/google/android/gms/internal/ads/jt;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ni0;->j:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/si0;->o()Lcom/google/android/gms/internal/ads/jt;

    move-result-object p1

    new-instance p2, Ld/e/a;

    invoke-direct {p2}, Ld/e/a;-><init>()V

    const-string p3, "onSdkAdUserInteractionClick"

    invoke-interface {p1, p3, p2}, Lcom/google/android/gms/internal/ads/lb;->X(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized E(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->k:Lcom/google/android/gms/internal/ads/bj0;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/bj0;->a(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized F(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;Z)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ni0;->u:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->Z0:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u30;->b:Lcom/google/android/gms/internal/ads/al1;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/al1;->f0:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->C:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ni0;->C:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x1

    if-eqz p4, :cond_3

    :try_start_2
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/ni0;->l:Lcom/google/android/gms/internal/ads/sj0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni0;->t:Lcom/google/android/gms/internal/ads/ok0;

    invoke-virtual {p4, v1}, Lcom/google/android/gms/internal/ads/sj0;->c(Lcom/google/android/gms/internal/ads/ok0;)V

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/ni0;->k:Lcom/google/android/gms/internal/ads/bj0;

    invoke-interface {p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/bj0;->i(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ni0;->u:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    sget-object p4, Lcom/google/android/gms/internal/ads/m3;->V1:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_5

    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_4
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_4

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ni0;->P(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/ni0;->l:Lcom/google/android/gms/internal/ads/sj0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni0;->t:Lcom/google/android/gms/internal/ads/ok0;

    invoke-virtual {p4, v1}, Lcom/google/android/gms/internal/ads/sj0;->c(Lcom/google/android/gms/internal/ads/ok0;)V

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/ni0;->k:Lcom/google/android/gms/internal/ads/bj0;

    invoke-interface {p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/bj0;->i(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ni0;->u:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public final declared-synchronized G(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->k:Lcom/google/android/gms/internal/ads/bj0;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/bj0;->h(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized H(Landroid/view/View;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->k:Lcom/google/android/gms/internal/ads/bj0;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/bj0;->j(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized I(Lcom/google/android/gms/internal/ads/v7;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->k:Lcom/google/android/gms/internal/ads/bj0;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/bj0;->l(Lcom/google/android/gms/internal/ads/v7;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized J()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->k:Lcom/google/android/gms/internal/ads/bj0;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/bj0;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized K(Lcom/google/android/gms/internal/ads/v0;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->k:Lcom/google/android/gms/internal/ads/bj0;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/bj0;->r(Lcom/google/android/gms/internal/ads/v0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized L(Lcom/google/android/gms/internal/ads/s0;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->k:Lcom/google/android/gms/internal/ads/bj0;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/bj0;->b(Lcom/google/android/gms/internal/ads/s0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized M()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->k:Lcom/google/android/gms/internal/ads/bj0;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/bj0;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized N()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->t:Lcom/google/android/gms/internal/ads/ok0;

    if-nez v0, :cond_0

    const-string v0, "Ad should be associated with an ad view before calling recordCustomClickGesture()"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/po;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    instance-of v0, v0, Lcom/google/android/gms/internal/ads/mj0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni0;->i:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/li0;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/li0;-><init>(Lcom/google/android/gms/internal/ads/ni0;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized O()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->k:Lcom/google/android/gms/internal/ads/bj0;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/bj0;->e()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->i:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/gi0;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/gi0;-><init>(Lcom/google/android/gms/internal/ads/ni0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->j:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si0;->X()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->i:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni0;->k:Lcom/google/android/gms/internal/ads/bj0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/hi0;->a(Lcom/google/android/gms/internal/ads/bj0;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/u30;->a()V

    return-void
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->i:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/ii0;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/ii0;-><init>(Lcom/google/android/gms/internal/ads/ni0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/u30;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->m:Lcom/google/android/gms/internal/ads/yi0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yi0;->c()Z

    move-result v0

    return v0
.end method

.method public final h(Ljava/lang/String;Z)V
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->m:Lcom/google/android/gms/internal/ads/yi0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yi0;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->j:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si0;->p()Lcom/google/android/gms/internal/ads/jt;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni0;->j:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/si0;->o()Lcom/google/android/gms/internal/ads/jt;

    move-result-object v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const-string v2, "javascript"

    move-object v0, v1

    :goto_1
    move-object v7, v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->s()Lcom/google/android/gms/internal/ads/vh;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ni0;->z:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/vh;->D0(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string p1, "Failed to initialize omid in InternalNativeAd"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->f(Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ni0;->y:Lcom/google/android/gms/internal/ads/zzbbq;

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzbbq;->c:I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbbq;->d:I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x17

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/google/android/gms/internal/ads/m3;->V2:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_5

    sget-object v2, Lcom/google/android/gms/internal/ads/zzaug;->d:Lcom/google/android/gms/internal/ads/zzaug;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzauh;->c:Lcom/google/android/gms/internal/ads/zzauh;

    :goto_2
    move-object v10, v2

    move-object v9, v4

    goto :goto_3

    :cond_5
    sget-object v2, Lcom/google/android/gms/internal/ads/zzaug;->c:Lcom/google/android/gms/internal/ads/zzaug;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ni0;->j:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/si0;->X()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    sget-object v4, Lcom/google/android/gms/internal/ads/zzauh;->e:Lcom/google/android/gms/internal/ads/zzauh;

    goto :goto_2

    :cond_6
    sget-object v4, Lcom/google/android/gms/internal/ads/zzauh;->d:Lcom/google/android/gms/internal/ads/zzauh;

    goto :goto_2

    :goto_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->s()Lcom/google/android/gms/internal/ads/vh;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jt;->V()Landroid/webkit/WebView;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/u30;->b:Lcom/google/android/gms/internal/ads/al1;

    iget-object v11, v5, Lcom/google/android/gms/internal/ads/al1;->g0:Ljava/lang/String;

    const-string v5, ""

    const-string v6, "javascript"

    move-object v8, p1

    invoke-interface/range {v2 .. v11}, Lcom/google/android/gms/internal/ads/vh;->B0(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzauh;Lcom/google/android/gms/internal/ads/zzaug;Ljava/lang/String;)Lcom/google/android/gms/dynamic/a;

    move-result-object p1

    goto :goto_4

    :cond_7
    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->s()Lcom/google/android/gms/internal/ads/vh;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jt;->V()Landroid/webkit/WebView;

    move-result-object v4

    const-string v5, ""

    const-string v6, "javascript"

    move-object v8, p1

    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/vh;->G0(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/dynamic/a;

    move-result-object p1

    :goto_4
    if-nez p1, :cond_8

    const-string p1, "Failed to create omid session in InternalNativeAd"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->f(Ljava/lang/String;)V

    return-void

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ni0;->j:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/si0;->R(Lcom/google/android/gms/dynamic/a;)V

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/jt;->H(Lcom/google/android/gms/dynamic/a;)V

    if-eqz v1, :cond_9

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/jt;->G()Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->s()Lcom/google/android/gms/internal/ads/vh;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/google/android/gms/internal/ads/vh;->H0(Lcom/google/android/gms/dynamic/a;Landroid/view/View;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/ni0;->v:Z

    :cond_9
    if-eqz p2, :cond_a

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->s()Lcom/google/android/gms/internal/ads/vh;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/vh;->A0(Lcom/google/android/gms/dynamic/a;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/m3;->X2:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    new-instance p1, Ld/e/a;

    invoke-direct {p1}, Ld/e/a;-><init>()V

    const-string p2, "onSdkLoaded"

    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/ads/lb;->X(Ljava/lang/String;Ljava/util/Map;)V

    :cond_a
    return-void
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->m:Lcom/google/android/gms/internal/ads/yi0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yi0;->d()Z

    move-result v0

    return v0
.end method

.method public final j(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->j:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si0;->q()Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni0;->j:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/si0;->p()Lcom/google/android/gms/internal/ads/jt;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ni0;->m:Lcom/google/android/gms/internal/ads/yi0;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/yi0;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->s()Lcom/google/android/gms/internal/ads/vh;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/google/android/gms/internal/ads/vh;->H0(Lcom/google/android/gms/dynamic/a;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final k(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->j:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si0;->q()Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni0;->m:Lcom/google/android/gms/internal/ads/yi0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/yi0;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->s()Lcom/google/android/gms/internal/ads/vh;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/google/android/gms/internal/ads/vh;->F0(Lcom/google/android/gms/dynamic/a;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final l()Lcom/google/android/gms/internal/ads/pi0;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->A:Lcom/google/android/gms/internal/ads/pi0;

    return-object v0
.end method

.method public final declared-synchronized m(Lcom/google/android/gms/internal/ads/g1;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->B:Lcom/google/android/gms/internal/ads/i71;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/i71;->a(Lcom/google/android/gms/internal/ads/g1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final synthetic n(Z)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->k:Lcom/google/android/gms/internal/ads/bj0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni0;->t:Lcom/google/android/gms/internal/ads/ok0;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ok0;->M4()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ni0;->t:Lcom/google/android/gms/internal/ads/ok0;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/ok0;->h()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ni0;->t:Lcom/google/android/gms/internal/ads/ok0;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/ok0;->j()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/bj0;->s(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V

    return-void
.end method

.method final synthetic o(Lcom/google/android/gms/internal/ads/ok0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ni0;->v(Lcom/google/android/gms/internal/ads/ok0;)V

    return-void
.end method

.method final synthetic p(Lcom/google/android/gms/internal/ads/ok0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ni0;->u(Lcom/google/android/gms/internal/ads/ok0;)V

    return-void
.end method

.method final synthetic q()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->k:Lcom/google/android/gms/internal/ads/bj0;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/bj0;->A()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->j:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si0;->v()V

    return-void
.end method

.method final bridge synthetic t()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->j:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si0;->X()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "Google"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    :try_start_1
    const-string v0, "Wrong native template id!"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/po;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->n:Lcom/google/android/gms/internal/ads/ej0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ej0;->e()Lcom/google/android/gms/internal/ads/jb;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->n:Lcom/google/android/gms/internal/ads/ej0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ej0;->e()Lcom/google/android/gms/internal/ads/jb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni0;->r:Lcom/google/android/gms/internal/ads/yg2;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/yg2;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/cb;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/jb;->B1(Lcom/google/android/gms/internal/ads/cb;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->n:Lcom/google/android/gms/internal/ads/ej0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ej0;->c()Lcom/google/android/gms/internal/ads/q7;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/ni0;->h(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->n:Lcom/google/android/gms/internal/ads/ej0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ej0;->c()Lcom/google/android/gms/internal/ads/q7;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni0;->q:Lcom/google/android/gms/internal/ads/yg2;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/yg2;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/y7;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/q7;->C5(Lcom/google/android/gms/internal/ads/y7;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->n:Lcom/google/android/gms/internal/ads/ej0;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ni0;->j:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/si0;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/ej0;->f(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/j7;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->j:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si0;->o()Lcom/google/android/gms/internal/ads/jt;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/ni0;->h(Ljava/lang/String;Z)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->n:Lcom/google/android/gms/internal/ads/ej0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni0;->j:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/si0;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ej0;->f(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/j7;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni0;->s:Lcom/google/android/gms/internal/ads/yg2;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/yg2;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/w6;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/j7;->m5(Lcom/google/android/gms/internal/ads/w6;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->n:Lcom/google/android/gms/internal/ads/ej0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ej0;->b()Lcom/google/android/gms/internal/ads/a7;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/ni0;->h(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->n:Lcom/google/android/gms/internal/ads/ej0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ej0;->b()Lcom/google/android/gms/internal/ads/a7;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni0;->p:Lcom/google/android/gms/internal/ads/yg2;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/yg2;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/q6;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/a7;->i1(Lcom/google/android/gms/internal/ads/q6;)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->n:Lcom/google/android/gms/internal/ads/ej0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ej0;->a()Lcom/google/android/gms/internal/ads/d7;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/ni0;->h(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->n:Lcom/google/android/gms/internal/ads/ej0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ej0;->a()Lcom/google/android/gms/internal/ads/d7;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni0;->o:Lcom/google/android/gms/internal/ads/yg2;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/yg2;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/s6;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/d7;->e6(Lcom/google/android/gms/internal/ads/s6;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    return-void

    :catch_0
    move-exception v0

    const-string v1, "RemoteException when notifyAdLoad is called"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/po;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final declared-synchronized w(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->k:Lcom/google/android/gms/internal/ads/bj0;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/bj0;->I0(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized x()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ni0;->u:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->k:Lcom/google/android/gms/internal/ads/bj0;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/bj0;->m()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized y(Landroid/os/Bundle;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->k:Lcom/google/android/gms/internal/ads/bj0;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/bj0;->q(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized z(Landroid/os/Bundle;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ni0;->u:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni0;->k:Lcom/google/android/gms/internal/ads/bj0;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/bj0;->p(Landroid/os/Bundle;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ni0;->u:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
