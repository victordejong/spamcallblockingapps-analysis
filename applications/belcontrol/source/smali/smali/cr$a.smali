.class public final Lcr$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ldt$b;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldt$b<",
        "Let<",
        "Lgr;",
        ">;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Ldt;

.field public final c:Let;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Let<",
            "Lgr;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lfr;

.field public f:J

.field public g:J

.field public h:J

.field public j:J

.field public k:Z

.field public l:Ljava/io/IOException;

.field public final synthetic m:Lcr;


# direct methods
.method public constructor <init>(Lcr;Landroid/net/Uri;)V
    .locals 3

    iput-object p1, p0, Lcr$a;->m:Lcr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcr$a;->a:Landroid/net/Uri;

    new-instance v0, Ldt;

    const-string v1, "DefaultHlsPlaylistTracker:MediaPlaylist"

    invoke-direct {v0, v1}, Ldt;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcr$a;->b:Ldt;

    new-instance v0, Let;

    invoke-static {p1}, Lcr;->o(Lcr;)Lmq;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lmq;->createDataSource(I)Lls;

    move-result-object v1

    invoke-static {p1}, Lcr;->p(Lcr;)Let$a;

    move-result-object p1

    invoke-direct {v0, v1, p2, v2, p1}, Let;-><init>(Lls;Landroid/net/Uri;ILet$a;)V

    iput-object v0, p0, Lcr$a;->c:Let;

    return-void
.end method

.method public static synthetic a(Lcr$a;Lfr;J)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcr$a;->p(Lfr;J)V

    return-void
.end method

.method public static synthetic b(Lcr$a;)J
    .locals 2

    iget-wide v0, p0, Lcr$a;->j:J

    return-wide v0
.end method

