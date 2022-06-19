.class public final Lwq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ldt$b;
.implements Ldt$f;
.implements Lyp;
.implements Lck;
.implements Lwp$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwq$b;,
        Lwq$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldt$b<",
        "Leq;",
        ">;",
        "Ldt$f;",
        "Lyp;",
        "Lck;",
        "Lwp$b;"
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Z

.field public C:I

.field public D:Landroidx/media2/exoplayer/external/Format;

.field public E:Landroidx/media2/exoplayer/external/Format;

.field public F:Z

.field public G:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

.field public H:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

.field public I:[I

.field public J:I

.field public K:Z

.field public L:[Z

.field public M:[Z

.field public N:J

.field public O:J

.field public P:Z

.field public Q:Z

.field public R:Z

.field public S:Z

.field public T:J

.field public U:I

.field public final a:I

.field public final b:Lwq$a;

.field public final c:Llq;

.field public final d:Les;

.field public final f:Landroidx/media2/exoplayer/external/Format;

.field public final g:Lct;

.field public final h:Ldt;

.field public final j:Lqp$a;

.field public final k:Llq$c;

.field public final l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lpq;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpq;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Ljava/lang/Runnable;

.field public final o:Ljava/lang/Runnable;

.field public final p:Landroid/os/Handler;

.field public final q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lsq;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ">;"
        }
    .end annotation
.end field

.field public s:[Lwp;

.field public t:[I

.field public u:Z

.field public v:I

.field public w:Z

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(ILwq$a;Llq;Ljava/util/Map;Les;JLandroidx/media2/exoplayer/external/Format;Lct;Lqp$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lwq$a;",
            "Llq;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ">;",
            "Les;",
            "J",
            "Landroidx/media2/exoplayer/external/Format;",
            "Lct;",
            "Lqp$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lwq;->a:I

    iput-object p2, p0, Lwq;->b:Lwq$a;

    iput-object p3, p0, Lwq;->c:Llq;

    iput-object p4, p0, Lwq;->r:Ljava/util/Map;

    iput-object p5, p0, Lwq;->d:Les;

    iput-object p8, p0, Lwq;->f:Landroidx/media2/exoplayer/external/Format;

    iput-object p9, p0, Lwq;->g:Lct;

    iput-object p10, p0, Lwq;->j:Lqp$a;

    new-instance p1, Ldt;

    const-string p2, "Loader:HlsSampleStreamWrapper"

    invoke-direct {p1, p2}, Ldt;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lwq;->h:Ldt;

    new-instance p1, Llq$c;

    invoke-direct {p1}, Llq$c;-><init>()V

    iput-object p1, p0, Lwq;->k:Llq$c;

    const/4 p1, 0x0

    new-array p2, p1, [I

    iput-object p2, p0, Lwq;->t:[I

    const/4 p2, -0x1

    iput p2, p0, Lwq;->v:I

    iput p2, p0, Lwq;->x:I

    new-array p2, p1, [Lwp;

    iput-object p2, p0, Lwq;->s:[Lwp;

    new-array p2, p1, [Z

    iput-object p2, p0, Lwq;->M:[Z

    new-array p1, p1, [Z

    iput-object p1, p0, Lwq;->L:[Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lwq;->l:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lwq;->m:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lwq;->q:Ljava/util/ArrayList;

    new-instance p1, Ltq;

    invoke-direct {p1, p0}, Ltq;-><init>(Lwq;)V

    iput-object p1, p0, Lwq;->n:Ljava/lang/Runnable;

    new-instance p1, Luq;

    invoke-direct {p1, p0}, Luq;-><init>(Lwq;)V

    iput-object p1, p0, Lwq;->o:Ljava/lang/Runnable;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lwq;->p:Landroid/os/Handler;

    iput-wide p6, p0, Lwq;->N:J

    iput-wide p6, p0, Lwq;->O:J

    return-void
.end method

.method public static n(II)Lzj;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x36

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unmapped track with id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " of type "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HlsSampleStreamWrapper"

    invoke-static {p1, p0}, Lst;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lzj;

    invoke-direct {p0}, Lzj;-><init>()V

    return-object p0
.end method

.method public static o(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Landroidx/media2/exoplayer/external/Format;
    .locals 13

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, -0x1

    if-eqz p2, :cond_1

    iget p2, p0, Landroidx/media2/exoplayer/external/Format;->f:I

    move v7, p2

    goto :goto_0

    :cond_1
    const/4 v7, -0x1

    :goto_0
    iget p2, p0, Landroidx/media2/exoplayer/external/Format;->x:I

    if-eq p2, v0, :cond_2

    goto :goto_1

    :cond_2
    iget p2, p1, Landroidx/media2/exoplayer/external/Format;->x:I

    :goto_1
    move v10, p2

    iget-object p2, p1, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    invoke-static {p2}, Lvt;->g(Ljava/lang/String;)I

    move-result p2

    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->g:Ljava/lang/String;

    invoke-static {v0, p2}, Lnu;->w(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lvt;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    iget-object p2, p1, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    :cond_3
    move-object v4, p2

    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->a:Ljava/lang/String;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/Format;->b:Ljava/lang/String;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/Format;->h:Landroidx/media2/exoplayer/external/metadata/Metadata;

    iget v8, p0, Landroidx/media2/exoplayer/external/Format;->p:I

    iget v9, p0, Landroidx/media2/exoplayer/external/Format;->q:I

    iget v11, p0, Landroidx/media2/exoplayer/external/Format;->c:I

    iget-object v12, p0, Landroidx/media2/exoplayer/external/Format;->C:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v1 .. v12}, Landroidx/media2/exoplayer/external/Format;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;IIIIILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p0

    return-object p0
.end method

.method public static q(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;)Z
    .locals 6

    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    iget-object v1, p1, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    invoke-static {v0}, Lvt;->g(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1

    invoke-static {v1}, Lvt;->g(Ljava/lang/String;)I

    move-result p0

    if-ne v2, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_1
    invoke-static {v0, v1}, Lnu;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v4

    :cond_2
    const-string v1, "application/cea-608"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "application/cea-708"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    return v3

    :cond_4
    :goto_1
    iget p0, p0, Landroidx/media2/exoplayer/external/Format;->D:I

    iget p1, p1, Landroidx/media2/exoplayer/external/Format;->D:I

    if-ne p0, p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    return v3
.end method

.method public static s(I)I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x3

    if-eq p0, v0, :cond_1

    if-eq p0, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method public static u(Leq;)Z
    .locals 0

    instance-of p0, p0, Lpq;

    return p0
.end method


# virtual methods
.method public A(Leq;JJZ)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v15, p2

    move-wide/from16 v17, p4

    iget-object v2, v0, Lwq;->j:Lqp$a;

    iget-object v3, v1, Leq;->a:Los;

    invoke-virtual/range {p1 .. p1}, Leq;->d()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Leq;->c()Ljava/util/Map;

    move-result-object v5

    iget v6, v1, Leq;->b:I

    iget v7, v0, Lwq;->a:I

    iget-object v8, v1, Leq;->c:Landroidx/media2/exoplayer/external/Format;

    iget v9, v1, Leq;->d:I

    iget-object v10, v1, Leq;->e:Ljava/lang/Object;

    iget-wide v11, v1, Leq;->f:J

    iget-wide v13, v1, Leq;->g:J

    invoke-virtual/range {p1 .. p1}, Leq;->a()J

    move-result-wide v19

    invoke-virtual/range {v2 .. v20}, Lqp$a;->n(Los;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJ)V

    if-nez p6, :cond_0

    invoke-virtual/range {p0 .. p0}, Lwq;->I()V

    iget v1, v0, Lwq;->C:I

    if-lez v1, :cond_0

    iget-object v1, v0, Lwq;->b:Lwq$a;

    invoke-interface {v1, v0}, Lyp$a;->c(Lyp;)V

    :cond_0
    return-void
.end method

.method public B(Leq;JJ)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v15, p2

    move-wide/from16 v17, p4

    iget-object v2, v0, Lwq;->c:Llq;

    invoke-virtual {v2, v1}, Llq;->j(Leq;)V

    iget-object v2, v0, Lwq;->j:Lqp$a;

    iget-object v3, v1, Leq;->a:Los;

    invoke-virtual/range {p1 .. p1}, Leq;->d()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Leq;->c()Ljava/util/Map;

    move-result-object v5

    iget v6, v1, Leq;->b:I

    iget v7, v0, Lwq;->a:I

    iget-object v8, v1, Leq;->c:Landroidx/media2/exoplayer/external/Format;

    iget v9, v1, Leq;->d:I

    iget-object v10, v1, Leq;->e:Ljava/lang/Object;

    iget-wide v11, v1, Leq;->f:J

    iget-wide v13, v1, Leq;->g:J

    invoke-virtual/range {p1 .. p1}, Leq;->a()J

    move-result-wide v19

    invoke-virtual/range {v2 .. v20}, Lqp$a;->q(Los;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJ)V

    iget-boolean v1, v0, Lwq;->B:Z

    if-nez v1, :cond_0

    iget-wide v1, v0, Lwq;->N:J

    invoke-virtual {v0, v1, v2}, Lwq;->continueLoading(J)Z

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lwq;->b:Lwq$a;

    invoke-interface {v1, v0}, Lyp$a;->c(Lyp;)V

    :goto_0
    return-void
.end method

.method public C(Leq;JJLjava/io/IOException;I)Ldt$c;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Leq;->a()J

    move-result-wide v18

    invoke-static/range {p1 .. p1}, Lwq;->u(Leq;)Z

    move-result v2

    iget-object v3, v0, Lwq;->g:Lct;

    iget v4, v1, Leq;->b:I

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v3 .. v8}, Lct;->a(IJLjava/io/IOException;I)J

    move-result-wide v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    cmp-long v8, v3, v5

    if-eqz v8, :cond_0

    iget-object v8, v0, Lwq;->c:Llq;

    invoke-virtual {v8, v1, v3, v4}, Llq;->g(Leq;J)Z

    move-result v3

    move/from16 v22, v3

    goto :goto_0

    :cond_0
    const/16 v22, 0x0

    :goto_0
    const/4 v3, 0x1

    if-eqz v22, :cond_3

    if-eqz v2, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v2, v18, v4

    if-nez v2, :cond_2

    iget-object v2, v0, Lwq;->l:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpq;

    if-ne v2, v1, :cond_1

    const/4 v7, 0x1

    :cond_1
    invoke-static {v7}, Lit;->f(Z)V

    iget-object v2, v0, Lwq;->l:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v4, v0, Lwq;->N:J

    iput-wide v4, v0, Lwq;->O:J

    :cond_2
    sget-object v2, Ldt;->d:Ldt$c;

    :goto_1
    move-object/from16 v23, v2

    goto :goto_2

    :cond_3
    iget-object v8, v0, Lwq;->g:Lct;

    iget v9, v1, Leq;->b:I

    move-wide/from16 v10, p4

    move-object/from16 v12, p6

    move/from16 v13, p7

    invoke-interface/range {v8 .. v13}, Lct;->c(IJLjava/io/IOException;I)J

    move-result-wide v8

    cmp-long v2, v8, v5

    if-eqz v2, :cond_4

    invoke-static {v7, v8, v9}, Ldt;->f(ZJ)Ldt$c;

    move-result-object v2

    goto :goto_1

    :cond_4
    sget-object v2, Ldt;->e:Ldt$c;

    goto :goto_1

    :goto_2
    iget-object v2, v0, Lwq;->j:Lqp$a;

    iget-object v4, v1, Leq;->a:Los;

    invoke-virtual/range {p1 .. p1}, Leq;->d()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Leq;->c()Ljava/util/Map;

    move-result-object v6

    iget v7, v1, Leq;->b:I

    iget v8, v0, Lwq;->a:I

    iget-object v9, v1, Leq;->c:Landroidx/media2/exoplayer/external/Format;

    iget v10, v1, Leq;->d:I

    iget-object v11, v1, Leq;->e:Ljava/lang/Object;

    iget-wide v12, v1, Leq;->f:J

    iget-wide v14, v1, Leq;->g:J

    invoke-virtual/range {v23 .. v23}, Ldt$c;->c()Z

    move-result v1

    xor-int/lit8 v21, v1, 0x1

    move-object v1, v2

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move v5, v7

    move v6, v8

    move-object v7, v9

    move v8, v10

    move-object v9, v11

    move-wide v10, v12

    move-wide v12, v14

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    move-object/from16 v20, p6

    invoke-virtual/range {v1 .. v21}, Lqp$a;->t(Los;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    if-eqz v22, :cond_6

    iget-boolean v1, v0, Lwq;->B:Z

    if-nez v1, :cond_5

    iget-wide v1, v0, Lwq;->N:J

    invoke-virtual {v0, v1, v2}, Lwq;->continueLoading(J)Z

    goto :goto_3

    :cond_5
    iget-object v1, v0, Lwq;->b:Lwq$a;

    invoke-interface {v1, v0}, Lyp$a;->c(Lyp;)V

    :cond_6
    :goto_3
    return-object v23
.end method

.method public D(Landroid/net/Uri;J)Z
    .locals 1

    iget-object v0, p0, Lwq;->c:Llq;

    invoke-virtual {v0, p1, p2, p3}, Llq;->k(Landroid/net/Uri;J)Z

    move-result p1

    return p1
.end method

.method public final E()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lwq;->A:Z

    invoke-virtual {p0}, Lwq;->y()V

    return-void
.end method

.method public F(Landroidx/media2/exoplayer/external/source/TrackGroupArray;ILandroidx/media2/exoplayer/external/source/TrackGroupArray;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lwq;->B:Z

    iput-object p1, p0, Lwq;->G:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iput-object p3, p0, Lwq;->H:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iput p2, p0, Lwq;->J:I

    iget-object p1, p0, Lwq;->p:Landroid/os/Handler;

    iget-object p2, p0, Lwq;->b:Lwq$a;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lvq;->a(Lwq$a;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public G(ILwg;Lzi;Z)I
    .locals 10

    invoke-virtual {p0}, Lwq;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    :cond_0
    iget-object v0, p0, Lwq;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lwq;->l:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lwq;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpq;

    invoke-virtual {p0, v2}, Lwq;->p(Lpq;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lwq;->l:Ljava/util/ArrayList;

    invoke-static {v2, v1, v0}, Lnu;->d0(Ljava/util/List;II)V

    iget-object v0, p0, Lwq;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpq;

    iget-object v9, v0, Leq;->c:Landroidx/media2/exoplayer/external/Format;

    iget-object v2, p0, Lwq;->E:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v9, v2}, Landroidx/media2/exoplayer/external/Format;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lwq;->j:Lqp$a;

    iget v3, p0, Lwq;->a:I

    iget v5, v0, Leq;->d:I

    iget-object v6, v0, Leq;->e:Ljava/lang/Object;

    iget-wide v7, v0, Leq;->f:J

    move-object v4, v9

    invoke-virtual/range {v2 .. v8}, Lqp$a;->c(ILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;J)V

    :cond_2
    iput-object v9, p0, Lwq;->E:Landroidx/media2/exoplayer/external/Format;

    :cond_3
    iget-object v0, p0, Lwq;->s:[Lwp;

    aget-object v2, v0, p1

    iget-boolean v6, p0, Lwq;->R:Z

    iget-wide v7, p0, Lwq;->N:J

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v2 .. v8}, Lwp;->v(Lwg;Lzi;ZZJ)I

    move-result p3

    const/4 p4, -0x5

    if-ne p3, p4, :cond_8

    iget-object p4, p2, Lwg;->a:Landroidx/media2/exoplayer/external/Format;

    iget v0, p0, Lwq;->z:I

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lwq;->s:[Lwp;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lwp;->s()I

    move-result p1

    :goto_1
    iget-object v0, p0, Lwq;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lwq;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpq;

    iget v0, v0, Lpq;->j:I

    if-eq v0, p1, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lwq;->l:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_5

    iget-object p1, p0, Lwq;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpq;

    iget-object p1, p1, Leq;->c:Landroidx/media2/exoplayer/external/Format;

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lwq;->D:Landroidx/media2/exoplayer/external/Format;

    :goto_2
    invoke-virtual {p4, p1}, Landroidx/media2/exoplayer/external/Format;->f(Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p4

    :cond_6
    iget-object p1, p4, Landroidx/media2/exoplayer/external/Format;->n:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lwq;->r:Ljava/util/Map;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/drm/DrmInitData;->c:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    if-eqz p1, :cond_7

    invoke-virtual {p4, p1}, Landroidx/media2/exoplayer/external/Format;->c(Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p4

    :cond_7
    iput-object p4, p2, Lwg;->a:Landroidx/media2/exoplayer/external/Format;

    :cond_8
    return p3
.end method

.method public H()V
    .locals 4

    iget-boolean v0, p0, Lwq;->B:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwq;->s:[Lwp;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lwp;->k()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lwq;->h:Ldt;

    invoke-virtual {v0, p0}, Ldt;->k(Ldt$f;)V

    iget-object v0, p0, Lwq;->p:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lwq;->F:Z

    iget-object v0, p0, Lwq;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final I()V
    .locals 6

    iget-object v0, p0, Lwq;->s:[Lwp;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    iget-boolean v5, p0, Lwq;->P:Z

    invoke-virtual {v4, v5}, Lwp;->A(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lwq;->P:Z

    return-void
.end method

.method public final J(J)Z
    .locals 6

    iget-object v0, p0, Lwq;->s:[Lwp;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    iget-object v4, p0, Lwq;->s:[Lwp;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lwp;->B()V

    invoke-virtual {v4, p1, p2, v3, v1}, Lwp;->f(JZZ)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    iget-object v3, p0, Lwq;->M:[Z

    aget-boolean v3, v3, v2

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lwq;->K:Z

    if-nez v3, :cond_2

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method public K(JZ)Z
    .locals 3

    iput-wide p1, p0, Lwq;->N:J

    invoke-virtual {p0}, Lwq;->v()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lwq;->O:J

    return v1

    :cond_0
    iget-boolean v0, p0, Lwq;->A:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    invoke-virtual {p0, p1, p2}, Lwq;->J(J)Z

    move-result p3

    if-eqz p3, :cond_1

    return v2

    :cond_1
    iput-wide p1, p0, Lwq;->O:J

    iput-boolean v2, p0, Lwq;->R:Z

    iget-object p1, p0, Lwq;->l:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lwq;->h:Ldt;

    invoke-virtual {p1}, Ldt;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lwq;->h:Ldt;

    invoke-virtual {p1}, Ldt;->e()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lwq;->I()V

    :goto_0
    return v1
.end method

.method public L([Lyr;[Z[Lxp;[ZJZ)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-wide/from16 v12, p5

    iget-boolean v3, v0, Lwq;->B:Z

    invoke-static {v3}, Lit;->f(Z)V

    iget v3, v0, Lwq;->C:I

    const/4 v14, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v5, v1

    const/4 v6, 0x0

    const/4 v15, 0x1

    if-ge v4, v5, :cond_2

    aget-object v5, v2, v4

    if-eqz v5, :cond_1

    aget-object v5, v1, v4

    if-eqz v5, :cond_0

    aget-boolean v5, p2, v4

    if-nez v5, :cond_1

    :cond_0
    iget v5, v0, Lwq;->C:I

    sub-int/2addr v5, v15

    iput v5, v0, Lwq;->C:I

    aget-object v5, v2, v4

    check-cast v5, Lsq;

    invoke-virtual {v5}, Lsq;->d()V

    aput-object v6, v2, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-nez p7, :cond_5

    iget-boolean v4, v0, Lwq;->Q:Z

    if-eqz v4, :cond_3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_3
    iget-wide v3, v0, Lwq;->N:J

    cmp-long v5, v12, v3

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v3, 0x1

    :goto_2
    iget-object v4, v0, Lwq;->c:Llq;

    invoke-virtual {v4}, Llq;->f()Lyr;

    move-result-object v4

    move/from16 v16, v3

    move-object v11, v4

    const/4 v3, 0x0

    :goto_3
    array-length v5, v1

    if-ge v3, v5, :cond_a

    aget-object v5, v2, v3

    if-nez v5, :cond_9

    aget-object v5, v1, v3

    if-eqz v5, :cond_9

    iget v5, v0, Lwq;->C:I

    add-int/2addr v5, v15

    iput v5, v0, Lwq;->C:I

    aget-object v5, v1, v3

    iget-object v7, v0, Lwq;->G:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-interface {v5}, Lyr;->getTrackGroup()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->b(Landroidx/media2/exoplayer/external/source/TrackGroup;)I

    move-result v7

    iget v8, v0, Lwq;->J:I

    if-ne v7, v8, :cond_6

    iget-object v8, v0, Lwq;->c:Llq;

    invoke-virtual {v8, v5}, Llq;->n(Lyr;)V

    move-object v11, v5

    :cond_6
    new-instance v5, Lsq;

    invoke-direct {v5, v0, v7}, Lsq;-><init>(Lwq;I)V

    aput-object v5, v2, v3

    aput-boolean v15, p4, v3

    iget-object v5, v0, Lwq;->I:[I

    if-eqz v5, :cond_7

    aget-object v5, v2, v3

    check-cast v5, Lsq;

    invoke-virtual {v5}, Lsq;->b()V

    :cond_7
    iget-boolean v5, v0, Lwq;->A:Z

    if-eqz v5, :cond_9

    if-nez v16, :cond_9

    iget-object v5, v0, Lwq;->s:[Lwp;

    iget-object v8, v0, Lwq;->I:[I

    aget v7, v8, v7

    aget-object v5, v5, v7

    invoke-virtual {v5}, Lwp;->B()V

    invoke-virtual {v5, v12, v13, v15, v15}, Lwp;->f(JZZ)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_8

    invoke-virtual {v5}, Lwp;->n()I

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    :goto_4
    move/from16 v16, v5

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    iget v1, v0, Lwq;->C:I

    if-nez v1, :cond_d

    iget-object v1, v0, Lwq;->c:Llq;

    invoke-virtual {v1}, Llq;->l()V

    iput-object v6, v0, Lwq;->E:Landroidx/media2/exoplayer/external/Format;

    iput-boolean v15, v0, Lwq;->P:Z

    iget-object v1, v0, Lwq;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Lwq;->h:Ldt;

    invoke-virtual {v1}, Ldt;->g()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-boolean v1, v0, Lwq;->A:Z

    if-eqz v1, :cond_b

    iget-object v1, v0, Lwq;->s:[Lwp;

    array-length v3, v1

    :goto_5
    if-ge v14, v3, :cond_b

    aget-object v4, v1, v14

    invoke-virtual {v4}, Lwp;->k()V

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_b
    iget-object v1, v0, Lwq;->h:Ldt;

    invoke-virtual {v1}, Ldt;->e()V

    goto/16 :goto_a

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lwq;->I()V

    goto/16 :goto_a

    :cond_d
    iget-object v1, v0, Lwq;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-static {v11, v4}, Lnu;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-boolean v1, v0, Lwq;->Q:Z

    if-nez v1, :cond_10

    const-wide/16 v3, 0x0

    cmp-long v1, v12, v3

    if-gez v1, :cond_e

    neg-long v3, v12

    :cond_e
    move-wide v6, v3

    invoke-virtual/range {p0 .. p0}, Lwq;->r()Lpq;

    move-result-object v1

    iget-object v3, v0, Lwq;->c:Llq;

    invoke-virtual {v3, v1, v12, v13}, Llq;->a(Lpq;J)[Lhq;

    move-result-object v17

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v10, v0, Lwq;->m:Ljava/util/List;

    move-object v3, v11

    move-wide/from16 v4, p5

    move-object/from16 v18, v11

    move-object/from16 v11, v17

    invoke-interface/range {v3 .. v11}, Lyr;->a(JJJLjava/util/List;[Lhq;)V

    iget-object v3, v0, Lwq;->c:Llq;

    invoke-virtual {v3}, Llq;->e()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v3

    iget-object v1, v1, Leq;->c:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v3, v1}, Landroidx/media2/exoplayer/external/source/TrackGroup;->b(Landroidx/media2/exoplayer/external/Format;)I

    move-result v1

    invoke-interface/range {v18 .. v18}, Lyr;->getSelectedIndexInTrackGroup()I

    move-result v3

    if-eq v3, v1, :cond_f

    goto :goto_6

    :cond_f
    const/4 v1, 0x0

    goto :goto_7

    :cond_10
    :goto_6
    const/4 v1, 0x1

    :goto_7
    if-eqz v1, :cond_11

    iput-boolean v15, v0, Lwq;->P:Z

    const/4 v1, 0x1

    const/16 v16, 0x1

    goto :goto_8

    :cond_11
    move/from16 v1, p7

    :goto_8
    if-eqz v16, :cond_13

    invoke-virtual {v0, v12, v13, v1}, Lwq;->K(JZ)Z

    :goto_9
    array-length v1, v2

    if-ge v14, v1, :cond_13

    aget-object v1, v2, v14

    if-eqz v1, :cond_12

    aput-boolean v15, p4, v14

    :cond_12
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    :cond_13
    :goto_a
    invoke-virtual {v0, v2}, Lwq;->Q([Lxp;)V

    iput-boolean v15, v0, Lwq;->Q:Z

    return v16
.end method

.method public M(Z)V
    .locals 1

    iget-object v0, p0, Lwq;->c:Llq;

    invoke-virtual {v0, p1}, Llq;->o(Z)V

    return-void
.end method

.method public N(J)V
    .locals 4

    iput-wide p1, p0, Lwq;->T:J

    iget-object v0, p0, Lwq;->s:[Lwp;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Lwp;->C(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public O(IJ)I
    .locals 4

    invoke-virtual {p0}, Lwq;->v()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lwq;->s:[Lwp;

    aget-object p1, v0, p1

    iget-boolean v0, p0, Lwq;->R:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lwp;->m()J

    move-result-wide v2

    cmp-long v0, p2, v2

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lwp;->g()I

    move-result p1

    return p1

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0, v0}, Lwp;->f(JZZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    move v1, p1

    :goto_0
    return v1
.end method

.method public P(I)V
    .locals 2

    iget-object v0, p0, Lwq;->I:[I

    aget p1, v0, p1

    iget-object v0, p0, Lwq;->L:[Z

    aget-boolean v0, v0, p1

    invoke-static {v0}, Lit;->f(Z)V

    iget-object v0, p0, Lwq;->L:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    return-void
.end method

.method public final Q([Lxp;)V
    .locals 4

    iget-object v0, p0, Lwq;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    iget-object v3, p0, Lwq;->q:Ljava/util/ArrayList;

    check-cast v2, Lsq;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Landroidx/media2/exoplayer/external/Format;)V
    .locals 1

    iget-object p1, p0, Lwq;->p:Landroid/os/Handler;

    iget-object v0, p0, Lwq;->n:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic c(Ldt$e;JJLjava/io/IOException;I)Ldt$c;
    .locals 0

    check-cast p1, Leq;

    invoke-virtual/range {p0 .. p7}, Lwq;->C(Leq;JJLjava/io/IOException;I)Ldt$c;

    move-result-object p1

    return-object p1
.end method

.method public continueLoading(J)Z
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lwq;->R:Z

    const/4 v2, 0x0

    if-nez v1, :cond_7

    iget-object v1, v0, Lwq;->h:Ldt;

    invoke-virtual {v1}, Ldt;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lwq;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iget-wide v3, v0, Lwq;->O:J

    :goto_0
    move-object v10, v1

    move-wide v8, v3

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lwq;->m:Ljava/util/List;

    invoke-virtual/range {p0 .. p0}, Lwq;->r()Lpq;

    move-result-object v3

    invoke-virtual {v3}, Lpq;->k()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-wide v3, v3, Leq;->g:J

    goto :goto_0

    :cond_2
    iget-wide v4, v0, Lwq;->N:J

    iget-wide v6, v3, Leq;->f:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    goto :goto_0

    :goto_1
    iget-object v5, v0, Lwq;->c:Llq;

    iget-object v11, v0, Lwq;->k:Llq$c;

    move-wide/from16 v6, p1

    invoke-virtual/range {v5 .. v11}, Llq;->d(JJLjava/util/List;Llq$c;)V

    iget-object v1, v0, Lwq;->k:Llq$c;

    iget-boolean v3, v1, Llq$c;->b:Z

    iget-object v4, v1, Llq$c;->a:Leq;

    iget-object v5, v1, Llq$c;->c:Landroid/net/Uri;

    invoke-virtual {v1}, Llq$c;->a()V

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v1, 0x1

    if-eqz v3, :cond_3

    iput-wide v6, v0, Lwq;->O:J

    iput-boolean v1, v0, Lwq;->R:Z

    return v1

    :cond_3
    if-nez v4, :cond_5

    if-eqz v5, :cond_4

    iget-object v1, v0, Lwq;->b:Lwq$a;

    invoke-interface {v1, v5}, Lwq$a;->h(Landroid/net/Uri;)V

    :cond_4
    return v2

    :cond_5
    invoke-static {v4}, Lwq;->u(Leq;)Z

    move-result v2

    if-eqz v2, :cond_6

    iput-wide v6, v0, Lwq;->O:J

    move-object v2, v4

    check-cast v2, Lpq;

    invoke-virtual {v2, v0}, Lpq;->j(Lwq;)V

    iget-object v3, v0, Lwq;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v2, Leq;->c:Landroidx/media2/exoplayer/external/Format;

    iput-object v2, v0, Lwq;->D:Landroidx/media2/exoplayer/external/Format;

    :cond_6
    iget-object v2, v0, Lwq;->h:Ldt;

    iget-object v3, v0, Lwq;->g:Lct;

    iget v5, v4, Leq;->b:I

    invoke-interface {v3, v5}, Lct;->b(I)I

    move-result v3

    invoke-virtual {v2, v4, v0, v3}, Ldt;->l(Ldt$e;Ldt$b;I)J

    move-result-wide v16

    iget-object v5, v0, Lwq;->j:Lqp$a;

    iget-object v6, v4, Leq;->a:Los;

    iget v7, v4, Leq;->b:I

    iget v8, v0, Lwq;->a:I

    iget-object v9, v4, Leq;->c:Landroidx/media2/exoplayer/external/Format;

    iget v10, v4, Leq;->d:I

    iget-object v11, v4, Leq;->e:Ljava/lang/Object;

    iget-wide v12, v4, Leq;->f:J

    iget-wide v14, v4, Leq;->g:J

    invoke-virtual/range {v5 .. v17}, Lqp$a;->w(Los;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJ)V

    return v1

    :cond_7
    :goto_2
    return v2
.end method

.method public discardBuffer(JZ)V
    .locals 4

    iget-boolean v0, p0, Lwq;->A:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lwq;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lwq;->s:[Lwp;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lwq;->s:[Lwp;

    aget-object v2, v2, v1

    iget-object v3, p0, Lwq;->L:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, p1, p2, p3, v3}, Lwp;->j(JZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public e(Lik;)V
    .locals 0

    return-void
.end method

.method public endTracks()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lwq;->S:Z

    iget-object v0, p0, Lwq;->p:Landroid/os/Handler;

    iget-object v1, p0, Lwq;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public g(I)I
    .locals 4

    iget-object v0, p0, Lwq;->I:[I

    aget v0, v0, p1

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lwq;->H:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iget-object v3, p0, Lwq;->G:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-virtual {v3, p1}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->b(Landroidx/media2/exoplayer/external/source/TrackGroup;)I

    move-result p1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x3

    :goto_0
    return v1

    :cond_1
    iget-object p1, p0, Lwq;->L:[Z

    aget-boolean v2, p1, v0

    if-eqz v2, :cond_2

    return v1

    :cond_2
    const/4 v1, 0x1

    aput-boolean v1, p1, v0

    return v0
.end method

.method public getBufferedPositionUs()J
    .locals 7

    iget-boolean v0, p0, Lwq;->R:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lwq;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lwq;->O:J

    return-wide v0

    :cond_1
    iget-wide v0, p0, Lwq;->N:J

    invoke-virtual {p0}, Lwq;->r()Lpq;

    move-result-object v2

    invoke-virtual {v2}, Lpq;->k()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lwq;->l:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lwq;->l:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpq;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    iget-wide v2, v2, Leq;->g:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_4
    iget-boolean v2, p0, Lwq;->A:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lwq;->s:[Lwp;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    invoke-virtual {v5}, Lwp;->m()J

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    invoke-virtual {p0}, Lwq;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lwq;->O:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lwq;->R:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lwq;->r()Lpq;

    move-result-object v0

    iget-wide v0, v0, Leq;->g:J

    :goto_0
    return-wide v0
.end method

.method public getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .locals 1

    iget-object v0, p0, Lwq;->G:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    return-object v0
.end method

.method public bridge synthetic h(Ldt$e;JJ)V
    .locals 0

    check-cast p1, Leq;

    invoke-virtual/range {p0 .. p5}, Lwq;->B(Leq;JJ)V

    return-void
.end method

.method public final bridge synthetic i()V
    .locals 0

    invoke-virtual {p0}, Lwq;->y()V

    return-void
.end method

.method public bridge synthetic j(Ldt$e;JJZ)V
    .locals 0

    check-cast p1, Leq;

    invoke-virtual/range {p0 .. p6}, Lwq;->A(Leq;JJZ)V

    return-void
.end method

.method public final bridge synthetic k()V
    .locals 0

    invoke-virtual {p0}, Lwq;->E()V

    return-void
.end method

.method public final l()V
    .locals 14

    iget-object v0, p0, Lwq;->s:[Lwp;

    array-length v0, v0

    const/4 v1, 0x6

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, -0x1

    :goto_0
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v4, v0, :cond_5

    iget-object v9, p0, Lwq;->s:[Lwp;

    aget-object v9, v9, v4

    invoke-virtual {v9}, Lwp;->o()Landroidx/media2/exoplayer/external/Format;

    move-result-object v9

    iget-object v9, v9, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    invoke-static {v9}, Lvt;->m(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v9}, Lvt;->k(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v9}, Lvt;->l(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x3

    goto :goto_1

    :cond_2
    const/4 v7, 0x6

    :goto_1
    invoke-static {v7}, Lwq;->s(I)I

    move-result v8

    invoke-static {v5}, Lwq;->s(I)I

    move-result v9

    if-le v8, v9, :cond_3

    move v6, v4

    move v5, v7

    goto :goto_2

    :cond_3
    if-ne v7, v5, :cond_4

    if-eq v6, v2, :cond_4

    const/4 v6, -0x1

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lwq;->c:Llq;

    invoke-virtual {v1}, Llq;->e()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v1

    iget v4, v1, Landroidx/media2/exoplayer/external/source/TrackGroup;->a:I

    iput v2, p0, Lwq;->J:I

    new-array v2, v0, [I

    iput-object v2, p0, Lwq;->I:[I

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_6

    iget-object v9, p0, Lwq;->I:[I

    aput v2, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    new-array v2, v0, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v0, :cond_b

    iget-object v10, p0, Lwq;->s:[Lwp;

    aget-object v10, v10, v9

    invoke-virtual {v10}, Lwp;->o()Landroidx/media2/exoplayer/external/Format;

    move-result-object v10

    if-ne v9, v6, :cond_9

    new-array v11, v4, [Landroidx/media2/exoplayer/external/Format;

    if-ne v4, v8, :cond_7

    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/source/TrackGroup;->a(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroidx/media2/exoplayer/external/Format;->f(Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v10

    aput-object v10, v11, v3

    goto :goto_6

    :cond_7
    const/4 v12, 0x0

    :goto_5
    if-ge v12, v4, :cond_8

    invoke-virtual {v1, v12}, Landroidx/media2/exoplayer/external/source/TrackGroup;->a(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v13

    invoke-static {v13, v10, v8}, Lwq;->o(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Landroidx/media2/exoplayer/external/Format;

    move-result-object v13

    aput-object v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_8
    :goto_6
    new-instance v10, Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {v10, v11}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    aput-object v10, v2, v9

    iput v9, p0, Lwq;->J:I

    goto :goto_8

    :cond_9
    if-ne v5, v7, :cond_a

    iget-object v11, v10, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    invoke-static {v11}, Lvt;->k(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    iget-object v11, p0, Lwq;->f:Landroidx/media2/exoplayer/external/Format;

    goto :goto_7

    :cond_a
    const/4 v11, 0x0

    :goto_7
    new-instance v12, Landroidx/media2/exoplayer/external/source/TrackGroup;

    new-array v13, v8, [Landroidx/media2/exoplayer/external/Format;

    invoke-static {v11, v10, v3}, Lwq;->o(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Landroidx/media2/exoplayer/external/Format;

    move-result-object v10

    aput-object v10, v13, v3

    invoke-direct {v12, v13}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    aput-object v12, v2, v9

    :goto_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_b
    new-instance v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-direct {v0, v2}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;-><init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V

    iput-object v0, p0, Lwq;->G:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iget-object v0, p0, Lwq;->H:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    if-nez v0, :cond_c

    const/4 v3, 0x1

    :cond_c
    invoke-static {v3}, Lit;->f(Z)V

    sget-object v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->d:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iput-object v0, p0, Lwq;->H:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    return-void
.end method

.method public m()V
    .locals 2

    iget-boolean v0, p0, Lwq;->B:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lwq;->N:J

    invoke-virtual {p0, v0, v1}, Lwq;->continueLoading(J)Z

    :cond_0
    return-void
.end method

.method public maybeThrowPrepareError()V
    .locals 0

    invoke-virtual {p0}, Lwq;->z()V

    return-void
.end method

.method public onLoaderReleased()V
    .locals 0

    invoke-virtual {p0}, Lwq;->I()V

    return-void
.end method

.method public final p(Lpq;)Z
    .locals 4

    iget p1, p1, Lpq;->j:I

    iget-object v0, p0, Lwq;->s:[Lwp;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lwq;->L:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_0

    iget-object v3, p0, Lwq;->s:[Lwp;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lwp;->s()I

    move-result v3

    if-ne v3, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final r()Lpq;
    .locals 2

    iget-object v0, p0, Lwq;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpq;

    return-object v0
.end method

.method public reevaluateBuffer(J)V
    .locals 0

    return-void
.end method

.method public t(IZZ)V
    .locals 4

    const/4 v0, 0x0

    if-nez p3, :cond_0

    iput-boolean v0, p0, Lwq;->u:Z

    iput-boolean v0, p0, Lwq;->w:Z

    :cond_0
    iput p1, p0, Lwq;->U:I

    iget-object p3, p0, Lwq;->s:[Lwp;

    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p3, v2

    invoke-virtual {v3, p1}, Lwp;->E(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    iget-object p1, p0, Lwq;->s:[Lwp;

    array-length p2, p1

    :goto_1
    if-ge v0, p2, :cond_2

    aget-object p3, p1, v0

    invoke-virtual {p3}, Lwp;->F()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public track(II)Lkk;
    .locals 8

    iget-object v0, p0, Lwq;->s:[Lwp;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne p2, v5, :cond_3

    iget v6, p0, Lwq;->v:I

    if-eq v6, v3, :cond_2

    iget-boolean v1, p0, Lwq;->u:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lwq;->t:[I

    aget v1, v1, v6

    if-ne v1, p1, :cond_0

    aget-object p1, v0, v6

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lwq;->n(II)Lzj;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    iput-boolean v5, p0, Lwq;->u:Z

    iget-object p2, p0, Lwq;->t:[I

    aput p1, p2, v6

    aget-object p1, v0, v6

    return-object p1

    :cond_2
    iget-boolean v0, p0, Lwq;->S:Z

    if-eqz v0, :cond_a

    invoke-static {p1, p2}, Lwq;->n(II)Lzj;

    move-result-object p1

    return-object p1

    :cond_3
    if-ne p2, v4, :cond_7

    iget v6, p0, Lwq;->x:I

    if-eq v6, v3, :cond_6

    iget-boolean v1, p0, Lwq;->w:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lwq;->t:[I

    aget v1, v1, v6

    if-ne v1, p1, :cond_4

    aget-object p1, v0, v6

    goto :goto_1

    :cond_4
    invoke-static {p1, p2}, Lwq;->n(II)Lzj;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_5
    iput-boolean v5, p0, Lwq;->w:Z

    iget-object p2, p0, Lwq;->t:[I

    aput p1, p2, v6

    aget-object p1, v0, v6

    return-object p1

    :cond_6
    iget-boolean v0, p0, Lwq;->S:Z

    if-eqz v0, :cond_a

    invoke-static {p1, p2}, Lwq;->n(II)Lzj;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_9

    iget-object v3, p0, Lwq;->t:[I

    aget v3, v3, v0

    if-ne v3, p1, :cond_8

    iget-object p1, p0, Lwq;->s:[Lwp;

    aget-object p1, p1, v0

    return-object p1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    iget-boolean v0, p0, Lwq;->S:Z

    if-eqz v0, :cond_a

    invoke-static {p1, p2}, Lwq;->n(II)Lzj;

    move-result-object p1

    return-object p1

    :cond_a
    new-instance v0, Lwq$b;

    iget-object v3, p0, Lwq;->d:Les;

    invoke-direct {v0, v3}, Lwq$b;-><init>(Les;)V

    iget-wide v6, p0, Lwq;->T:J

    invoke-virtual {v0, v6, v7}, Lwp;->C(J)V

    iget v3, p0, Lwq;->U:I

    invoke-virtual {v0, v3}, Lwp;->E(I)V

    invoke-virtual {v0, p0}, Lwp;->D(Lwp$b;)V

    iget-object v3, p0, Lwq;->t:[I

    add-int/lit8 v6, v1, 0x1

    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, p0, Lwq;->t:[I

    aput p1, v3, v1

    iget-object p1, p0, Lwq;->s:[Lwp;

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lwp;

    iput-object p1, p0, Lwq;->s:[Lwp;

    aput-object v0, p1, v1

    iget-object p1, p0, Lwq;->M:[Z

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Lwq;->M:[Z

    if-eq p2, v5, :cond_b

    if-ne p2, v4, :cond_c

    :cond_b
    const/4 v2, 0x1

    :cond_c
    aput-boolean v2, p1, v1

    iget-boolean v2, p0, Lwq;->K:Z

    aget-boolean p1, p1, v1

    or-int/2addr p1, v2

    iput-boolean p1, p0, Lwq;->K:Z

    if-ne p2, v5, :cond_d

    iput-boolean v5, p0, Lwq;->u:Z

    iput v1, p0, Lwq;->v:I

    goto :goto_3

    :cond_d
    if-ne p2, v4, :cond_e

    iput-boolean v5, p0, Lwq;->w:Z

    iput v1, p0, Lwq;->x:I

    :cond_e
    :goto_3
    invoke-static {p2}, Lwq;->s(I)I

    move-result p1

    iget v2, p0, Lwq;->y:I

    invoke-static {v2}, Lwq;->s(I)I

    move-result v2

    if-le p1, v2, :cond_f

    iput v1, p0, Lwq;->z:I

    iput p2, p0, Lwq;->y:I

    :cond_f
    iget-object p1, p0, Lwq;->L:[Z

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Lwq;->L:[Z

    return-object v0
.end method

.method public final v()Z
    .locals 5

    iget-wide v0, p0, Lwq;->O:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public w(I)Z
    .locals 1

    iget-boolean v0, p0, Lwq;->R:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lwq;->v()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lwq;->s:[Lwp;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lwp;->q()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final x()V
    .locals 6

    iget-object v0, p0, Lwq;->G:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iget v0, v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a:I

    new-array v1, v0, [I

    iput-object v1, p0, Lwq;->I:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lwq;->s:[Lwp;

    array-length v5, v4

    if-ge v3, v5, :cond_1

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lwp;->o()Landroidx/media2/exoplayer/external/Format;

    move-result-object v4

    iget-object v5, p0, Lwq;->G:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-virtual {v5, v2}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroidx/media2/exoplayer/external/source/TrackGroup;->a(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v5

    invoke-static {v4, v5}, Lwq;->q(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lwq;->I:[I

    aput v3, v4, v2

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lwq;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsq;

    invoke-virtual {v1}, Lsq;->b()V

    goto :goto_3

    :cond_3
    return-void
.end method

.method public final y()V
    .locals 4

    iget-boolean v0, p0, Lwq;->F:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lwq;->I:[I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lwq;->A:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lwq;->s:[Lwp;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lwp;->o()Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lwq;->G:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lwq;->x()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lwq;->l()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lwq;->B:Z

    iget-object v0, p0, Lwq;->b:Lwq$a;

    invoke-interface {v0}, Lwq$a;->onPrepared()V

    :cond_4
    :goto_1
    return-void
.end method

.method public z()V
    .locals 1

    iget-object v0, p0, Lwq;->h:Ldt;

    invoke-virtual {v0}, Ldt;->h()V

    iget-object v0, p0, Lwq;->c:Llq;

    invoke-virtual {v0}, Llq;->i()V

    return-void
.end method
