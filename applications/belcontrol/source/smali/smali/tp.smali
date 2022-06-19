.class public final Ltp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lfp;
.implements Lck;
.implements Ldt$b;
.implements Ldt$f;
.implements Lwp$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltp$f;,
        Ltp$d;,
        Ltp$b;,
        Ltp$a;,
        Ltp$e;,
        Ltp$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfp;",
        "Lck;",
        "Ldt$b<",
        "Ltp$a;",
        ">;",
        "Ldt$f;",
        "Lwp$b;"
    }
.end annotation


# static fields
.field public static final M:Landroidx/media2/exoplayer/external/Format;


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:I

.field public E:J

.field public F:J

.field public G:J

.field public H:J

.field public I:Z

.field public J:I

.field public K:Z

.field public L:Z

.field public final a:Landroid/net/Uri;

.field public final b:Lls;

.field public final c:Lct;

.field public final d:Lqp$a;

.field public final f:Ltp$c;

.field public final g:Les;

.field public final h:Ljava/lang/String;

.field public final j:J

.field public final k:Ldt;

.field public final l:Ltp$b;

.field public final m:Llt;

.field public final n:Ljava/lang/Runnable;

.field public final o:Ljava/lang/Runnable;

.field public final p:Landroid/os/Handler;

.field public q:Lfp$a;

.field public r:Lik;

.field public s:Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

