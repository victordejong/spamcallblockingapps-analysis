.class public final Lpv;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpv$f;,
        Lpv$c;,
        Lpv$e;,
        Lpv$g;,
        Lpv$b;,
        Lpv$d;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lpv$d;

.field public final c:Landroid/os/Looper;

.field public final d:Landroid/os/Handler;

.field public final e:Lss;

.field public final f:Ljava/lang/Runnable;

.field public g:Loh;

.field public h:Landroid/os/Handler;

.field public i:Lmi;

.field public j:Lvv;

.field public k:Lpv$f;

.field public l:Z

.field public m:I

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:I

.field public s:I

.field public t:Lhv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lpv$d;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lpv;->a:Landroid/content/Context;

    iput-object p2, p0, Lpv;->b:Lpv$d;

    iput-object p3, p0, Lpv;->c:Landroid/os/Looper;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lpv;->d:Landroid/os/Handler;

    new-instance p1, Lss;

    invoke-direct {p1}, Lss;-><init>()V

    iput-object p1, p0, Lpv;->e:Lss;

    new-instance p1, Lpv$g;

    invoke-direct {p1, p0}, Lpv$g;-><init>(Lpv;)V

    iput-object p1, p0, Lpv;->f:Ljava/lang/Runnable;

    return-void
.end method