.method public static synthetic d(Lcr$a;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcr$a;->a:Landroid/net/Uri;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic c(Ldt$e;JJLjava/io/IOException;I)Ldt$c;
    .locals 0

    check-cast p1, Let;

    invoke-virtual/range {p0 .. p7}, Lcr$a;->o(Let;JJLjava/io/IOException;I)Ldt$c;

    move-result-object p1

    return-object p1
.end method

.method public final e(J)Z
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcr$a;->j:J

    iget-object p1, p0, Lcr$a;->a:Landroid/net/Uri;

    iget-object p2, p0, Lcr$a;->m:Lcr;

    invoke-static {p2}, Lcr;->m(Lcr;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcr$a;->m:Lcr;

    invoke-static {p1}, Lcr;->n(Lcr;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f()Lfr;
    .locals 1

    iget-object v0, p0, Lcr$a;->d:Lfr;

    return-object v0
.end method

.method public g()Z
    .locals 10

    iget-object v0, p0, Lcr$a;->d:Lfr;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    iget-object v0, p0, Lcr$a;->d:Lfr;

    iget-wide v6, v0, Lfr;->p:J

    invoke-static {v6, v7}, Lcg;->b(J)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iget-object v0, p0, Lcr$a;->d:Lfr;

    iget-boolean v6, v0, Lfr;->l:Z

    const/4 v7, 0x1

    if-nez v6, :cond_1

    iget v0, v0, Lfr;->d:I

    const/4 v6, 0x2

    if-eq v0, v6, :cond_1

    if-eq v0, v7, :cond_1

    iget-wide v8, p0, Lcr$a;->f:J

    add-long/2addr v8, v4

    cmp-long v0, v8, v2

    if-lez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public bridge synthetic h(Ldt$e;JJ)V
    .locals 0

    check-cast p1, Let;

    invoke-virtual/range {p0 .. p5}, Lcr$a;->n(Let;JJ)V

    return-void
.end method

.method public i()V
    .locals 5

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcr$a;->j:J

    iget-boolean v0, p0, Lcr$a;->k:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcr$a;->b:Ldt;

    invoke-virtual {v0}, Ldt;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcr$a;->h:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcr$a;->k:Z

    iget-object v2, p0, Lcr$a;->m:Lcr;

    invoke-static {v2}, Lcr;->q(Lcr;)Landroid/os/Handler;

    move-result-object v2

    iget-wide v3, p0, Lcr$a;->h:J

    sub-long/2addr v3, v0

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcr$a;->k()V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic j(Ldt$e;JJZ)V
    .locals 0

    check-cast p1, Let;

    invoke-virtual/range {p0 .. p6}, Lcr$a;->m(Let;JJZ)V

    return-void
.end method

.method public final k()V
    .locals 5

    iget-object v0, p0, Lcr$a;->b:Ldt;

    iget-object v1, p0, Lcr$a;->c:Let;

    iget-object v2, p0, Lcr$a;->m:Lcr;

    invoke-static {v2}, Lcr;->s(Lcr;)Lct;

    move-result-object v2

    iget-object v3, p0, Lcr$a;->c:Let;

    iget v3, v3, Let;->b:I

    invoke-interface {v2, v3}, Lct;->b(I)I

    move-result v2

    invoke-virtual {v0, v1, p0, v2}, Ldt;->l(Ldt$e;Ldt$b;I)J

    move-result-wide v0

    iget-object v2, p0, Lcr$a;->m:Lcr;

    invoke-static {v2}, Lcr;->r(Lcr;)Lqp$a;

    move-result-object v2

    iget-object v3, p0, Lcr$a;->c:Let;

    iget-object v4, v3, Let;->a:Los;

    iget v3, v3, Let;->b:I

    invoke-virtual {v2, v4, v3, v0, v1}, Lqp$a;->x(Los;IJ)V

    return-void
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Lcr$a;->b:Ldt;

    invoke-virtual {v0}, Ldt;->h()V

    iget-object v0, p0, Lcr$a;->l:Ljava/io/IOException;

    if-nez v0, :cond_0

    return-void

    :cond_0
    throw v0
.end method

.method public m(Let;JJZ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Let<",
            "Lgr;",
            ">;JJZ)V"
        }
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Lcr$a;->m:Lcr;

    invoke-static {v1}, Lcr;->r(Lcr;)Lqp$a;

    move-result-object v2

    move-object v1, p1

    iget-object v3, v1, Let;->a:Los;

    invoke-virtual {p1}, Let;->d()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1}, Let;->b()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {p1}, Let;->a()J

    move-result-wide v11

    const/4 v6, 0x4

    move-wide v7, p2

    move-wide/from16 v9, p4

    invoke-virtual/range {v2 .. v12}, Lqp$a;->o(Los;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    return-void
.end method

.method public n(Let;JJ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Let<",
            "Lgr;",
            ">;JJ)V"
        }
    .end annotation

    move-object v0, p0

    invoke-virtual {p1}, Let;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgr;

    instance-of v2, v1, Lfr;

    if-eqz v2, :cond_0

    check-cast v1, Lfr;

    move-wide/from16 v9, p4

    invoke-virtual {p0, v1, v9, v10}, Lcr$a;->p(Lfr;J)V

    iget-object v1, v0, Lcr$a;->m:Lcr;

    invoke-static {v1}, Lcr;->r(Lcr;)Lqp$a;

    move-result-object v2

    move-object v1, p1

    iget-object v3, v1, Let;->a:Los;

    invoke-virtual {p1}, Let;->d()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1}, Let;->b()Ljava/util/Map;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {p1}, Let;->a()J

    move-result-wide v11

    move-wide v7, p2

    invoke-virtual/range {v2 .. v12}, Lqp$a;->r(Los;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    goto :goto_0

    :cond_0
    new-instance v1, Lch;

    const-string v2, "Loaded playlist has unexpected type."

    invoke-direct {v1, v2}, Lch;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcr$a;->l:Ljava/io/IOException;

    :goto_0
    return-void
.end method

.method public o(Let;JJLjava/io/IOException;I)Ldt$c;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Let<",
            "Lgr;",
            ">;JJ",
            "Ljava/io/IOException;",
            "I)",
            "Ldt$c;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcr$a;->m:Lcr;

    invoke-static {v2}, Lcr;->s(Lcr;)Lct;

    move-result-object v3

    iget v4, v1, Let;->b:I

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v3 .. v8}, Lct;->a(IJLjava/io/IOException;I)J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x1

    const/4 v7, 0x0

    cmp-long v8, v2, v4

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    iget-object v9, v0, Lcr$a;->m:Lcr;

    iget-object v10, v0, Lcr$a;->a:Landroid/net/Uri;

    invoke-static {v9, v10, v2, v3}, Lcr;->t(Lcr;Landroid/net/Uri;J)Z

    move-result v9

    if-nez v9, :cond_2

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v9, 0x1

    :goto_2
    if-eqz v8, :cond_3

    invoke-virtual {v0, v2, v3}, Lcr$a;->e(J)Z

    move-result v2

    or-int/2addr v9, v2

    :cond_3
    if-eqz v9, :cond_5

    iget-object v2, v0, Lcr$a;->m:Lcr;

    invoke-static {v2}, Lcr;->s(Lcr;)Lct;

    move-result-object v8

    iget v9, v1, Let;->b:I

    move-wide/from16 v10, p4

    move-object/from16 v12, p6

    move/from16 v13, p7

    invoke-interface/range {v8 .. v13}, Lct;->c(IJLjava/io/IOException;I)J

    move-result-wide v2

    cmp-long v8, v2, v4

    if-eqz v8, :cond_4

    invoke-static {v7, v2, v3}, Ldt;->f(ZJ)Ldt$c;

    move-result-object v2

    goto :goto_3

    :cond_4
    sget-object v2, Ldt;->e:Ldt$c;

    goto :goto_3

    :cond_5
    sget-object v2, Ldt;->d:Ldt$c;

    :goto_3
    iget-object v3, v0, Lcr$a;->m:Lcr;

    invoke-static {v3}, Lcr;->r(Lcr;)Lqp$a;

    move-result-object v7

    iget-object v8, v1, Let;->a:Los;

    invoke-virtual/range {p1 .. p1}, Let;->d()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Let;->b()Ljava/util/Map;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual/range {p1 .. p1}, Let;->a()J

    move-result-wide v16

    invoke-virtual {v2}, Ldt$c;->c()Z

    move-result v1

    xor-int/lit8 v19, v1, 0x1

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    move-object/from16 v18, p6

    invoke-virtual/range {v7 .. v19}, Lqp$a;->u(Los;Landroid/net/Uri;Ljava/util/Map;IJJJLjava/io/IOException;Z)V

    return-object v2
.end method

.method public final p(Lfr;J)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcr$a;->d:Lfr;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v0, Lcr$a;->f:J

    iget-object v5, v0, Lcr$a;->m:Lcr;

    invoke-static {v5, v2, v1}, Lcr;->u(Lcr;Lfr;Lfr;)Lfr;

    move-result-object v5

    iput-object v5, v0, Lcr$a;->d:Lfr;

    if-eq v5, v2, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lcr$a;->l:Ljava/io/IOException;

    iput-wide v3, v0, Lcr$a;->g:J

    iget-object v1, v0, Lcr$a;->m:Lcr;

    iget-object v6, v0, Lcr$a;->a:Landroid/net/Uri;

    invoke-static {v1, v6, v5}, Lcr;->k(Lcr;Landroid/net/Uri;Lfr;)V

    goto :goto_0

    :cond_0
    iget-boolean v5, v5, Lfr;->l:Z

    if-nez v5, :cond_2

    iget-wide v5, v1, Lfr;->i:J

    iget-object v1, v1, Lfr;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v7, v1

    add-long/2addr v5, v7

    iget-object v1, v0, Lcr$a;->d:Lfr;

    iget-wide v7, v1, Lfr;->i:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v11, v5, v7

    if-gez v11, :cond_1

    new-instance v1, Ljr$c;

    iget-object v5, v0, Lcr$a;->a:Landroid/net/Uri;

    invoke-direct {v1, v5}, Ljr$c;-><init>(Landroid/net/Uri;)V

    iput-object v1, v0, Lcr$a;->l:Ljava/io/IOException;

    iget-object v1, v0, Lcr$a;->m:Lcr;

    iget-object v5, v0, Lcr$a;->a:Landroid/net/Uri;

    invoke-static {v1, v5, v9, v10}, Lcr;->t(Lcr;Landroid/net/Uri;J)Z

    goto :goto_0

    :cond_1
    iget-wide v5, v0, Lcr$a;->g:J

    sub-long v5, v3, v5

    long-to-double v5, v5

    iget-wide v7, v1, Lfr;->k:J

    invoke-static {v7, v8}, Lcg;->b(J)J

    move-result-wide v7

    long-to-double v7, v7

    iget-object v1, v0, Lcr$a;->m:Lcr;

    invoke-static {v1}, Lcr;->l(Lcr;)D

    move-result-wide v11

    mul-double v7, v7, v11

    cmpl-double v1, v5, v7

    if-lez v1, :cond_2

    new-instance v1, Ljr$d;

    iget-object v5, v0, Lcr$a;->a:Landroid/net/Uri;

    invoke-direct {v1, v5}, Ljr$d;-><init>(Landroid/net/Uri;)V

    iput-object v1, v0, Lcr$a;->l:Ljava/io/IOException;

    iget-object v1, v0, Lcr$a;->m:Lcr;

    invoke-static {v1}, Lcr;->s(Lcr;)Lct;

    move-result-object v11

    const/4 v12, 0x4

    iget-object v15, v0, Lcr$a;->l:Ljava/io/IOException;

    const/16 v16, 0x1

    move-wide/from16 v13, p2

    invoke-interface/range {v11 .. v16}, Lct;->a(IJLjava/io/IOException;I)J

    move-result-wide v5

    iget-object v1, v0, Lcr$a;->m:Lcr;

    iget-object v7, v0, Lcr$a;->a:Landroid/net/Uri;

    invoke-static {v1, v7, v5, v6}, Lcr;->t(Lcr;Landroid/net/Uri;J)Z

    cmp-long v1, v5, v9

    if-eqz v1, :cond_2

    invoke-virtual {v0, v5, v6}, Lcr$a;->e(J)Z

    :cond_2
    :goto_0
    iget-object v1, v0, Lcr$a;->d:Lfr;

    if-eq v1, v2, :cond_3

    iget-wide v1, v1, Lfr;->k:J

    goto :goto_1

    :cond_3
    iget-wide v1, v1, Lfr;->k:J

    const-wide/16 v5, 0x2

    div-long/2addr v1, v5

    :goto_1
    invoke-static {v1, v2}, Lcg;->b(J)J

    move-result-wide v1

    add-long/2addr v3, v1

    iput-wide v3, v0, Lcr$a;->h:J

    iget-object v1, v0, Lcr$a;->a:Landroid/net/Uri;

    iget-object v2, v0, Lcr$a;->m:Lcr;

    invoke-static {v2}, Lcr;->m(Lcr;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcr$a;->d:Lfr;

    iget-boolean v1, v1, Lfr;->l:Z

    if-nez v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcr$a;->i()V

    :cond_4
    return-void
.end method

.method public q()V
    .locals 1

    iget-object v0, p0, Lcr$a;->b:Ldt;

    invoke-virtual {v0}, Ldt;->j()V

    return-void
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcr$a;->k:Z

    invoke-virtual {p0}, Lcr$a;->k()V

    return-void
.end method
