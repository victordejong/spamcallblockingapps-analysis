.class public final Lcr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljr;
.implements Ldt$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcr$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljr;",
        "Ldt$b<",
        "Let<",
        "Lgr;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final s:Ljr$a;


# instance fields
.field public final a:Lmq;

.field public final b:Lir;

.field public final c:Lct;

.field public final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Lcr$a;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljr$b;",
            ">;"
        }
    .end annotation
.end field

.field public final g:D

.field public h:Let$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Let$a<",
            "Lgr;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lqp$a;

.field public k:Ldt;

.field public l:Landroid/os/Handler;

.field public m:Ljr$e;

.field public n:Ler;

.field public o:Landroid/net/Uri;

.field public p:Lfr;

.field public q:Z

.field public r:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lbr;->a:Ljr$a;

    sput-object v0, Lcr;->s:Ljr$a;

    return-void
.end method

.method public constructor <init>(Lmq;Lct;Lir;)V
    .locals 6

    const-wide/high16 v4, 0x400c000000000000L    # 3.5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcr;-><init>(Lmq;Lct;Lir;D)V

    return-void
.end method

.method public constructor <init>(Lmq;Lct;Lir;D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcr;->a:Lmq;

    iput-object p3, p0, Lcr;->b:Lir;

    iput-object p2, p0, Lcr;->c:Lct;

    iput-wide p4, p0, Lcr;->g:D

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcr;->f:Ljava/util/List;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcr;->d:Ljava/util/HashMap;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcr;->r:J

    return-void
.end method

.method public static synthetic k(Lcr;Landroid/net/Uri;Lfr;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcr;->H(Landroid/net/Uri;Lfr;)V

    return-void
.end method

.method public static synthetic l(Lcr;)D
    .locals 2

    iget-wide v0, p0, Lcr;->g:D

    return-wide v0
.end method

.method public static synthetic m(Lcr;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcr;->o:Landroid/net/Uri;

    return-object p0
.end method

.method public static synthetic n(Lcr;)Z
    .locals 0

    invoke-virtual {p0}, Lcr;->B()Z

    move-result p0

    return p0
.end method

.method public static synthetic o(Lcr;)Lmq;
    .locals 0

    iget-object p0, p0, Lcr;->a:Lmq;

    return-object p0
.end method

.method public static synthetic p(Lcr;)Let$a;
    .locals 0

    iget-object p0, p0, Lcr;->h:Let$a;

    return-object p0
.end method

.method public static synthetic q(Lcr;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcr;->l:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic r(Lcr;)Lqp$a;
    .locals 0

    iget-object p0, p0, Lcr;->j:Lqp$a;

    return-object p0
.end method

.method public static synthetic s(Lcr;)Lct;
    .locals 0

    iget-object p0, p0, Lcr;->c:Lct;

    return-object p0
.end method

.method public static synthetic t(Lcr;Landroid/net/Uri;J)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcr;->D(Landroid/net/Uri;J)Z

    move-result p0

    return p0
.end method

.method public static synthetic u(Lcr;Lfr;Lfr;)Lfr;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcr;->x(Lfr;Lfr;)Lfr;

    move-result-object p0

    return-object p0
.end method

.method public static w(Lfr;Lfr;)Lfr$a;
    .locals 4

    iget-wide v0, p1, Lfr;->i:J

    iget-wide v2, p0, Lfr;->i:J

    sub-long/2addr v0, v2

    long-to-int p1, v0

    iget-object p0, p0, Lfr;->o:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfr$a;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final A(Landroid/net/Uri;)Z
    .locals 4

    iget-object v0, p0, Lcr;->n:Ler;

    iget-object v0, v0, Ler;->e:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ler$b;

    iget-object v3, v3, Ler$b;->a:Landroid/net/Uri;

    invoke-virtual {p1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final B()Z
    .locals 10

    iget-object v0, p0, Lcr;->n:Ler;

    iget-object v0, v0, Ler;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_1

    iget-object v6, p0, Lcr;->d:Ljava/util/HashMap;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ler$b;

    iget-object v7, v7, Ler$b;->a:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcr$a;

    invoke-static {v6}, Lcr$a;->b(Lcr$a;)J

    move-result-wide v7

    cmp-long v9, v2, v7

    if-lez v9, :cond_0

    invoke-static {v6}, Lcr$a;->d(Lcr$a;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcr;->o:Landroid/net/Uri;

    invoke-virtual {v6}, Lcr$a;->i()V

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method public final C(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcr;->o:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcr;->A(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcr;->p:Lfr;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lfr;->l:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcr;->o:Landroid/net/Uri;

    iget-object v0, p0, Lcr;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcr$a;

    invoke-virtual {p1}, Lcr$a;->i()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final D(Landroid/net/Uri;J)Z
    .locals 4

    iget-object v0, p0, Lcr;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcr;->f:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljr$b;

    invoke-interface {v3, p1, p2, p3}, Ljr$b;->e(Landroid/net/Uri;J)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public E(Let;JJZ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Let<",
            "Lgr;",
            ">;JJZ)V"
        }
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Lcr;->j:Lqp$a;

    move-object v2, p1

    iget-object v3, v2, Let;->a:Los;

    invoke-virtual {p1}, Let;->d()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1}, Let;->b()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {p1}, Let;->a()J

    move-result-wide v10

    const/4 v6, 0x4

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-wide v6, p2

    move-wide/from16 v8, p4

    invoke-virtual/range {v1 .. v11}, Lqp$a;->o(Los;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    return-void
.end method

.method public F(Let;JJ)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Let<",
            "Lgr;",
            ">;JJ)V"
        }
    .end annotation

    move-object v0, p0

    invoke-virtual/range {p1 .. p1}, Let;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgr;

    instance-of v2, v1, Lfr;

    if-eqz v2, :cond_0

    iget-object v3, v1, Lgr;->a:Ljava/lang/String;

    invoke-static {v3}, Ler;->d(Ljava/lang/String;)Ler;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    check-cast v3, Ler;

    :goto_0
    iput-object v3, v0, Lcr;->n:Ler;

    iget-object v4, v0, Lcr;->b:Lir;

    invoke-interface {v4, v3}, Lir;->b(Ler;)Let$a;

    move-result-object v4

    iput-object v4, v0, Lcr;->h:Let$a;

    iget-object v4, v3, Ler;->e:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ler$b;

    iget-object v4, v4, Ler$b;->a:Landroid/net/Uri;

    iput-object v4, v0, Lcr;->o:Landroid/net/Uri;

    iget-object v3, v3, Ler;->d:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcr;->v(Ljava/util/List;)V

    iget-object v3, v0, Lcr;->d:Ljava/util/HashMap;

    iget-object v4, v0, Lcr;->o:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcr$a;

    if-eqz v2, :cond_1

    check-cast v1, Lfr;

    move-wide/from16 v11, p4

    invoke-static {v3, v1, v11, v12}, Lcr$a;->a(Lcr$a;Lfr;J)V

    goto :goto_1

    :cond_1
    move-wide/from16 v11, p4

    invoke-virtual {v3}, Lcr$a;->i()V

    :goto_1
    iget-object v4, v0, Lcr;->j:Lqp$a;

    move-object/from16 v1, p1

    iget-object v5, v1, Let;->a:Los;

    invoke-virtual/range {p1 .. p1}, Let;->d()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Let;->b()Ljava/util/Map;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual/range {p1 .. p1}, Let;->a()J

    move-result-wide v13

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-virtual/range {v4 .. v14}, Lqp$a;->r(Los;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    return-void
.end method

.method public G(Let;JJLjava/io/IOException;I)Ldt$c;
    .locals 19
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

    iget-object v2, v0, Lcr;->c:Lct;

    iget v3, v1, Let;->b:I

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-interface/range {v2 .. v7}, Lct;->c(IJLjava/io/IOException;I)J

    move-result-wide v2

    const/4 v4, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v2, v5

    if-nez v7, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iget-object v6, v0, Lcr;->j:Lqp$a;

    iget-object v7, v1, Let;->a:Los;

    invoke-virtual/range {p1 .. p1}, Let;->d()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Let;->b()Ljava/util/Map;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual/range {p1 .. p1}, Let;->a()J

    move-result-wide v15

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    move-object/from16 v17, p6

    move/from16 v18, v5

    invoke-virtual/range {v6 .. v18}, Lqp$a;->u(Los;Landroid/net/Uri;Ljava/util/Map;IJJJLjava/io/IOException;Z)V

    if-eqz v5, :cond_1

    sget-object v1, Ldt;->e:Ldt$c;

    goto :goto_1

    :cond_1
    invoke-static {v4, v2, v3}, Ldt;->f(ZJ)Ldt$c;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public final H(Landroid/net/Uri;Lfr;)V
    .locals 2

    iget-object v0, p0, Lcr;->o:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcr;->p:Lfr;

    if-nez p1, :cond_0

    iget-boolean p1, p2, Lfr;->l:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcr;->q:Z

    iget-wide v0, p2, Lfr;->f:J

    iput-wide v0, p0, Lcr;->r:J

    :cond_0
    iput-object p2, p0, Lcr;->p:Lfr;

    iget-object p1, p0, Lcr;->m:Ljr$e;

    invoke-interface {p1, p2}, Ljr$e;->c(Lfr;)V

    :cond_1
    iget-object p1, p0, Lcr;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    iget-object v0, p0, Lcr;->f:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljr$b;

    invoke-interface {v0}, Ljr$b;->onPlaylistChanged()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcr;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcr$a;

    invoke-virtual {p1}, Lcr$a;->l()V

    return-void
.end method

.method public b(Ljr$b;)V
    .locals 1

    iget-object v0, p0, Lcr;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic c(Ldt$e;JJLjava/io/IOException;I)Ldt$c;
    .locals 0

    check-cast p1, Let;

    invoke-virtual/range {p0 .. p7}, Lcr;->G(Let;JJLjava/io/IOException;I)Ldt$c;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljr$b;)V
    .locals 1

    iget-object v0, p0, Lcr;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public e(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcr;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcr$a;

    invoke-virtual {p1}, Lcr$a;->i()V

    return-void
.end method

.method public f(Landroid/net/Uri;Lqp$a;Ljr$e;)V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcr;->l:Landroid/os/Handler;

    iput-object p2, p0, Lcr;->j:Lqp$a;

    iput-object p3, p0, Lcr;->m:Ljr$e;

    new-instance p3, Let;

    iget-object v0, p0, Lcr;->a:Lmq;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lmq;->createDataSource(I)Lls;

    move-result-object v0

    iget-object v2, p0, Lcr;->b:Lir;

    invoke-interface {v2}, Lir;->a()Let$a;

    move-result-object v2

    invoke-direct {p3, v0, p1, v1, v2}, Let;-><init>(Lls;Landroid/net/Uri;ILet$a;)V

    iget-object p1, p0, Lcr;->k:Ldt;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lit;->f(Z)V

    new-instance p1, Ldt;

    const-string v0, "DefaultHlsPlaylistTracker:MasterPlaylist"

    invoke-direct {p1, v0}, Ldt;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcr;->k:Ldt;

    iget-object v0, p0, Lcr;->c:Lct;

    iget v1, p3, Let;->b:I

    invoke-interface {v0, v1}, Lct;->b(I)I

    move-result v0

    invoke-virtual {p1, p3, p0, v0}, Ldt;->l(Ldt$e;Ldt$b;I)J

    move-result-wide v0

    iget-object p1, p3, Let;->a:Los;

    iget p3, p3, Let;->b:I

    invoke-virtual {p2, p1, p3, v0, v1}, Lqp$a;->x(Los;IJ)V

    return-void
.end method

.method public g(Landroid/net/Uri;)Z
    .locals 1

    iget-object v0, p0, Lcr;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcr$a;

    invoke-virtual {p1}, Lcr$a;->g()Z

    move-result p1

    return p1
.end method

.method public getInitialStartTimeUs()J
    .locals 2

    iget-wide v0, p0, Lcr;->r:J

    return-wide v0
.end method

.method public getMasterPlaylist()Ler;
    .locals 1

    iget-object v0, p0, Lcr;->n:Ler;

    return-object v0
.end method

.method public bridge synthetic h(Ldt$e;JJ)V
    .locals 0

    check-cast p1, Let;

    invoke-virtual/range {p0 .. p5}, Lcr;->F(Let;JJ)V

    return-void
.end method

.method public i(Landroid/net/Uri;Z)Lfr;
    .locals 1

    iget-object v0, p0, Lcr;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcr$a;

    invoke-virtual {v0}, Lcr$a;->f()Lfr;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcr;->C(Landroid/net/Uri;)V

    :cond_0
    return-object v0
.end method

.method public isLive()Z
    .locals 1

    iget-boolean v0, p0, Lcr;->q:Z

    return v0
.end method

.method public bridge synthetic j(Ldt$e;JJZ)V
    .locals 0

    check-cast p1, Let;

    invoke-virtual/range {p0 .. p6}, Lcr;->E(Let;JJZ)V

    return-void
.end method

.method public maybeThrowPrimaryPlaylistRefreshError()V
    .locals 1

    iget-object v0, p0, Lcr;->k:Ldt;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldt;->h()V

    :cond_0
    iget-object v0, p0, Lcr;->o:Landroid/net/Uri;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcr;->a(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcr;->o:Landroid/net/Uri;

    iput-object v0, p0, Lcr;->p:Lfr;

    iput-object v0, p0, Lcr;->n:Ler;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcr;->r:J

    iget-object v1, p0, Lcr;->k:Ldt;

    invoke-virtual {v1}, Ldt;->j()V

    iput-object v0, p0, Lcr;->k:Ldt;

    iget-object v1, p0, Lcr;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcr$a;

    invoke-virtual {v2}, Lcr$a;->q()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcr;->l:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v0, p0, Lcr;->l:Landroid/os/Handler;

    iget-object v0, p0, Lcr;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final v(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    new-instance v3, Lcr$a;

    invoke-direct {v3, p0, v2}, Lcr$a;-><init>(Lcr;Landroid/net/Uri;)V

    iget-object v4, p0, Lcr;->d:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final x(Lfr;Lfr;)Lfr;
    .locals 2

    invoke-virtual {p2, p1}, Lfr;->e(Lfr;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p2, p2, Lfr;->l:Z

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lfr;->c()Lfr;

    move-result-object p1

    :cond_0
    return-object p1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcr;->z(Lfr;Lfr;)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2}, Lcr;->y(Lfr;Lfr;)I

    move-result p1

    invoke-virtual {p2, v0, v1, p1}, Lfr;->b(JI)Lfr;

    move-result-object p1

    return-object p1
.end method

.method public final y(Lfr;Lfr;)I
    .locals 3

    iget-boolean v0, p2, Lfr;->g:Z

    if-eqz v0, :cond_0

    iget p1, p2, Lfr;->h:I

    return p1

    :cond_0
    iget-object v0, p0, Lcr;->p:Lfr;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, v0, Lfr;->h:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez p1, :cond_2

    return v0

    :cond_2
    invoke-static {p1, p2}, Lcr;->w(Lfr;Lfr;)Lfr$a;

    move-result-object v2

    if-eqz v2, :cond_3

    iget p1, p1, Lfr;->h:I

    iget v0, v2, Lfr$a;->d:I

    add-int/2addr p1, v0

    iget-object p2, p2, Lfr;->o:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lfr$a;

    iget p2, p2, Lfr$a;->d:I

    sub-int/2addr p1, p2

    return p1

    :cond_3
    return v0
.end method

.method public final z(Lfr;Lfr;)J
    .locals 8

    iget-boolean v0, p2, Lfr;->m:Z

    if-eqz v0, :cond_0

    iget-wide p1, p2, Lfr;->f:J

    return-wide p1

    :cond_0
    iget-object v0, p0, Lcr;->p:Lfr;

    if-eqz v0, :cond_1

    iget-wide v0, v0, Lfr;->f:J

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    if-nez p1, :cond_2

    return-wide v0

    :cond_2
    iget-object v2, p1, Lfr;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p1, p2}, Lcr;->w(Lfr;Lfr;)Lfr$a;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-wide p1, p1, Lfr;->f:J

    iget-wide v0, v3, Lfr$a;->f:J

    add-long/2addr p1, v0

    return-wide p1

    :cond_3
    int-to-long v2, v2

    iget-wide v4, p2, Lfr;->i:J

    iget-wide v6, p1, Lfr;->i:J

    sub-long/2addr v4, v6

    cmp-long p2, v2, v4

    if-nez p2, :cond_4

    invoke-virtual {p1}, Lfr;->d()J

    move-result-wide p1

    return-wide p1

    :cond_4
    return-wide v0
.end method
