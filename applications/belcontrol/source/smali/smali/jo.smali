.class public final Ljo;
.super Lbg;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final l:Lgo;

.field public final m:Lio;

.field public final n:Landroid/os/Handler;

.field public final o:Lwg;

.field public final p:Lho;

.field public final q:[Landroidx/media2/exoplayer/external/metadata/Metadata;

.field public final r:[J

.field public s:I

.field public t:I

.field public u:Lfo;

.field public v:Z


# direct methods
.method public constructor <init>(Lio;Landroid/os/Looper;Lgo;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lbg;-><init>(I)V

    invoke-static {p1}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lio;

    iput-object p1, p0, Ljo;->m:Lio;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p2, p0}, Lnu;->r(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Ljo;->n:Landroid/os/Handler;

    invoke-static {p3}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lgo;

    iput-object p3, p0, Ljo;->l:Lgo;

    new-instance p1, Lwg;

    invoke-direct {p1}, Lwg;-><init>()V

    iput-object p1, p0, Ljo;->o:Lwg;

    new-instance p1, Lho;

    invoke-direct {p1}, Lho;-><init>()V

    iput-object p1, p0, Ljo;->p:Lho;

    const/4 p1, 0x5

    new-array p2, p1, [Landroidx/media2/exoplayer/external/metadata/Metadata;

    iput-object p2, p0, Ljo;->q:[Landroidx/media2/exoplayer/external/metadata/Metadata;

    new-array p1, p1, [J

    iput-object p1, p0, Ljo;->r:[J

    return-void
.end method


# virtual methods
.method public a(Landroidx/media2/exoplayer/external/Format;)I
    .locals 1

    iget-object v0, p0, Ljo;->l:Lgo;

    invoke-interface {v0, p1}, Lgo;->a(Landroidx/media2/exoplayer/external/Format;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object p1, p1, Landroidx/media2/exoplayer/external/Format;->n:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-static {v0, p1}, Lbg;->t(Lmj;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media2/exoplayer/external/metadata/Metadata;

    invoke-virtual {p0, p1}, Ljo;->w(Landroidx/media2/exoplayer/external/metadata/Metadata;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public isEnded()Z
    .locals 1

    iget-boolean v0, p0, Ljo;->v:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public k()V
    .locals 1

    invoke-virtual {p0}, Ljo;->u()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljo;->u:Lfo;

    return-void
.end method

.method public m(JZ)V
    .locals 0

    invoke-virtual {p0}, Ljo;->u()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ljo;->v:Z

    return-void
.end method

.method public q([Landroidx/media2/exoplayer/external/Format;J)V
    .locals 0

    iget-object p2, p0, Ljo;->l:Lgo;

    const/4 p3, 0x0

    aget-object p1, p1, p3

    invoke-interface {p2, p1}, Lgo;->b(Landroidx/media2/exoplayer/external/Format;)Lfo;

    move-result-object p1

    iput-object p1, p0, Ljo;->u:Lfo;

    return-void
.end method

.method public render(JJ)V
    .locals 4

    iget-boolean p3, p0, Ljo;->v:Z

    const/4 p4, 0x5

    const/4 v0, 0x1

    if-nez p3, :cond_2

    iget p3, p0, Ljo;->t:I

    if-ge p3, p4, :cond_2

    iget-object p3, p0, Ljo;->p:Lho;

    invoke-virtual {p3}, Lzi;->b()V

    iget-object p3, p0, Ljo;->o:Lwg;

    iget-object v1, p0, Ljo;->p:Lho;

    const/4 v2, 0x0

    invoke-virtual {p0, p3, v1, v2}, Lbg;->r(Lwg;Lzi;Z)I

    move-result p3

    const/4 v1, -0x4

    if-ne p3, v1, :cond_2

    iget-object p3, p0, Ljo;->p:Lho;

    invoke-virtual {p3}, Lwi;->e()Z

    move-result p3

    if-eqz p3, :cond_0

    iput-boolean v0, p0, Ljo;->v:Z

    goto :goto_0

    :cond_0
    iget-object p3, p0, Ljo;->p:Lho;

    invoke-virtual {p3}, Lwi;->d()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p3, p0, Ljo;->p:Lho;

    iget-object v1, p0, Ljo;->o:Lwg;

    iget-object v1, v1, Lwg;->a:Landroidx/media2/exoplayer/external/Format;

    iget-wide v1, v1, Landroidx/media2/exoplayer/external/Format;->o:J

    iput-wide v1, p3, Lho;->f:J

    invoke-virtual {p3}, Lzi;->j()V

    iget p3, p0, Ljo;->s:I

    iget v1, p0, Ljo;->t:I

    add-int/2addr p3, v1

    rem-int/2addr p3, p4

    iget-object v1, p0, Ljo;->u:Lfo;

    iget-object v2, p0, Ljo;->p:Lho;

    invoke-interface {v1, v2}, Lfo;->a(Lho;)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Ljo;->q:[Landroidx/media2/exoplayer/external/metadata/Metadata;

    aput-object v1, v2, p3

    iget-object v1, p0, Ljo;->r:[J

    iget-object v2, p0, Ljo;->p:Lho;

    iget-wide v2, v2, Lzi;->d:J

    aput-wide v2, v1, p3

    iget p3, p0, Ljo;->t:I

    add-int/2addr p3, v0

    iput p3, p0, Ljo;->t:I

    :cond_2
    :goto_0
    iget p3, p0, Ljo;->t:I

    if-lez p3, :cond_3

    iget-object p3, p0, Ljo;->r:[J

    iget v1, p0, Ljo;->s:I

    aget-wide v2, p3, v1

    cmp-long p3, v2, p1

    if-gtz p3, :cond_3

    iget-object p1, p0, Ljo;->q:[Landroidx/media2/exoplayer/external/metadata/Metadata;

    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Ljo;->v(Landroidx/media2/exoplayer/external/metadata/Metadata;)V

    iget-object p1, p0, Ljo;->q:[Landroidx/media2/exoplayer/external/metadata/Metadata;

    iget p2, p0, Ljo;->s:I

    const/4 p3, 0x0

    aput-object p3, p1, p2

    add-int/2addr p2, v0

    rem-int/2addr p2, p4

    iput p2, p0, Ljo;->s:I

    iget p1, p0, Ljo;->t:I

    sub-int/2addr p1, v0

    iput p1, p0, Ljo;->t:I

    :cond_3
    return-void
.end method

.method public final u()V
    .locals 2

    iget-object v0, p0, Ljo;->q:[Landroidx/media2/exoplayer/external/metadata/Metadata;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Ljo;->s:I

    iput v0, p0, Ljo;->t:I

    return-void
.end method

.method public final v(Landroidx/media2/exoplayer/external/metadata/Metadata;)V
    .locals 2

    iget-object v0, p0, Ljo;->n:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljo;->w(Landroidx/media2/exoplayer/external/metadata/Metadata;)V

    :goto_0
    return-void
.end method

.method public final w(Landroidx/media2/exoplayer/external/metadata/Metadata;)V
    .locals 1

    iget-object v0, p0, Ljo;->m:Lio;

    invoke-interface {v0, p1}, Lio;->q(Landroidx/media2/exoplayer/external/metadata/Metadata;)V

    return-void
.end method