.method public static V(Landroid/os/Handler;Lmi;I)V
    .locals 1

    new-instance v0, Lpv$a;

    invoke-direct {v0, p1, p2}, Lpv$a;-><init>(Lmi;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public A(IIF)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p3, v0

    if-eqz v0, :cond_0

    int-to-float v0, p1

    mul-float p3, p3, v0

    float-to-int p3, p3

    iput p3, p0, Lpv;->r:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lpv;->r:I

    :goto_0
    iput p2, p0, Lpv;->s:I

    iget-object p3, p0, Lpv;->b:Lpv$d;

    iget-object v0, p0, Lpv;->k:Lpv$f;

    invoke-virtual {v0}, Lpv$f;->c()Landroidx/media2/common/MediaItem;

    move-result-object v0

    invoke-interface {p3, v0, p1, p2}, Lpv$d;->k(Landroidx/media2/common/MediaItem;II)V

    return-void
.end method

.method public B()Z
    .locals 1

    iget-object v0, p0, Lpv;->g:Loh;

    invoke-virtual {v0}, Loh;->D()Lfg;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final C()V
    .locals 6

    iget-boolean v0, p0, Lpv;->n:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lpv;->p:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lpv;->p:Z

    iget-object v0, p0, Lpv;->k:Lpv$f;

    invoke-virtual {v0}, Lpv$f;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpv;->b:Lpv$d;

    invoke-virtual {p0}, Lpv;->e()Landroidx/media2/common/MediaItem;

    move-result-object v1

    iget-object v2, p0, Lpv;->e:Lss;

    invoke-virtual {v2}, Lss;->getBitrateEstimate()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v3, v2

    invoke-interface {v0, v1, v3}, Lpv$d;->a(Landroidx/media2/common/MediaItem;I)V

    :cond_0
    iget-object v0, p0, Lpv;->b:Lpv$d;

    invoke-virtual {p0}, Lpv;->e()Landroidx/media2/common/MediaItem;

    move-result-object v1

    invoke-interface {v0, v1}, Lpv$d;->b(Landroidx/media2/common/MediaItem;)V

    :cond_1
    return-void
.end method

.method public final D()V
    .locals 2

    iget-boolean v0, p0, Lpv;->q:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lpv;->q:Z

    iget-object v0, p0, Lpv;->b:Lpv$d;

    invoke-interface {v0}, Lpv$d;->h()V

    :cond_0
    iget-object v0, p0, Lpv;->g:Loh;

    invoke-virtual {v0}, Loh;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpv;->k:Lpv$f;

    invoke-virtual {v0}, Lpv$f;->g()V

    iget-object v0, p0, Lpv;->g:Loh;

    invoke-virtual {v0, v1}, Loh;->Q(Z)V

    :cond_1
    return-void
.end method

.method public final E()V
    .locals 6

    iget-object v0, p0, Lpv;->k:Lpv$f;

    invoke-virtual {v0}, Lpv$f;->c()Landroidx/media2/common/MediaItem;

    move-result-object v0

    iget-boolean v1, p0, Lpv;->n:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iget-boolean v3, p0, Lpv;->q:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lpv;->n:Z

    iput-boolean v2, p0, Lpv;->o:Z

    iget-object v1, p0, Lpv;->k:Lpv$f;

    invoke-virtual {v1, v4}, Lpv$f;->i(Z)V

    iget-object v1, p0, Lpv;->b:Lpv$d;

    invoke-interface {v1, v0}, Lpv$d;->n(Landroidx/media2/common/MediaItem;)V

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    iput-boolean v4, p0, Lpv;->q:Z

    iget-object v0, p0, Lpv;->b:Lpv$d;

    invoke-interface {v0}, Lpv$d;->h()V

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lpv;->p:Z

    if-eqz v0, :cond_3

    iput-boolean v4, p0, Lpv;->p:Z

    iget-object v0, p0, Lpv;->k:Lpv$f;

    invoke-virtual {v0}, Lpv$f;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lpv;->b:Lpv$d;

    invoke-virtual {p0}, Lpv;->e()Landroidx/media2/common/MediaItem;

    move-result-object v1

    iget-object v2, p0, Lpv;->e:Lss;

    invoke-virtual {v2}, Lss;->getBitrateEstimate()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v3, v2

    invoke-interface {v0, v1, v3}, Lpv$d;->a(Landroidx/media2/common/MediaItem;I)V

    :cond_2
    iget-object v0, p0, Lpv;->b:Lpv$d;

    invoke-virtual {p0}, Lpv;->e()Landroidx/media2/common/MediaItem;

    move-result-object v1

    invoke-interface {v0, v1}, Lpv$d;->l(Landroidx/media2/common/MediaItem;)V

    :cond_3
    return-void
.end method

.method public final F()V
    .locals 1

    iget-object v0, p0, Lpv;->k:Lpv$f;

    invoke-virtual {v0}, Lpv$f;->h()V

    return-void
.end method

.method public final G()V
    .locals 1

    iget-object v0, p0, Lpv;->k:Lpv$f;

    invoke-virtual {v0}, Lpv$f;->j()V

    return-void
.end method

.method public H()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lpv;->o:Z

    iget-object v1, p0, Lpv;->g:Loh;

    invoke-virtual {v1, v0}, Loh;->Q(Z)V

    return-void
.end method

.method public I()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lpv;->o:Z

    iget-object v0, p0, Lpv;->g:Loh;

    invoke-virtual {v0}, Loh;->F()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lpv;->g:Loh;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lag;->d(J)V

    :cond_0
    iget-object v0, p0, Lpv;->g:Loh;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Loh;->Q(Z)V

    return-void
.end method

.method public J()V
    .locals 1

    iget-boolean v0, p0, Lpv;->n:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Loa;->f(Z)V

    iget-object v0, p0, Lpv;->k:Lpv$f;

    invoke-virtual {v0}, Lpv$f;->k()V

    return-void
.end method

.method public K()V
    .locals 12

    iget-object v0, p0, Lpv;->g:Loh;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Loh;->Q(Z)V

    invoke-virtual {p0}, Lpv;->k()I

    move-result v0

    const/16 v2, 0x3e9

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lpv;->b:Lpv$d;

    invoke-virtual {p0}, Lpv;->e()Landroidx/media2/common/MediaItem;

    move-result-object v2

    invoke-virtual {p0}, Lpv;->l()Lgv;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lpv$d;->p(Landroidx/media2/common/MediaItem;Lgv;)V

    :cond_0
    iget-object v0, p0, Lpv;->g:Loh;

    invoke-virtual {v0}, Loh;->L()V

    iget-object v0, p0, Lpv;->k:Lpv$f;

    invoke-virtual {v0}, Lpv$f;->b()V

    :cond_1
    new-instance v0, Lpv$b;

    invoke-direct {v0, p0}, Lpv$b;-><init>(Lpv;)V

    new-instance v2, Lmi;

    iget-object v3, p0, Lpv;->a:Landroid/content/Context;

    invoke-static {v3}, Lvh;->b(Landroid/content/Context;)Lvh;

    move-result-object v3

    new-array v4, v1, [Lyh;

    invoke-direct {v2, v3, v4}, Lmi;-><init>(Lvh;[Lyh;)V

    iput-object v2, p0, Lpv;->i:Lmi;

    new-instance v2, Luv;

    invoke-direct {v2, v0}, Luv;-><init>(Luv$c;)V

    new-instance v3, Lvv;

    invoke-direct {v3, v2}, Lvv;-><init>(Luv;)V

    iput-object v3, p0, Lpv;->j:Lvv;

    iget-object v4, p0, Lpv;->a:Landroid/content/Context;

    new-instance v5, Ltv;

    iget-object v6, p0, Lpv;->i:Lmi;

    invoke-direct {v5, v4, v6, v2}, Ltv;-><init>(Landroid/content/Context;Lgi;Luv;)V

    invoke-virtual {v3}, Lvv;->b()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    move-result-object v6

    new-instance v7, Ldg;

    invoke-direct {v7}, Ldg;-><init>()V

    const/4 v8, 0x0

    iget-object v9, p0, Lpv;->e:Lss;

    new-instance v10, Lqh$a;

    invoke-direct {v10}, Lqh$a;-><init>()V

    iget-object v11, p0, Lpv;->c:Landroid/os/Looper;

    invoke-static/range {v4 .. v11}, Lgg;->a(Landroid/content/Context;Lmh;Lbs;Lyg;Lmj;Lgs;Lqh$a;Landroid/os/Looper;)Loh;

    move-result-object v2

    iput-object v2, p0, Lpv;->g:Loh;

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lpv;->g:Loh;

    invoke-virtual {v3}, Loh;->E()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lpv;->h:Landroid/os/Handler;

    new-instance v2, Lpv$f;

    iget-object v3, p0, Lpv;->a:Landroid/content/Context;

    iget-object v4, p0, Lpv;->g:Loh;

    iget-object v5, p0, Lpv;->b:Lpv$d;

    invoke-direct {v2, v3, v4, v5}, Lpv$f;-><init>(Landroid/content/Context;Loh;Lpv$d;)V

    iput-object v2, p0, Lpv;->k:Lpv$f;

    iget-object v2, p0, Lpv;->g:Loh;

    invoke-virtual {v2, v0}, Loh;->x(Lfh$b;)V

    iget-object v2, p0, Lpv;->g:Loh;

    invoke-virtual {v2, v0}, Loh;->T(Lcv;)V

    iget-object v2, p0, Lpv;->g:Loh;

    invoke-virtual {v2, v0}, Loh;->y(Lio;)V

    iput v1, p0, Lpv;->r:I

    iput v1, p0, Lpv;->s:I

    iput-boolean v1, p0, Lpv;->n:Z

    iput-boolean v1, p0, Lpv;->o:Z

    iput-boolean v1, p0, Lpv;->p:Z

    iput-boolean v1, p0, Lpv;->q:Z

    iput-boolean v1, p0, Lpv;->l:Z

    iput v1, p0, Lpv;->m:I

    new-instance v0, Lhv$a;

    invoke-direct {v0}, Lhv$a;-><init>()V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lhv$a;->d(F)Lhv$a;

    invoke-virtual {v0, v2}, Lhv$a;->c(F)Lhv$a;

    invoke-virtual {v0, v1}, Lhv$a;->b(I)Lhv$a;

    invoke-virtual {v0}, Lhv$a;->a()Lhv;

    move-result-object v0

    iput-object v0, p0, Lpv;->t:Lhv;

    return-void
.end method

.method public L(JI)V
    .locals 3

    iget-object v0, p0, Lpv;->g:Loh;

    invoke-static {p3}, Lov;->g(I)Lnh;

    move-result-object p3

    invoke-virtual {v0, p3}, Loh;->S(Lnh;)V

    iget-object p3, p0, Lpv;->k:Lpv$f;

    invoke-virtual {p3}, Lpv$f;->c()Landroidx/media2/common/MediaItem;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroidx/media2/common/MediaItem;->i()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-gtz v2, :cond_0

    invoke-virtual {p3}, Landroidx/media2/common/MediaItem;->f()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested seek position is out of range : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Loa;->b(ZLjava/lang/Object;)V

    invoke-virtual {p3}, Landroidx/media2/common/MediaItem;->i()J

    move-result-wide v0

    sub-long/2addr p1, v0

    :cond_1
    iget-object p3, p0, Lpv;->g:Loh;

    invoke-virtual {p3, p1, p2}, Lag;->d(J)V

    return-void
.end method

.method public M(I)V
    .locals 1

    iget-object v0, p0, Lpv;->j:Lvv;

    invoke-virtual {v0, p1}, Lvv;->i(I)V

    return-void
.end method

.method public N(Landroidx/media/AudioAttributesCompat;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lpv;->l:Z

    iget-object v0, p0, Lpv;->g:Loh;

    invoke-static {p1}, Lov;->b(Landroidx/media/AudioAttributesCompat;)Luh;

    move-result-object p1

    invoke-virtual {v0, p1}, Loh;->O(Luh;)V

    iget p1, p0, Lpv;->m:I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lpv;->h:Landroid/os/Handler;

    iget-object v1, p0, Lpv;->i:Lmi;

    invoke-static {v0, v1, p1}, Lpv;->V(Landroid/os/Handler;Lmi;I)V

    :cond_0
    return-void
.end method

.method public O(Landroidx/media2/common/MediaItem;)V
    .locals 1

    iget-object v0, p0, Lpv;->k:Lpv$f;

    invoke-static {p1}, Loa;->d(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroidx/media2/common/MediaItem;

    invoke-virtual {v0, p1}, Lpv$f;->m(Landroidx/media2/common/MediaItem;)V

    return-void
.end method

.method public P(Landroidx/media2/common/MediaItem;)V
    .locals 1

    iget-object v0, p0, Lpv;->k:Lpv$f;

    invoke-virtual {v0}, Lpv$f;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Landroidx/media2/common/FileMediaItem;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/media2/common/FileMediaItem;

    invoke-virtual {p1}, Landroidx/media2/common/FileMediaItem;->n()V

    invoke-virtual {p1}, Landroidx/media2/common/FileMediaItem;->j()V

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    iget-object v0, p0, Lpv;->k:Lpv$f;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lpv$f;->n(Ljava/util/List;)V

    return-void
.end method

.method public Q(Lhv;)V
    .locals 2

    iput-object p1, p0, Lpv;->t:Lhv;

    iget-object v0, p0, Lpv;->g:Loh;

    invoke-static {p1}, Lov;->f(Lhv;)Leh;

    move-result-object p1

    invoke-virtual {v0, p1}, Loh;->R(Leh;)V

    invoke-virtual {p0}, Lpv;->k()I

    move-result p1

    const/16 v0, 0x3ec

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lpv;->b:Lpv$d;

    invoke-virtual {p0}, Lpv;->e()Landroidx/media2/common/MediaItem;

    move-result-object v0

    invoke-virtual {p0}, Lpv;->l()Lgv;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lpv$d;->p(Landroidx/media2/common/MediaItem;Lgv;)V

    :cond_0
    return-void
.end method

.method public R(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Lpv;->g:Loh;

    invoke-virtual {v0, p1}, Loh;->U(Landroid/view/Surface;)V

    return-void
.end method

.method public S(F)V
    .locals 1

    iget-object v0, p0, Lpv;->g:Loh;

    invoke-virtual {v0, p1}, Loh;->W(F)V

    return-void
.end method

.method public T()V
    .locals 1

    iget-object v0, p0, Lpv;->k:Lpv$f;

    invoke-virtual {v0}, Lpv$f;->o()V

    return-void
.end method

.method public U()V
    .locals 4

    iget-object v0, p0, Lpv;->k:Lpv$f;

    invoke-virtual {v0}, Lpv$f;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpv;->b:Lpv$d;

    invoke-virtual {p0}, Lpv;->e()Landroidx/media2/common/MediaItem;

    move-result-object v1

    iget-object v2, p0, Lpv;->g:Loh;

    invoke-virtual {v2}, Lag;->b()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lpv$d;->i(Landroidx/media2/common/MediaItem;I)V

    :cond_0
    iget-object v0, p0, Lpv;->d:Landroid/os/Handler;

    iget-object v1, p0, Lpv;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lpv;->d:Landroid/os/Handler;

    iget-object v1, p0, Lpv;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lpv;->g:Loh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpv;->d:Landroid/os/Handler;

    iget-object v1, p0, Lpv;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lpv;->g:Loh;

    invoke-virtual {v0}, Loh;->L()V

    const/4 v0, 0x0

    iput-object v0, p0, Lpv;->g:Loh;

    iget-object v0, p0, Lpv;->k:Lpv$f;

    invoke-virtual {v0}, Lpv$f;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lpv;->l:Z

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lpv;->j:Lvv;

    invoke-virtual {v0, p1}, Lvv;->a(I)V

    return-void
.end method

.method public c()Landroidx/media/AudioAttributesCompat;
    .locals 1

    iget-boolean v0, p0, Lpv;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpv;->g:Loh;

    invoke-virtual {v0}, Loh;->B()Luh;

    move-result-object v0

    invoke-static {v0}, Lov;->c(Luh;)Landroidx/media/AudioAttributesCompat;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public d()J
    .locals 4

    invoke-virtual {p0}, Lpv;->k()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Loa;->f(Z)V

    iget-object v0, p0, Lpv;->g:Loh;

    invoke-virtual {v0}, Loh;->getBufferedPosition()J

    move-result-wide v0

    iget-object v2, p0, Lpv;->k:Lpv$f;

    invoke-virtual {v2}, Lpv$f;->c()Landroidx/media2/common/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/media2/common/MediaItem;->i()J

    move-result-wide v2

    add-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method public e()Landroidx/media2/common/MediaItem;
    .locals 1

    iget-object v0, p0, Lpv;->k:Lpv$f;

    invoke-virtual {v0}, Lpv$f;->c()Landroidx/media2/common/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public f()J
    .locals 4

    invoke-virtual {p0}, Lpv;->k()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Loa;->f(Z)V

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lpv;->g:Loh;

    invoke-virtual {v2}, Loh;->getCurrentPosition()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lpv;->k:Lpv$f;

    invoke-virtual {v2}, Lpv$f;->c()Landroidx/media2/common/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/media2/common/MediaItem;->i()J

    move-result-wide v2

    add-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method public g()J
    .locals 5

    iget-object v0, p0, Lpv;->k:Lpv$f;

    invoke-virtual {v0}, Lpv$f;->d()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, -0x1

    :cond_0
    return-wide v0
.end method

.method public h()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lpv;->c:Landroid/os/Looper;

    return-object v0
.end method

.method public i()Lhv;
    .locals 1

    iget-object v0, p0, Lpv;->t:Lhv;

    return-object v0
.end method

.method public j(I)I
    .locals 1

    iget-object v0, p0, Lpv;->j:Lvv;

    invoke-virtual {v0, p1}, Lvv;->c(I)I

    move-result p1

    return p1
.end method

.method public k()I
    .locals 4

    invoke-virtual {p0}, Lpv;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3ed

    return v0

    :cond_0
    iget-boolean v0, p0, Lpv;->o:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x3ea

    return v0

    :cond_1
    iget-object v0, p0, Lpv;->g:Loh;

    invoke-virtual {v0}, Loh;->F()I

    move-result v0

    iget-object v1, p0, Lpv;->g:Loh;

    invoke-virtual {v1}, Loh;->C()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    const/16 v3, 0x3eb

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_3
    if-eqz v1, :cond_4

    const/16 v3, 0x3ec

    :cond_4
    :goto_0
    return v3

    :cond_5
    const/16 v0, 0x3e9

    return v0
.end method

.method public l()Lgv;
    .locals 8

    iget-object v0, p0, Lpv;->g:Loh;

    invoke-virtual {v0}, Loh;->F()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lpv;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcg;->a(J)J

    move-result-wide v0

    :goto_0
    move-wide v3, v0

    iget-object v0, p0, Lpv;->g:Loh;

    invoke-virtual {v0}, Loh;->F()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lpv;->g:Loh;

    invoke-virtual {v0}, Loh;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpv;->t:Lhv;

    invoke-virtual {v0}, Lhv;->d()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    move v7, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_1
    new-instance v0, Lgv;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lgv;-><init>(JJF)V

    return-object v0
.end method

.method public m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfv$c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lpv;->j:Lvv;

    invoke-virtual {v0}, Lvv;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lpv;->s:I

    return v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lpv;->r:I

    return v0
.end method

.method public p()F
    .locals 1

    iget-object v0, p0, Lpv;->g:Loh;

    invoke-virtual {v0}, Loh;->H()F

    move-result v0

    return v0
.end method

.method public q(I)V
    .locals 0

    iput p1, p0, Lpv;->m:I

    return-void
.end method

.method public r(Landroidx/media2/exoplayer/external/metadata/Metadata;)V
    .locals 8

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/metadata/Metadata;->d()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/metadata/Metadata;->c(I)Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    move-result-object v2

    check-cast v2, Landroidx/media2/player/exoplayer/ByteArrayFrame;

    iget-object v3, p0, Lpv;->b:Lpv$d;

    invoke-virtual {p0}, Lpv;->e()Landroidx/media2/common/MediaItem;

    move-result-object v4

    new-instance v5, Liv;

    iget-wide v6, v2, Landroidx/media2/player/exoplayer/ByteArrayFrame;->a:J

    iget-object v2, v2, Landroidx/media2/player/exoplayer/ByteArrayFrame;->b:[B

    invoke-direct {v5, v6, v7, v2}, Liv;-><init>(J[B)V

    invoke-interface {v3, v4, v5}, Lpv$d;->o(Landroidx/media2/common/MediaItem;Liv;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public s(Lfg;)V
    .locals 3

    iget-object v0, p0, Lpv;->b:Lpv$d;

    invoke-virtual {p0}, Lpv;->e()Landroidx/media2/common/MediaItem;

    move-result-object v1

    invoke-virtual {p0}, Lpv;->l()Lgv;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lpv$d;->p(Landroidx/media2/common/MediaItem;Lgv;)V

    iget-object v0, p0, Lpv;->b:Lpv$d;

    invoke-virtual {p0}, Lpv;->e()Landroidx/media2/common/MediaItem;

    move-result-object v1

    invoke-static {p1}, Lov;->d(Lfg;)I

    move-result p1

    invoke-interface {v0, v1, p1}, Lpv$d;->f(Landroidx/media2/common/MediaItem;I)V

    return-void
.end method

.method public t(ZI)V
    .locals 3

    iget-object v0, p0, Lpv;->b:Lpv$d;

    invoke-virtual {p0}, Lpv;->e()Landroidx/media2/common/MediaItem;

    move-result-object v1

    invoke-virtual {p0}, Lpv;->l()Lgv;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lpv$d;->p(Landroidx/media2/common/MediaItem;Lgv;)V

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lpv;->F()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lpv;->G()V

    :goto_0
    const/4 p1, 0x2

    if-eq p2, v0, :cond_2

    if-ne p2, p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lpv;->d:Landroid/os/Handler;

    iget-object v2, p0, Lpv;->f:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v1, p0, Lpv;->d:Landroid/os/Handler;

    iget-object v2, p0, Lpv;->f:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2
    const/4 v1, 0x1

    if-eq p2, v1, :cond_6

    if-eq p2, p1, :cond_5

    if-eq p2, v0, :cond_4

    const/4 p1, 0x4

    if-ne p2, p1, :cond_3

    invoke-virtual {p0}, Lpv;->D()V

    goto :goto_3

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_4
    invoke-virtual {p0}, Lpv;->E()V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lpv;->C()V

    :cond_6
    :goto_3
    return-void
.end method

.method public u()V
    .locals 2

    iget-object v0, p0, Lpv;->j:Lvv;

    iget-object v1, p0, Lpv;->g:Loh;

    invoke-virtual {v0, v1}, Lvv;->f(Lfh;)V

    iget-object v0, p0, Lpv;->j:Lvv;

    invoke-virtual {v0}, Lvv;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpv;->b:Lpv$d;

    invoke-virtual {p0}, Lpv;->e()Landroidx/media2/common/MediaItem;

    move-result-object v1

    invoke-interface {v0, v1}, Lpv$d;->m(Landroidx/media2/common/MediaItem;)V

    :cond_0
    return-void
.end method

.method public v(I)V
    .locals 3

    iget-object v0, p0, Lpv;->b:Lpv$d;

    invoke-virtual {p0}, Lpv;->e()Landroidx/media2/common/MediaItem;

    move-result-object v1

    invoke-virtual {p0}, Lpv;->l()Lgv;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lpv$d;->p(Landroidx/media2/common/MediaItem;Lgv;)V

    iget-object v0, p0, Lpv;->k:Lpv$f;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lpv$f;->i(Z)V

    return-void
.end method

.method public w()V
    .locals 2

    iget-object v0, p0, Lpv;->b:Lpv$d;

    iget-object v1, p0, Lpv;->k:Lpv$f;

    invoke-virtual {v1}, Lpv$f;->c()Landroidx/media2/common/MediaItem;

    move-result-object v1

    invoke-interface {v0, v1}, Lpv$d;->c(Landroidx/media2/common/MediaItem;)V

    return-void
.end method

.method public x()V
    .locals 2

    invoke-virtual {p0}, Lpv;->e()Landroidx/media2/common/MediaItem;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lpv;->b:Lpv$d;

    invoke-interface {v0}, Lpv$d;->h()V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpv;->q:Z

    iget-object v0, p0, Lpv;->g:Loh;

    invoke-virtual {v0}, Loh;->F()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lpv;->E()V

    :cond_1
    return-void
.end method

.method public y([BJ)V
    .locals 10

    iget-object v0, p0, Lpv;->j:Lvv;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lvv;->c(I)I

    move-result v0

    invoke-virtual {p0}, Lpv;->e()Landroidx/media2/common/MediaItem;

    move-result-object v1

    iget-object v2, p0, Lpv;->b:Lpv$d;

    new-instance v9, Landroidx/media2/common/SubtitleData;

    const-wide/16 v6, 0x0

    move-object v3, v9

    move-wide v4, p2

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Landroidx/media2/common/SubtitleData;-><init>(JJ[B)V

    invoke-interface {v2, v1, v0, v9}, Lpv$d;->j(Landroidx/media2/common/MediaItem;ILandroidx/media2/common/SubtitleData;)V

    return-void
.end method

.method public z(II)V
    .locals 1

    iget-object v0, p0, Lpv;->j:Lvv;

    invoke-virtual {v0, p1, p2}, Lvv;->g(II)V

    iget-object p1, p0, Lpv;->j:Lvv;

    invoke-virtual {p1}, Lvv;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lpv;->b:Lpv$d;

    invoke-virtual {p0}, Lpv;->e()Landroidx/media2/common/MediaItem;

    move-result-object p2

    invoke-interface {p1, p2}, Lpv$d;->m(Landroidx/media2/common/MediaItem;)V

    :cond_0
    return-void
.end method
