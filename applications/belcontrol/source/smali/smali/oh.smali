.class public Loh;
.super Lag;
.source ""

# interfaces
.implements Lfh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loh$b;
    }
.end annotation


# instance fields
.field public A:Lhp;

.field public B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public C:Z

.field public D:Lbu;

.field public E:Z

.field public final b:[Ljh;

.field public final c:Lmg;

.field public final d:Landroid/os/Handler;

.field public final e:Loh$b;

.field public final f:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Luu;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lxh;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lio;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcv;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lfi;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lgs;

.field public final l:Lqh;

.field public final m:Lwh;

.field public n:Landroidx/media2/exoplayer/external/Format;

.field public o:Landroidx/media2/exoplayer/external/Format;

.field public p:Landroid/view/Surface;

.field public q:Z

.field public r:Landroid/view/SurfaceHolder;

.field public s:Landroid/view/TextureView;

.field public t:I

.field public u:I

.field public v:Lyi;

.field public w:Lyi;

.field public x:I

.field public y:Luh;

.field public z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmh;Lbs;Lyg;Lmj;Lgs;Lqh$a;Landroid/os/Looper;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lmh;",
            "Lbs;",
            "Lyg;",
            "Lmj<",
            "Lqj;",
            ">;",
            "Lgs;",
            "Lqh$a;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    sget-object v8, Ljt;->a:Ljt;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Loh;-><init>(Landroid/content/Context;Lmh;Lbs;Lyg;Lmj;Lgs;Lqh$a;Ljt;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmh;Lbs;Lyg;Lmj;Lgs;Lqh$a;Ljt;Landroid/os/Looper;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lmh;",
            "Lbs;",
            "Lyg;",
            "Lmj<",
            "Lqj;",
            ">;",
            "Lgs;",
            "Lqh$a;",
            "Ljt;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {p0 .. p0}, Lag;-><init>()V

    iput-object v9, v0, Loh;->k:Lgs;

    new-instance v10, Loh$b;

    const/4 v1, 0x0

    invoke-direct {v10, v0, v1}, Loh$b;-><init>(Loh;Loh$a;)V

    iput-object v10, v0, Loh;->e:Loh$b;

    new-instance v11, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v11}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v11, v0, Loh;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v12, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v12}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v12, v0, Loh;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v0, Loh;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v13, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v13}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v13, v0, Loh;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v14, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v14}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v14, v0, Loh;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v15, Landroid/os/Handler;

    move-object/from16 v7, p9

    invoke-direct {v15, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v15, v0, Loh;->d:Landroid/os/Handler;

    move-object/from16 v1, p2

    move-object v2, v15

    move-object v3, v10

    move-object v4, v10

    move-object v5, v10

    move-object v6, v10

    move-object/from16 v7, p5

    invoke-interface/range {v1 .. v7}, Lmh;->a(Landroid/os/Handler;Lcv;Lfi;Llr;Lio;Lmj;)[Ljh;

    move-result-object v2

    iput-object v2, v0, Loh;->b:[Ljh;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Loh;->z:F

    const/4 v1, 0x0

    iput v1, v0, Loh;->x:I

    sget-object v1, Luh;->e:Luh;

    iput-object v1, v0, Loh;->y:Luh;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Loh;->B:Ljava/util/List;

    new-instance v7, Lmg;

    move-object v1, v7

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p8

    move-object v8, v7

    move-object/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Lmg;-><init>([Ljh;Lbs;Lyg;Lgs;Ljt;Landroid/os/Looper;)V

    iput-object v8, v0, Loh;->c:Lmg;

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    invoke-virtual {v1, v8, v2}, Lqh$a;->a(Lfh;Ljt;)Lqh;

    move-result-object v1

    iput-object v1, v0, Loh;->l:Lqh;

    invoke-virtual {v0, v1}, Loh;->x(Lfh$b;)V

    invoke-virtual {v0, v10}, Loh;->x(Lfh$b;)V

    invoke-virtual {v13, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Loh;->y(Lio;)V

    invoke-interface {v9, v15, v1}, Lgs;->a(Landroid/os/Handler;Lgs$a;)V

    move-object/from16 v2, p5

    instance-of v3, v2, Lkj;

    if-eqz v3, :cond_0

    check-cast v2, Lkj;

    invoke-virtual {v2, v15, v1}, Lkj;->f(Landroid/os/Handler;Lhj;)V

    :cond_0
    new-instance v1, Lwh;

    move-object/from16 v2, p1

    invoke-direct {v1, v2, v10}, Lwh;-><init>(Landroid/content/Context;Lwh$c;)V

    iput-object v1, v0, Loh;->m:Lwh;

    return-void
.end method

.method public static synthetic e(Loh;Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/Format;
    .locals 0

    iput-object p1, p0, Loh;->o:Landroidx/media2/exoplayer/external/Format;

    return-object p1
.end method

.method public static synthetic f(Loh;Lyi;)Lyi;
    .locals 0

    iput-object p1, p0, Loh;->v:Lyi;

    return-object p1
.end method

.method public static synthetic g(Loh;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    iget-object p0, p0, Loh;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic h(Loh;Landroid/view/Surface;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Loh;->V(Landroid/view/Surface;Z)V

    return-void
.end method

.method public static synthetic i(Loh;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Loh;->I(II)V

    return-void
.end method

.method public static synthetic j(Loh;)V
    .locals 0

    invoke-virtual {p0}, Loh;->N()V

    return-void
.end method

.method public static synthetic k(Loh;ZI)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Loh;->X(ZI)V

    return-void
.end method

.method public static synthetic l(Loh;)Lbu;
    .locals 0

    iget-object p0, p0, Loh;->D:Lbu;

    return-object p0
.end method

.method public static synthetic m(Loh;)Z
    .locals 0

    iget-boolean p0, p0, Loh;->E:Z

    return p0
.end method

.method public static synthetic n(Loh;Z)Z
    .locals 0

    iput-boolean p1, p0, Loh;->E:Z

    return p1
.end method

.method public static synthetic o(Loh;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    iget-object p0, p0, Loh;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic p(Loh;Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/Format;
    .locals 0

    iput-object p1, p0, Loh;->n:Landroidx/media2/exoplayer/external/Format;

    return-object p1
.end method

.method public static synthetic q(Loh;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    iget-object p0, p0, Loh;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic r(Loh;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Loh;->p:Landroid/view/Surface;

    return-object p0
.end method

.method public static synthetic s(Loh;Lyi;)Lyi;
    .locals 0

    iput-object p1, p0, Loh;->w:Lyi;

    return-object p1
.end method

.method public static synthetic t(Loh;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    iget-object p0, p0, Loh;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic u(Loh;)I
    .locals 0

    iget p0, p0, Loh;->x:I

    return p0
.end method

.method public static synthetic v(Loh;I)I
    .locals 0

    iput p1, p0, Loh;->x:I

    return p1
.end method

.method public static synthetic w(Loh;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    iget-object p0, p0, Loh;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method


# virtual methods
.method public A()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Loh;->c:Lmg;

    invoke-virtual {v0}, Lmg;->h()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public B()Luh;
    .locals 1

    iget-object v0, p0, Loh;->y:Luh;

    return-object v0
.end method

.method public C()Z
    .locals 1

    invoke-virtual {p0}, Loh;->Y()V

    iget-object v0, p0, Loh;->c:Lmg;

    invoke-virtual {v0}, Lmg;->k()Z

    move-result v0

    return v0
.end method

.method public D()Lfg;
    .locals 1

    invoke-virtual {p0}, Loh;->Y()V

    iget-object v0, p0, Loh;->c:Lmg;

    invoke-virtual {v0}, Lmg;->l()Lfg;

    move-result-object v0

    return-object v0
.end method

.method public E()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Loh;->c:Lmg;

    invoke-virtual {v0}, Lmg;->m()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public F()I
    .locals 1

    invoke-virtual {p0}, Loh;->Y()V

    iget-object v0, p0, Loh;->c:Lmg;

    invoke-virtual {v0}, Lmg;->n()I

    move-result v0

    return v0
.end method

.method public G()I
    .locals 1

    invoke-virtual {p0}, Loh;->Y()V

    iget-object v0, p0, Loh;->c:Lmg;

    invoke-virtual {v0}, Lmg;->o()I

    move-result v0

    return v0
.end method

.method public H()F
    .locals 1

    iget v0, p0, Loh;->z:F

    return v0
.end method

.method public final I(II)V
    .locals 2

    iget v0, p0, Loh;->t:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Loh;->u:I

    if-eq p2, v0, :cond_1

    :cond_0
    iput p1, p0, Loh;->t:I

    iput p2, p0, Loh;->u:I

    iget-object v0, p0, Loh;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luu;

    invoke-interface {v1, p1, p2}, Luu;->h(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public J(Lhp;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Loh;->K(Lhp;ZZ)V

    return-void
.end method

.method public K(Lhp;ZZ)V
    .locals 2

    invoke-virtual {p0}, Loh;->Y()V

    iget-object v0, p0, Loh;->A:Lhp;

    if-eqz v0, :cond_0

    iget-object v1, p0, Loh;->l:Lqh;

    invoke-interface {v0, v1}, Lhp;->d(Lqp;)V

    iget-object v0, p0, Loh;->l:Lqh;

    invoke-virtual {v0}, Lqh;->G()V

    :cond_0
    iput-object p1, p0, Loh;->A:Lhp;

    iget-object v0, p0, Loh;->d:Landroid/os/Handler;

    iget-object v1, p0, Loh;->l:Lqh;

    invoke-interface {p1, v0, v1}, Lhp;->f(Landroid/os/Handler;Lqp;)V

    iget-object v0, p0, Loh;->m:Lwh;

    invoke-virtual {p0}, Loh;->C()Z

    move-result v1

    invoke-virtual {v0, v1}, Lwh;->o(Z)I

    move-result v0

    invoke-virtual {p0}, Loh;->C()Z

    move-result v1

    invoke-virtual {p0, v1, v0}, Loh;->X(ZI)V

    iget-object v0, p0, Loh;->c:Lmg;

    invoke-virtual {v0, p1, p2, p3}, Lmg;->C(Lhp;ZZ)V

    return-void
.end method

.method public L()V
    .locals 3

    invoke-virtual {p0}, Loh;->Y()V

    iget-object v0, p0, Loh;->m:Lwh;

    invoke-virtual {v0}, Lwh;->q()V

    iget-object v0, p0, Loh;->c:Lmg;

    invoke-virtual {v0}, Lmg;->D()V

    invoke-virtual {p0}, Loh;->M()V

    iget-object v0, p0, Loh;->p:Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Loh;->q:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_0
    iput-object v1, p0, Loh;->p:Landroid/view/Surface;

    :cond_1
    iget-object v0, p0, Loh;->A:Lhp;

    if-eqz v0, :cond_2

    iget-object v2, p0, Loh;->l:Lqh;

    invoke-interface {v0, v2}, Lhp;->d(Lqp;)V

    iput-object v1, p0, Loh;->A:Lhp;

    :cond_2
    iget-boolean v0, p0, Loh;->E:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Loh;->D:Lbu;

    invoke-static {v0}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lbu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbu;->b(I)V

    iput-boolean v1, p0, Loh;->E:Z

    :cond_3
    iget-object v0, p0, Loh;->k:Lgs;

    iget-object v1, p0, Loh;->l:Lqh;

    invoke-interface {v0, v1}, Lgs;->c(Lgs$a;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Loh;->B:Ljava/util/List;

    return-void
.end method

.method public final M()V
    .locals 3

    iget-object v0, p0, Loh;->s:Landroid/view/TextureView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v2, p0, Loh;->e:Loh$b;

    if-eq v0, v2, :cond_0

    const-string v0, "SimpleExoPlayer"

    const-string v2, "SurfaceTextureListener already unset or replaced."

    invoke-static {v0, v2}, Lst;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Loh;->s:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :goto_0
    iput-object v1, p0, Loh;->s:Landroid/view/TextureView;

    :cond_1
    iget-object v0, p0, Loh;->r:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_2

    iget-object v2, p0, Loh;->e:Loh$b;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    iput-object v1, p0, Loh;->r:Landroid/view/SurfaceHolder;

    :cond_2
    return-void
.end method

.method public final N()V
    .locals 7

    iget v0, p0, Loh;->z:F

    iget-object v1, p0, Loh;->m:Lwh;

    invoke-virtual {v1}, Lwh;->m()F

    move-result v1

    mul-float v0, v0, v1

    iget-object v1, p0, Loh;->b:[Ljh;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-interface {v4}, Ljh;->getTrackType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Loh;->c:Lmg;

    invoke-virtual {v5, v4}, Lmg;->g(Lhh$b;)Lhh;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lhh;->n(I)Lhh;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Lhh;->m(Ljava/lang/Object;)Lhh;

    invoke-virtual {v4}, Lhh;->l()Lhh;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public O(Luh;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Loh;->P(Luh;Z)V

    return-void
.end method

.method public P(Luh;Z)V
    .locals 6

    invoke-virtual {p0}, Loh;->Y()V

    iget-object v0, p0, Loh;->y:Luh;

    invoke-static {v0, p1}, Lnu;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p1, p0, Loh;->y:Luh;

    iget-object v0, p0, Loh;->b:[Ljh;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-interface {v3}, Ljh;->getTrackType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Loh;->c:Lmg;

    invoke-virtual {v4, v3}, Lmg;->g(Lhh$b;)Lhh;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lhh;->n(I)Lhh;

    invoke-virtual {v3, p1}, Lhh;->m(Ljava/lang/Object;)Lhh;

    invoke-virtual {v3}, Lhh;->l()Lhh;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Loh;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxh;

    invoke-interface {v1, p1}, Lxh;->k(Luh;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Loh;->m:Lwh;

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {p0}, Loh;->C()Z

    move-result p2

    invoke-virtual {p0}, Loh;->F()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lwh;->u(Luh;ZI)I

    move-result p1

    invoke-virtual {p0}, Loh;->C()Z

    move-result p2

    invoke-virtual {p0, p2, p1}, Loh;->X(ZI)V

    return-void
.end method

.method public Q(Z)V
    .locals 2

    invoke-virtual {p0}, Loh;->Y()V

    iget-object v0, p0, Loh;->m:Lwh;

    invoke-virtual {p0}, Loh;->F()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lwh;->p(ZI)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Loh;->X(ZI)V

    return-void
.end method

.method public R(Leh;)V
    .locals 1

    invoke-virtual {p0}, Loh;->Y()V

    iget-object v0, p0, Loh;->c:Lmg;

    invoke-virtual {v0, p1}, Lmg;->F(Leh;)V

    return-void
.end method

.method public S(Lnh;)V
    .locals 1

    invoke-virtual {p0}, Loh;->Y()V

    iget-object v0, p0, Loh;->c:Lmg;

    invoke-virtual {v0, p1}, Lmg;->G(Lnh;)V

    return-void
.end method

.method public T(Lcv;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Loh;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Loh;->l:Lqh;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->retainAll(Ljava/util/Collection;)Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Loh;->z(Lcv;)V

    :cond_0
    return-void
.end method

.method public U(Landroid/view/Surface;)V
    .locals 1

    invoke-virtual {p0}, Loh;->Y()V

    invoke-virtual {p0}, Loh;->M()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Loh;->V(Landroid/view/Surface;Z)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v0, v0}, Loh;->I(II)V

    return-void
.end method

.method public final V(Landroid/view/Surface;Z)V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Loh;->b:[Ljh;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-interface {v4}, Ljh;->getTrackType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Loh;->c:Lmg;

    invoke-virtual {v5, v4}, Lmg;->g(Lhh$b;)Lhh;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lhh;->n(I)Lhh;

    invoke-virtual {v4, p1}, Lhh;->m(Ljava/lang/Object;)Lhh;

    invoke-virtual {v4}, Lhh;->l()Lhh;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Loh;->p:Landroid/view/Surface;

    if-eqz v1, :cond_3

    if-eq v1, p1, :cond_3

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhh;

    invoke-virtual {v1}, Lhh;->a()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    iget-boolean v0, p0, Loh;->q:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Loh;->p:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_3
    iput-object p1, p0, Loh;->p:Landroid/view/Surface;

    iput-boolean p2, p0, Loh;->q:Z

    return-void
.end method

.method public W(F)V
    .locals 2

    invoke-virtual {p0}, Loh;->Y()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lnu;->m(FFF)F

    move-result p1

    iget v0, p0, Loh;->z:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Loh;->z:F

    invoke-virtual {p0}, Loh;->N()V

    iget-object v0, p0, Loh;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxh;

    invoke-interface {v1, p1}, Lxh;->m(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final X(ZI)V
    .locals 3

    iget-object v0, p0, Loh;->c:Lmg;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eq p2, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, p1, v1}, Lmg;->E(ZZ)V

    return-void
.end method

.method public final Y()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Loh;->A()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Loh;->C:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    :goto_0
    const-string v1, "SimpleExoPlayer"

    const-string v2, "Player is accessed on the wrong thread. See https://exoplayer.dev/troubleshooting.html#what-do-player-is-accessed-on-the-wrong-thread-warnings-mean"

    invoke-static {v1, v2, v0}, Lst;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Loh;->C:Z

    :cond_1
    return-void
.end method

.method public a()J
    .locals 2

    invoke-virtual {p0}, Loh;->Y()V

    iget-object v0, p0, Loh;->c:Lmg;

    invoke-virtual {v0}, Lmg;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBufferedPosition()J
    .locals 2

    invoke-virtual {p0}, Loh;->Y()V

    iget-object v0, p0, Loh;->c:Lmg;

    invoke-virtual {v0}, Lmg;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentPosition()J
    .locals 2

    invoke-virtual {p0}, Loh;->Y()V

    iget-object v0, p0, Loh;->c:Lmg;

    invoke-virtual {v0}, Lmg;->getContentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 1

    invoke-virtual {p0}, Loh;->Y()V

    iget-object v0, p0, Loh;->c:Lmg;

    invoke-virtual {v0}, Lmg;->getCurrentAdGroupIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 1

    invoke-virtual {p0}, Loh;->Y()V

    iget-object v0, p0, Loh;->c:Lmg;

    invoke-virtual {v0}, Lmg;->getCurrentAdIndexInAdGroup()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    invoke-virtual {p0}, Loh;->Y()V

    iget-object v0, p0, Loh;->c:Lmg;

    invoke-virtual {v0}, Lmg;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentTimeline()Lph;
    .locals 1

    invoke-virtual {p0}, Loh;->Y()V

    iget-object v0, p0, Loh;->c:Lmg;

    invoke-virtual {v0}, Lmg;->getCurrentTimeline()Lph;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTrackSelections()Lzr;
    .locals 1

    invoke-virtual {p0}, Loh;->Y()V

    iget-object v0, p0, Loh;->c:Lmg;

    invoke-virtual {v0}, Lmg;->getCurrentTrackSelections()Lzr;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWindowIndex()I
    .locals 1

    invoke-virtual {p0}, Loh;->Y()V

    iget-object v0, p0, Loh;->c:Lmg;

    invoke-virtual {v0}, Lmg;->getCurrentWindowIndex()I

    move-result v0

    return v0
.end method

.method public getDuration()J
    .locals 2

    invoke-virtual {p0}, Loh;->Y()V

    iget-object v0, p0, Loh;->c:Lmg;

    invoke-virtual {v0}, Lmg;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public seekTo(IJ)V
    .locals 1

    invoke-virtual {p0}, Loh;->Y()V

    iget-object v0, p0, Loh;->l:Lqh;

    invoke-virtual {v0}, Lqh;->F()V

    iget-object v0, p0, Loh;->c:Lmg;

    invoke-virtual {v0, p1, p2, p3}, Lmg;->seekTo(IJ)V

    return-void
.end method

.method public x(Lfh$b;)V
    .locals 1

    invoke-virtual {p0}, Loh;->Y()V

    iget-object v0, p0, Loh;->c:Lmg;

    invoke-virtual {v0, p1}, Lmg;->f(Lfh$b;)V

    return-void
.end method

.method public y(Lio;)V
    .locals 1

    iget-object v0, p0, Loh;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public z(Lcv;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Loh;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method
