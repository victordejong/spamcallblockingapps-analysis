.class public final Lmg;
.super Lag;
.source ""

# interfaces
.implements Lfh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmg$b;
    }
.end annotation


# instance fields
.field public final b:Lcs;

.field public final c:[Ljh;

.field public final d:Lbs;

.field public final e:Landroid/os/Handler;

.field public final f:Lug;

.field public final g:Landroid/os/Handler;

.field public final h:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lag$a;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lph$b;

.field public final j:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lhp;

.field public l:Z

.field public m:Z

.field public n:I

.field public o:Z

.field public p:I

.field public q:Z

.field public r:Z

.field public s:Leh;

.field public t:Lnh;

.field public u:Lfg;

.field public v:Ldh;

.field public w:I

.field public x:I

.field public y:J


# direct methods
.method public constructor <init>([Ljh;Lbs;Lyg;Lgs;Ljt;Landroid/os/Looper;)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    move-object v0, p0

    move-object v2, p1

    invoke-direct {p0}, Lag;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lnu;->e:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1e

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Init "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ExoPlayerLib/2.10.1"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] ["

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ExoPlayerImpl"

    invoke-static {v3, v1}, Lst;->e(Ljava/lang/String;Ljava/lang/String;)V

    array-length v1, v2

    const/4 v3, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lit;->f(Z)V

    invoke-static {p1}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljh;

    iput-object v1, v0, Lmg;->c:[Ljh;

    invoke-static {p2}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p2

    check-cast v1, Lbs;

    iput-object v1, v0, Lmg;->d:Lbs;

    iput-boolean v3, v0, Lmg;->l:Z

    iput v3, v0, Lmg;->n:I

    iput-boolean v3, v0, Lmg;->o:Z

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, v0, Lmg;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Lcs;

    array-length v1, v2

    new-array v1, v1, [Llh;

    array-length v3, v2

    new-array v3, v3, [Lyr;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v3, v5}, Lcs;-><init>([Llh;[Lyr;Ljava/lang/Object;)V

    iput-object v4, v0, Lmg;->b:Lcs;

    new-instance v1, Lph$b;

    invoke-direct {v1}, Lph$b;-><init>()V

    iput-object v1, v0, Lmg;->i:Lph$b;

    sget-object v1, Leh;->e:Leh;

    iput-object v1, v0, Lmg;->s:Leh;

    sget-object v1, Lnh;->g:Lnh;

    iput-object v1, v0, Lmg;->t:Lnh;

    new-instance v10, Lmg$a;

    move-object/from16 v1, p6

    invoke-direct {v10, p0, v1}, Lmg$a;-><init>(Lmg;Landroid/os/Looper;)V

    iput-object v10, v0, Lmg;->e:Landroid/os/Handler;

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v4}, Ldh;->g(JLcs;)Ldh;

    move-result-object v1

    iput-object v1, v0, Lmg;->v:Ldh;

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, v0, Lmg;->j:Ljava/util/ArrayDeque;

    new-instance v12, Lug;

    iget-boolean v7, v0, Lmg;->l:Z

    iget v8, v0, Lmg;->n:I

    iget-boolean v9, v0, Lmg;->o:Z

    move-object v1, v12

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v11, p5

    invoke-direct/range {v1 .. v11}, Lug;-><init>([Ljh;Lbs;Lcs;Lyg;Lgs;ZIZLandroid/os/Handler;Ljt;)V

    iput-object v12, v0, Lmg;->f:Lug;

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v12}, Lug;->p()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lmg;->g:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic e(Ljava/util/concurrent/CopyOnWriteArrayList;Lag$b;)V
    .locals 0

    invoke-static {p0, p1}, Lmg;->s(Ljava/util/concurrent/CopyOnWriteArrayList;Lag$b;)V

    return-void
.end method

.method public static s(Ljava/util/concurrent/CopyOnWriteArrayList;Lag$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lag$a;",
            ">;",
            "Lag$b;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lag$a;

    invoke-virtual {v0, p1}, Lag$a;->a(Lag$b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final synthetic u(Leh;Lfh$b;)V
    .locals 0

    invoke-interface {p1, p0}, Lfh$b;->a(Leh;)V

    return-void
.end method

.method public static final synthetic v(Lfg;Lfh$b;)V
    .locals 0

    invoke-interface {p1, p0}, Lfh$b;->n(Lfg;)V

    return-void
.end method

.method public static final synthetic w(Ljava/util/concurrent/CopyOnWriteArrayList;Lag$b;)V
    .locals 0

    invoke-static {p0, p1}, Lmg;->s(Ljava/util/concurrent/CopyOnWriteArrayList;Lag$b;)V

    return-void
.end method

.method public static final synthetic x(Lfh$b;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lfh$b;->onPositionDiscontinuity(I)V

    return-void
.end method

.method public static final synthetic y(ZILfh$b;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lfh$b;->onPlayerStateChanged(ZI)V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lmg;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lmg;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :goto_0
    iget-object p1, p0, Lmg;->j:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lmg;->j:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lmg;->j:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final B(Lhp$a;J)J
    .locals 2

    invoke-static {p2, p3}, Lcg;->b(J)J

    move-result-wide p2

    iget-object v0, p0, Lmg;->v:Ldh;

    iget-object v0, v0, Ldh;->a:Lph;

    iget-object p1, p1, Lhp$a;->a:Ljava/lang/Object;

    iget-object v1, p0, Lmg;->i:Lph$b;

    invoke-virtual {v0, p1, v1}, Lph;->h(Ljava/lang/Object;Lph$b;)Lph$b;

    iget-object p1, p0, Lmg;->i:Lph$b;

    invoke-virtual {p1}, Lph$b;->k()J

    move-result-wide v0

    add-long/2addr p2, v0

    return-wide p2
.end method

.method public C(Lhp;ZZ)V
    .locals 7

    const/4 v0, 0x0

    iput-object v0, p0, Lmg;->u:Lfg;

    iput-object p1, p0, Lmg;->k:Lhp;

    const/4 v0, 0x2

    invoke-virtual {p0, p2, p3, v0}, Lmg;->p(ZZI)Ldh;

    move-result-object v2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmg;->q:Z

    iget v1, p0, Lmg;->p:I

    add-int/2addr v1, v0

    iput v1, p0, Lmg;->p:I

    iget-object v0, p0, Lmg;->f:Lug;

    invoke-virtual {v0, p1, p2, p3}, Lug;->I(Lhp;ZZ)V

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lmg;->I(Ldh;ZIIZ)V

    return-void
.end method

.method public D()V
    .locals 5

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnu;->e:Ljava/lang/String;

    invoke-static {}, Lvg;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x24

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Release "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ExoPlayerLib/2.10.1"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] ["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExoPlayerImpl"

    invoke-static {v1, v0}, Lst;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmg;->f:Lug;

    invoke-virtual {v0}, Lug;->K()V

    iget-object v0, p0, Lmg;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v0, v1}, Lmg;->p(ZZI)Ldh;

    move-result-object v0

    iput-object v0, p0, Lmg;->v:Ldh;

    return-void
.end method

.method public E(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-boolean v0, p0, Lmg;->m:Z

    if-eq v0, p2, :cond_1

    iput-boolean p2, p0, Lmg;->m:Z

    iget-object v0, p0, Lmg;->f:Lug;

    invoke-virtual {v0, p2}, Lug;->f0(Z)V

    :cond_1
    iget-boolean p2, p0, Lmg;->l:Z

    if-eq p2, p1, :cond_2

    iput-boolean p1, p0, Lmg;->l:Z

    iget-object p2, p0, Lmg;->v:Ldh;

    iget p2, p2, Ldh;->f:I

    new-instance v0, Lhg;

    invoke-direct {v0, p1, p2}, Lhg;-><init>(ZI)V

    invoke-virtual {p0, v0}, Lmg;->z(Lag$b;)V

    :cond_2
    return-void
.end method

.method public F(Leh;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Leh;->e:Leh;

    :cond_0
    iget-object v0, p0, Lmg;->f:Lug;

    invoke-virtual {v0, p1}, Lug;->h0(Leh;)V

    return-void
.end method

.method public G(Lnh;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lnh;->g:Lnh;

    :cond_0
    iget-object v0, p0, Lmg;->t:Lnh;

    invoke-virtual {v0, p1}, Lnh;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lmg;->t:Lnh;

    iget-object v0, p0, Lmg;->f:Lug;

    invoke-virtual {v0, p1}, Lug;->k0(Lnh;)V

    :cond_1
    return-void
.end method

.method public final H()Z
    .locals 1

    iget-object v0, p0, Lmg;->v:Ldh;

    iget-object v0, v0, Ldh;->a:Lph;

    invoke-virtual {v0}, Lph;->q()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lmg;->p:I

    if-lez v0, :cond_0

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

.method public final I(Ldh;ZIIZ)V
    .locals 12

    move-object v0, p0

    iget-object v3, v0, Lmg;->v:Ldh;

    move-object v2, p1

    iput-object v2, v0, Lmg;->v:Ldh;

    new-instance v11, Lmg$b;

    iget-object v4, v0, Lmg;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v5, v0, Lmg;->d:Lbs;

    iget-boolean v10, v0, Lmg;->l:Z

    move-object v1, v11

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v1 .. v10}, Lmg$b;-><init>(Ldh;Ldh;Ljava/util/concurrent/CopyOnWriteArrayList;Lbs;ZIIZZ)V

    invoke-virtual {p0, v11}, Lmg;->A(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a()J
    .locals 4

    iget-object v0, p0, Lmg;->v:Ldh;

    iget-wide v0, v0, Ldh;->l:J

    invoke-static {v0, v1}, Lcg;->b(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public f(Lfh$b;)V
    .locals 2

    iget-object v0, p0, Lmg;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lag$a;

    invoke-direct {v1, p1}, Lag$a;-><init>(Lfh$b;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    return-void
.end method

.method public g(Lhh$b;)Lhh;
    .locals 7

    new-instance v6, Lhh;

    iget-object v1, p0, Lmg;->f:Lug;

    iget-object v0, p0, Lmg;->v:Ldh;

    iget-object v3, v0, Ldh;->a:Lph;

    invoke-virtual {p0}, Lmg;->getCurrentWindowIndex()I

    move-result v4

    iget-object v5, p0, Lmg;->g:Landroid/os/Handler;

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lhh;-><init>(Lhh$a;Lhh$b;Lph;ILandroid/os/Handler;)V

    return-object v6
.end method

.method public getBufferedPosition()J
    .locals 2

    invoke-virtual {p0}, Lmg;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmg;->v:Ldh;

    iget-object v1, v0, Ldh;->j:Lhp$a;

    iget-object v0, v0, Ldh;->c:Lhp$a;

    invoke-virtual {v1, v0}, Lhp$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmg;->v:Ldh;

    iget-wide v0, v0, Ldh;->k:J

    invoke-static {v0, v1}, Lcg;->b(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmg;->getDuration()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lmg;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentPosition()J
    .locals 4

    invoke-virtual {p0}, Lmg;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmg;->v:Ldh;

    iget-object v1, v0, Ldh;->a:Lph;

    iget-object v0, v0, Ldh;->c:Lhp$a;

    iget-object v0, v0, Lhp$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Lmg;->i:Lph$b;

    invoke-virtual {v1, v0, v2}, Lph;->h(Ljava/lang/Object;Lph$b;)Lph$b;

    iget-object v0, p0, Lmg;->i:Lph$b;

    invoke-virtual {v0}, Lph$b;->k()J

    move-result-wide v0

    iget-object v2, p0, Lmg;->v:Ldh;

    iget-wide v2, v2, Ldh;->e:J

    invoke-static {v2, v3}, Lcg;->b(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lmg;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 1

    invoke-virtual {p0}, Lmg;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmg;->v:Ldh;

    iget-object v0, v0, Ldh;->c:Lhp$a;

    iget v0, v0, Lhp$a;->b:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 1

    invoke-virtual {p0}, Lmg;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmg;->v:Ldh;

    iget-object v0, v0, Ldh;->c:Lhp$a;

    iget v0, v0, Lhp$a;->c:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getCurrentPosition()J
    .locals 4

    invoke-virtual {p0}, Lmg;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lmg;->y:J

    return-wide v0

    :cond_0
    iget-object v0, p0, Lmg;->v:Ldh;

    iget-object v0, v0, Ldh;->c:Lhp$a;

    invoke-virtual {v0}, Lhp$a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmg;->v:Ldh;

    iget-wide v0, v0, Ldh;->m:J

    invoke-static {v0, v1}, Lcg;->b(J)J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-object v0, p0, Lmg;->v:Ldh;

    iget-object v1, v0, Ldh;->c:Lhp$a;

    iget-wide v2, v0, Ldh;->m:J

    invoke-virtual {p0, v1, v2, v3}, Lmg;->B(Lhp$a;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentTimeline()Lph;
    .locals 1

    iget-object v0, p0, Lmg;->v:Ldh;

    iget-object v0, v0, Ldh;->a:Lph;

    return-object v0
.end method

.method public getCurrentTrackSelections()Lzr;
    .locals 1

    iget-object v0, p0, Lmg;->v:Ldh;

    iget-object v0, v0, Ldh;->i:Lcs;

    iget-object v0, v0, Lcs;->c:Lzr;

    return-object v0
.end method

.method public getCurrentWindowIndex()I
    .locals 3

    invoke-virtual {p0}, Lmg;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lmg;->w:I

    return v0

    :cond_0
    iget-object v0, p0, Lmg;->v:Ldh;

    iget-object v1, v0, Ldh;->a:Lph;

    iget-object v0, v0, Ldh;->c:Lhp$a;

    iget-object v0, v0, Lhp$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Lmg;->i:Lph$b;

    invoke-virtual {v1, v0, v2}, Lph;->h(Ljava/lang/Object;Lph$b;)Lph$b;

    move-result-object v0

    iget v0, v0, Lph$b;->c:I

    return v0
.end method

.method public getDuration()J
    .locals 4

    invoke-virtual {p0}, Lmg;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmg;->v:Ldh;

    iget-object v1, v0, Ldh;->c:Lhp$a;

    iget-object v0, v0, Ldh;->a:Lph;

    iget-object v2, v1, Lhp$a;->a:Ljava/lang/Object;

    iget-object v3, p0, Lmg;->i:Lph$b;

    invoke-virtual {v0, v2, v3}, Lph;->h(Ljava/lang/Object;Lph$b;)Lph$b;

    iget-object v0, p0, Lmg;->i:Lph$b;

    iget v2, v1, Lhp$a;->b:I

    iget v1, v1, Lhp$a;->c:I

    invoke-virtual {v0, v2, v1}, Lph$b;->b(II)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcg;->b(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lag;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public h()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lmg;->e:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public i()J
    .locals 6

    invoke-virtual {p0}, Lmg;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lmg;->y:J

    return-wide v0

    :cond_0
    iget-object v0, p0, Lmg;->v:Ldh;

    iget-object v1, v0, Ldh;->j:Lhp$a;

    iget-wide v1, v1, Lhp$a;->d:J

    iget-object v3, v0, Ldh;->c:Lhp$a;

    iget-wide v3, v3, Lhp$a;->d:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    iget-object v0, v0, Ldh;->a:Lph;

    invoke-virtual {p0}, Lmg;->getCurrentWindowIndex()I

    move-result v1

    iget-object v2, p0, Lag;->a:Lph$c;

    invoke-virtual {v0, v1, v2}, Lph;->m(ILph$c;)Lph$c;

    move-result-object v0

    invoke-virtual {v0}, Lph$c;->c()J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-wide v0, v0, Ldh;->k:J

    iget-object v2, p0, Lmg;->v:Ldh;

    iget-object v2, v2, Ldh;->j:Lhp$a;

    invoke-virtual {v2}, Lhp$a;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lmg;->v:Ldh;

    iget-object v1, v0, Ldh;->a:Lph;

    iget-object v0, v0, Ldh;->j:Lhp$a;

    iget-object v0, v0, Lhp$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Lmg;->i:Lph$b;

    invoke-virtual {v1, v0, v2}, Lph;->h(Ljava/lang/Object;Lph$b;)Lph$b;

    move-result-object v0

    iget-object v1, p0, Lmg;->v:Ldh;

    iget-object v1, v1, Ldh;->j:Lhp$a;

    iget v1, v1, Lhp$a;->b:I

    invoke-virtual {v0, v1}, Lph$b;->f(I)J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    iget-wide v0, v0, Lph$b;->d:J

    goto :goto_0

    :cond_2
    move-wide v0, v1

    :cond_3
    :goto_0
    iget-object v2, p0, Lmg;->v:Ldh;

    iget-object v2, v2, Ldh;->j:Lhp$a;

    invoke-virtual {p0, v2, v0, v1}, Lmg;->B(Lhp$a;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public j()I
    .locals 2

    invoke-virtual {p0}, Lmg;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lmg;->x:I

    return v0

    :cond_0
    iget-object v0, p0, Lmg;->v:Ldh;

    iget-object v1, v0, Ldh;->a:Lph;

    iget-object v0, v0, Ldh;->c:Lhp$a;

    iget-object v0, v0, Lhp$a;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lph;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lmg;->l:Z

    return v0
.end method

.method public l()Lfg;
    .locals 1

    iget-object v0, p0, Lmg;->u:Lfg;

    return-object v0
.end method

.method public m()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lmg;->f:Lug;

    invoke-virtual {v0}, Lug;->p()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public n()I
    .locals 1

    iget-object v0, p0, Lmg;->v:Ldh;

    iget v0, v0, Ldh;->f:I

    return v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lmg;->n:I

    return v0
.end method

.method public final p(ZZI)Ldh;
    .locals 24

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iput v3, v0, Lmg;->w:I

    iput v3, v0, Lmg;->x:I

    iput-wide v1, v0, Lmg;->y:J

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lmg;->getCurrentWindowIndex()I

    move-result v4

    iput v4, v0, Lmg;->w:I

    invoke-virtual/range {p0 .. p0}, Lmg;->j()I

    move-result v4

    iput v4, v0, Lmg;->x:I

    invoke-virtual/range {p0 .. p0}, Lmg;->getCurrentPosition()J

    move-result-wide v4

    iput-wide v4, v0, Lmg;->y:J

    :goto_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    iget-object v4, v0, Lmg;->v:Ldh;

    if-eqz v3, :cond_3

    iget-boolean v5, v0, Lmg;->o:Z

    iget-object v6, v0, Lag;->a:Lph$c;

    invoke-virtual {v4, v5, v6}, Ldh;->h(ZLph$c;)Lhp$a;

    move-result-object v4

    goto :goto_1

    :cond_3
    iget-object v4, v4, Ldh;->c:Lhp$a;

    :goto_1
    move-object/from16 v17, v4

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lmg;->v:Ldh;

    iget-wide v1, v1, Ldh;->m:J

    :goto_2
    move-wide/from16 v22, v1

    if-eqz v3, :cond_5

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_3

    :cond_5
    iget-object v1, v0, Lmg;->v:Ldh;

    iget-wide v1, v1, Ldh;->e:J

    :goto_3
    move-wide v11, v1

    new-instance v1, Ldh;

    if-eqz p2, :cond_6

    sget-object v2, Lph;->a:Lph;

    goto :goto_4

    :cond_6
    iget-object v2, v0, Lmg;->v:Ldh;

    iget-object v2, v2, Ldh;->a:Lph;

    :goto_4
    move-object v6, v2

    if-eqz p2, :cond_7

    const/4 v2, 0x0

    goto :goto_5

    :cond_7
    iget-object v2, v0, Lmg;->v:Ldh;

    iget-object v2, v2, Ldh;->b:Ljava/lang/Object;

    :goto_5
    move-object v7, v2

    const/4 v14, 0x0

    if-eqz p2, :cond_8

    sget-object v2, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->d:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    goto :goto_6

    :cond_8
    iget-object v2, v0, Lmg;->v:Ldh;

    iget-object v2, v2, Ldh;->h:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    :goto_6
    move-object v15, v2

    if-eqz p2, :cond_9

    iget-object v2, v0, Lmg;->b:Lcs;

    goto :goto_7

    :cond_9
    iget-object v2, v0, Lmg;->v:Ldh;

    iget-object v2, v2, Ldh;->i:Lcs;

    :goto_7
    move-object/from16 v16, v2

    const-wide/16 v20, 0x0

    move-object v5, v1

    move-object/from16 v8, v17

    move-wide/from16 v9, v22

    move/from16 v13, p3

    move-wide/from16 v18, v22

    invoke-direct/range {v5 .. v23}, Ldh;-><init>(Lph;Ljava/lang/Object;Lhp$a;JJIZLandroidx/media2/exoplayer/external/source/TrackGroupArray;Lcs;Lhp$a;JJJ)V

    return-object v1
.end method

.method public q(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lfg;

    iput-object p1, p0, Lmg;->u:Lfg;

    new-instance v0, Lkg;

    invoke-direct {v0, p1}, Lkg;-><init>(Lfg;)V

    :goto_0
    invoke-virtual {p0, v0}, Lmg;->z(Lag$b;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Leh;

    iget-object v0, p0, Lmg;->s:Leh;

    invoke-virtual {v0, p1}, Leh;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iput-object p1, p0, Lmg;->s:Leh;

    new-instance v0, Ljg;

    invoke-direct {v0, p1}, Ljg;-><init>(Leh;)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldh;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const/4 v3, -0x1

    if-eq p1, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v0, v2, v1, p1}, Lmg;->r(Ldh;IZI)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final r(Ldh;IZI)V
    .locals 8

    iget v0, p0, Lmg;->p:I

    sub-int/2addr v0, p2

    iput v0, p0, Lmg;->p:I

    if-nez v0, :cond_3

    iget-wide v0, p1, Ldh;->d:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    iget-object v1, p1, Ldh;->c:Lhp$a;

    const-wide/16 v2, 0x0

    iget-wide v4, p1, Ldh;->e:J

    iget-wide v6, p1, Ldh;->l:J

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Ldh;->c(Lhp$a;JJJ)Ldh;

    move-result-object p1

    :cond_0
    move-object v1, p1

    iget-object p1, p0, Lmg;->v:Ldh;

    iget-object p1, p1, Ldh;->a:Lph;

    invoke-virtual {p1}, Lph;->q()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    iget-object p1, v1, Ldh;->a:Lph;

    invoke-virtual {p1}, Lph;->q()Z

    move-result p1

    if-eqz p1, :cond_1

    iput p2, p0, Lmg;->x:I

    iput p2, p0, Lmg;->w:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lmg;->y:J

    :cond_1
    iget-boolean p1, p0, Lmg;->q:Z

    if-eqz p1, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    const/4 v4, 0x2

    :goto_0
    iget-boolean v5, p0, Lmg;->r:Z

    iput-boolean p2, p0, Lmg;->q:Z

    iput-boolean p2, p0, Lmg;->r:Z

    move-object v0, p0

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lmg;->I(Ldh;ZIIZ)V

    :cond_3
    return-void
.end method

.method public seekTo(IJ)V
    .locals 9

    iget-object v0, p0, Lmg;->v:Ldh;

    iget-object v0, v0, Ldh;->a:Lph;

    if-ltz p1, :cond_5

    invoke-virtual {v0}, Lph;->q()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lph;->p()I

    move-result v1

    if-ge p1, v1, :cond_5

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmg;->r:Z

    iget v2, p0, Lmg;->p:I

    add-int/2addr v2, v1

    iput v2, p0, Lmg;->p:I

    invoke-virtual {p0}, Lmg;->t()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string p1, "ExoPlayerImpl"

    const-string p2, "seekTo ignored because an ad is playing"

    invoke-static {p1, p2}, Lst;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lmg;->e:Landroid/os/Handler;

    const/4 p2, -0x1

    iget-object p3, p0, Lmg;->v:Ldh;

    invoke-virtual {p1, v3, v1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_1
    iput p1, p0, Lmg;->w:I

    invoke-virtual {v0}, Lph;->q()Z

    move-result v1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_3

    cmp-long v1, p2, v4

    if-nez v1, :cond_2

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_2
    move-wide v1, p2

    :goto_0
    iput-wide v1, p0, Lmg;->y:J

    iput v3, p0, Lmg;->x:I

    goto :goto_2

    :cond_3
    cmp-long v1, p2, v4

    if-nez v1, :cond_4

    iget-object v1, p0, Lag;->a:Lph$c;

    invoke-virtual {v0, p1, v1}, Lph;->m(ILph$c;)Lph$c;

    move-result-object v1

    invoke-virtual {v1}, Lph$c;->b()J

    move-result-wide v1

    goto :goto_1

    :cond_4
    invoke-static {p2, p3}, Lcg;->a(J)J

    move-result-wide v1

    :goto_1
    move-wide v7, v1

    iget-object v2, p0, Lag;->a:Lph$c;

    iget-object v3, p0, Lmg;->i:Lph$b;

    move-object v1, v0

    move v4, p1

    move-wide v5, v7

    invoke-virtual/range {v1 .. v6}, Lph;->j(Lph$c;Lph$b;IJ)Landroid/util/Pair;

    move-result-object v1

    invoke-static {v7, v8}, Lcg;->b(J)J

    move-result-wide v2

    iput-wide v2, p0, Lmg;->y:J

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lph;->b(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lmg;->x:I

    :goto_2
    iget-object v1, p0, Lmg;->f:Lug;

    invoke-static {p2, p3}, Lcg;->a(J)J

    move-result-wide p2

    invoke-virtual {v1, v0, p1, p2, p3}, Lug;->V(Lph;IJ)V

    sget-object p1, Lig;->a:Lag$b;

    invoke-virtual {p0, p1}, Lmg;->z(Lag$b;)V

    return-void

    :cond_5
    new-instance v1, Lxg;

    invoke-direct {v1, v0, p1, p2, p3}, Lxg;-><init>(Lph;IJ)V

    throw v1
.end method

.method public t()Z
    .locals 1

    invoke-virtual {p0}, Lmg;->H()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmg;->v:Ldh;

    iget-object v0, v0, Ldh;->c:Lhp$a;

    invoke-virtual {v0}, Lhp$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final z(Lag$b;)V
    .locals 2

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lmg;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Llg;

    invoke-direct {v1, v0, p1}, Llg;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;Lag$b;)V

    invoke-virtual {p0, v1}, Lmg;->A(Ljava/lang/Runnable;)V

    return-void
.end method
