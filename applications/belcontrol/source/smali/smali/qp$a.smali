.class public final Lqp$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqp$a$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lhp$a;

.field public final c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lqp$a$a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:J


# direct methods
.method public constructor <init>()V
    .locals 6

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lqp$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILhp$a;J)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILhp$a;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lqp$a$a;",
            ">;I",
            "Lhp$a;",
            "J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqp$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput p2, p0, Lqp$a;->a:I

    iput-object p3, p0, Lqp$a;->b:Lhp$a;

    iput-wide p4, p0, Lqp$a;->d:J

    return-void
.end method


# virtual methods
.method public final A(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public B()V
    .locals 5

    iget-object v0, p0, Lqp$a;->b:Lhp$a;

    invoke-static {v0}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lhp$a;

    iget-object v1, p0, Lqp$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqp$a$a;

    iget-object v3, v2, Lqp$a$a;->b:Lqp;

    iget-object v2, v2, Lqp$a$a;->a:Landroid/os/Handler;

    new-instance v4, Lop;

    invoke-direct {v4, p0, v3, v0}, Lop;-><init>(Lqp$a;Lqp;Lhp$a;)V

    invoke-virtual {p0, v2, v4}, Lqp$a;->A(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public C(Lqp;)V
    .locals 3

    iget-object v0, p0, Lqp$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqp$a$a;

    iget-object v2, v1, Lqp$a$a;->b:Lqp;

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lqp$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public D(ILhp$a;J)Lqp$a;
    .locals 7

    new-instance v6, Lqp$a;

    iget-object v1, p0, Lqp$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v0, v6

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lqp$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILhp$a;J)V

    return-object v6
.end method

.method public a(Landroid/os/Handler;Lqp;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lit;->a(Z)V

    iget-object v0, p0, Lqp$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lqp$a$a;

    invoke-direct {v1, p1, p2}, Lqp$a$a;-><init>(Landroid/os/Handler;Lqp;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(J)J
    .locals 3

    invoke-static {p1, p2}, Lcg;->b(J)J

    move-result-wide p1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lqp$a;->d:J

    add-long/2addr v0, p1

    :goto_0
    return-wide v0
.end method

.method public c(ILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;J)V
    .locals 12

    move-object v0, p0

    new-instance v11, Lqp$c;

    move-wide/from16 v1, p5

    invoke-virtual {p0, v1, v2}, Lqp$a;->b(J)J

    move-result-wide v7

    const/4 v2, 0x1

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, v11

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v10}, Lqp$c;-><init>(IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJ)V

    invoke-virtual {p0, v11}, Lqp$a;->d(Lqp$c;)V

    return-void
.end method

.method public d(Lqp$c;)V
    .locals 4

    iget-object v0, p0, Lqp$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqp$a$a;

    iget-object v2, v1, Lqp$a$a;->b:Lqp;

    iget-object v1, v1, Lqp$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lpp;

    invoke-direct {v3, p0, v2, p1}, Lpp;-><init>(Lqp$a;Lqp;Lqp$c;)V

    invoke-virtual {p0, v1, v3}, Lqp$a;->A(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final synthetic e(Lqp;Lqp$c;)V
    .locals 2

    iget v0, p0, Lqp$a;->a:I

    iget-object v1, p0, Lqp$a;->b:Lhp$a;

    invoke-interface {p1, v0, v1, p2}, Lqp;->w(ILhp$a;Lqp$c;)V

    return-void
.end method

.method public final synthetic f(Lqp;Lqp$b;Lqp$c;)V
    .locals 2

    iget v0, p0, Lqp$a;->a:I

    iget-object v1, p0, Lqp$a;->b:Lhp$a;

    invoke-interface {p1, v0, v1, p2, p3}, Lqp;->f(ILhp$a;Lqp$b;Lqp$c;)V

    return-void
.end method

.method public final synthetic g(Lqp;Lqp$b;Lqp$c;)V
    .locals 2

    iget v0, p0, Lqp$a;->a:I

    iget-object v1, p0, Lqp$a;->b:Lhp$a;

    invoke-interface {p1, v0, v1, p2, p3}, Lqp;->e(ILhp$a;Lqp$b;Lqp$c;)V

    return-void
.end method

.method public final synthetic h(Lqp;Lqp$b;Lqp$c;Ljava/io/IOException;Z)V
    .locals 7

    iget v1, p0, Lqp$a;->a:I

    iget-object v2, p0, Lqp$a;->b:Lhp$a;

    move-object v0, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lqp;->p(ILhp$a;Lqp$b;Lqp$c;Ljava/io/IOException;Z)V

    return-void
.end method

.method public final synthetic i(Lqp;Lqp$b;Lqp$c;)V
    .locals 2

    iget v0, p0, Lqp$a;->a:I

    iget-object v1, p0, Lqp$a;->b:Lhp$a;

    invoke-interface {p1, v0, v1, p2, p3}, Lqp;->b(ILhp$a;Lqp$b;Lqp$c;)V

    return-void
.end method

.method public final synthetic j(Lqp;Lhp$a;)V
    .locals 1

    iget v0, p0, Lqp$a;->a:I

    invoke-interface {p1, v0, p2}, Lqp;->c(ILhp$a;)V

    return-void
.end method

.method public final synthetic k(Lqp;Lhp$a;)V
    .locals 1

    iget v0, p0, Lqp$a;->a:I

    invoke-interface {p1, v0, p2}, Lqp;->v(ILhp$a;)V

    return-void
.end method

.method public final synthetic l(Lqp;Lhp$a;)V
    .locals 1

    iget v0, p0, Lqp$a;->a:I

    invoke-interface {p1, v0, p2}, Lqp;->t(ILhp$a;)V

    return-void
.end method

.method public m(Lqp$b;Lqp$c;)V
    .locals 4

    iget-object v0, p0, Lqp$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqp$a$a;

    iget-object v2, v1, Lqp$a$a;->b:Lqp;

    iget-object v1, v1, Lqp$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lmp;

    invoke-direct {v3, p0, v2, p1, p2}, Lmp;-><init>(Lqp$a;Lqp;Lqp$b;Lqp$c;)V

    invoke-virtual {p0, v1, v3}, Lqp$a;->A(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public n(Los;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Los;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;II",
            "Landroidx/media2/exoplayer/external/Format;",
            "I",
            "Ljava/lang/Object;",
            "JJJJJ)V"
        }
    .end annotation

    move-object v0, p0

    new-instance v11, Lqp$b;

    move-object v1, v11

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide/from16 v5, p13

    move-wide/from16 v7, p15

    move-wide/from16 v9, p17

    invoke-direct/range {v1 .. v10}, Lqp$b;-><init>(Los;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v1, Lqp$c;

    move-wide/from16 v2, p9

    invoke-virtual {p0, v2, v3}, Lqp$a;->b(J)J

    move-result-wide v2

    move-wide/from16 v4, p11

    invoke-virtual {p0, v4, v5}, Lqp$a;->b(J)J

    move-result-wide v4

    move-object/from16 p9, v1

    move/from16 p10, p4

    move/from16 p11, p5

    move-object/from16 p12, p6

    move/from16 p13, p7

    move-object/from16 p14, p8

    move-wide/from16 p15, v2

    move-wide/from16 p17, v4

    invoke-direct/range {p9 .. p18}, Lqp$c;-><init>(IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJ)V

    invoke-virtual {p0, v11, v1}, Lqp$a;->m(Lqp$b;Lqp$c;)V

    return-void
.end method

.method public o(Los;Landroid/net/Uri;Ljava/util/Map;IJJJ)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Los;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;IJJJ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v13, p5

    move-wide/from16 v15, p7

    move-wide/from16 v17, p9

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual/range {v0 .. v18}, Lqp$a;->n(Los;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJ)V

    return-void
.end method

.method public p(Lqp$b;Lqp$c;)V
    .locals 4

    iget-object v0, p0, Lqp$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqp$a$a;

    iget-object v2, v1, Lqp$a$a;->b:Lqp;

    iget-object v1, v1, Lqp$a$a;->a:Landroid/os/Handler;

    new-instance v3, Llp;

    invoke-direct {v3, p0, v2, p1, p2}, Llp;-><init>(Lqp$a;Lqp;Lqp$b;Lqp$c;)V

    invoke-virtual {p0, v1, v3}, Lqp$a;->A(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public q(Los;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Los;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;II",
            "Landroidx/media2/exoplayer/external/Format;",
            "I",
            "Ljava/lang/Object;",
            "JJJJJ)V"
        }
    .end annotation

    move-object v0, p0

    new-instance v11, Lqp$b;

    move-object v1, v11

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide/from16 v5, p13

    move-wide/from16 v7, p15

    move-wide/from16 v9, p17

    invoke-direct/range {v1 .. v10}, Lqp$b;-><init>(Los;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v1, Lqp$c;

    move-wide/from16 v2, p9

    invoke-virtual {p0, v2, v3}, Lqp$a;->b(J)J

    move-result-wide v2

    move-wide/from16 v4, p11

    invoke-virtual {p0, v4, v5}, Lqp$a;->b(J)J

    move-result-wide v4

    move-object/from16 p9, v1

    move/from16 p10, p4

    move/from16 p11, p5

    move-object/from16 p12, p6

    move/from16 p13, p7

    move-object/from16 p14, p8

    move-wide/from16 p15, v2

    move-wide/from16 p17, v4

    invoke-direct/range {p9 .. p18}, Lqp$c;-><init>(IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJ)V

    invoke-virtual {p0, v11, v1}, Lqp$a;->p(Lqp$b;Lqp$c;)V

    return-void
.end method

.method public r(Los;Landroid/net/Uri;Ljava/util/Map;IJJJ)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Los;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;IJJJ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v13, p5

    move-wide/from16 v15, p7

    move-wide/from16 v17, p9

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual/range {v0 .. v18}, Lqp$a;->q(Los;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJ)V

    return-void
.end method

.method public s(Lqp$b;Lqp$c;Ljava/io/IOException;Z)V
    .locals 10

    iget-object v0, p0, Lqp$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqp$a$a;

    iget-object v4, v1, Lqp$a$a;->b:Lqp;

    iget-object v1, v1, Lqp$a$a;->a:Landroid/os/Handler;

    new-instance v9, Lnp;

    move-object v2, v9

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lnp;-><init>(Lqp$a;Lqp;Lqp$b;Lqp$c;Ljava/io/IOException;Z)V

    invoke-virtual {p0, v1, v9}, Lqp$a;->A(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public t(Los;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Los;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;II",
            "Landroidx/media2/exoplayer/external/Format;",
            "I",
            "Ljava/lang/Object;",
            "JJJJJ",
            "Ljava/io/IOException;",
            "Z)V"
        }
    .end annotation

    move-object v0, p0

    new-instance v11, Lqp$b;

    move-object v1, v11

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide/from16 v5, p13

    move-wide/from16 v7, p15

    move-wide/from16 v9, p17

    invoke-direct/range {v1 .. v10}, Lqp$b;-><init>(Los;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v1, Lqp$c;

    move-wide/from16 v2, p9

    invoke-virtual {p0, v2, v3}, Lqp$a;->b(J)J

    move-result-wide v2

    move-wide/from16 v4, p11

    invoke-virtual {p0, v4, v5}, Lqp$a;->b(J)J

    move-result-wide v4

    move-object/from16 p9, v1

    move/from16 p10, p4

    move/from16 p11, p5

    move-object/from16 p12, p6

    move/from16 p13, p7

    move-object/from16 p14, p8

    move-wide/from16 p15, v2

    move-wide/from16 p17, v4

    invoke-direct/range {p9 .. p18}, Lqp$c;-><init>(IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJ)V

    move-object/from16 v2, p19

    move/from16 v3, p20

    invoke-virtual {p0, v11, v1, v2, v3}, Lqp$a;->s(Lqp$b;Lqp$c;Ljava/io/IOException;Z)V

    return-void
.end method

.method public u(Los;Landroid/net/Uri;Ljava/util/Map;IJJJLjava/io/IOException;Z)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Los;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;IJJJ",
            "Ljava/io/IOException;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v13, p5

    move-wide/from16 v15, p7

    move-wide/from16 v17, p9

    move-object/from16 v19, p11

    move/from16 v20, p12

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual/range {v0 .. v20}, Lqp$a;->t(Los;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    return-void
.end method

.method public v(Lqp$b;Lqp$c;)V
    .locals 4

    iget-object v0, p0, Lqp$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqp$a$a;

    iget-object v2, v1, Lqp$a$a;->b:Lqp;

    iget-object v1, v1, Lqp$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lkp;

    invoke-direct {v3, p0, v2, p1, p2}, Lkp;-><init>(Lqp$a;Lqp;Lqp$b;Lqp$c;)V

    invoke-virtual {p0, v1, v3}, Lqp$a;->A(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public w(Los;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJ)V
    .locals 22

    move-object/from16 v0, p0

    new-instance v11, Lqp$b;

    move-object/from16 v2, p1

    iget-object v3, v2, Los;->a:Landroid/net/Uri;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object v1, v11

    move-wide/from16 v5, p11

    invoke-direct/range {v1 .. v10}, Lqp$b;-><init>(Los;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v1, Lqp$c;

    move-wide/from16 v2, p7

    invoke-virtual {v0, v2, v3}, Lqp$a;->b(J)J

    move-result-wide v18

    move-wide/from16 v2, p9

    invoke-virtual {v0, v2, v3}, Lqp$a;->b(J)J

    move-result-wide v20

    move-object v12, v1

    move/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v15, p4

    move/from16 v16, p5

    move-object/from16 v17, p6

    invoke-direct/range {v12 .. v21}, Lqp$c;-><init>(IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJ)V

    invoke-virtual {v0, v11, v1}, Lqp$a;->v(Lqp$b;Lqp$c;)V

    return-void
.end method

.method public x(Los;IJ)V
    .locals 13

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide/from16 v11, p3

    invoke-virtual/range {v0 .. v12}, Lqp$a;->w(Los;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJ)V

    return-void
.end method

.method public y()V
    .locals 5

    iget-object v0, p0, Lqp$a;->b:Lhp$a;

    invoke-static {v0}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lhp$a;

    iget-object v1, p0, Lqp$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqp$a$a;

    iget-object v3, v2, Lqp$a$a;->b:Lqp;

    iget-object v2, v2, Lqp$a$a;->a:Landroid/os/Handler;

    new-instance v4, Lip;

    invoke-direct {v4, p0, v3, v0}, Lip;-><init>(Lqp$a;Lqp;Lhp$a;)V

    invoke-virtual {p0, v2, v4}, Lqp$a;->A(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public z()V
    .locals 5

    iget-object v0, p0, Lqp$a;->b:Lhp$a;

    invoke-static {v0}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lhp$a;

    iget-object v1, p0, Lqp$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqp$a$a;

    iget-object v3, v2, Lqp$a$a;->b:Lqp;

    iget-object v2, v2, Lqp$a$a;->a:Landroid/os/Handler;

    new-instance v4, Ljp;

    invoke-direct {v4, p0, v3, v0}, Ljp;-><init>(Lqp$a;Lqp;Lhp$a;)V

    invoke-virtual {p0, v2, v4}, Lqp$a;->A(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
