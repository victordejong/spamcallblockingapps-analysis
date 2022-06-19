.class public Lqh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lfh$b;
.implements Lio;
.implements Lfi;
.implements Lcv;
.implements Lqp;
.implements Lgs$a;
.implements Lhj;
.implements Luu;
.implements Lxh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqh$b;,
        Lqh$c;,
        Lqh$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lrh;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljt;

.field public final c:Lph$c;

.field public final d:Lqh$c;

.field public f:Lfh;


# direct methods
.method public constructor <init>(Lfh;Ljt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lqh;->f:Lfh;

    :cond_0
    invoke-static {p2}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Ljt;

    iput-object p2, p0, Lqh;->b:Ljt;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lqh;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance p1, Lqh$c;

    invoke-direct {p1}, Lqh$c;-><init>()V

    iput-object p1, p0, Lqh;->d:Lqh$c;

    new-instance p1, Lph$c;

    invoke-direct {p1}, Lph$c;-><init>()V

    iput-object p1, p0, Lqh;->c:Lph$c;

    return-void
.end method


# virtual methods
.method public final A()Lrh$a;
    .locals 1

    iget-object v0, p0, Lqh;->d:Lqh$c;

    invoke-virtual {v0}, Lqh$c;->b()Lqh$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lqh;->z(Lqh$b;)Lrh$a;

    move-result-object v0

    return-object v0
.end method

.method public final B()Lrh$a;
    .locals 1

    iget-object v0, p0, Lqh;->d:Lqh$c;

    invoke-virtual {v0}, Lqh$c;->c()Lqh$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lqh;->z(Lqh$b;)Lrh$a;

    move-result-object v0

    return-object v0
.end method

.method public final C(ILhp$a;)Lrh$a;
    .locals 1

    iget-object v0, p0, Lqh;->f:Lfh;

    invoke-static {v0}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lqh;->d:Lqh$c;

    invoke-virtual {v0, p2}, Lqh$c;->d(Lhp$a;)Lqh$b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lqh;->z(Lqh$b;)Lrh$a;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object v0, Lph;->a:Lph;

    invoke-virtual {p0, v0, p1, p2}, Lqh;->y(Lph;ILhp$a;)Lrh$a;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    iget-object p2, p0, Lqh;->f:Lfh;

    invoke-interface {p2}, Lfh;->getCurrentTimeline()Lph;

    move-result-object p2

    invoke-virtual {p2}, Lph;->p()I

    move-result v0

    if-ge p1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    sget-object p2, Lph;->a:Lph;

    :goto_2
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lqh;->y(Lph;ILhp$a;)Lrh$a;

    move-result-object p1

    return-object p1
.end method

.method public final D()Lrh$a;
    .locals 1

    iget-object v0, p0, Lqh;->d:Lqh$c;

    invoke-virtual {v0}, Lqh$c;->e()Lqh$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lqh;->z(Lqh$b;)Lrh$a;

    move-result-object v0

    return-object v0
.end method

.method public final E()Lrh$a;
    .locals 1

    iget-object v0, p0, Lqh;->d:Lqh$c;

    invoke-virtual {v0}, Lqh$c;->f()Lqh$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lqh;->z(Lqh$b;)Lrh$a;

    move-result-object v0

    return-object v0
.end method

.method public final F()V
    .locals 3

    iget-object v0, p0, Lqh;->d:Lqh$c;

    invoke-virtual {v0}, Lqh$c;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lqh;->D()Lrh$a;

    move-result-object v0

    iget-object v1, p0, Lqh;->d:Lqh$c;

    invoke-virtual {v1}, Lqh$c;->m()V

    iget-object v1, p0, Lqh;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrh;

    invoke-interface {v2, v0}, Lrh;->c(Lrh$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final G()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lqh;->d:Lqh$c;

    invoke-static {v1}, Lqh$c;->a(Lqh$c;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqh$b;

    iget v2, v1, Lqh$b;->c:I

    iget-object v1, v1, Lqh$b;->a:Lhp$a;

    invoke-virtual {p0, v2, v1}, Lqh;->v(ILhp$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Leh;)V
    .locals 3

    invoke-virtual {p0}, Lqh;->D()Lrh$a;

    move-result-object v0

    iget-object v1, p0, Lqh;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrh;

    invoke-interface {v2, v0, p1}, Lrh;->m(Lrh$a;Leh;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(ILhp$a;Lqp$b;Lqp$c;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lqh;->C(ILhp$a;)Lrh$a;

    move-result-object p1

    iget-object p2, p0, Lqh;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrh;

    invoke-interface {v0, p1, p3, p4}, Lrh;->q(Lrh$a;Lqp$b;Lqp$c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(ILhp$a;)V
    .locals 1

    iget-object v0, p0, Lqh;->d:Lqh$c;

    invoke-virtual {v0, p1, p2}, Lqh$c;->h(ILhp$a;)V

    invoke-virtual {p0, p1, p2}, Lqh;->C(ILhp$a;)Lrh$a;

    move-result-object p1

    iget-object p2, p0, Lqh;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrh;

    invoke-interface {v0, p1}, Lrh;->j(Lrh$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(Lph;Ljava/lang/Object;I)V
    .locals 1

    iget-object p2, p0, Lqh;->d:Lqh$c;

    invoke-virtual {p2, p1}, Lqh$c;->n(Lph;)V

    invoke-virtual {p0}, Lqh;->D()Lrh$a;

    move-result-object p1

    iget-object p2, p0, Lqh;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrh;

    invoke-interface {v0, p1, p3}, Lrh;->o(Lrh$a;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e(ILhp$a;Lqp$b;Lqp$c;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lqh;->C(ILhp$a;)Lrh$a;

    move-result-object p1

    iget-object p2, p0, Lqh;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrh;

    invoke-interface {v0, p1, p3, p4}, Lrh;->g(Lrh$a;Lqp$b;Lqp$c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f(ILhp$a;Lqp$b;Lqp$c;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lqh;->C(ILhp$a;)Lrh$a;

    move-result-object p1

    iget-object p2, p0, Lqh;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrh;

    invoke-interface {v0, p1, p3, p4}, Lrh;->D(Lrh$a;Lqp$b;Lqp$c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g(Landroidx/media2/exoplayer/external/Format;)V
    .locals 4

    invoke-virtual {p0}, Lqh;->E()Lrh$a;

    move-result-object v0

    iget-object v1, p0, Lqh;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrh;

    const/4 v3, 0x2

    invoke-interface {v2, v0, v3, p1}, Lrh;->f(Lrh$a;ILandroidx/media2/exoplayer/external/Format;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public h(II)V
    .locals 3

    invoke-virtual {p0}, Lqh;->E()Lrh$a;

    move-result-object v0

    iget-object v1, p0, Lqh;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrh;

    invoke-interface {v2, v0, p1, p2}, Lrh;->u(Lrh$a;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final i(Lyi;)V
    .locals 4

    invoke-virtual {p0}, Lqh;->D()Lrh$a;

    move-result-object v0

    iget-object v1, p0, Lqh;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrh;

    const/4 v3, 0x1

    invoke-interface {v2, v0, v3, p1}, Lrh;->H(Lrh$a;ILyi;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 3

    invoke-virtual {p0}, Lqh;->E()Lrh$a;

    move-result-object v0

    iget-object v1, p0, Lqh;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrh;

    invoke-interface {v2, v0}, Lrh;->h(Lrh$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public k(Luh;)V
    .locals 3

    invoke-virtual {p0}, Lqh;->E()Lrh$a;

    move-result-object v0

    iget-object v1, p0, Lqh;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrh;

    invoke-interface {v2, v0, p1}, Lrh;->s(Lrh$a;Luh;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final l(Lyi;)V
    .locals 4

    invoke-virtual {p0}, Lqh;->A()Lrh$a;

    move-result-object v0

    iget-object v1, p0, Lqh;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrh;

    const/4 v3, 0x2

    invoke-interface {v2, v0, v3, p1}, Lrh;->t(Lrh$a;ILyi;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public m(F)V
    .locals 3

    invoke-virtual {p0}, Lqh;->E()Lrh$a;

    move-result-object v0

    iget-object v1, p0, Lqh;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrh;

    invoke-interface {v2, v0, p1}, Lrh;->I(Lrh$a;F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final n(Lfg;)V
    .locals 3

    iget v0, p1, Lfg;->a:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lqh;->B()Lrh$a;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lqh;->D()Lrh$a;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lqh;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrh;

    invoke-interface {v2, v0, p1}, Lrh;->l(Lrh$a;Lfg;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final o(Lyi;)V
    .locals 4

    invoke-virtual {p0}, Lqh;->D()Lrh$a;

    move-result-object v0

    iget-object v1, p0, Lqh;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrh;

    const/4 v3, 0x2

    invoke-interface {v2, v0, v3, p1}, Lrh;->H(Lrh$a;ILyi;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 6

    invoke-virtual {p0}, Lqh;->E()Lrh$a;

    move-result-object p2

    iget-object p3, p0, Lqh;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrh;

    const/4 v2, 0x1

    move-object v1, p2

    move-object v3, p1

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lrh;->e(Lrh$a;ILjava/lang/String;J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onAudioSessionId(I)V
    .locals 3

    invoke-virtual {p0}, Lqh;->E()Lrh$a;

    move-result-object v0

    iget-object v1, p0, Lqh;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrh;

    invoke-interface {v2, v0, p1}, Lrh;->w(Lrh$a;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onAudioSinkUnderrun(IJJ)V
    .locals 9

    invoke-virtual {p0}, Lqh;->E()Lrh$a;

    move-result-object v7

    iget-object v0, p0, Lqh;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrh;

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Lrh;->i(Lrh$a;IJJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onBandwidthSample(IJJ)V
    .locals 9

    invoke-virtual {p0}, Lqh;->B()Lrh$a;

    move-result-object v7

    iget-object v0, p0, Lqh;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrh;

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Lrh;->v(Lrh$a;IJJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onDrmKeysLoaded()V
    .locals 3

    invoke-virtual {p0}, Lqh;->E()Lrh$a;

    move-result-object v0

    iget-object v1, p0, Lqh;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrh;

    invoke-interface {v2, v0}, Lrh;->x(Lrh$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onDrmKeysRestored()V
    .locals 3

    invoke-virtual {p0}, Lqh;->E()Lrh$a;

    move-result-object v0

    iget-object v1, p0, Lqh;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrh;

    invoke-interface {v2, v0}, Lrh;->J(Lrh$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onDrmSessionManagerError(Ljava/lang/Exception;)V
    .locals 3

    invoke-virtual {p0}, Lqh;->E()Lrh$a;

    move-result-object v0

    iget-object v1, p0, Lqh;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrh;

    invoke-interface {v2, v0, p1}, Lrh;->a(Lrh$a;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onDroppedFrames(IJ)V
    .locals 3

    invoke-virtual {p0}, Lqh;->A()Lrh$a;

    move-result-object v0

    iget-object v1, p0, Lqh;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrh;

    invoke-interface {v2, v0, p1, p2, p3}, Lrh;->b(Lrh$a;IJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onLoadingChanged(Z)V
    .locals 3

    invoke-virtual {p0}, Lqh;->D()Lrh$a;

    move-result-object v0

    iget-object v1, p0, Lqh;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrh;

    invoke-interface {v2, v0, p1}, Lrh;->A(Lrh$a;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPlayerStateChanged(ZI)V
    .locals 3

    invoke-virtual {p0}, Lqh;->D()Lrh$a;

    move-result-object v0

    iget-object v1, p0, Lqh;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrh;

    invoke-interface {v2, v0, p1, p2}, Lrh;->E(Lrh$a;ZI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPositionDiscontinuity(I)V
    .locals 3

    iget-object v0, p0, Lqh;->d:Lqh$c;

    invoke-virtual {v0, p1}, Lqh$c;->j(I)V

    invoke-virtual {p0}, Lqh;->D()Lrh$a;

    move-result-object v0

    iget-object v1, p0, Lqh;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrh;

    invoke-interface {v2, v0, p1}, Lrh;->d(Lrh$a;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onRenderedFirstFrame()V
    .locals 0

    return-void
.end method

.method public final onRenderedFirstFrame(Landroid/view/Surface;)V
    .locals 3

    invoke-virtual {p0}, Lqh;->E()Lrh$a;

    move-result-object v0

    iget-object v1, p0, Lqh;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrh;

    invoke-interface {v2, v0, p1}, Lrh;->F(Lrh$a;Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onSeekProcessed()V
    .locals 3

    iget-object v0, p0, Lqh;->d:Lqh$c;

    invoke-virtual {v0}, Lqh$c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqh;->d:Lqh$c;

    invoke-virtual {v0}, Lqh$c;->l()V

    invoke-virtual {p0}, Lqh;->D()Lrh$a;

    move-result-object v0

    iget-object v1, p0, Lqh;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrh;

    invoke-interface {v2, v0}, Lrh;->n(Lrh$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 6

    invoke-virtual {p0}, Lqh;->E()Lrh$a;

    move-result-object p2

    iget-object p3, p0, Lqh;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrh;

    const/4 v2, 0x2

    move-object v1, p2

    move-object v3, p1

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lrh;->e(Lrh$a;ILjava/lang/String;J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onVideoSizeChanged(IIIF)V
    .locals 8

    invoke-virtual {p0}, Lqh;->E()Lrh$a;

    move-result-object v6

    iget-object v0, p0, Lqh;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrh;

    move-object v1, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lrh;->B(Lrh$a;IIIF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final p(ILhp$a;Lqp$b;Lqp$c;Ljava/io/IOException;Z)V
    .locals 6

    invoke-virtual {p0, p1, p2}, Lqh;->C(ILhp$a;)Lrh$a;

    move-result-object p1

    iget-object p2, p0, Lqh;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrh;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-interface/range {v0 .. v5}, Lrh;->z(Lrh$a;Lqp$b;Lqp$c;Ljava/io/IOException;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final q(Landroidx/media2/exoplayer/external/metadata/Metadata;)V
    .locals 3

    invoke-virtual {p0}, Lqh;->D()Lrh$a;

    move-result-object v0

    iget-object v1, p0, Lqh;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrh;

    invoke-interface {v2, v0, p1}, Lrh;->k(Lrh$a;Landroidx/media2/exoplayer/external/metadata/Metadata;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final r(Lyi;)V
    .locals 4

    invoke-virtual {p0}, Lqh;->A()Lrh$a;

    move-result-object v0

    iget-object v1, p0, Lqh;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrh;

    const/4 v3, 0x1

    invoke-interface {v2, v0, v3, p1}, Lrh;->t(Lrh$a;ILyi;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final s(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Lzr;)V
    .locals 3

    invoke-virtual {p0}, Lqh;->D()Lrh$a;

    move-result-object v0

    iget-object v1, p0, Lqh;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrh;

    invoke-interface {v2, v0, p1, p2}, Lrh;->C(Lrh$a;Landroidx/media2/exoplayer/external/source/TrackGroupArray;Lzr;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final t(ILhp$a;)V
    .locals 1

    iget-object v0, p0, Lqh;->d:Lqh$c;

    invoke-virtual {v0, p2}, Lqh$c;->k(Lhp$a;)V

    invoke-virtual {p0, p1, p2}, Lqh;->C(ILhp$a;)Lrh$a;

    move-result-object p1

    iget-object p2, p0, Lqh;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrh;

    invoke-interface {v0, p1}, Lrh;->r(Lrh$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final u(Landroidx/media2/exoplayer/external/Format;)V
    .locals 4

    invoke-virtual {p0}, Lqh;->E()Lrh$a;

    move-result-object v0

    iget-object v1, p0, Lqh;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrh;

    const/4 v3, 0x1

    invoke-interface {v2, v0, v3, p1}, Lrh;->f(Lrh$a;ILandroidx/media2/exoplayer/external/Format;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final v(ILhp$a;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lqh;->C(ILhp$a;)Lrh$a;

    move-result-object p1

    iget-object v0, p0, Lqh;->d:Lqh$c;

    invoke-virtual {v0, p2}, Lqh$c;->i(Lhp$a;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lqh;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrh;

    invoke-interface {v0, p1}, Lrh;->y(Lrh$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final w(ILhp$a;Lqp$c;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lqh;->C(ILhp$a;)Lrh$a;

    move-result-object p1

    iget-object p2, p0, Lqh;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrh;

    invoke-interface {v0, p1, p3}, Lrh;->p(Lrh$a;Lqp$c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final x()V
    .locals 3

    invoke-virtual {p0}, Lqh;->A()Lrh$a;

    move-result-object v0

    iget-object v1, p0, Lqh;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrh;

    invoke-interface {v2, v0}, Lrh;->G(Lrh$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public y(Lph;ILhp$a;)Lrh$a;
    .locals 12
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "player"
        }
    .end annotation

    invoke-virtual {p1}, Lph;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    :cond_0
    move-object v5, p3

    iget-object p3, p0, Lqh;->b:Ljt;

    invoke-interface {p3}, Ljt;->elapsedRealtime()J

    move-result-wide v1

    iget-object p3, p0, Lqh;->f:Lfh;

    invoke-interface {p3}, Lfh;->getCurrentTimeline()Lph;

    move-result-object p3

    const/4 v0, 0x1

    const/4 v3, 0x0

    if-ne p1, p3, :cond_1

    iget-object p3, p0, Lqh;->f:Lfh;

    invoke-interface {p3}, Lfh;->getCurrentWindowIndex()I

    move-result p3

    if-ne p2, p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    const-wide/16 v6, 0x0

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lhp$a;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lqh;->f:Lfh;

    invoke-interface {p3}, Lfh;->getCurrentAdGroupIndex()I

    move-result p3

    iget v4, v5, Lhp$a;->b:I

    if-ne p3, v4, :cond_2

    iget-object p3, p0, Lqh;->f:Lfh;

    invoke-interface {p3}, Lfh;->getCurrentAdIndexInAdGroup()I

    move-result p3

    iget v4, v5, Lhp$a;->c:I

    if-ne p3, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_6

    iget-object p3, p0, Lqh;->f:Lfh;

    invoke-interface {p3}, Lfh;->getCurrentPosition()J

    move-result-wide v6

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_4

    iget-object p3, p0, Lqh;->f:Lfh;

    invoke-interface {p3}, Lfh;->getContentPosition()J

    move-result-wide v3

    move-wide v6, v3

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lph;->q()Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    iget-object p3, p0, Lqh;->c:Lph$c;

    invoke-virtual {p1, p2, p3}, Lph;->m(ILph$c;)Lph$c;

    move-result-object p3

    invoke-virtual {p3}, Lph$c;->a()J

    move-result-wide v6

    :cond_6
    :goto_2
    new-instance p3, Lrh$a;

    iget-object v0, p0, Lqh;->f:Lfh;

    invoke-interface {v0}, Lfh;->getCurrentPosition()J

    move-result-wide v8

    iget-object v0, p0, Lqh;->f:Lfh;

    invoke-interface {v0}, Lfh;->a()J

    move-result-wide v10

    move-object v0, p3

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v11}, Lrh$a;-><init>(JLph;ILhp$a;JJJ)V

    return-object p3
.end method

.method public final z(Lqh$b;)Lrh$a;
    .locals 2

    iget-object v0, p0, Lqh;->f:Lfh;

    invoke-static {v0}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_3

    iget-object p1, p0, Lqh;->f:Lfh;

    invoke-interface {p1}, Lfh;->getCurrentWindowIndex()I

    move-result p1

    iget-object v0, p0, Lqh;->d:Lqh$c;

    invoke-virtual {v0, p1}, Lqh$c;->o(I)Lqh$b;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lqh;->f:Lfh;

    invoke-interface {v0}, Lfh;->getCurrentTimeline()Lph;

    move-result-object v0

    invoke-virtual {v0}, Lph;->p()I

    move-result v1

    if-ge p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lph;->a:Lph;

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lqh;->y(Lph;ILhp$a;)Lrh$a;

    move-result-object p1

    return-object p1

    :cond_2
    move-object p1, v0

    :cond_3
    iget-object v0, p1, Lqh$b;->b:Lph;

    iget v1, p1, Lqh$b;->c:I

    iget-object p1, p1, Lqh$b;->a:Lhp$a;

    invoke-virtual {p0, v0, v1, p1}, Lqh;->y(Lph;ILhp$a;)Lrh$a;

    move-result-object p1

    return-object p1
.end method
