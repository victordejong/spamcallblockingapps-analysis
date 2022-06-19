.class public final Lug;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lfp$a;
.implements Lbs$a;
.implements Lhp$b;
.implements Leg$a;
.implements Lhh$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lug$d;,
        Lug$b;,
        Lug$c;,
        Lug$e;
    }
.end annotation


# instance fields
.field public A:Z

.field public B:I

.field public C:Z

.field public D:Z

.field public E:I

.field public F:Lug$e;

.field public G:J

.field public H:I

.field public final a:[Ljh;

.field public final b:[Lkh;

.field public final c:Lbs;

.field public final d:Lcs;

.field public final f:Lyg;

.field public final g:Lgs;

.field public final h:Lrt;

.field public final j:Landroid/os/HandlerThread;

.field public final k:Landroid/os/Handler;

.field public final l:Lph$c;

.field public final m:Lph$b;

.field public final n:J

.field public final o:Z

.field public final p:Leg;

.field public final q:Lug$d;

.field public final r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lug$c;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Ljt;

.field public final t:Lbh;

.field public u:Lnh;

.field public v:Ldh;

.field public w:Lhp;

.field public x:[Ljh;

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>([Ljh;Lbs;Lcs;Lyg;Lgs;ZIZLandroid/os/Handler;Ljt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lug;->a:[Ljh;

    iput-object p2, p0, Lug;->c:Lbs;

    iput-object p3, p0, Lug;->d:Lcs;

    iput-object p4, p0, Lug;->f:Lyg;

    iput-object p5, p0, Lug;->g:Lgs;

    iput-boolean p6, p0, Lug;->z:Z

    iput p7, p0, Lug;->B:I

    iput-boolean p8, p0, Lug;->C:Z

    iput-object p9, p0, Lug;->k:Landroid/os/Handler;

    iput-object p10, p0, Lug;->s:Ljt;

    new-instance p6, Lbh;

    invoke-direct {p6}, Lbh;-><init>()V

    iput-object p6, p0, Lug;->t:Lbh;

    invoke-interface {p4}, Lyg;->getBackBufferDurationUs()J

    move-result-wide p6

    iput-wide p6, p0, Lug;->n:J

    invoke-interface {p4}, Lyg;->retainBackBufferFromKeyframe()Z

    move-result p4

    iput-boolean p4, p0, Lug;->o:Z

    sget-object p4, Lnh;->g:Lnh;

    iput-object p4, p0, Lug;->u:Lnh;

    const-wide p6, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {p6, p7, p3}, Ldh;->g(JLcs;)Ldh;

    move-result-object p3

    iput-object p3, p0, Lug;->v:Ldh;

    new-instance p3, Lug$d;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Lug$d;-><init>(Lug$a;)V

    iput-object p3, p0, Lug;->q:Lug$d;

    array-length p3, p1

    new-array p3, p3, [Lkh;

    iput-object p3, p0, Lug;->b:[Lkh;

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_0
    array-length p6, p1

    if-ge p4, p6, :cond_0

    aget-object p6, p1, p4

    invoke-interface {p6, p4}, Ljh;->setIndex(I)V

    iget-object p6, p0, Lug;->b:[Lkh;

    aget-object p7, p1, p4

    invoke-interface {p7}, Ljh;->getCapabilities()Lkh;

    move-result-object p7

    aput-object p7, p6, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Leg;

    invoke-direct {p1, p0, p10}, Leg;-><init>(Leg$a;Ljt;)V

    iput-object p1, p0, Lug;->p:Leg;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lug;->r:Ljava/util/ArrayList;

    new-array p1, p3, [Ljh;

    iput-object p1, p0, Lug;->x:[Ljh;

    new-instance p1, Lph$c;

    invoke-direct {p1}, Lph$c;-><init>()V

    iput-object p1, p0, Lug;->l:Lph$c;

    new-instance p1, Lph$b;

    invoke-direct {p1}, Lph$b;-><init>()V

    iput-object p1, p0, Lug;->m:Lph$b;

    invoke-virtual {p2, p0, p5}, Lbs;->b(Lbs$a;Lgs;)V

    new-instance p1, Landroid/os/HandlerThread;

    const/16 p2, -0x10

    const-string p3, "ExoPlayerImplInternal:Handler"

    invoke-direct {p1, p3, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lug;->j:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-interface {p10, p1, p0}, Ljt;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lrt;

    move-result-object p1

    iput-object p1, p0, Lug;->h:Lrt;

    return-void
.end method

.method public static m(Lyr;)[Landroidx/media2/exoplayer/external/Format;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lyr;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-array v2, v1, [Landroidx/media2/exoplayer/external/Format;

    :goto_1
    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Lyr;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method


# virtual methods
.method public final A()V
    .locals 6

    iget-object v0, p0, Lug;->t:Lbh;

    invoke-virtual {v0}, Lbh;->j()Lzg;

    move-result-object v0

    invoke-virtual {v0}, Lzg;->k()J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lug;->e0(Z)V

    return-void

    :cond_0
    invoke-virtual {p0, v1, v2}, Lug;->r(J)J

    move-result-wide v1

    iget-object v3, p0, Lug;->f:Lyg;

    iget-object v4, p0, Lug;->p:Leg;

    invoke-virtual {v4}, Leg;->getPlaybackParameters()Leh;

    move-result-object v4

    iget v4, v4, Leh;->a:F

    invoke-interface {v3, v1, v2, v4}, Lyg;->shouldContinueLoading(JF)Z

    move-result v1

    invoke-virtual {p0, v1}, Lug;->e0(Z)V

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lug;->G:J

    invoke-virtual {v0, v1, v2}, Lzg;->d(J)V

    :cond_1
    return-void
.end method

.method public final B()V
    .locals 5

    iget-object v0, p0, Lug;->q:Lug$d;

    iget-object v1, p0, Lug;->v:Ldh;

    invoke-virtual {v0, v1}, Lug$d;->d(Ldh;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lug;->k:Landroid/os/Handler;

    const/4 v1, 0x0

    iget-object v2, p0, Lug;->q:Lug$d;

    invoke-static {v2}, Lug$d;->a(Lug$d;)I

    move-result v2

    iget-object v3, p0, Lug;->q:Lug$d;

    invoke-static {v3}, Lug$d;->b(Lug$d;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lug;->q:Lug$d;

    invoke-static {v3}, Lug$d;->c(Lug$d;)I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    iget-object v4, p0, Lug;->v:Ldh;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lug;->q:Lug$d;

    iget-object v1, p0, Lug;->v:Ldh;

    invoke-virtual {v0, v1}, Lug$d;->f(Ldh;)V

    :cond_1
    return-void
.end method

.method public final C()V
    .locals 5

    iget-object v0, p0, Lug;->t:Lbh;

    invoke-virtual {v0}, Lbh;->j()Lzg;

    move-result-object v0

    iget-object v1, p0, Lug;->t:Lbh;

    invoke-virtual {v1}, Lbh;->p()Lzg;

    move-result-object v1

    if-eqz v0, :cond_3

    iget-boolean v2, v0, Lzg;->d:Z

    if-nez v2, :cond_3

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lzg;->j()Lzg;

    move-result-object v1

    if-ne v1, v0, :cond_3

    :cond_0
    iget-object v1, p0, Lug;->x:[Ljh;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-interface {v4}, Ljh;->hasReadStreamToEnd()Z

    move-result v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lzg;->a:Lfp;

    invoke-interface {v0}, Lfp;->maybeThrowPrepareError()V

    :cond_3
    return-void
.end method

.method public final D()V
    .locals 4

    iget-object v0, p0, Lug;->t:Lbh;

    invoke-virtual {v0}, Lbh;->j()Lzg;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lug;->x:[Ljh;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-interface {v3}, Ljh;->hasReadStreamToEnd()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lug;->w:Lhp;

    invoke-interface {v0}, Lhp;->maybeThrowSourceInfoRefreshError()V

    return-void
.end method

.method public final E(JJ)V
    .locals 6

    iget-object v0, p0, Lug;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lug;->v:Ldh;

    iget-object v0, v0, Ldh;->c:Lhp$a;

    invoke-virtual {v0}, Lhp$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v0, p0, Lug;->v:Ldh;

    iget-wide v1, v0, Ldh;->d:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_1

    const-wide/16 v1, 0x1

    sub-long/2addr p1, v1

    :cond_1
    iget-object v1, v0, Ldh;->a:Lph;

    iget-object v0, v0, Ldh;->c:Lhp$a;

    iget-object v0, v0, Lhp$a;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lph;->b(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lug;->H:I

    const/4 v2, 0x0

    if-lez v1, :cond_2

    iget-object v3, p0, Lug;->r:Ljava/util/ArrayList;

    :goto_0
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lug$c;

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_4

    iget v3, v1, Lug$c;->b:I

    if-gt v3, v0, :cond_3

    if-ne v3, v0, :cond_4

    iget-wide v3, v1, Lug$c;->c:J

    cmp-long v1, v3, p1

    if-lez v1, :cond_4

    :cond_3
    iget v1, p0, Lug;->H:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lug;->H:I

    if-lez v1, :cond_2

    iget-object v3, p0, Lug;->r:Ljava/util/ArrayList;

    goto :goto_0

    :cond_4
    iget v1, p0, Lug;->H:I

    iget-object v3, p0, Lug;->r:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    :goto_2
    iget-object v1, p0, Lug;->r:Ljava/util/ArrayList;

    iget v3, p0, Lug;->H:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lug$c;

    goto :goto_3

    :cond_5
    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_7

    iget-object v3, v1, Lug$c;->d:Ljava/lang/Object;

    if-eqz v3, :cond_7

    iget v3, v1, Lug$c;->b:I

    if-lt v3, v0, :cond_6

    if-ne v3, v0, :cond_7

    iget-wide v3, v1, Lug$c;->c:J

    cmp-long v5, v3, p1

    if-gtz v5, :cond_7

    :cond_6
    iget v1, p0, Lug;->H:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lug;->H:I

    iget-object v3, p0, Lug;->r:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    goto :goto_2

    :cond_7
    :goto_4
    if-eqz v1, :cond_d

    iget-object v3, v1, Lug$c;->d:Ljava/lang/Object;

    if-eqz v3, :cond_d

    iget v3, v1, Lug$c;->b:I

    if-ne v3, v0, :cond_d

    iget-wide v3, v1, Lug$c;->c:J

    cmp-long v5, v3, p1

    if-lez v5, :cond_d

    cmp-long v5, v3, p3

    if-gtz v5, :cond_d

    :try_start_0
    iget-object v3, v1, Lug$c;->a:Lhh;

    invoke-virtual {p0, v3}, Lug;->b0(Lhh;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, v1, Lug$c;->a:Lhh;

    invoke-virtual {v3}, Lhh;->b()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v1, v1, Lug$c;->a:Lhh;

    invoke-virtual {v1}, Lhh;->j()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    iget v1, p0, Lug;->H:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lug;->H:I

    goto :goto_6

    :cond_9
    :goto_5
    iget-object v1, p0, Lug;->r:Ljava/util/ArrayList;

    iget v3, p0, Lug;->H:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_6
    iget v1, p0, Lug;->H:I

    iget-object v3, p0, Lug;->r:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_a

    iget-object v1, p0, Lug;->r:Ljava/util/ArrayList;

    iget v3, p0, Lug;->H:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lug$c;

    goto :goto_4

    :cond_a
    move-object v1, v2

    goto :goto_4

    :catchall_0
    move-exception p1

    iget-object p2, v1, Lug$c;->a:Lhh;

    invoke-virtual {p2}, Lhh;->b()Z

    move-result p2

    if-nez p2, :cond_c

    iget-object p2, v1, Lug$c;->a:Lhh;

    invoke-virtual {p2}, Lhh;->j()Z

    move-result p2

    if-eqz p2, :cond_b

    goto :goto_7

    :cond_b
    iget p2, p0, Lug;->H:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lug;->H:I

    goto :goto_8

    :cond_c
    :goto_7
    iget-object p2, p0, Lug;->r:Ljava/util/ArrayList;

    iget p3, p0, Lug;->H:I

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_8
    throw p1

    :cond_d
    :goto_9
    return-void
.end method

.method public final F()V
    .locals 10

    iget-object v0, p0, Lug;->t:Lbh;

    iget-wide v1, p0, Lug;->G:J

    invoke-virtual {v0, v1, v2}, Lbh;->v(J)V

    iget-object v0, p0, Lug;->t:Lbh;

    invoke-virtual {v0}, Lbh;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lug;->t:Lbh;

    iget-wide v1, p0, Lug;->G:J

    iget-object v3, p0, Lug;->v:Ldh;

    invoke-virtual {v0, v1, v2, v3}, Lbh;->n(JLdh;)Lah;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lug;->D()V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lug;->t:Lbh;

    iget-object v5, p0, Lug;->b:[Lkh;

    iget-object v6, p0, Lug;->c:Lbs;

    iget-object v1, p0, Lug;->f:Lyg;

    invoke-interface {v1}, Lyg;->getAllocator()Les;

    move-result-object v7

    iget-object v8, p0, Lug;->w:Lhp;

    move-object v9, v0

    invoke-virtual/range {v4 .. v9}, Lbh;->f([Lkh;Lbs;Les;Lhp;Lah;)Lfp;

    move-result-object v1

    iget-wide v2, v0, Lah;->b:J

    invoke-interface {v1, p0, v2, v3}, Lfp;->d(Lfp$a;J)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lug;->e0(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lug;->t(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final G()V
    .locals 5

    iget-object v0, p0, Lug;->t:Lbh;

    invoke-virtual {v0}, Lbh;->i()Lzg;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lzg;->o()Lcs;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcs;->c:Lzr;

    invoke-virtual {v1}, Lzr;->b()[Lyr;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lyr;->b()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lzg;->j()Lzg;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public H(Lfp;)V
    .locals 2

    iget-object v0, p0, Lug;->h:Lrt;

    const/16 v1, 0xa

    invoke-interface {v0, v1, p1}, Lrt;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public I(Lhp;ZZ)V
    .locals 2

    iget-object v0, p0, Lug;->h:Lrt;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2, p3, p1}, Lrt;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final J(Lhp;ZZ)V
    .locals 2

    iget v0, p0, Lug;->E:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lug;->E:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, p2, p3}, Lug;->O(ZZZZ)V

    iget-object p2, p0, Lug;->f:Lyg;

    invoke-interface {p2}, Lyg;->onPrepared()V

    iput-object p1, p0, Lug;->w:Lhp;

    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Lug;->n0(I)V

    iget-object p3, p0, Lug;->g:Lgs;

    invoke-interface {p3}, Lgs;->d()Lht;

    move-result-object p3

    invoke-interface {p1, p0, p3}, Lhp;->h(Lhp$b;Lht;)V

    iget-object p1, p0, Lug;->h:Lrt;

    invoke-interface {p1, p2}, Lrt;->sendEmptyMessage(I)Z

    return-void
.end method

.method public declared-synchronized K()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lug;->y:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lug;->h:Lrt;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lrt;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lug;->y:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final L()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0, v0, v0}, Lug;->O(ZZZZ)V

    iget-object v1, p0, Lug;->f:Lyg;

    invoke-interface {v1}, Lyg;->onReleased()V

    invoke-virtual {p0, v0}, Lug;->n0(I)V

    iget-object v1, p0, Lug;->j:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    monitor-enter p0

    :try_start_0
    iput-boolean v0, p0, Lug;->y:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final M(Ljh;)Z
    .locals 1

    iget-object v0, p0, Lug;->t:Lbh;

    invoke-virtual {v0}, Lbh;->p()Lzg;

    move-result-object v0

    invoke-virtual {v0}, Lzg;->j()Lzg;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lzg;->d:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljh;->hasReadStreamToEnd()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final N()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lug;->t:Lbh;

    invoke-virtual {v1}, Lbh;->r()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lug;->p:Leg;

    invoke-virtual {v1}, Leg;->getPlaybackParameters()Leh;

    move-result-object v1

    iget v1, v1, Leh;->a:F

    iget-object v2, v0, Lug;->t:Lbh;

    invoke-virtual {v2}, Lbh;->o()Lzg;

    move-result-object v2

    iget-object v3, v0, Lug;->t:Lbh;

    invoke-virtual {v3}, Lbh;->p()Lzg;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    :goto_0
    if-eqz v2, :cond_d

    iget-boolean v6, v2, Lzg;->d:Z

    if-nez v6, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v6, v0, Lug;->v:Ldh;

    iget-object v6, v6, Ldh;->a:Lph;

    invoke-virtual {v2, v1, v6}, Lzg;->v(FLph;)Lcs;

    move-result-object v8

    const/4 v6, 0x0

    if-eqz v8, :cond_b

    const/4 v1, 0x4

    if-eqz v5, :cond_8

    iget-object v2, v0, Lug;->t:Lbh;

    invoke-virtual {v2}, Lbh;->o()Lzg;

    move-result-object v2

    iget-object v3, v0, Lug;->t:Lbh;

    invoke-virtual {v3, v2}, Lbh;->w(Lzg;)Z

    move-result v11

    iget-object v3, v0, Lug;->a:[Ljh;

    array-length v3, v3

    new-array v3, v3, [Z

    iget-object v5, v0, Lug;->v:Ldh;

    iget-wide v9, v5, Ldh;->m:J

    move-object v7, v2

    move-object v12, v3

    invoke-virtual/range {v7 .. v12}, Lzg;->b(Lcs;JZ[Z)J

    move-result-wide v7

    iget-object v5, v0, Lug;->v:Ldh;

    iget v9, v5, Ldh;->f:I

    if-eq v9, v1, :cond_2

    iget-wide v9, v5, Ldh;->m:J

    cmp-long v5, v7, v9

    if-eqz v5, :cond_2

    iget-object v12, v0, Lug;->v:Ldh;

    iget-object v13, v12, Ldh;->c:Lhp$a;

    iget-wide v9, v12, Ldh;->e:J

    invoke-virtual/range {p0 .. p0}, Lug;->q()J

    move-result-wide v18

    move-wide v14, v7

    move-wide/from16 v16, v9

    invoke-virtual/range {v12 .. v19}, Ldh;->c(Lhp$a;JJJ)Ldh;

    move-result-object v5

    iput-object v5, v0, Lug;->v:Ldh;

    iget-object v5, v0, Lug;->q:Lug$d;

    invoke-virtual {v5, v1}, Lug$d;->g(I)V

    invoke-virtual {v0, v7, v8}, Lug;->P(J)V

    :cond_2
    iget-object v5, v0, Lug;->a:[Ljh;

    array-length v5, v5

    new-array v5, v5, [Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    iget-object v9, v0, Lug;->a:[Ljh;

    array-length v10, v9

    if-ge v7, v10, :cond_7

    aget-object v9, v9, v7

    invoke-interface {v9}, Ljh;->getState()I

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    :goto_2
    aput-boolean v10, v5, v7

    iget-object v10, v2, Lzg;->c:[Lxp;

    aget-object v10, v10, v7

    if-eqz v10, :cond_4

    add-int/lit8 v8, v8, 0x1

    :cond_4
    aget-boolean v11, v5, v7

    if-eqz v11, :cond_6

    invoke-interface {v9}, Ljh;->getStream()Lxp;

    move-result-object v11

    if-eq v10, v11, :cond_5

    invoke-virtual {v0, v9}, Lug;->f(Ljh;)V

    goto :goto_3

    :cond_5
    aget-boolean v10, v3, v7

    if-eqz v10, :cond_6

    iget-wide v10, v0, Lug;->G:J

    invoke-interface {v9, v10, v11}, Ljh;->resetPosition(J)V

    :cond_6
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    iget-object v3, v0, Lug;->v:Ldh;

    invoke-virtual {v2}, Lzg;->n()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v6

    invoke-virtual {v2}, Lzg;->o()Lcs;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ldh;->f(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Lcs;)Ldh;

    move-result-object v2

    iput-object v2, v0, Lug;->v:Ldh;

    invoke-virtual {v0, v5, v8}, Lug;->k([ZI)V

    goto :goto_4

    :cond_8
    iget-object v3, v0, Lug;->t:Lbh;

    invoke-virtual {v3, v2}, Lbh;->w(Lzg;)Z

    iget-boolean v3, v2, Lzg;->d:Z

    if-eqz v3, :cond_9

    iget-object v3, v2, Lzg;->f:Lah;

    iget-wide v9, v3, Lah;->b:J

    iget-wide v11, v0, Lug;->G:J

    invoke-virtual {v2, v11, v12}, Lzg;->x(J)J

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    invoke-virtual {v2, v8, v9, v10, v6}, Lzg;->a(Lcs;JZ)J

    :cond_9
    :goto_4
    invoke-virtual {v0, v4}, Lug;->t(Z)V

    iget-object v2, v0, Lug;->v:Ldh;

    iget v2, v2, Ldh;->f:I

    if-eq v2, v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Lug;->A()V

    invoke-virtual/range {p0 .. p0}, Lug;->u0()V

    iget-object v1, v0, Lug;->h:Lrt;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lrt;->sendEmptyMessage(I)Z

    :cond_a
    return-void

    :cond_b
    if-ne v2, v3, :cond_c

    const/4 v5, 0x0

    :cond_c
    invoke-virtual {v2}, Lzg;->j()Lzg;

    move-result-object v2

    goto/16 :goto_0

    :cond_d
    :goto_5
    return-void
.end method

.method public final O(ZZZZ)V
    .locals 23

    move-object/from16 v1, p0

    iget-object v0, v1, Lug;->h:Lrt;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lrt;->removeMessages(I)V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lug;->A:Z

    iget-object v0, v1, Lug;->p:Leg;

    invoke-virtual {v0}, Leg;->h()V

    const-wide/16 v3, 0x0

    iput-wide v3, v1, Lug;->G:J

    iget-object v3, v1, Lug;->x:[Ljh;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    const-string v6, "ExoPlayerImplInternal"

    if-ge v5, v4, :cond_0

    aget-object v0, v3, v5

    :try_start_0
    invoke-virtual {v1, v0}, Lug;->f(Ljh;)V
    :try_end_0
    .catch Lfg; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    const-string v7, "Disable failed."

    invoke-static {v6, v7, v0}, Lst;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v3, v1, Lug;->a:[Ljh;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_1

    aget-object v0, v3, v5

    :try_start_1
    invoke-interface {v0}, Ljh;->reset()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v7, v0

    const-string v0, "Reset failed."

    invoke-static {v6, v0, v7}, Lst;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_1
    new-array v0, v2, [Ljh;

    iput-object v0, v1, Lug;->x:[Ljh;

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iput-object v0, v1, Lug;->F:Lug$e;

    goto :goto_5

    :cond_2
    if-eqz p4, :cond_4

    iget-object v3, v1, Lug;->F:Lug$e;

    if-nez v3, :cond_3

    iget-object v3, v1, Lug;->v:Ldh;

    iget-object v3, v3, Ldh;->a:Lph;

    invoke-virtual {v3}, Lph;->q()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v1, Lug;->v:Ldh;

    iget-object v4, v3, Ldh;->a:Lph;

    iget-object v3, v3, Ldh;->c:Lhp$a;

    iget-object v3, v3, Lhp$a;->a:Ljava/lang/Object;

    iget-object v5, v1, Lug;->m:Lph$b;

    invoke-virtual {v4, v3, v5}, Lph;->h(Ljava/lang/Object;Lph$b;)Lph$b;

    iget-object v3, v1, Lug;->v:Ldh;

    iget-wide v3, v3, Ldh;->m:J

    iget-object v5, v1, Lug;->m:Lph$b;

    invoke-virtual {v5}, Lph$b;->l()J

    move-result-wide v5

    add-long/2addr v3, v5

    new-instance v5, Lug$e;

    sget-object v6, Lph;->a:Lph;

    iget-object v7, v1, Lug;->m:Lph$b;

    iget v7, v7, Lph$b;->c:I

    invoke-direct {v5, v6, v7, v3, v4}, Lug$e;-><init>(Lph;IJ)V

    iput-object v5, v1, Lug;->F:Lug$e;

    :cond_3
    const/4 v3, 0x1

    goto :goto_6

    :cond_4
    :goto_5
    move/from16 v3, p3

    :goto_6
    iget-object v4, v1, Lug;->t:Lbh;

    xor-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Lbh;->e(Z)V

    invoke-virtual {v1, v2}, Lug;->e0(Z)V

    if-eqz p4, :cond_6

    iget-object v4, v1, Lug;->t:Lbh;

    sget-object v5, Lph;->a:Lph;

    invoke-virtual {v4, v5}, Lbh;->A(Lph;)V

    iget-object v4, v1, Lug;->r:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lug$c;

    iget-object v5, v5, Lug$c;->a:Lhh;

    invoke-virtual {v5, v2}, Lhh;->k(Z)V

    goto :goto_7

    :cond_5
    iget-object v4, v1, Lug;->r:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iput v2, v1, Lug;->H:I

    :cond_6
    iget-object v2, v1, Lug;->v:Ldh;

    if-eqz v3, :cond_7

    iget-boolean v4, v1, Lug;->C:Z

    iget-object v5, v1, Lug;->l:Lph$c;

    invoke-virtual {v2, v4, v5}, Ldh;->h(ZLph$c;)Lhp$a;

    move-result-object v2

    goto :goto_8

    :cond_7
    iget-object v2, v2, Ldh;->c:Lhp$a;

    :goto_8
    move-object/from16 v16, v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_8

    move-wide/from16 v21, v4

    goto :goto_9

    :cond_8
    iget-object v2, v1, Lug;->v:Ldh;

    iget-wide v6, v2, Ldh;->m:J

    move-wide/from16 v21, v6

    :goto_9
    if-eqz v3, :cond_9

    move-wide v10, v4

    goto :goto_a

    :cond_9
    iget-object v2, v1, Lug;->v:Ldh;

    iget-wide v2, v2, Ldh;->e:J

    move-wide v10, v2

    :goto_a
    new-instance v2, Ldh;

    if-eqz p4, :cond_a

    sget-object v3, Lph;->a:Lph;

    goto :goto_b

    :cond_a
    iget-object v3, v1, Lug;->v:Ldh;

    iget-object v3, v3, Ldh;->a:Lph;

    :goto_b
    move-object v5, v3

    if-eqz p4, :cond_b

    move-object v6, v0

    goto :goto_c

    :cond_b
    iget-object v3, v1, Lug;->v:Ldh;

    iget-object v3, v3, Ldh;->b:Ljava/lang/Object;

    move-object v6, v3

    :goto_c
    iget-object v3, v1, Lug;->v:Ldh;

    iget v12, v3, Ldh;->f:I

    const/4 v13, 0x0

    if-eqz p4, :cond_c

    sget-object v4, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->d:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    goto :goto_d

    :cond_c
    iget-object v4, v3, Ldh;->h:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    :goto_d
    move-object v14, v4

    if-eqz p4, :cond_d

    iget-object v3, v1, Lug;->d:Lcs;

    goto :goto_e

    :cond_d
    iget-object v3, v3, Ldh;->i:Lcs;

    :goto_e
    move-object v15, v3

    const-wide/16 v19, 0x0

    move-object v4, v2

    move-object/from16 v7, v16

    move-wide/from16 v8, v21

    move-wide/from16 v17, v21

    invoke-direct/range {v4 .. v22}, Ldh;-><init>(Lph;Ljava/lang/Object;Lhp$a;JJIZLandroidx/media2/exoplayer/external/source/TrackGroupArray;Lcs;Lhp$a;JJJ)V

    iput-object v2, v1, Lug;->v:Ldh;

    if-eqz p2, :cond_e

    iget-object v2, v1, Lug;->w:Lhp;

    if-eqz v2, :cond_e

    invoke-interface {v2, v1}, Lhp;->a(Lhp$b;)V

    iput-object v0, v1, Lug;->w:Lhp;

    :cond_e
    return-void
.end method

.method public final P(J)V
    .locals 4

    iget-object v0, p0, Lug;->t:Lbh;

    invoke-virtual {v0}, Lbh;->r()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lug;->t:Lbh;

    invoke-virtual {v0}, Lbh;->o()Lzg;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lzg;->y(J)J

    move-result-wide p1

    :goto_0
    iput-wide p1, p0, Lug;->G:J

    iget-object v0, p0, Lug;->p:Leg;

    invoke-virtual {v0, p1, p2}, Leg;->f(J)V

    iget-object p1, p0, Lug;->x:[Ljh;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    iget-wide v2, p0, Lug;->G:J

    invoke-interface {v1, v2, v3}, Ljh;->resetPosition(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lug;->G()V

    return-void
.end method

.method public final Q(Lug$c;)Z
    .locals 6

    iget-object v0, p1, Lug$c;->d:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v0, Lug$e;

    iget-object v2, p1, Lug$c;->a:Lhh;

    invoke-virtual {v2}, Lhh;->g()Lph;

    move-result-object v2

    iget-object v3, p1, Lug$c;->a:Lhh;

    invoke-virtual {v3}, Lhh;->i()I

    move-result v3

    iget-object v4, p1, Lug$c;->a:Lhh;

    invoke-virtual {v4}, Lhh;->e()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcg;->a(J)J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lug$e;-><init>(Lph;IJ)V

    invoke-virtual {p0, v0, v1}, Lug;->S(Lug$e;Z)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v1, p0, Lug;->v:Ldh;

    iget-object v1, v1, Ldh;->a:Lph;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lph;->b(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, v1, v2, v3, v0}, Lug$c;->b(IJLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lug;->v:Ldh;

    iget-object v2, v2, Ldh;->a:Lph;

    invoke-virtual {v2, v0}, Lph;->b(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    return v1

    :cond_2
    iput v0, p1, Lug$c;->b:I

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final R()V
    .locals 3

    iget-object v0, p0, Lug;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lug;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lug$c;

    invoke-virtual {p0, v1}, Lug;->Q(Lug$c;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lug;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lug$c;

    iget-object v1, v1, Lug$c;->a:Lhh;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lhh;->k(Z)V

    iget-object v1, p0, Lug;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lug;->r:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method public final S(Lug$e;Z)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lug$e;",
            "Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lug;->v:Ldh;

    iget-object v0, v0, Ldh;->a:Lph;

    iget-object v1, p1, Lug$e;->a:Lph;

    invoke-virtual {v0}, Lph;->q()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v1}, Lph;->q()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    :cond_1
    :try_start_0
    iget-object v5, p0, Lug;->l:Lph$c;

    iget-object v6, p0, Lug;->m:Lph$b;

    iget v7, p1, Lug$e;->b:I

    iget-wide v8, p1, Lug$e;->c:J

    move-object v4, v1

    invoke-virtual/range {v4 .. v9}, Lph;->j(Lph$c;Lph$b;IJ)Landroid/util/Pair;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_2

    return-object p1

    :cond_2
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lph;->b(Ljava/lang/Object;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    return-object p1

    :cond_3
    if-eqz p2, :cond_4

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, p1, v1, v0}, Lug;->T(Ljava/lang/Object;Lph;Lph;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lug;->m:Lph$b;

    invoke-virtual {v0, v2, p1}, Lph;->f(ILph$b;)Lph$b;

    move-result-object p1

    iget p1, p1, Lph$b;->c:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, v0, p1, v1, v2}, Lug;->o(Lph;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :catch_0
    :cond_4
    return-object v3
.end method

.method public final T(Ljava/lang/Object;Lph;Lph;)Ljava/lang/Object;
    .locals 9

    invoke-virtual {p2, p1}, Lph;->b(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p2}, Lph;->i()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, p1

    const/4 p1, -0x1

    :goto_0
    if-ge v2, v0, :cond_1

    if-ne p1, v1, :cond_1

    iget-object v5, p0, Lug;->m:Lph$b;

    iget-object v6, p0, Lug;->l:Lph$c;

    iget v7, p0, Lug;->B:I

    iget-boolean v8, p0, Lug;->C:Z

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Lph;->d(ILph$b;Lph$c;IZ)I

    move-result v4

    if-ne v4, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2, v4}, Lph;->l(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Lph;->b(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p3, p1}, Lph;->l(I)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public final U(JJ)V
    .locals 2

    iget-object v0, p0, Lug;->h:Lrt;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lrt;->removeMessages(I)V

    iget-object v0, p0, Lug;->h:Lrt;

    add-long/2addr p1, p3

    invoke-interface {v0, v1, p1, p2}, Lrt;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method

.method public V(Lph;IJ)V
    .locals 2

    iget-object v0, p0, Lug;->h:Lrt;

    new-instance v1, Lug$e;

    invoke-direct {v1, p1, p2, p3, p4}, Lug$e;-><init>(Lph;IJ)V

    const/4 p1, 0x3

    invoke-interface {v0, p1, v1}, Lrt;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final W(Z)V
    .locals 9

    iget-object v0, p0, Lug;->t:Lbh;

    invoke-virtual {v0}, Lbh;->o()Lzg;

    move-result-object v0

    iget-object v0, v0, Lzg;->f:Lah;

    iget-object v2, v0, Lah;->a:Lhp$a;

    iget-object v0, p0, Lug;->v:Ldh;

    iget-wide v0, v0, Ldh;->m:J

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v0, v1, v3}, Lug;->Z(Lhp$a;JZ)J

    move-result-wide v3

    iget-object v0, p0, Lug;->v:Ldh;

    iget-wide v0, v0, Ldh;->m:J

    cmp-long v5, v3, v0

    if-eqz v5, :cond_0

    iget-object v1, p0, Lug;->v:Ldh;

    iget-wide v5, v1, Ldh;->e:J

    invoke-virtual {p0}, Lug;->q()J

    move-result-wide v7

    invoke-virtual/range {v1 .. v8}, Ldh;->c(Lhp$a;JJJ)Ldh;

    move-result-object v0

    iput-object v0, p0, Lug;->v:Ldh;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lug;->q:Lug$d;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lug$d;->g(I)V

    :cond_0
    return-void
.end method

.method public final X(Lug$e;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lug;->q:Lug$d;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lug$d;->e(I)V

    invoke-virtual {v1, v0, v3}, Lug;->S(Lug$e;Z)Landroid/util/Pair;

    move-result-object v2

    const-wide/16 v4, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    if-nez v2, :cond_0

    iget-object v2, v1, Lug;->v:Ldh;

    iget-boolean v9, v1, Lug;->C:Z

    iget-object v10, v1, Lug;->l:Lph$c;

    invoke-virtual {v2, v9, v10}, Ldh;->h(ZLph$c;)Lhp$a;

    move-result-object v2

    move-object v15, v2

    move-wide v12, v6

    move-wide/from16 v18, v12

    :goto_0
    const/4 v2, 0x1

    goto :goto_2

    :cond_0
    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v10, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-object v12, v1, Lug;->t:Lbh;

    invoke-virtual {v12, v9, v10, v11}, Lbh;->x(Ljava/lang/Object;J)Lhp$a;

    move-result-object v9

    invoke-virtual {v9}, Lhp$a;->b()Z

    move-result v12

    if-eqz v12, :cond_1

    move-wide v12, v4

    move-object v15, v9

    move-wide/from16 v18, v10

    goto :goto_0

    :cond_1
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-wide v14, v0, Lug$e;->c:J

    cmp-long v2, v14, v6

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    move-object v15, v9

    move-wide/from16 v18, v10

    :goto_2
    const/4 v9, 0x2

    :try_start_0
    iget-object v10, v1, Lug;->w:Lhp;

    if-eqz v10, :cond_a

    iget v10, v1, Lug;->E:I

    if-lez v10, :cond_3

    goto :goto_5

    :cond_3
    cmp-long v0, v12, v6

    if-nez v0, :cond_4

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lug;->n0(I)V

    invoke-virtual {v1, v8, v8, v3, v8}, Lug;->O(ZZZZ)V

    goto :goto_6

    :cond_4
    iget-object v0, v1, Lug;->v:Ldh;

    iget-object v0, v0, Ldh;->c:Lhp$a;

    invoke-virtual {v15, v0}, Lhp$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v1, Lug;->t:Lbh;

    invoke-virtual {v0}, Lbh;->o()Lzg;

    move-result-object v0

    if-eqz v0, :cond_5

    cmp-long v6, v12, v4

    if-eqz v6, :cond_5

    iget-object v0, v0, Lzg;->a:Lfp;

    iget-object v4, v1, Lug;->u:Lnh;

    invoke-interface {v0, v12, v13, v4}, Lfp;->a(JLnh;)J

    move-result-wide v4

    goto :goto_3

    :cond_5
    move-wide v4, v12

    :goto_3
    invoke-static {v4, v5}, Lcg;->b(J)J

    move-result-wide v6

    iget-object v0, v1, Lug;->v:Ldh;

    iget-wide v10, v0, Ldh;->m:J

    invoke-static {v10, v11}, Lcg;->b(J)J

    move-result-wide v10

    cmp-long v0, v6, v10

    if-nez v0, :cond_8

    iget-object v0, v1, Lug;->v:Ldh;

    iget-wide v3, v0, Ldh;->m:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v14, v1, Lug;->v:Ldh;

    invoke-virtual/range {p0 .. p0}, Lug;->q()J

    move-result-wide v20

    move-wide/from16 v16, v3

    invoke-virtual/range {v14 .. v21}, Ldh;->c(Lhp$a;JJJ)Ldh;

    move-result-object v0

    iput-object v0, v1, Lug;->v:Ldh;

    if-eqz v2, :cond_6

    iget-object v0, v1, Lug;->q:Lug$d;

    invoke-virtual {v0, v9}, Lug$d;->g(I)V

    :cond_6
    return-void

    :cond_7
    move-wide v4, v12

    :cond_8
    :try_start_1
    invoke-virtual {v1, v15, v4, v5}, Lug;->Y(Lhp$a;J)J

    move-result-wide v4

    cmp-long v0, v12, v4

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    :goto_4
    or-int/2addr v2, v3

    move-wide/from16 v16, v4

    goto :goto_7

    :cond_a
    :goto_5
    iput-object v0, v1, Lug;->F:Lug$e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_6
    move-wide/from16 v16, v12

    :goto_7
    iget-object v14, v1, Lug;->v:Ldh;

    invoke-virtual/range {p0 .. p0}, Lug;->q()J

    move-result-wide v20

    invoke-virtual/range {v14 .. v21}, Ldh;->c(Lhp$a;JJJ)Ldh;

    move-result-object v0

    iput-object v0, v1, Lug;->v:Ldh;

    if-eqz v2, :cond_b

    iget-object v0, v1, Lug;->q:Lug$d;

    invoke-virtual {v0, v9}, Lug$d;->g(I)V

    :cond_b
    return-void

    :catchall_0
    move-exception v0

    iget-object v14, v1, Lug;->v:Ldh;

    invoke-virtual/range {p0 .. p0}, Lug;->q()J

    move-result-wide v20

    move-wide/from16 v16, v12

    invoke-virtual/range {v14 .. v21}, Ldh;->c(Lhp$a;JJJ)Ldh;

    move-result-object v3

    iput-object v3, v1, Lug;->v:Ldh;

    if-eqz v2, :cond_c

    iget-object v2, v1, Lug;->q:Lug$d;

    invoke-virtual {v2, v9}, Lug$d;->g(I)V

    :cond_c
    throw v0
.end method

.method public final Y(Lhp$a;J)J
    .locals 2

    iget-object v0, p0, Lug;->t:Lbh;

    invoke-virtual {v0}, Lbh;->o()Lzg;

    move-result-object v0

    iget-object v1, p0, Lug;->t:Lbh;

    invoke-virtual {v1}, Lbh;->p()Lzg;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lug;->Z(Lhp$a;JZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final Z(Lhp$a;JZ)J
    .locals 5

    invoke-virtual {p0}, Lug;->r0()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lug;->A:Z

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lug;->n0(I)V

    iget-object v2, p0, Lug;->t:Lbh;

    invoke-virtual {v2}, Lbh;->o()Lzg;

    move-result-object v2

    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    iget-object v4, v3, Lzg;->f:Lah;

    iget-object v4, v4, Lah;->a:Lhp$a;

    invoke-virtual {p1, v4}, Lhp$a;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, v3, Lzg;->d:Z

    if-eqz v4, :cond_0

    iget-object p1, p0, Lug;->t:Lbh;

    invoke-virtual {p1, v3}, Lbh;->w(Lzg;)Z

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lug;->t:Lbh;

    invoke-virtual {v3}, Lbh;->a()Lzg;

    move-result-object v3

    goto :goto_0

    :cond_1
    :goto_1
    if-ne v2, v3, :cond_2

    if-eqz p4, :cond_4

    :cond_2
    iget-object p1, p0, Lug;->x:[Ljh;

    array-length p4, p1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p4, :cond_3

    aget-object v4, p1, v2

    invoke-virtual {p0, v4}, Lug;->f(Ljh;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    new-array p1, v0, [Ljh;

    iput-object p1, p0, Lug;->x:[Ljh;

    const/4 v2, 0x0

    :cond_4
    if-eqz v3, :cond_6

    invoke-virtual {p0, v2}, Lug;->v0(Lzg;)V

    iget-boolean p1, v3, Lzg;->e:Z

    if-eqz p1, :cond_5

    iget-object p1, v3, Lzg;->a:Lfp;

    invoke-interface {p1, p2, p3}, Lfp;->seekToUs(J)J

    move-result-wide p1

    iget-object p3, v3, Lzg;->a:Lfp;

    iget-wide v2, p0, Lug;->n:J

    sub-long v2, p1, v2

    iget-boolean p4, p0, Lug;->o:Z

    invoke-interface {p3, v2, v3, p4}, Lfp;->discardBuffer(JZ)V

    move-wide p2, p1

    :cond_5
    invoke-virtual {p0, p2, p3}, Lug;->P(J)V

    invoke-virtual {p0}, Lug;->A()V

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lug;->t:Lbh;

    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Lbh;->e(Z)V

    iget-object p1, p0, Lug;->v:Ldh;

    sget-object p4, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->d:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iget-object v2, p0, Lug;->d:Lcs;

    invoke-virtual {p1, p4, v2}, Ldh;->f(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Lcs;)Ldh;

    move-result-object p1

    iput-object p1, p0, Lug;->v:Ldh;

    invoke-virtual {p0, p2, p3}, Lug;->P(J)V

    :goto_3
    invoke-virtual {p0, v0}, Lug;->t(Z)V

    iget-object p1, p0, Lug;->h:Lrt;

    invoke-interface {p1, v1}, Lrt;->sendEmptyMessage(I)Z

    return-wide p2
.end method

.method public a(Leh;)V
    .locals 2

    iget-object v0, p0, Lug;->h:Lrt;

    const/16 v1, 0x11

    invoke-interface {v0, v1, p1}, Lrt;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a0(Lhh;)V
    .locals 5

    invoke-virtual {p1}, Lhh;->e()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p0, p1}, Lug;->b0(Lhh;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lug;->w:Lhp;

    if-eqz v0, :cond_3

    iget v0, p0, Lug;->E:I

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lug$c;

    invoke-direct {v0, p1}, Lug$c;-><init>(Lhh;)V

    invoke-virtual {p0, v0}, Lug;->Q(Lug$c;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lug;->r:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lug;->r:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lhh;->k(Z)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lug;->r:Ljava/util/ArrayList;

    new-instance v1, Lug$c;

    invoke-direct {v1, p1}, Lug$c;-><init>(Lhh;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public b(Lfp;)V
    .locals 2

    iget-object v0, p0, Lug;->h:Lrt;

    const/16 v1, 0x9

    invoke-interface {v0, v1, p1}, Lrt;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final b0(Lhh;)V
    .locals 2

    invoke-virtual {p1}, Lhh;->c()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lug;->h:Lrt;

    invoke-interface {v1}, Lrt;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lug;->e(Lhh;)V

    iget-object p1, p0, Lug;->v:Ldh;

    iget p1, p1, Ldh;->f:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lug;->h:Lrt;

    invoke-interface {p1, v1}, Lrt;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lug;->h:Lrt;

    const/16 v1, 0x10

    invoke-interface {v0, v1, p1}, Lrt;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic c(Lyp;)V
    .locals 0

    check-cast p1, Lfp;

    invoke-virtual {p0, p1}, Lug;->H(Lfp;)V

    return-void
.end method

.method public final c0(Lhh;)V
    .locals 2

    invoke-virtual {p1}, Lhh;->c()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ltg;

    invoke-direct {v1, p0, p1}, Ltg;-><init>(Lug;Lhh;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public declared-synchronized d(Lhh;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lug;->y:Z

    if-eqz v0, :cond_0

    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Ignoring messages sent after release."

    invoke-static {v0, v1}, Lst;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lhh;->k(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lug;->h:Lrt;

    const/16 v1, 0xf

    invoke-interface {v0, v1, p1}, Lrt;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final d0(ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 4

    iget-boolean v0, p0, Lug;->D:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lug;->D:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lug;->a:[Ljh;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-interface {v2}, Ljh;->getState()I

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Ljh;->reset()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    monitor-enter p0

    const/4 p1, 0x1

    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public final e(Lhh;)V
    .locals 4

    invoke-virtual {p1}, Lhh;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1}, Lhh;->f()Lhh$b;

    move-result-object v1

    invoke-virtual {p1}, Lhh;->h()I

    move-result v2

    invoke-virtual {p1}, Lhh;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lhh$b;->handleMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v0}, Lhh;->k(Z)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Lhh;->k(Z)V

    throw v1
.end method

.method public final e0(Z)V
    .locals 2

    iget-object v0, p0, Lug;->v:Ldh;

    iget-boolean v1, v0, Ldh;->g:Z

    if-eq v1, p1, :cond_0

    invoke-virtual {v0, p1}, Ldh;->a(Z)Ldh;

    move-result-object p1

    iput-object p1, p0, Lug;->v:Ldh;

    :cond_0
    return-void
.end method

.method public final f(Ljh;)V
    .locals 1

    iget-object v0, p0, Lug;->p:Leg;

    invoke-virtual {v0, p1}, Leg;->d(Ljh;)V

    invoke-virtual {p0, p1}, Lug;->l(Ljh;)V

    invoke-interface {p1}, Ljh;->disable()V

    return-void
.end method

.method public f0(Z)V
    .locals 3

    iget-object v0, p0, Lug;->h:Lrt;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v2, p1, v1}, Lrt;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public g(Lhp;Lph;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lug;->h:Lrt;

    new-instance v1, Lug$b;

    invoke-direct {v1, p1, p2, p3}, Lug$b;-><init>(Lhp;Lph;Ljava/lang/Object;)V

    const/16 p1, 0x8

    invoke-interface {v0, p1, v1}, Lrt;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final g0(Z)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lug;->A:Z

    iput-boolean p1, p0, Lug;->z:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lug;->r0()V

    invoke-virtual {p0}, Lug;->u0()V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lug;->v:Ldh;

    iget p1, p1, Ldh;->f:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lug;->p0()V

    :goto_0
    iget-object p1, p0, Lug;->h:Lrt;

    invoke-interface {p1, v1}, Lrt;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_1
    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public h0(Leh;)V
    .locals 2

    iget-object v0, p0, Lug;->h:Lrt;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p1}, Lrt;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    const-string v0, "ExoPlayerImplInternal"

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    return v3

    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Leh;

    invoke-virtual {p0, p1}, Lug;->v(Leh;)V

    goto/16 :goto_6

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lhh;

    invoke-virtual {p0, p1}, Lug;->c0(Lhh;)V

    goto/16 :goto_6

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lhh;

    invoke-virtual {p0, p1}, Lug;->a0(Lhh;)V

    goto/16 :goto_6

    :pswitch_3
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v4, p1}, Lug;->d0(ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    goto/16 :goto_6

    :pswitch_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Lug;->m0(Z)V

    goto/16 :goto_6

    :pswitch_5
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lug;->j0(I)V

    goto/16 :goto_6

    :pswitch_6
    invoke-virtual {p0}, Lug;->N()V

    goto/16 :goto_6

    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lfp;

    invoke-virtual {p0, p1}, Lug;->s(Lfp;)V

    goto :goto_6

    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lfp;

    invoke-virtual {p0, p1}, Lug;->u(Lfp;)V

    goto :goto_6

    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lug$b;

    invoke-virtual {p0, p1}, Lug;->x(Lug$b;)V

    goto :goto_6

    :pswitch_a
    invoke-virtual {p0}, Lug;->L()V

    return v2

    :pswitch_b
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {p0, v3, p1, v2}, Lug;->q0(ZZZ)V

    goto :goto_6

    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lnh;

    invoke-virtual {p0, p1}, Lug;->l0(Lnh;)V

    goto :goto_6

    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Leh;

    invoke-virtual {p0, p1}, Lug;->i0(Leh;)V

    goto :goto_6

    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lug$e;

    invoke-virtual {p0, p1}, Lug;->X(Lug$e;)V

    goto :goto_6

    :pswitch_f
    invoke-virtual {p0}, Lug;->i()V

    goto :goto_6

    :pswitch_10
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    invoke-virtual {p0, p1}, Lug;->g0(Z)V

    goto :goto_6

    :pswitch_11
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lhp;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    :goto_4
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_5

    :cond_5
    const/4 p1, 0x0

    :goto_5
    invoke-virtual {p0, v4, v5, p1}, Lug;->J(Lhp;ZZ)V

    :goto_6
    invoke-virtual {p0}, Lug;->B()V
    :try_end_0
    .catch Lfg; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception p1

    goto :goto_7

    :catch_1
    move-exception p1

    :goto_7
    const-string v4, "Internal runtime error."

    invoke-static {v0, v4, p1}, Lst;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    instance-of v0, p1, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_6

    check-cast p1, Ljava/lang/OutOfMemoryError;

    invoke-static {p1}, Lfg;->a(Ljava/lang/OutOfMemoryError;)Lfg;

    move-result-object p1

    goto :goto_8

    :cond_6
    check-cast p1, Ljava/lang/RuntimeException;

    invoke-static {p1}, Lfg;->d(Ljava/lang/RuntimeException;)Lfg;

    move-result-object p1

    goto :goto_8

    :catch_2
    move-exception p1

    const-string v4, "Source error."

    invoke-static {v0, v4, p1}, Lst;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lug;->k:Landroid/os/Handler;

    invoke-static {p1}, Lfg;->c(Ljava/io/IOException;)Lfg;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {p0, v3, v3, v3}, Lug;->q0(ZZZ)V

    goto :goto_9

    :catch_3
    move-exception p1

    const-string v4, "Playback error."

    invoke-static {v0, v4, p1}, Lst;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_8
    iget-object v0, p0, Lug;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {p0, v2, v3, v3}, Lug;->q0(ZZZ)V

    :goto_9
    invoke-virtual {p0}, Lug;->B()V

    :goto_a
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lug;->s:Ljt;

    invoke-interface {v1}, Ljt;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Lug;->t0()V

    iget-object v3, v0, Lug;->t:Lbh;

    invoke-virtual {v3}, Lbh;->r()Z

    move-result v3

    const-wide/16 v4, 0xa

    if-nez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lug;->C()V

    invoke-virtual {v0, v1, v2, v4, v5}, Lug;->U(JJ)V

    return-void

    :cond_0
    iget-object v3, v0, Lug;->t:Lbh;

    invoke-virtual {v3}, Lbh;->o()Lzg;

    move-result-object v3

    const-string v6, "doSomeWork"

    invoke-static {v6}, Lku;->a(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lug;->u0()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    iget-object v10, v3, Lzg;->a:Lfp;

    iget-object v11, v0, Lug;->v:Ldh;

    iget-wide v11, v11, Ldh;->m:J

    iget-wide v13, v0, Lug;->n:J

    sub-long/2addr v11, v13

    iget-boolean v13, v0, Lug;->o:Z

    invoke-interface {v10, v11, v12, v13}, Lfp;->discardBuffer(JZ)V

    iget-object v10, v0, Lug;->x:[Ljh;

    array-length v11, v10

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    :goto_0
    if-ge v14, v11, :cond_6

    aget-object v12, v10, v14

    iget-wide v8, v0, Lug;->G:J

    invoke-interface {v12, v8, v9, v6, v7}, Ljh;->render(JJ)V

    if-eqz v16, :cond_1

    invoke-interface {v12}, Ljh;->isEnded()Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v16, 0x1

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    :goto_1
    invoke-interface {v12}, Ljh;->isReady()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-interface {v12}, Ljh;->isEnded()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v0, v12}, Lug;->M(Ljh;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v8, 0x1

    :goto_3
    if-nez v8, :cond_4

    invoke-interface {v12}, Ljh;->maybeThrowStreamError()V

    :cond_4
    if-eqz v15, :cond_5

    if-eqz v8, :cond_5

    const/4 v15, 0x1

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    :goto_4
    add-int/lit8 v14, v14, 0x1

    const-wide/16 v8, 0x3e8

    goto :goto_0

    :cond_6
    if-nez v15, :cond_7

    invoke-virtual/range {p0 .. p0}, Lug;->C()V

    :cond_7
    iget-object v6, v3, Lzg;->f:Lah;

    iget-wide v6, v6, Lah;->e:J

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v16, :cond_9

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v13, v6, v11

    if-eqz v13, :cond_8

    iget-object v11, v0, Lug;->v:Ldh;

    iget-wide v11, v11, Ldh;->m:J

    cmp-long v13, v6, v11

    if-gtz v13, :cond_9

    :cond_8
    iget-object v3, v3, Lzg;->f:Lah;

    iget-boolean v3, v3, Lah;->g:Z

    if-eqz v3, :cond_9

    invoke-virtual {v0, v8}, Lug;->n0(I)V

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lug;->r0()V

    goto :goto_6

    :cond_9
    iget-object v3, v0, Lug;->v:Ldh;

    iget v3, v3, Ldh;->f:I

    if-ne v3, v10, :cond_a

    invoke-virtual {v0, v15}, Lug;->o0(Z)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v0, v9}, Lug;->n0(I)V

    iget-boolean v3, v0, Lug;->z:Z

    if-eqz v3, :cond_d

    invoke-virtual/range {p0 .. p0}, Lug;->p0()V

    goto :goto_6

    :cond_a
    iget-object v3, v0, Lug;->v:Ldh;

    iget v3, v3, Ldh;->f:I

    if-ne v3, v9, :cond_d

    iget-object v3, v0, Lug;->x:[Ljh;

    array-length v3, v3

    if-nez v3, :cond_b

    invoke-virtual/range {p0 .. p0}, Lug;->y()Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_6

    :cond_b
    if-nez v15, :cond_d

    :cond_c
    iget-boolean v3, v0, Lug;->z:Z

    iput-boolean v3, v0, Lug;->A:Z

    invoke-virtual {v0, v10}, Lug;->n0(I)V

    goto :goto_5

    :cond_d
    :goto_6
    iget-object v3, v0, Lug;->v:Ldh;

    iget v3, v3, Ldh;->f:I

    if-ne v3, v10, :cond_e

    iget-object v3, v0, Lug;->x:[Ljh;

    array-length v6, v3

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v6, :cond_e

    aget-object v7, v3, v12

    invoke-interface {v7}, Ljh;->maybeThrowStreamError()V

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_e
    iget-boolean v3, v0, Lug;->z:Z

    if-eqz v3, :cond_f

    iget-object v3, v0, Lug;->v:Ldh;

    iget v3, v3, Ldh;->f:I

    if-eq v3, v9, :cond_10

    :cond_f
    iget-object v3, v0, Lug;->v:Ldh;

    iget v3, v3, Ldh;->f:I

    if-ne v3, v10, :cond_11

    :cond_10
    invoke-virtual {v0, v1, v2, v4, v5}, Lug;->U(JJ)V

    goto :goto_8

    :cond_11
    iget-object v4, v0, Lug;->x:[Ljh;

    array-length v4, v4

    if-eqz v4, :cond_12

    if-eq v3, v8, :cond_12

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3, v4}, Lug;->U(JJ)V

    goto :goto_8

    :cond_12
    iget-object v1, v0, Lug;->h:Lrt;

    invoke-interface {v1, v10}, Lrt;->removeMessages(I)V

    :goto_8
    invoke-static {}, Lku;->c()V

    return-void
.end method

.method public final i0(Leh;)V
    .locals 1

    iget-object v0, p0, Lug;->p:Leg;

    invoke-virtual {v0, p1}, Leg;->b(Leh;)Leh;

    return-void
.end method

.method public final j(IZI)V
    .locals 11

    iget-object v0, p0, Lug;->t:Lbh;

    invoke-virtual {v0}, Lbh;->o()Lzg;

    move-result-object v0

    iget-object v1, p0, Lug;->a:[Ljh;

    aget-object v1, v1, p1

    iget-object v2, p0, Lug;->x:[Ljh;

    aput-object v1, v2, p3

    invoke-interface {v1}, Ljh;->getState()I

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {v0}, Lzg;->o()Lcs;

    move-result-object p3

    iget-object v2, p3, Lcs;->b:[Llh;

    aget-object v3, v2, p1

    iget-object p3, p3, Lcs;->c:Lzr;

    invoke-virtual {p3, p1}, Lzr;->a(I)Lyr;

    move-result-object p3

    invoke-static {p3}, Lug;->m(Lyr;)[Landroidx/media2/exoplayer/external/Format;

    move-result-object v4

    iget-boolean p3, p0, Lug;->z:Z

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-eqz p3, :cond_0

    iget-object p3, p0, Lug;->v:Ldh;

    iget p3, p3, Ldh;->f:I

    const/4 v6, 0x3

    if-ne p3, v6, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    iget-object p2, v0, Lzg;->c:[Lxp;

    aget-object v5, p2, p1

    iget-wide v6, p0, Lug;->G:J

    invoke-virtual {v0}, Lzg;->l()J

    move-result-wide v9

    move-object v2, v1

    invoke-interface/range {v2 .. v10}, Ljh;->c(Llh;[Landroidx/media2/exoplayer/external/Format;Lxp;JZJ)V

    iget-object p1, p0, Lug;->p:Leg;

    invoke-virtual {p1, v1}, Leg;->e(Ljh;)V

    if-eqz p3, :cond_2

    invoke-interface {v1}, Ljh;->start()V

    :cond_2
    return-void
.end method

.method public final j0(I)V
    .locals 1

    iput p1, p0, Lug;->B:I

    iget-object v0, p0, Lug;->t:Lbh;

    invoke-virtual {v0, p1}, Lbh;->E(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lug;->W(Z)V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lug;->t(Z)V

    return-void
.end method

.method public final k([ZI)V
    .locals 4

    new-array p2, p2, [Ljh;

    iput-object p2, p0, Lug;->x:[Ljh;

    iget-object p2, p0, Lug;->t:Lbh;

    invoke-virtual {p2}, Lbh;->o()Lzg;

    move-result-object p2

    invoke-virtual {p2}, Lzg;->o()Lcs;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lug;->a:[Ljh;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p2, v1}, Lcs;->c(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lug;->a:[Ljh;

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljh;->reset()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lug;->a:[Ljh;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p2, v0}, Lcs;->c(I)Z

    move-result v2

    if-eqz v2, :cond_2

    aget-boolean v2, p1, v0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lug;->j(IZI)V

    move v1, v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public k0(Lnh;)V
    .locals 2

    iget-object v0, p0, Lug;->h:Lrt;

    const/4 v1, 0x5

    invoke-interface {v0, v1, p1}, Lrt;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final l(Ljh;)V
    .locals 2

    invoke-interface {p1}, Ljh;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljh;->stop()V

    :cond_0
    return-void
.end method

.method public final l0(Lnh;)V
    .locals 0

    iput-object p1, p0, Lug;->u:Lnh;

    return-void
.end method

.method public final m0(Z)V
    .locals 1

    iput-boolean p1, p0, Lug;->C:Z

    iget-object v0, p0, Lug;->t:Lbh;

    invoke-virtual {v0, p1}, Lbh;->F(Z)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lug;->W(Z)V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lug;->t(Z)V

    return-void
.end method

.method public final n()J
    .locals 9

    iget-object v0, p0, Lug;->t:Lbh;

    invoke-virtual {v0}, Lbh;->p()Lzg;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lzg;->l()J

    move-result-wide v1

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lug;->a:[Ljh;

    array-length v5, v4

    if-ge v3, v5, :cond_4

    aget-object v4, v4, v3

    invoke-interface {v4}, Ljh;->getState()I

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lug;->a:[Ljh;

    aget-object v4, v4, v3

    invoke-interface {v4}, Ljh;->getStream()Lxp;

    move-result-object v4

    iget-object v5, v0, Lzg;->c:[Lxp;

    aget-object v5, v5, v3

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lug;->a:[Ljh;

    aget-object v4, v4, v3

    invoke-interface {v4}, Ljh;->f()J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_2

    return-wide v6

    :cond_2
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-wide v1
.end method

.method public final n0(I)V
    .locals 2

    iget-object v0, p0, Lug;->v:Ldh;

    iget v1, v0, Ldh;->f:I

    if-eq v1, p1, :cond_0

    invoke-virtual {v0, p1}, Ldh;->d(I)Ldh;

    move-result-object p1

    iput-object p1, p0, Lug;->v:Ldh;

    :cond_0
    return-void
.end method

.method public final o(Lph;IJ)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lph;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lug;->l:Lph$c;

    iget-object v2, p0, Lug;->m:Lph$b;

    move-object v0, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lph;->j(Lph$c;Lph$b;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final o0(Z)Z
    .locals 6

    iget-object v0, p0, Lug;->x:[Ljh;

    array-length v0, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lug;->y()Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget-object p1, p0, Lug;->v:Ldh;

    iget-boolean p1, p1, Ldh;->g:Z

    const/4 v1, 0x1

    if-nez p1, :cond_2

    return v1

    :cond_2
    iget-object p1, p0, Lug;->t:Lbh;

    invoke-virtual {p1}, Lbh;->j()Lzg;

    move-result-object p1

    invoke-virtual {p1}, Lzg;->q()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p1, p1, Lzg;->f:Lah;

    iget-boolean p1, p1, Lah;->g:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_4

    iget-object p1, p0, Lug;->f:Lyg;

    invoke-virtual {p0}, Lug;->q()J

    move-result-wide v2

    iget-object v4, p0, Lug;->p:Leg;

    invoke-virtual {v4}, Leg;->getPlaybackParameters()Leh;

    move-result-object v4

    iget v4, v4, Leh;->a:F

    iget-boolean v5, p0, Lug;->A:Z

    invoke-interface {p1, v2, v3, v4, v5}, Lyg;->shouldStartPlayback(JFZ)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    return v0
.end method

.method public onTrackSelectionsInvalidated()V
    .locals 2

    iget-object v0, p0, Lug;->h:Lrt;

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Lrt;->sendEmptyMessage(I)Z

    return-void
.end method

.method public p()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lug;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final p0()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lug;->A:Z

    iget-object v1, p0, Lug;->p:Leg;

    invoke-virtual {v1}, Leg;->g()V

    iget-object v1, p0, Lug;->x:[Ljh;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-interface {v3}, Ljh;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final q()J
    .locals 2

    iget-object v0, p0, Lug;->v:Ldh;

    iget-wide v0, v0, Ldh;->k:J

    invoke-virtual {p0, v0, v1}, Lug;->r(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final q0(ZZZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lug;->D:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {p0, p1, v1, p2, p2}, Lug;->O(ZZZZ)V

    iget-object p1, p0, Lug;->q:Lug$d;

    iget p2, p0, Lug;->E:I

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lug$d;->e(I)V

    iput v0, p0, Lug;->E:I

    iget-object p1, p0, Lug;->f:Lyg;

    invoke-interface {p1}, Lyg;->onStopped()V

    invoke-virtual {p0, v1}, Lug;->n0(I)V

    return-void
.end method

.method public final r(J)J
    .locals 3

    iget-object v0, p0, Lug;->t:Lbh;

    invoke-virtual {v0}, Lbh;->j()Lzg;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lug;->G:J

    invoke-virtual {v0, v1, v2}, Lzg;->x(J)J

    move-result-wide v0

    sub-long/2addr p1, v0

    :goto_0
    return-wide p1
.end method

.method public final r0()V
    .locals 4

    iget-object v0, p0, Lug;->p:Leg;

    invoke-virtual {v0}, Leg;->h()V

    iget-object v0, p0, Lug;->x:[Ljh;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Lug;->l(Ljh;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final s(Lfp;)V
    .locals 2

    iget-object v0, p0, Lug;->t:Lbh;

    invoke-virtual {v0, p1}, Lbh;->u(Lfp;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lug;->t:Lbh;

    iget-wide v0, p0, Lug;->G:J

    invoke-virtual {p1, v0, v1}, Lbh;->v(J)V

    invoke-virtual {p0}, Lug;->A()V

    return-void
.end method

.method public final s0(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Lcs;)V
    .locals 2

    iget-object v0, p0, Lug;->f:Lyg;

    iget-object v1, p0, Lug;->a:[Ljh;

    iget-object p2, p2, Lcs;->c:Lzr;

    invoke-interface {v0, v1, p1, p2}, Lyg;->a([Ljh;Landroidx/media2/exoplayer/external/source/TrackGroupArray;Lzr;)V

    return-void
.end method

.method public final t(Z)V
    .locals 5

    iget-object v0, p0, Lug;->t:Lbh;

    invoke-virtual {v0}, Lbh;->j()Lzg;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lug;->v:Ldh;

    iget-object v1, v1, Ldh;->c:Lhp$a;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lzg;->f:Lah;

    iget-object v1, v1, Lah;->a:Lhp$a;

    :goto_0
    iget-object v2, p0, Lug;->v:Ldh;

    iget-object v2, v2, Ldh;->j:Lhp$a;

    invoke-virtual {v2, v1}, Lhp$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iget-object v3, p0, Lug;->v:Ldh;

    invoke-virtual {v3, v1}, Ldh;->b(Lhp$a;)Ldh;

    move-result-object v1

    iput-object v1, p0, Lug;->v:Ldh;

    :cond_1
    iget-object v1, p0, Lug;->v:Ldh;

    if-nez v0, :cond_2

    iget-wide v3, v1, Ldh;->m:J

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lzg;->i()J

    move-result-wide v3

    :goto_1
    iput-wide v3, v1, Ldh;->k:J

    iget-object v1, p0, Lug;->v:Ldh;

    invoke-virtual {p0}, Lug;->q()J

    move-result-wide v3

    iput-wide v3, v1, Ldh;->l:J

    if-nez v2, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    if-eqz v0, :cond_4

    iget-boolean p1, v0, Lzg;->d:Z

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lzg;->n()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object p1

    invoke-virtual {v0}, Lzg;->o()Lcs;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lug;->s0(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Lcs;)V

    :cond_4
    return-void
.end method

.method public final t0()V
    .locals 14

    iget-object v0, p0, Lug;->w:Lhp;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lug;->E:I

    if-lez v1, :cond_1

    invoke-interface {v0}, Lhp;->maybeThrowSourceInfoRefreshError()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lug;->F()V

    iget-object v0, p0, Lug;->t:Lbh;

    invoke-virtual {v0}, Lbh;->j()Lzg;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lzg;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lug;->v:Ldh;

    iget-boolean v0, v0, Ldh;->g:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lug;->A()V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Lug;->e0(Z)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lug;->t:Lbh;

    invoke-virtual {v0}, Lbh;->r()Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lug;->t:Lbh;

    invoke-virtual {v0}, Lbh;->o()Lzg;

    move-result-object v0

    iget-object v2, p0, Lug;->t:Lbh;

    invoke-virtual {v2}, Lbh;->p()Lzg;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_2
    iget-boolean v5, p0, Lug;->z:Z

    if-eqz v5, :cond_8

    if-eq v0, v2, :cond_8

    iget-wide v5, p0, Lug;->G:J

    invoke-virtual {v0}, Lzg;->j()Lzg;

    move-result-object v7

    invoke-virtual {v7}, Lzg;->m()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-ltz v9, :cond_8

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lug;->B()V

    :cond_6
    iget-object v4, v0, Lzg;->f:Lah;

    iget-boolean v4, v4, Lah;->f:Z

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    goto :goto_3

    :cond_7
    const/4 v4, 0x3

    :goto_3
    iget-object v5, p0, Lug;->t:Lbh;

    invoke-virtual {v5}, Lbh;->a()Lzg;

    move-result-object v5

    invoke-virtual {p0, v0}, Lug;->v0(Lzg;)V

    iget-object v6, p0, Lug;->v:Ldh;

    iget-object v0, v5, Lzg;->f:Lah;

    iget-object v7, v0, Lah;->a:Lhp$a;

    iget-wide v8, v0, Lah;->b:J

    iget-wide v10, v0, Lah;->c:J

    invoke-virtual {p0}, Lug;->q()J

    move-result-wide v12

    invoke-virtual/range {v6 .. v13}, Ldh;->c(Lhp$a;JJJ)Ldh;

    move-result-object v0

    iput-object v0, p0, Lug;->v:Ldh;

    iget-object v0, p0, Lug;->q:Lug$d;

    invoke-virtual {v0, v4}, Lug$d;->g(I)V

    invoke-virtual {p0}, Lug;->u0()V

    move-object v0, v5

    const/4 v4, 0x1

    goto :goto_2

    :cond_8
    iget-object v0, v2, Lzg;->f:Lah;

    iget-boolean v0, v0, Lah;->g:Z

    if-eqz v0, :cond_b

    :goto_4
    iget-object v0, p0, Lug;->a:[Ljh;

    array-length v3, v0

    if-ge v1, v3, :cond_a

    aget-object v0, v0, v1

    iget-object v3, v2, Lzg;->c:[Lxp;

    aget-object v3, v3, v1

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljh;->getStream()Lxp;

    move-result-object v4

    if-ne v4, v3, :cond_9

    invoke-interface {v0}, Ljh;->hasReadStreamToEnd()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljh;->setCurrentStreamFinal()V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    return-void

    :cond_b
    invoke-virtual {v2}, Lzg;->j()Lzg;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    const/4 v0, 0x0

    :goto_5
    iget-object v4, p0, Lug;->a:[Ljh;

    array-length v5, v4

    if-ge v0, v5, :cond_f

    aget-object v4, v4, v0

    iget-object v5, v2, Lzg;->c:[Lxp;

    aget-object v5, v5, v0

    invoke-interface {v4}, Ljh;->getStream()Lxp;

    move-result-object v6

    if-ne v6, v5, :cond_e

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljh;->hasReadStreamToEnd()Z

    move-result v4

    if-nez v4, :cond_d

    goto :goto_6

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_e
    :goto_6
    return-void

    :cond_f
    invoke-virtual {v2}, Lzg;->j()Lzg;

    move-result-object v0

    iget-boolean v0, v0, Lzg;->d:Z

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lug;->C()V

    return-void

    :cond_10
    invoke-virtual {v2}, Lzg;->o()Lcs;

    move-result-object v0

    iget-object v2, p0, Lug;->t:Lbh;

    invoke-virtual {v2}, Lbh;->b()Lzg;

    move-result-object v2

    invoke-virtual {v2}, Lzg;->o()Lcs;

    move-result-object v4

    iget-object v5, v2, Lzg;->a:Lfp;

    invoke-interface {v5}, Lfp;->readDiscontinuity()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v5, v7

    if-eqz v9, :cond_11

    const/4 v5, 0x1

    goto :goto_7

    :cond_11
    const/4 v5, 0x0

    :goto_7
    const/4 v6, 0x0

    :goto_8
    iget-object v7, p0, Lug;->a:[Ljh;

    array-length v8, v7

    if-ge v6, v8, :cond_17

    aget-object v7, v7, v6

    invoke-virtual {v0, v6}, Lcs;->c(I)Z

    move-result v8

    if-nez v8, :cond_12

    goto :goto_a

    :cond_12
    if-eqz v5, :cond_14

    :cond_13
    invoke-interface {v7}, Ljh;->setCurrentStreamFinal()V

    goto :goto_a

    :cond_14
    invoke-interface {v7}, Ljh;->isCurrentStreamFinal()Z

    move-result v8

    if-nez v8, :cond_16

    iget-object v8, v4, Lcs;->c:Lzr;

    invoke-virtual {v8, v6}, Lzr;->a(I)Lyr;

    move-result-object v8

    invoke-virtual {v4, v6}, Lcs;->c(I)Z

    move-result v9

    iget-object v10, p0, Lug;->b:[Lkh;

    aget-object v10, v10, v6

    invoke-interface {v10}, Lkh;->getTrackType()I

    move-result v10

    const/4 v11, 0x6

    if-ne v10, v11, :cond_15

    const/4 v10, 0x1

    goto :goto_9

    :cond_15
    const/4 v10, 0x0

    :goto_9
    iget-object v11, v0, Lcs;->b:[Llh;

    aget-object v11, v11, v6

    iget-object v12, v4, Lcs;->b:[Llh;

    aget-object v12, v12, v6

    if-eqz v9, :cond_13

    invoke-virtual {v12, v11}, Llh;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    if-nez v10, :cond_13

    invoke-static {v8}, Lug;->m(Lyr;)[Landroidx/media2/exoplayer/external/Format;

    move-result-object v8

    iget-object v9, v2, Lzg;->c:[Lxp;

    aget-object v9, v9, v6

    invoke-virtual {v2}, Lzg;->l()J

    move-result-wide v10

    invoke-interface {v7, v8, v9, v10, v11}, Ljh;->e([Landroidx/media2/exoplayer/external/Format;Lxp;J)V

    :cond_16
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_17
    return-void
.end method

.method public final u(Lfp;)V
    .locals 2

    iget-object v0, p0, Lug;->t:Lbh;

    invoke-virtual {v0, p1}, Lbh;->u(Lfp;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lug;->t:Lbh;

    invoke-virtual {p1}, Lbh;->j()Lzg;

    move-result-object p1

    iget-object v0, p0, Lug;->p:Leg;

    invoke-virtual {v0}, Leg;->getPlaybackParameters()Leh;

    move-result-object v0

    iget v0, v0, Leh;->a:F

    iget-object v1, p0, Lug;->v:Ldh;

    iget-object v1, v1, Ldh;->a:Lph;

    invoke-virtual {p1, v0, v1}, Lzg;->p(FLph;)V

    invoke-virtual {p1}, Lzg;->n()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v0

    invoke-virtual {p1}, Lzg;->o()Lcs;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lug;->s0(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Lcs;)V

    iget-object p1, p0, Lug;->t:Lbh;

    invoke-virtual {p1}, Lbh;->r()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lug;->t:Lbh;

    invoke-virtual {p1}, Lbh;->a()Lzg;

    move-result-object p1

    iget-object p1, p1, Lzg;->f:Lah;

    iget-wide v0, p1, Lah;->b:J

    invoke-virtual {p0, v0, v1}, Lug;->P(J)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lug;->v0(Lzg;)V

    :cond_1
    invoke-virtual {p0}, Lug;->A()V

    return-void
.end method

.method public final u0()V
    .locals 10

    iget-object v0, p0, Lug;->t:Lbh;

    invoke-virtual {v0}, Lbh;->r()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lug;->t:Lbh;

    invoke-virtual {v0}, Lbh;->o()Lzg;

    move-result-object v0

    iget-object v1, v0, Lzg;->a:Lfp;

    invoke-interface {v1}, Lfp;->readDiscontinuity()J

    move-result-wide v4

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v4, v1

    if-eqz v3, :cond_1

    invoke-virtual {p0, v4, v5}, Lug;->P(J)V

    iget-object v0, p0, Lug;->v:Ldh;

    iget-wide v0, v0, Ldh;->m:J

    cmp-long v2, v4, v0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lug;->v:Ldh;

    iget-object v3, v2, Ldh;->c:Lhp$a;

    iget-wide v6, v2, Ldh;->e:J

    invoke-virtual {p0}, Lug;->q()J

    move-result-wide v8

    invoke-virtual/range {v2 .. v9}, Ldh;->c(Lhp$a;JJJ)Ldh;

    move-result-object v0

    iput-object v0, p0, Lug;->v:Ldh;

    iget-object v0, p0, Lug;->q:Lug$d;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lug$d;->g(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lug;->p:Leg;

    invoke-virtual {v1}, Leg;->i()J

    move-result-wide v1

    iput-wide v1, p0, Lug;->G:J

    invoke-virtual {v0, v1, v2}, Lzg;->x(J)J

    move-result-wide v0

    iget-object v2, p0, Lug;->v:Ldh;

    iget-wide v2, v2, Ldh;->m:J

    invoke-virtual {p0, v2, v3, v0, v1}, Lug;->E(JJ)V

    iget-object v2, p0, Lug;->v:Ldh;

    iput-wide v0, v2, Ldh;->m:J

    :cond_2
    :goto_0
    iget-object v0, p0, Lug;->t:Lbh;

    invoke-virtual {v0}, Lbh;->j()Lzg;

    move-result-object v0

    iget-object v1, p0, Lug;->v:Ldh;

    invoke-virtual {v0}, Lzg;->i()J

    move-result-wide v2

    iput-wide v2, v1, Ldh;->k:J

    iget-object v0, p0, Lug;->v:Ldh;

    invoke-virtual {p0}, Lug;->q()J

    move-result-wide v1

    iput-wide v1, v0, Ldh;->l:J

    return-void
.end method

.method public final v(Leh;)V
    .locals 5

    iget-object v0, p0, Lug;->k:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget v0, p1, Leh;->a:F

    invoke-virtual {p0, v0}, Lug;->w0(F)V

    iget-object v0, p0, Lug;->a:[Ljh;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    iget v4, p1, Leh;->a:F

    invoke-interface {v3, v4}, Ljh;->d(F)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final v0(Lzg;)V
    .locals 8

    iget-object v0, p0, Lug;->t:Lbh;

    invoke-virtual {v0}, Lbh;->o()Lzg;

    move-result-object v0

    if-eqz v0, :cond_6

    if-ne p1, v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lug;->a:[Ljh;

    array-length v1, v1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lug;->a:[Ljh;

    array-length v6, v5

    if-ge v3, v6, :cond_5

    aget-object v5, v5, v3

    invoke-interface {v5}, Ljh;->getState()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    aput-boolean v6, v1, v3

    invoke-virtual {v0}, Lzg;->o()Lcs;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcs;->c(I)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    aget-boolean v6, v1, v3

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Lzg;->o()Lcs;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcs;->c(I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljh;->isCurrentStreamFinal()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljh;->getStream()Lxp;

    move-result-object v6

    iget-object v7, p1, Lzg;->c:[Lxp;

    aget-object v7, v7, v3

    if-ne v6, v7, :cond_4

    :cond_3
    invoke-virtual {p0, v5}, Lug;->f(Ljh;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lug;->v:Ldh;

    invoke-virtual {v0}, Lzg;->n()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v2

    invoke-virtual {v0}, Lzg;->o()Lcs;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ldh;->f(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Lcs;)Ldh;

    move-result-object p1

    iput-object p1, p0, Lug;->v:Ldh;

    invoke-virtual {p0, v1, v4}, Lug;->k([ZI)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final w()V
    .locals 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lug;->n0(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v0, v1, v0}, Lug;->O(ZZZZ)V

    return-void
.end method

.method public final w0(F)V
    .locals 5

    iget-object v0, p0, Lug;->t:Lbh;

    invoke-virtual {v0}, Lbh;->i()Lzg;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lzg;->d:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lzg;->o()Lcs;

    move-result-object v1

    iget-object v1, v1, Lcs;->c:Lzr;

    invoke-virtual {v1}, Lzr;->b()[Lyr;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    invoke-interface {v4, p1}, Lyr;->onPlaybackSpeed(F)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lzg;->j()Lzg;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final x(Lug$b;)V
    .locals 13

    iget-object v0, p1, Lug$b;->a:Lhp;

    iget-object v1, p0, Lug;->w:Lhp;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lug;->q:Lug$d;

    iget v1, p0, Lug;->E:I

    invoke-virtual {v0, v1}, Lug$d;->e(I)V

    const/4 v0, 0x0

    iput v0, p0, Lug;->E:I

    iget-object v1, p0, Lug;->v:Ldh;

    iget-object v1, v1, Ldh;->a:Lph;

    iget-object v2, p1, Lug$b;->b:Lph;

    iget-object p1, p1, Lug$b;->c:Ljava/lang/Object;

    iget-object v3, p0, Lug;->t:Lbh;

    invoke-virtual {v3, v2}, Lbh;->A(Lph;)V

    iget-object v3, p0, Lug;->v:Ldh;

    invoke-virtual {v3, v2, p1}, Ldh;->e(Lph;Ljava/lang/Object;)Ldh;

    move-result-object p1

    iput-object p1, p0, Lug;->v:Ldh;

    invoke-virtual {p0}, Lug;->R()V

    iget-object p1, p0, Lug;->v:Ldh;

    iget-object p1, p1, Ldh;->c:Lhp$a;

    invoke-virtual {p1}, Lhp$a;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lug;->v:Ldh;

    iget-wide v3, v3, Ldh;->e:J

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lug;->v:Ldh;

    iget-wide v3, v3, Ldh;->m:J

    :goto_0
    iget-object v5, p0, Lug;->F:Lug$e;

    if-eqz v5, :cond_3

    const/4 p1, 0x1

    invoke-virtual {p0, v5, p1}, Lug;->S(Lug$e;Z)Landroid/util/Pair;

    move-result-object p1

    const/4 v1, 0x0

    iput-object v1, p0, Lug;->F:Lug$e;

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lug;->w()V

    return-void

    :cond_2
    :goto_1
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v5, p0, Lug;->t:Lbh;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v5, p1, v1, v2}, Lbh;->x(Ljava/lang/Object;J)Lhp$a;

    move-result-object p1

    move-object v6, p1

    move-wide v9, v1

    goto :goto_3

    :cond_3
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-nez v7, :cond_4

    invoke-virtual {v2}, Lph;->q()Z

    move-result v7

    if-nez v7, :cond_4

    iget-boolean p1, p0, Lug;->C:Z

    invoke-virtual {v2, p1}, Lph;->a(Z)I

    move-result p1

    :goto_2
    invoke-virtual {p0, v2, p1, v5, v6}, Lug;->o(Lph;IJ)Landroid/util/Pair;

    move-result-object p1

    goto :goto_1

    :cond_4
    iget-object v7, p1, Lhp$a;->a:Ljava/lang/Object;

    invoke-virtual {v2, v7}, Lph;->b(Ljava/lang/Object;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_6

    iget-object p1, p1, Lhp$a;->a:Ljava/lang/Object;

    invoke-virtual {p0, p1, v1, v2}, Lug;->T(Ljava/lang/Object;Lph;Lph;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lug;->w()V

    return-void

    :cond_5
    iget-object v1, p0, Lug;->m:Lph$b;

    invoke-virtual {v2, p1, v1}, Lph;->h(Ljava/lang/Object;Lph$b;)Lph$b;

    move-result-object p1

    iget p1, p1, Lph$b;->c:I

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lhp$a;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lug;->t:Lbh;

    iget-object p1, p1, Lhp$a;->a:Ljava/lang/Object;

    invoke-virtual {v1, p1, v3, v4}, Lbh;->x(Ljava/lang/Object;J)Lhp$a;

    move-result-object p1

    :cond_7
    move-object v6, p1

    move-wide v9, v3

    :goto_3
    iget-object p1, p0, Lug;->v:Ldh;

    iget-object p1, p1, Ldh;->c:Lhp$a;

    invoke-virtual {p1, v6}, Lhp$a;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    cmp-long p1, v3, v9

    if-nez p1, :cond_8

    iget-object p1, p0, Lug;->t:Lbh;

    iget-wide v1, p0, Lug;->G:J

    invoke-virtual {p0}, Lug;->n()J

    move-result-wide v3

    invoke-virtual {p1, v1, v2, v3, v4}, Lbh;->D(JJ)Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {p0, v0}, Lug;->W(Z)V

    goto :goto_6

    :cond_8
    iget-object p1, p0, Lug;->t:Lbh;

    invoke-virtual {p1}, Lbh;->i()Lzg;

    move-result-object p1

    if-eqz p1, :cond_a

    :cond_9
    :goto_4
    invoke-virtual {p1}, Lzg;->j()Lzg;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lzg;->j()Lzg;

    move-result-object p1

    iget-object v1, p1, Lzg;->f:Lah;

    iget-object v1, v1, Lah;->a:Lhp$a;

    invoke-virtual {v1, v6}, Lhp$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lug;->t:Lbh;

    iget-object v2, p1, Lzg;->f:Lah;

    invoke-virtual {v1, v2}, Lbh;->q(Lah;)Lah;

    move-result-object v1

    iput-object v1, p1, Lzg;->f:Lah;

    goto :goto_4

    :cond_a
    invoke-virtual {v6}, Lhp$a;->b()Z

    move-result p1

    if-eqz p1, :cond_b

    const-wide/16 v1, 0x0

    goto :goto_5

    :cond_b
    move-wide v1, v9

    :goto_5
    invoke-virtual {p0, v6, v1, v2}, Lug;->Y(Lhp$a;J)J

    move-result-wide v7

    iget-object v5, p0, Lug;->v:Ldh;

    invoke-virtual {p0}, Lug;->q()J

    move-result-wide v11

    invoke-virtual/range {v5 .. v12}, Ldh;->c(Lhp$a;JJJ)Ldh;

    move-result-object p1

    iput-object p1, p0, Lug;->v:Ldh;

    :cond_c
    :goto_6
    invoke-virtual {p0, v0}, Lug;->t(Z)V

    return-void
.end method

.method public final y()Z
    .locals 6

    iget-object v0, p0, Lug;->t:Lbh;

    invoke-virtual {v0}, Lbh;->o()Lzg;

    move-result-object v0

    invoke-virtual {v0}, Lzg;->j()Lzg;

    move-result-object v1

    iget-object v0, v0, Lzg;->f:Lah;

    iget-wide v2, v0, Lah;->e:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lug;->v:Ldh;

    iget-wide v4, v0, Ldh;->m:J

    cmp-long v0, v4, v2

    if-ltz v0, :cond_1

    if-eqz v1, :cond_0

    iget-boolean v0, v1, Lzg;->d:Z

    if-nez v0, :cond_1

    iget-object v0, v1, Lzg;->f:Lah;

    iget-object v0, v0, Lah;->a:Lhp$a;

    invoke-virtual {v0}, Lhp$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final synthetic z(Lhh;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1}, Lug;->e(Lhh;)V
    :try_end_0
    .catch Lfg; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Unexpected error delivering message on external thread."

    invoke-static {v0, v1, p1}, Lst;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