.field public t:[Lwp;

.field public u:[Ltp$f;

.field public v:Z

.field public w:Z

.field public x:Ltp$d;

.field public y:Z

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "icy"

    const-string v1, "application/x-icy"

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/Format;->p(Ljava/lang/String;Ljava/lang/String;J)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    sput-object v0, Ltp;->M:Landroidx/media2/exoplayer/external/Format;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lls;[Lak;Lct;Lqp$a;Ltp$c;Les;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltp;->a:Landroid/net/Uri;

    iput-object p2, p0, Ltp;->b:Lls;

    iput-object p4, p0, Ltp;->c:Lct;

    iput-object p5, p0, Ltp;->d:Lqp$a;

    iput-object p6, p0, Ltp;->f:Ltp$c;

    iput-object p7, p0, Ltp;->g:Les;

    iput-object p8, p0, Ltp;->h:Ljava/lang/String;

    int-to-long p1, p9

    iput-wide p1, p0, Ltp;->j:J

    new-instance p1, Ldt;

    const-string p2, "Loader:ProgressiveMediaPeriod"

    invoke-direct {p1, p2}, Ldt;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ltp;->k:Ldt;

    new-instance p1, Ltp$b;

    invoke-direct {p1, p3}, Ltp$b;-><init>([Lak;)V

    iput-object p1, p0, Ltp;->l:Ltp$b;

    new-instance p1, Llt;

    invoke-direct {p1}, Llt;-><init>()V

    iput-object p1, p0, Ltp;->m:Llt;

    new-instance p1, Lrp;

    invoke-direct {p1, p0}, Lrp;-><init>(Ltp;)V

    iput-object p1, p0, Ltp;->n:Ljava/lang/Runnable;

    new-instance p1, Lsp;

    invoke-direct {p1, p0}, Lsp;-><init>(Ltp;)V

    iput-object p1, p0, Ltp;->o:Ljava/lang/Runnable;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Ltp;->p:Landroid/os/Handler;

    const/4 p1, 0x0

    new-array p2, p1, [Ltp$f;

    iput-object p2, p0, Ltp;->u:[Ltp$f;

    new-array p1, p1, [Lwp;

    iput-object p1, p0, Ltp;->t:[Lwp;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Ltp;->H:J

    const-wide/16 p3, -0x1

    iput-wide p3, p0, Ltp;->F:J

    iput-wide p1, p0, Ltp;->E:J

    const/4 p1, 0x1

    iput p1, p0, Ltp;->z:I

    invoke-virtual {p5}, Lqp$a;->y()V

    return-void
.end method

.method public static synthetic g(Ltp;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Ltp;->p:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic i(Ltp;)J
    .locals 2

    invoke-virtual {p0}, Ltp;->u()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic k(Ltp;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltp;->h:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic l(Ltp;)Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;
    .locals 0

    iget-object p0, p0, Ltp;->s:Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    return-object p0
.end method

.method public static synthetic m(Ltp;Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;)Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;
    .locals 0

    iput-object p1, p0, Ltp;->s:Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    return-object p1
.end method

.method public static synthetic n()Landroidx/media2/exoplayer/external/Format;
    .locals 1

    sget-object v0, Ltp;->M:Landroidx/media2/exoplayer/external/Format;

    return-object v0
.end method

.method public static synthetic o(Ltp;)J
    .locals 2

    iget-wide v0, p0, Ltp;->j:J

    return-wide v0
.end method

.method public static synthetic p(Ltp;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Ltp;->o:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public final A()V
    .locals 12

    iget-object v0, p0, Ltp;->r:Lik;

    iget-boolean v1, p0, Ltp;->L:Z

    if-nez v1, :cond_b

    iget-boolean v1, p0, Ltp;->w:Z

    if-nez v1, :cond_b

    iget-boolean v1, p0, Ltp;->v:Z

    if-eqz v1, :cond_b

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v1, p0, Ltp;->t:[Lwp;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    invoke-virtual {v5}, Lwp;->o()Landroidx/media2/exoplayer/external/Format;

    move-result-object v5

    if-nez v5, :cond_1

    return-void

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Ltp;->m:Llt;

    invoke-virtual {v1}, Llt;->b()Z

    iget-object v1, p0, Ltp;->t:[Lwp;

    array-length v1, v1

    new-array v2, v1, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    new-array v4, v1, [Z

    invoke-interface {v0}, Lik;->getDurationUs()J

    move-result-wide v5

    iput-wide v5, p0, Ltp;->E:J

    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x1

    if-ge v5, v1, :cond_9

    iget-object v7, p0, Ltp;->t:[Lwp;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Lwp;->o()Landroidx/media2/exoplayer/external/Format;

    move-result-object v7

    iget-object v8, v7, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    invoke-static {v8}, Lvt;->k(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static {v8}, Lvt;->m(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v8, 0x1

    :goto_3
    aput-boolean v8, v4, v5

    iget-boolean v10, p0, Ltp;->y:Z

    or-int/2addr v8, v10

    iput-boolean v8, p0, Ltp;->y:Z

    iget-object v8, p0, Ltp;->s:Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    if-eqz v8, :cond_8

    if-nez v9, :cond_5

    iget-object v10, p0, Ltp;->u:[Ltp$f;

    aget-object v10, v10, v5

    iget-boolean v10, v10, Ltp$f;->b:Z

    if-eqz v10, :cond_7

    :cond_5
    iget-object v10, v7, Landroidx/media2/exoplayer/external/Format;->h:Landroidx/media2/exoplayer/external/metadata/Metadata;

    if-nez v10, :cond_6

    new-instance v10, Landroidx/media2/exoplayer/external/metadata/Metadata;

    new-array v11, v6, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    aput-object v8, v11, v3

    invoke-direct {v10, v11}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)V

    goto :goto_4

    :cond_6
    new-array v11, v6, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    aput-object v8, v11, v3

    invoke-virtual {v10, v11}, Landroidx/media2/exoplayer/external/metadata/Metadata;->a([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object v10

    :goto_4
    invoke-virtual {v7, v10}, Landroidx/media2/exoplayer/external/Format;->h(Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v7

    :cond_7
    if-eqz v9, :cond_8

    iget v9, v7, Landroidx/media2/exoplayer/external/Format;->f:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_8

    iget v8, v8, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->a:I

    if-eq v8, v10, :cond_8

    invoke-virtual {v7, v8}, Landroidx/media2/exoplayer/external/Format;->a(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v7

    :cond_8
    new-instance v8, Landroidx/media2/exoplayer/external/source/TrackGroup;

    new-array v6, v6, [Landroidx/media2/exoplayer/external/Format;

    aput-object v7, v6, v3

    invoke-direct {v8, v6}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    aput-object v8, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_9
    iget-wide v7, p0, Ltp;->F:J

    const-wide/16 v9, -0x1

    cmp-long v1, v7, v9

    if-nez v1, :cond_a

    invoke-interface {v0}, Lik;->getDurationUs()J

    move-result-wide v7

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v7, v9

    if-nez v1, :cond_a

    const/4 v1, 0x7

    goto :goto_5

    :cond_a
    const/4 v1, 0x1

    :goto_5
    iput v1, p0, Ltp;->z:I

    new-instance v1, Ltp$d;

    new-instance v3, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-direct {v3, v2}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;-><init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V

    invoke-direct {v1, v0, v3, v4}, Ltp$d;-><init>(Lik;Landroidx/media2/exoplayer/external/source/TrackGroupArray;[Z)V

    iput-object v1, p0, Ltp;->x:Ltp$d;

    iput-boolean v6, p0, Ltp;->w:Z

    iget-object v1, p0, Ltp;->f:Ltp$c;

    iget-wide v2, p0, Ltp;->E:J

    invoke-interface {v0}, Lik;->isSeekable()Z

    move-result v0

    invoke-interface {v1, v2, v3, v0}, Ltp$c;->onSourceInfoRefreshed(JZ)V

    iget-object v0, p0, Ltp;->q:Lfp$a;

    invoke-static {v0}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lfp$a;

    invoke-interface {v0, p0}, Lfp$a;->b(Lfp;)V

    :cond_b
    :goto_6
    return-void
.end method

.method public final B(I)V
    .locals 10

    invoke-virtual {p0}, Ltp;->v()Ltp$d;

    move-result-object v0

    iget-object v1, v0, Ltp$d;->e:[Z

    aget-boolean v2, v1, p1

    if-nez v2, :cond_0

    iget-object v0, v0, Ltp$d;->b:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/source/TrackGroup;->a(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v5

    iget-object v3, p0, Ltp;->d:Lqp$a;

    iget-object v0, v5, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    invoke-static {v0}, Lvt;->g(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-wide v8, p0, Ltp;->G:J

    invoke-virtual/range {v3 .. v9}, Lqp$a;->c(ILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;J)V

    const/4 v0, 0x1

    aput-boolean v0, v1, p1

    :cond_0
    return-void
.end method

.method public final C(I)V
    .locals 3

    invoke-virtual {p0}, Ltp;->v()Ltp$d;

    move-result-object v0

    iget-object v0, v0, Ltp$d;->c:[Z

    iget-boolean v1, p0, Ltp;->I:Z

    if-eqz v1, :cond_2

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltp;->t:[Lwp;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lwp;->q()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltp;->H:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Ltp;->I:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Ltp;->B:Z

    iput-wide v0, p0, Ltp;->G:J

    iput p1, p0, Ltp;->J:I

    iget-object v0, p0, Ltp;->t:[Lwp;

    array-length v1, v0

    :goto_0
    if-ge p1, v1, :cond_1

    aget-object v2, v0, p1

    invoke-virtual {v2}, Lwp;->z()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ltp;->q:Lfp$a;

    invoke-static {p1}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lfp$a;

    invoke-interface {p1, p0}, Lyp$a;->c(Lyp;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public D()V
    .locals 3

    iget-object v0, p0, Ltp;->k:Ldt;

    iget-object v1, p0, Ltp;->c:Lct;

    iget v2, p0, Ltp;->z:I

    invoke-interface {v1, v2}, Lct;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ldt;->i(I)V

    return-void
.end method

.method public E(Ltp$a;JJZ)V
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    iget-object v1, v0, Ltp;->d:Lqp$a;

    invoke-static/range {p1 .. p1}, Ltp$a;->b(Ltp$a;)Los;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Ltp$a;->c(Ltp$a;)Lgt;

    move-result-object v3

    invoke-virtual {v3}, Lgt;->d()Landroid/net/Uri;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ltp$a;->c(Ltp$a;)Lgt;

    move-result-object v4

    invoke-virtual {v4}, Lgt;->e()Ljava/util/Map;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Ltp$a;->d(Ltp$a;)J

    move-result-wide v10

    iget-wide v12, v0, Ltp;->E:J

    invoke-static/range {p1 .. p1}, Ltp$a;->c(Ltp$a;)Lgt;

    move-result-object v5

    invoke-virtual {v5}, Lgt;->c()J

    move-result-wide v18

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v19}, Lqp$a;->n(Los;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJ)V

    if-nez p6, :cond_1

    invoke-virtual/range {p0 .. p1}, Ltp;->s(Ltp$a;)V

    iget-object v1, v0, Ltp;->t:[Lwp;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lwp;->z()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Ltp;->D:I

    if-lez v1, :cond_1

    iget-object v1, v0, Ltp;->q:Lfp$a;

    invoke-static {v1}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Lfp$a;

    invoke-interface {v1, v0}, Lyp$a;->c(Lyp;)V

    :cond_1
    return-void
.end method

.method public F(Ltp$a;JJ)V
    .locals 24

    move-object/from16 v0, p0

    iget-wide v1, v0, Ltp;->E:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-object v1, v0, Ltp;->r:Lik;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lik;->isSeekable()Z

    move-result v1

    invoke-virtual/range {p0 .. p0}, Ltp;->u()J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    :goto_0
    iput-wide v2, v0, Ltp;->E:J

    iget-object v4, v0, Ltp;->f:Ltp$c;

    invoke-interface {v4, v2, v3, v1}, Ltp$c;->onSourceInfoRefreshed(JZ)V

    :cond_1
    iget-object v5, v0, Ltp;->d:Lqp$a;

    invoke-static/range {p1 .. p1}, Ltp$a;->b(Ltp$a;)Los;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Ltp$a;->c(Ltp$a;)Lgt;

    move-result-object v1

    invoke-virtual {v1}, Lgt;->d()Landroid/net/Uri;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Ltp$a;->c(Ltp$a;)Lgt;

    move-result-object v1

    invoke-virtual {v1}, Lgt;->e()Ljava/util/Map;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {p1 .. p1}, Ltp$a;->d(Ltp$a;)J

    move-result-wide v14

    iget-wide v1, v0, Ltp;->E:J

    move-wide/from16 v16, v1

    invoke-static/range {p1 .. p1}, Ltp$a;->c(Ltp$a;)Lgt;

    move-result-object v1

    invoke-virtual {v1}, Lgt;->c()J

    move-result-wide v22

    move-wide/from16 v18, p2

    move-wide/from16 v20, p4

    invoke-virtual/range {v5 .. v23}, Lqp$a;->q(Los;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJ)V

    invoke-virtual/range {p0 .. p1}, Ltp;->s(Ltp$a;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Ltp;->K:Z

    iget-object v1, v0, Ltp;->q:Lfp$a;

    invoke-static {v1}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Lfp$a;

    invoke-interface {v1, v0}, Lyp$a;->c(Lyp;)V

    return-void
.end method

.method public G(Ltp$a;JJLjava/io/IOException;I)Ldt$c;
    .locals 25

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Ltp;->s(Ltp$a;)V

    iget-object v1, v0, Ltp;->c:Lct;

    iget v2, v0, Ltp;->z:I

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-interface/range {v1 .. v6}, Lct;->c(IJLjava/io/IOException;I)J

    move-result-wide v1

    const/4 v3, 0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v1, v4

    if-nez v6, :cond_0

    sget-object v1, Ldt;->e:Ldt$c;

    move-object/from16 v6, p1

    goto :goto_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ltp;->t()I

    move-result v4

    iget v5, v0, Ltp;->J:I

    if-le v4, v5, :cond_1

    move-object/from16 v6, p1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    move-object/from16 v6, p1

    :goto_0
    invoke-virtual {v0, v6, v4}, Ltp;->r(Ltp$a;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v5, v1, v2}, Ldt;->f(ZJ)Ldt$c;

    move-result-object v1

    goto :goto_1

    :cond_2
    sget-object v1, Ldt;->d:Ldt$c;

    :goto_1
    iget-object v4, v0, Ltp;->d:Lqp$a;

    invoke-static/range {p1 .. p1}, Ltp$a;->b(Ltp$a;)Los;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Ltp$a;->c(Ltp$a;)Lgt;

    move-result-object v2

    invoke-virtual {v2}, Lgt;->d()Landroid/net/Uri;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Ltp$a;->c(Ltp$a;)Lgt;

    move-result-object v7

    invoke-virtual {v7}, Lgt;->e()Ljava/util/Map;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {p1 .. p1}, Ltp$a;->d(Ltp$a;)J

    move-result-wide v13

    move-wide v15, v13

    iget-wide v12, v0, Ltp;->E:J

    invoke-static/range {p1 .. p1}, Ltp$a;->c(Ltp$a;)Lgt;

    move-result-object v6

    invoke-virtual {v6}, Lgt;->c()J

    move-result-wide v21

    invoke-virtual {v1}, Ldt$c;->c()Z

    move-result v6

    xor-int/lit8 v24, v6, 0x1

    move-object v6, v2

    move-wide/from16 v17, v12

    const/4 v2, 0x0

    move-object v12, v2

    move-wide v13, v15

    move-wide/from16 v15, v17

    move-wide/from16 v17, p2

    move-wide/from16 v19, p4

    move-object/from16 v23, p6

    invoke-virtual/range {v4 .. v24}, Lqp$a;->t(Los;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    return-object v1
.end method

.method public final H(Ltp$f;)Lkk;
    .locals 4

    iget-object v0, p0, Ltp;->t:[Lwp;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Ltp;->u:[Ltp$f;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ltp$f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Ltp;->t:[Lwp;

    aget-object p1, p1, v1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lwp;

    iget-object v2, p0, Ltp;->g:Les;

    invoke-direct {v1, v2}, Lwp;-><init>(Les;)V

    invoke-virtual {v1, p0}, Lwp;->D(Lwp$b;)V

    iget-object v2, p0, Ltp;->u:[Ltp$f;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ltp$f;

    aput-object p1, v2, v0

    invoke-static {v2}, Lnu;->h([Ljava/lang/Object;)[Ljava/lang/Object;

    check-cast v2, [Ltp$f;

    iput-object v2, p0, Ltp;->u:[Ltp$f;

    iget-object p1, p0, Ltp;->t:[Lwp;

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lwp;

    aput-object v1, p1, v0

    invoke-static {p1}, Lnu;->h([Ljava/lang/Object;)[Ljava/lang/Object;

    check-cast p1, [Lwp;

    iput-object p1, p0, Ltp;->t:[Lwp;

    return-object v1
.end method

.method public I(ILwg;Lzi;Z)I
    .locals 9

    invoke-virtual {p0}, Ltp;->N()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Ltp;->B(I)V

    iget-object v0, p0, Ltp;->t:[Lwp;

    aget-object v2, v0, p1

    iget-boolean v6, p0, Ltp;->K:Z

    iget-wide v7, p0, Ltp;->G:J

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v2 .. v8}, Lwp;->v(Lwg;Lzi;ZZJ)I

    move-result p2

    if-ne p2, v1, :cond_1

    invoke-virtual {p0, p1}, Ltp;->C(I)V

    :cond_1
    return p2
.end method

.method public J()V
    .locals 4

    iget-boolean v0, p0, Ltp;->w:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltp;->t:[Lwp;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lwp;->k()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltp;->k:Ldt;

    invoke-virtual {v0, p0}, Ldt;->k(Ldt$f;)V

    iget-object v0, p0, Ltp;->p:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Ltp;->q:Lfp$a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ltp;->L:Z

    iget-object v0, p0, Ltp;->d:Lqp$a;

    invoke-virtual {v0}, Lqp$a;->z()V

    return-void
.end method

.method public final K([ZJ)Z
    .locals 6

    iget-object v0, p0, Ltp;->t:[Lwp;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    iget-object v4, p0, Ltp;->t:[Lwp;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lwp;->B()V

    invoke-virtual {v4, p2, p3, v3, v1}, Lwp;->f(JZZ)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    aget-boolean v3, p1, v2

    if-nez v3, :cond_1

    iget-boolean v3, p0, Ltp;->y:Z

    if-nez v3, :cond_2

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method public L(IJ)I
    .locals 5

    invoke-virtual {p0}, Ltp;->N()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Ltp;->B(I)V

    iget-object v0, p0, Ltp;->t:[Lwp;

    aget-object v0, v0, p1

    iget-boolean v2, p0, Ltp;->K:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lwp;->m()J

    move-result-wide v2

    cmp-long v4, p2, v2

    if-lez v4, :cond_1

    invoke-virtual {v0}, Lwp;->g()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, p2, p3, v2, v2}, Lwp;->f(JZZ)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_2

    goto :goto_0

    :cond_2
    move v1, p2

    :goto_0
    if-nez v1, :cond_3

    invoke-virtual {p0, p1}, Ltp;->C(I)V

    :cond_3
    return v1
.end method

.method public final M()V
    .locals 22

    move-object/from16 v7, p0

    new-instance v8, Ltp$a;

    iget-object v2, v7, Ltp;->a:Landroid/net/Uri;

    iget-object v3, v7, Ltp;->b:Lls;

    iget-object v4, v7, Ltp;->l:Ltp$b;

    iget-object v6, v7, Ltp;->m:Llt;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v6}, Ltp$a;-><init>(Ltp;Landroid/net/Uri;Lls;Ltp$b;Lck;Llt;)V

    iget-boolean v0, v7, Ltp;->w:Z

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Ltp;->v()Ltp$d;

    move-result-object v0

    iget-object v0, v0, Ltp$d;->a:Lik;

    invoke-virtual/range {p0 .. p0}, Ltp;->x()Z

    move-result v1

    invoke-static {v1}, Lit;->f(Z)V

    iget-wide v1, v7, Ltp;->E:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v5, v7, Ltp;->H:J

    cmp-long v9, v5, v1

    if-ltz v9, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, v7, Ltp;->K:Z

    iput-wide v3, v7, Ltp;->H:J

    return-void

    :cond_0
    iget-wide v1, v7, Ltp;->H:J

    invoke-interface {v0, v1, v2}, Lik;->getSeekPoints(J)Lik$a;

    move-result-object v0

    iget-object v0, v0, Lik$a;->a:Ljk;

    iget-wide v0, v0, Ljk;->b:J

    iget-wide v5, v7, Ltp;->H:J

    invoke-static {v8, v0, v1, v5, v6}, Ltp$a;->f(Ltp$a;JJ)V

    iput-wide v3, v7, Ltp;->H:J

    :cond_1
    invoke-virtual/range {p0 .. p0}, Ltp;->t()I

    move-result v0

    iput v0, v7, Ltp;->J:I

    iget-object v0, v7, Ltp;->k:Ldt;

    iget-object v1, v7, Ltp;->c:Lct;

    iget v2, v7, Ltp;->z:I

    invoke-interface {v1, v2}, Lct;->b(I)I

    move-result v1

    invoke-virtual {v0, v8, v7, v1}, Ldt;->l(Ldt$e;Ldt$b;I)J

    move-result-wide v20

    iget-object v9, v7, Ltp;->d:Lqp$a;

    invoke-static {v8}, Ltp$a;->b(Ltp$a;)Los;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v8}, Ltp$a;->d(Ltp$a;)J

    move-result-wide v16

    iget-wide v0, v7, Ltp;->E:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v9 .. v21}, Lqp$a;->w(Los;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJ)V

    return-void
.end method

.method public final N()Z
    .locals 1

    iget-boolean v0, p0, Ltp;->B:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ltp;->x()Z

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

.method public a(JLnh;)J
    .locals 9

    invoke-virtual {p0}, Ltp;->v()Ltp$d;

    move-result-object v0

    iget-object v0, v0, Ltp$d;->a:Lik;

    invoke-interface {v0}, Lik;->isSeekable()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_0
    invoke-interface {v0, p1, p2}, Lik;->getSeekPoints(J)Lik$a;

    move-result-object v0

    iget-object v1, v0, Lik$a;->a:Ljk;

    iget-wide v5, v1, Ljk;->a:J

    iget-object v0, v0, Lik$a;->b:Ljk;

    iget-wide v7, v0, Ljk;->a:J

    move-wide v2, p1

    move-object v4, p3

    invoke-static/range {v2 .. v8}, Lnu;->e0(JLnh;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(Landroidx/media2/exoplayer/external/Format;)V
    .locals 1

    iget-object p1, p0, Ltp;->p:Landroid/os/Handler;

    iget-object v0, p0, Ltp;->n:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic c(Ldt$e;JJLjava/io/IOException;I)Ldt$c;
    .locals 0

    check-cast p1, Ltp$a;

    invoke-virtual/range {p0 .. p7}, Ltp;->G(Ltp$a;JJLjava/io/IOException;I)Ldt$c;

    move-result-object p1

    return-object p1
.end method

.method public continueLoading(J)Z
    .locals 0

    iget-boolean p1, p0, Ltp;->K:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Ltp;->I:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Ltp;->w:Z

    if-eqz p1, :cond_0

    iget p1, p0, Ltp;->D:I

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ltp;->m:Llt;

    invoke-virtual {p1}, Llt;->c()Z

    move-result p1

    iget-object p2, p0, Ltp;->k:Ldt;

    invoke-virtual {p2}, Ldt;->g()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Ltp;->M()V

    const/4 p1, 0x1

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public d(Lfp$a;J)V
    .locals 0

    iput-object p1, p0, Ltp;->q:Lfp$a;

    iget-object p1, p0, Ltp;->m:Llt;

    invoke-virtual {p1}, Llt;->c()Z

    invoke-virtual {p0}, Ltp;->M()V

    return-void
.end method

.method public discardBuffer(JZ)V
    .locals 5

    invoke-virtual {p0}, Ltp;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ltp;->v()Ltp$d;

    move-result-object v0

    iget-object v0, v0, Ltp$d;->d:[Z

    iget-object v1, p0, Ltp;->t:[Lwp;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Ltp;->t:[Lwp;

    aget-object v3, v3, v2

    aget-boolean v4, v0, v2

    invoke-virtual {v3, p1, p2, p3, v4}, Lwp;->j(JZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e(Lik;)V
    .locals 2

    iget-object v0, p0, Ltp;->s:Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lik$b;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p1, v0, v1}, Lik$b;-><init>(J)V

    :goto_0
    iput-object p1, p0, Ltp;->r:Lik;

    iget-object p1, p0, Ltp;->p:Landroid/os/Handler;

    iget-object v0, p0, Ltp;->n:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public endTracks()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Ltp;->v:Z

    iget-object v0, p0, Ltp;->p:Landroid/os/Handler;

    iget-object v1, p0, Ltp;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public f([Lyr;[Z[Lxp;[ZJ)J
    .locals 8

    invoke-virtual {p0}, Ltp;->v()Ltp$d;

    move-result-object v0

    iget-object v1, v0, Ltp$d;->b:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iget-object v0, v0, Ltp$d;->d:[Z

    iget v2, p0, Ltp;->D:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v5, p1

    const/4 v6, 0x1

    if-ge v4, v5, :cond_2

    aget-object v5, p3, v4

    if-eqz v5, :cond_1

    aget-object v5, p1, v4

    if-eqz v5, :cond_0

    aget-boolean v5, p2, v4

    if-nez v5, :cond_1

    :cond_0
    aget-object v5, p3, v4

    check-cast v5, Ltp$e;

    invoke-static {v5}, Ltp$e;->b(Ltp$e;)I

    move-result v5

    aget-boolean v7, v0, v5

    invoke-static {v7}, Lit;->f(Z)V

    iget v7, p0, Ltp;->D:I

    sub-int/2addr v7, v6

    iput v7, p0, Ltp;->D:I

    aput-boolean v3, v0, v5

    const/4 v5, 0x0

    aput-object v5, p3, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-boolean p2, p0, Ltp;->A:Z

    if-eqz p2, :cond_3

    if-nez v2, :cond_4

    goto :goto_1

    :cond_3
    const-wide/16 v4, 0x0

    cmp-long p2, p5, v4

    if-eqz p2, :cond_4

    :goto_1
    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    const/4 v2, 0x0

    :goto_3
    array-length v4, p1

    if-ge v2, v4, :cond_9

    aget-object v4, p3, v2

    if-nez v4, :cond_8

    aget-object v4, p1, v2

    if-eqz v4, :cond_8

    aget-object v4, p1, v2

    invoke-interface {v4}, Lyr;->length()I

    move-result v5

    if-ne v5, v6, :cond_5

    const/4 v5, 0x1

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    :goto_4
    invoke-static {v5}, Lit;->f(Z)V

    invoke-interface {v4, v3}, Lyr;->getIndexInTrackGroup(I)I

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x1

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    :goto_5
    invoke-static {v5}, Lit;->f(Z)V

    invoke-interface {v4}, Lyr;->getTrackGroup()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->b(Landroidx/media2/exoplayer/external/source/TrackGroup;)I

    move-result v4

    aget-boolean v5, v0, v4

    xor-int/2addr v5, v6

    invoke-static {v5}, Lit;->f(Z)V

    iget v5, p0, Ltp;->D:I

    add-int/2addr v5, v6

    iput v5, p0, Ltp;->D:I

    aput-boolean v6, v0, v4

    new-instance v5, Ltp$e;

    invoke-direct {v5, p0, v4}, Ltp$e;-><init>(Ltp;I)V

    aput-object v5, p3, v2

    aput-boolean v6, p4, v2

    if-nez p2, :cond_8

    iget-object p2, p0, Ltp;->t:[Lwp;

    aget-object p2, p2, v4

    invoke-virtual {p2}, Lwp;->B()V

    invoke-virtual {p2, p5, p6, v6, v6}, Lwp;->f(JZZ)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_7

    invoke-virtual {p2}, Lwp;->n()I

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x1

    goto :goto_6

    :cond_7
    const/4 p2, 0x0

    :cond_8
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    iget p1, p0, Ltp;->D:I

    if-nez p1, :cond_c

    iput-boolean v3, p0, Ltp;->I:Z

    iput-boolean v3, p0, Ltp;->B:Z

    iget-object p1, p0, Ltp;->k:Ldt;

    invoke-virtual {p1}, Ldt;->g()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Ltp;->t:[Lwp;

    array-length p2, p1

    :goto_7
    if-ge v3, p2, :cond_a

    aget-object p3, p1, v3

    invoke-virtual {p3}, Lwp;->k()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_a
    iget-object p1, p0, Ltp;->k:Ldt;

    invoke-virtual {p1}, Ldt;->e()V

    goto :goto_a

    :cond_b
    iget-object p1, p0, Ltp;->t:[Lwp;

    array-length p2, p1

    :goto_8
    if-ge v3, p2, :cond_e

    aget-object p3, p1, v3

    invoke-virtual {p3}, Lwp;->z()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_c
    if-eqz p2, :cond_e

    invoke-virtual {p0, p5, p6}, Ltp;->seekToUs(J)J

    move-result-wide p5

    :goto_9
    array-length p1, p3

    if-ge v3, p1, :cond_e

    aget-object p1, p3, v3

    if-eqz p1, :cond_d

    aput-boolean v6, p4, v3

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_e
    :goto_a
    iput-boolean v6, p0, Ltp;->A:Z

    return-wide p5
.end method

.method public getBufferedPositionUs()J
    .locals 11

    invoke-virtual {p0}, Ltp;->v()Ltp$d;

    move-result-object v0

    iget-object v0, v0, Ltp$d;->c:[Z

    iget-boolean v1, p0, Ltp;->K:Z

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz v1, :cond_0

    return-wide v2

    :cond_0
    invoke-virtual {p0}, Ltp;->x()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v0, p0, Ltp;->H:J

    return-wide v0

    :cond_1
    iget-boolean v1, p0, Ltp;->y:Z

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v1, :cond_3

    iget-object v1, p0, Ltp;->t:[Lwp;

    array-length v1, v1

    const/4 v6, 0x0

    move-wide v7, v4

    :goto_0
    if-ge v6, v1, :cond_4

    aget-boolean v9, v0, v6

    if-eqz v9, :cond_2

    iget-object v9, p0, Ltp;->t:[Lwp;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Lwp;->r()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Ltp;->t:[Lwp;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Lwp;->m()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-wide v7, v4

    :cond_4
    cmp-long v0, v7, v4

    if-nez v0, :cond_5

    invoke-virtual {p0}, Ltp;->u()J

    move-result-wide v7

    :cond_5
    cmp-long v0, v7, v2

    if-nez v0, :cond_6

    iget-wide v7, p0, Ltp;->G:J

    :cond_6
    return-wide v7
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    iget v0, p0, Ltp;->D:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ltp;->getBufferedPositionUs()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .locals 1

    invoke-virtual {p0}, Ltp;->v()Ltp$d;

    move-result-object v0

    iget-object v0, v0, Ltp$d;->b:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    return-object v0
.end method

.method public bridge synthetic h(Ldt$e;JJ)V
    .locals 0

    check-cast p1, Ltp$a;

    invoke-virtual/range {p0 .. p5}, Ltp;->F(Ltp$a;JJ)V

    return-void
.end method

.method public bridge synthetic j(Ldt$e;JJZ)V
    .locals 0

    check-cast p1, Ltp$a;

    invoke-virtual/range {p0 .. p6}, Ltp;->E(Ltp$a;JJZ)V

    return-void
.end method

.method public maybeThrowPrepareError()V
    .locals 2

    invoke-virtual {p0}, Ltp;->D()V

    iget-boolean v0, p0, Ltp;->K:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ltp;->w:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lch;

    const-string v1, "Loading finished before preparation is complete."

    invoke-direct {v0, v1}, Lch;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public onLoaderReleased()V
    .locals 4

    iget-object v0, p0, Ltp;->t:[Lwp;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lwp;->z()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltp;->l:Ltp$b;

    invoke-virtual {v0}, Ltp$b;->a()V

    return-void
.end method

.method public final bridge synthetic q()V
    .locals 0

    invoke-virtual {p0}, Ltp;->A()V

    return-void
.end method

.method public final r(Ltp$a;I)Z
    .locals 6

    iget-wide v0, p0, Ltp;->F:J

    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_3

    iget-object v0, p0, Ltp;->r:Lik;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lik;->getDurationUs()J

    move-result-wide v0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean p2, p0, Ltp;->w:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Ltp;->N()Z

    move-result p2

    if-nez p2, :cond_1

    iput-boolean v2, p0, Ltp;->I:Z

    return v0

    :cond_1
    iget-boolean p2, p0, Ltp;->w:Z

    iput-boolean p2, p0, Ltp;->B:Z

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Ltp;->G:J

    iput v0, p0, Ltp;->J:I

    iget-object p2, p0, Ltp;->t:[Lwp;

    array-length v1, p2

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v5, p2, v0

    invoke-virtual {v5}, Lwp;->z()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p1, v3, v4, v3, v4}, Ltp$a;->f(Ltp$a;JJ)V

    return v2

    :cond_3
    :goto_1
    iput p2, p0, Ltp;->J:I

    return v2
.end method

.method public readDiscontinuity()J
    .locals 2

    iget-boolean v0, p0, Ltp;->C:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ltp;->d:Lqp$a;

    invoke-virtual {v0}, Lqp$a;->B()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ltp;->C:Z

    :cond_0
    iget-boolean v0, p0, Ltp;->B:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Ltp;->K:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ltp;->t()I

    move-result v0

    iget v1, p0, Ltp;->J:I

    if-le v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltp;->B:Z

    iget-wide v0, p0, Ltp;->G:J

    return-wide v0

    :cond_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 0

    return-void
.end method

.method public final s(Ltp$a;)V
    .locals 5

    iget-wide v0, p0, Ltp;->F:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {p1}, Ltp$a;->e(Ltp$a;)J

    move-result-wide v0

    iput-wide v0, p0, Ltp;->F:J

    :cond_0
    return-void
.end method

.method public seekToUs(J)J
    .locals 4

    invoke-virtual {p0}, Ltp;->v()Ltp$d;

    move-result-object v0

    iget-object v1, v0, Ltp$d;->a:Lik;

    iget-object v0, v0, Ltp$d;->c:[Z

    invoke-interface {v1}, Lik;->isSeekable()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Ltp;->B:Z

    iput-wide p1, p0, Ltp;->G:J

    invoke-virtual {p0}, Ltp;->x()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-wide p1, p0, Ltp;->H:J

    return-wide p1

    :cond_1
    iget v2, p0, Ltp;->z:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    invoke-virtual {p0, v0, p1, p2}, Ltp;->K([ZJ)Z

    move-result v0

    if-eqz v0, :cond_2

    return-wide p1

    :cond_2
    iput-boolean v1, p0, Ltp;->I:Z

    iput-wide p1, p0, Ltp;->H:J

    iput-boolean v1, p0, Ltp;->K:Z

    iget-object v0, p0, Ltp;->k:Ldt;

    invoke-virtual {v0}, Ldt;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltp;->k:Ldt;

    invoke-virtual {v0}, Ldt;->e()V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Ltp;->t:[Lwp;

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lwp;->z()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-wide p1
.end method

.method public final t()I
    .locals 5

    iget-object v0, p0, Ltp;->t:[Lwp;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lwp;->p()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public track(II)Lkk;
    .locals 1

    new-instance p2, Ltp$f;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Ltp$f;-><init>(IZ)V

    invoke-virtual {p0, p2}, Ltp;->H(Ltp$f;)Lkk;

    move-result-object p1

    return-object p1
.end method

.method public final u()J
    .locals 7

    iget-object v0, p0, Ltp;->t:[Lwp;

    array-length v1, v0

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, v0, v4

    invoke-virtual {v5}, Lwp;->m()J

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public final v()Ltp$d;
    .locals 1

    iget-object v0, p0, Ltp;->x:Ltp$d;

    invoke-static {v0}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ltp$d;

    return-object v0
.end method

.method public w()Lkk;
    .locals 3

    new-instance v0, Ltp$f;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ltp$f;-><init>(IZ)V

    invoke-virtual {p0, v0}, Ltp;->H(Ltp$f;)Lkk;

    move-result-object v0

    return-object v0
.end method

.method public final x()Z
    .locals 5

    iget-wide v0, p0, Ltp;->H:J

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

.method public y(I)Z
    .locals 1

    invoke-virtual {p0}, Ltp;->N()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ltp;->K:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ltp;->t:[Lwp;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lwp;->q()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final synthetic z()V
    .locals 1

    iget-boolean v0, p0, Ltp;->L:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ltp;->q:Lfp$a;

    invoke-static {v0}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lfp$a;

    invoke-interface {v0, p0}, Lyp$a;->c(Lyp;)V

    :cond_0
    return-void
.end method
