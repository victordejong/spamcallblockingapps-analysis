.class public final Lcom/google/android/exoplayer2/text/k;
.super Lcom/google/android/exoplayer2/u;
.source "TextRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private A:I

.field private final o:Landroid/os/Handler;

.field private final p:Lcom/google/android/exoplayer2/text/j;

.field private final q:Lcom/google/android/exoplayer2/text/g;

.field private final r:Lcom/google/android/exoplayer2/f0;

.field private s:Z

.field private t:Z

.field private u:I

.field private v:Lcom/google/android/exoplayer2/Format;

.field private w:Lcom/google/android/exoplayer2/text/f;

.field private x:Lcom/google/android/exoplayer2/text/h;

.field private y:Lcom/google/android/exoplayer2/text/i;

.field private z:Lcom/google/android/exoplayer2/text/i;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/text/j;Landroid/os/Looper;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/text/g;->a:Lcom/google/android/exoplayer2/text/g;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/text/k;-><init>(Lcom/google/android/exoplayer2/text/j;Landroid/os/Looper;Lcom/google/android/exoplayer2/text/g;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/text/j;Landroid/os/Looper;Lcom/google/android/exoplayer2/text/g;)V
    .locals 1

    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/u;-><init>(I)V

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/text/j;

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/k;->p:Lcom/google/android/exoplayer2/text/j;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p2, p0}, Lcom/google/android/exoplayer2/util/h0;->s(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/k;->o:Landroid/os/Handler;

    .line 5
    iput-object p3, p0, Lcom/google/android/exoplayer2/text/k;->q:Lcom/google/android/exoplayer2/text/g;

    .line 6
    new-instance p1, Lcom/google/android/exoplayer2/f0;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/f0;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/k;->r:Lcom/google/android/exoplayer2/f0;

    return-void
.end method

.method private Q()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/k;->W(Ljava/util/List;)V

    return-void
.end method

.method private R()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/text/k;->A:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/k;->y:Lcom/google/android/exoplayer2/text/i;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/i;->f()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/k;->y:Lcom/google/android/exoplayer2/text/i;

    iget v1, p0, Lcom/google/android/exoplayer2/text/k;->A:I

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/i;->d(I)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_1
    return-wide v0
.end method

.method private S(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/k;->p:Lcom/google/android/exoplayer2/text/j;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/text/j;->h(Ljava/util/List;)V

    return-void
.end method

.method private T()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/k;->x:Lcom/google/android/exoplayer2/text/h;

    const/4 v1, -0x1

    .line 2
    iput v1, p0, Lcom/google/android/exoplayer2/text/k;->A:I

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/k;->y:Lcom/google/android/exoplayer2/text/i;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/b1/f;->release()V

    .line 5
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/k;->y:Lcom/google/android/exoplayer2/text/i;

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/k;->z:Lcom/google/android/exoplayer2/text/i;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/b1/f;->release()V

    .line 8
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/k;->z:Lcom/google/android/exoplayer2/text/i;

    :cond_1
    return-void
.end method

.method private U()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->T()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/k;->w:Lcom/google/android/exoplayer2/text/f;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/b1/c;->b()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/k;->w:Lcom/google/android/exoplayer2/text/f;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/android/exoplayer2/text/k;->u:I

    return-void
.end method

.method private V()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->U()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/k;->q:Lcom/google/android/exoplayer2/text/g;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/k;->v:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/text/g;->a(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/text/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/k;->w:Lcom/google/android/exoplayer2/text/f;

    return-void
.end method

.method private W(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/k;->o:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/k;->S(Ljava/util/List;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected G()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/k;->v:Lcom/google/android/exoplayer2/Format;

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->Q()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->U()V

    return-void
.end method

.method protected I(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->Q()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/text/k;->s:Z

    .line 3
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/text/k;->t:Z

    .line 4
    iget p1, p0, Lcom/google/android/exoplayer2/text/k;->u:I

    if-eqz p1, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->V()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->T()V

    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/k;->w:Lcom/google/android/exoplayer2/text/f;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/b1/c;->flush()V

    :goto_0
    return-void
.end method

.method protected M([Lcom/google/android/exoplayer2/Format;J)V
    .locals 0

    const/4 p2, 0x0

    .line 1
    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/k;->v:Lcom/google/android/exoplayer2/Format;

    .line 2
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/k;->w:Lcom/google/android/exoplayer2/text/f;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/google/android/exoplayer2/text/k;->u:I

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/k;->q:Lcom/google/android/exoplayer2/text/g;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/text/g;->a(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/text/f;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/k;->w:Lcom/google/android/exoplayer2/text/f;

    :goto_0
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/Format;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/k;->q:Lcom/google/android/exoplayer2/text/g;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/text/g;->b(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->o:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/u;->P(Lcom/google/android/exoplayer2/drm/k;Lcom/google/android/exoplayer2/drm/DrmInitData;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 4
    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/s0;->a(I)I

    move-result p1

    return p1

    .line 5
    :cond_1
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->l:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/r;->m(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 6
    invoke-static {p1}, Lcom/google/android/exoplayer2/s0;->a(I)I

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    .line 7
    invoke-static {p1}, Lcom/google/android/exoplayer2/s0;->a(I)I

    move-result p1

    return p1
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/k;->t:Z

    return v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/k;->S(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public q(JJ)V
    .locals 8

    .line 1
    iget-boolean p3, p0, Lcom/google/android/exoplayer2/text/k;->t:Z

    if-eqz p3, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/k;->z:Lcom/google/android/exoplayer2/text/i;

    if-nez p3, :cond_1

    .line 3
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/k;->w:Lcom/google/android/exoplayer2/text/f;

    invoke-interface {p3, p1, p2}, Lcom/google/android/exoplayer2/text/f;->a(J)V

    .line 4
    :try_start_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/k;->w:Lcom/google/android/exoplayer2/text/f;

    invoke-interface {p3}, Lcom/google/android/exoplayer2/b1/c;->c()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/text/i;

    iput-object p3, p0, Lcom/google/android/exoplayer2/text/k;->z:Lcom/google/android/exoplayer2/text/i;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/k;->v:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/u;->z(Ljava/lang/Exception;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/u;->getState()I

    move-result p3

    const/4 p4, 0x2

    if-eq p3, p4, :cond_2

    return-void

    .line 7
    :cond_2
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/k;->y:Lcom/google/android/exoplayer2/text/i;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_3

    .line 8
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->R()J

    move-result-wide v2

    const/4 p3, 0x0

    :goto_1
    cmp-long v4, v2, p1

    if-gtz v4, :cond_4

    .line 9
    iget p3, p0, Lcom/google/android/exoplayer2/text/k;->A:I

    add-int/2addr p3, v1

    iput p3, p0, Lcom/google/android/exoplayer2/text/k;->A:I

    .line 10
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->R()J

    move-result-wide v2

    const/4 p3, 0x1

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    .line 11
    :cond_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/k;->z:Lcom/google/android/exoplayer2/text/i;

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    .line 12
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/b1/a;->isEndOfStream()Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez p3, :cond_8

    .line 13
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->R()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v2, v4, v6

    if-nez v2, :cond_8

    .line 14
    iget v2, p0, Lcom/google/android/exoplayer2/text/k;->u:I

    if-ne v2, p4, :cond_5

    .line 15
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->V()V

    goto :goto_2

    .line 16
    :cond_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->T()V

    .line 17
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/k;->t:Z

    goto :goto_2

    .line 18
    :cond_6
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/k;->z:Lcom/google/android/exoplayer2/text/i;

    iget-wide v4, v2, Lcom/google/android/exoplayer2/b1/f;->timeUs:J

    cmp-long v2, v4, p1

    if-gtz v2, :cond_8

    .line 19
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/k;->y:Lcom/google/android/exoplayer2/text/i;

    if-eqz p3, :cond_7

    .line 20
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/b1/f;->release()V

    .line 21
    :cond_7
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/k;->z:Lcom/google/android/exoplayer2/text/i;

    iput-object p3, p0, Lcom/google/android/exoplayer2/text/k;->y:Lcom/google/android/exoplayer2/text/i;

    .line 22
    iput-object v3, p0, Lcom/google/android/exoplayer2/text/k;->z:Lcom/google/android/exoplayer2/text/i;

    .line 23
    invoke-virtual {p3, p1, p2}, Lcom/google/android/exoplayer2/text/i;->a(J)I

    move-result p3

    iput p3, p0, Lcom/google/android/exoplayer2/text/k;->A:I

    const/4 p3, 0x1

    :cond_8
    :goto_2
    if-eqz p3, :cond_9

    .line 24
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/k;->y:Lcom/google/android/exoplayer2/text/i;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/exoplayer2/text/i;->e(J)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/k;->W(Ljava/util/List;)V

    .line 25
    :cond_9
    iget p1, p0, Lcom/google/android/exoplayer2/text/k;->u:I

    if-ne p1, p4, :cond_a

    return-void

    .line 26
    :cond_a
    :goto_3
    :try_start_1
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/text/k;->s:Z

    if-nez p1, :cond_f

    .line 27
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/k;->x:Lcom/google/android/exoplayer2/text/h;

    if-nez p1, :cond_b

    .line 28
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/k;->w:Lcom/google/android/exoplayer2/text/f;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/b1/c;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/text/h;

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/k;->x:Lcom/google/android/exoplayer2/text/h;

    if-nez p1, :cond_b

    return-void

    .line 29
    :cond_b
    iget p1, p0, Lcom/google/android/exoplayer2/text/k;->u:I

    if-ne p1, v1, :cond_c

    .line 30
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/k;->x:Lcom/google/android/exoplayer2/text/h;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/b1/a;->setFlags(I)V

    .line 31
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/k;->w:Lcom/google/android/exoplayer2/text/f;

    iget-object p2, p0, Lcom/google/android/exoplayer2/text/k;->x:Lcom/google/android/exoplayer2/text/h;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/b1/c;->e(Ljava/lang/Object;)V

    .line 32
    iput-object v3, p0, Lcom/google/android/exoplayer2/text/k;->x:Lcom/google/android/exoplayer2/text/h;

    .line 33
    iput p4, p0, Lcom/google/android/exoplayer2/text/k;->u:I

    return-void

    .line 34
    :cond_c
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/k;->r:Lcom/google/android/exoplayer2/f0;

    iget-object p2, p0, Lcom/google/android/exoplayer2/text/k;->x:Lcom/google/android/exoplayer2/text/h;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/u;->N(Lcom/google/android/exoplayer2/f0;Lcom/google/android/exoplayer2/b1/e;Z)I

    move-result p1

    const/4 p2, -0x4

    if-ne p1, p2, :cond_e

    .line 35
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/k;->x:Lcom/google/android/exoplayer2/text/h;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/b1/a;->isEndOfStream()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 36
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/k;->s:Z

    goto :goto_4

    .line 37
    :cond_d
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/k;->x:Lcom/google/android/exoplayer2/text/h;

    iget-object p2, p0, Lcom/google/android/exoplayer2/text/k;->r:Lcom/google/android/exoplayer2/f0;

    iget-object p2, p2, Lcom/google/android/exoplayer2/f0;->c:Lcom/google/android/exoplayer2/Format;

    iget-wide p2, p2, Lcom/google/android/exoplayer2/Format;->p:J

    iput-wide p2, p1, Lcom/google/android/exoplayer2/text/h;->i:J

    .line 38
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/b1/e;->i()V

    .line 39
    :goto_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/k;->w:Lcom/google/android/exoplayer2/text/f;

    iget-object p2, p0, Lcom/google/android/exoplayer2/text/k;->x:Lcom/google/android/exoplayer2/text/h;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/b1/c;->e(Ljava/lang/Object;)V

    .line 40
    iput-object v3, p0, Lcom/google/android/exoplayer2/text/k;->x:Lcom/google/android/exoplayer2/text/h;
    :try_end_1
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :cond_e
    const/4 p2, -0x3

    if-ne p1, p2, :cond_a

    :cond_f
    return-void

    :catch_1
    move-exception p1

    .line 41
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/k;->v:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/u;->z(Ljava/lang/Exception;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method
