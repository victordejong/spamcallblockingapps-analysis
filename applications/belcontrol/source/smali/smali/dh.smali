.class public final Ldh;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final n:Lhp$a;


# instance fields
.field public final a:Lph;

.field public final b:Ljava/lang/Object;

.field public final c:Lhp$a;

.field public final d:J

.field public final e:J

.field public final f:I

.field public final g:Z

.field public final h:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

.field public final i:Lcs;

.field public final j:Lhp$a;

.field public volatile k:J

.field public volatile l:J

.field public volatile m:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lhp$a;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lhp$a;-><init>(Ljava/lang/Object;)V

    sput-object v0, Ldh;->n:Lhp$a;

    return-void
.end method

.method public constructor <init>(Lph;Ljava/lang/Object;Lhp$a;JJIZLandroidx/media2/exoplayer/external/source/TrackGroupArray;Lcs;Lhp$a;JJJ)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Ldh;->a:Lph;

    move-object v1, p2

    iput-object v1, v0, Ldh;->b:Ljava/lang/Object;

    move-object v1, p3

    iput-object v1, v0, Ldh;->c:Lhp$a;

    move-wide v1, p4

    iput-wide v1, v0, Ldh;->d:J

    move-wide v1, p6

    iput-wide v1, v0, Ldh;->e:J

    move v1, p8

    iput v1, v0, Ldh;->f:I

    move v1, p9

    iput-boolean v1, v0, Ldh;->g:Z

    move-object v1, p10

    iput-object v1, v0, Ldh;->h:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-object v1, p11

    iput-object v1, v0, Ldh;->i:Lcs;

    move-object v1, p12

    iput-object v1, v0, Ldh;->j:Lhp$a;

    move-wide/from16 v1, p13

    iput-wide v1, v0, Ldh;->k:J

    move-wide/from16 v1, p15

    iput-wide v1, v0, Ldh;->l:J

    move-wide/from16 v1, p17

    iput-wide v1, v0, Ldh;->m:J

    return-void
.end method

.method public static g(JLcs;)Ldh;
    .locals 20

    move-wide/from16 v4, p0

    move-wide/from16 v13, p0

    move-wide/from16 v17, p0

    move-object/from16 v11, p2

    new-instance v19, Ldh;

    move-object/from16 v0, v19

    sget-object v1, Lph;->a:Lph;

    sget-object v12, Ldh;->n:Lhp$a;

    move-object v3, v12

    sget-object v10, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->d:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    const/4 v2, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v15, 0x0

    invoke-direct/range {v0 .. v18}, Ldh;-><init>(Lph;Ljava/lang/Object;Lhp$a;JJIZLandroidx/media2/exoplayer/external/source/TrackGroupArray;Lcs;Lhp$a;JJJ)V

    return-object v19
.end method


# virtual methods
.method public a(Z)Ldh;
    .locals 22

    move-object/from16 v0, p0

    move/from16 v10, p1

    new-instance v20, Ldh;

    move-object/from16 v1, v20

    iget-object v2, v0, Ldh;->a:Lph;

    iget-object v3, v0, Ldh;->b:Ljava/lang/Object;

    iget-object v4, v0, Ldh;->c:Lhp$a;

    iget-wide v5, v0, Ldh;->d:J

    iget-wide v7, v0, Ldh;->e:J

    iget v9, v0, Ldh;->f:I

    iget-object v11, v0, Ldh;->h:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iget-object v12, v0, Ldh;->i:Lcs;

    iget-object v13, v0, Ldh;->j:Lhp$a;

    iget-wide v14, v0, Ldh;->k:J

    move-object/from16 p1, v1

    move-object/from16 v21, v2

    iget-wide v1, v0, Ldh;->l:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Ldh;->m:J

    move-wide/from16 v18, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct/range {v1 .. v19}, Ldh;-><init>(Lph;Ljava/lang/Object;Lhp$a;JJIZLandroidx/media2/exoplayer/external/source/TrackGroupArray;Lcs;Lhp$a;JJJ)V

    return-object v20
.end method

.method public b(Lhp$a;)Ldh;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    new-instance v20, Ldh;

    move-object/from16 v1, v20

    iget-object v2, v0, Ldh;->a:Lph;

    iget-object v3, v0, Ldh;->b:Ljava/lang/Object;

    iget-object v4, v0, Ldh;->c:Lhp$a;

    iget-wide v5, v0, Ldh;->d:J

    iget-wide v7, v0, Ldh;->e:J

    iget v9, v0, Ldh;->f:I

    iget-boolean v10, v0, Ldh;->g:Z

    iget-object v11, v0, Ldh;->h:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iget-object v12, v0, Ldh;->i:Lcs;

    iget-wide v14, v0, Ldh;->k:J

    move-object/from16 p1, v1

    move-object/from16 v21, v2

    iget-wide v1, v0, Ldh;->l:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Ldh;->m:J

    move-wide/from16 v18, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct/range {v1 .. v19}, Ldh;-><init>(Lph;Ljava/lang/Object;Lhp$a;JJIZLandroidx/media2/exoplayer/external/source/TrackGroupArray;Lcs;Lhp$a;JJJ)V

    return-object v20
.end method

.method public c(Lhp$a;JJJ)Ldh;
    .locals 21

    move-object/from16 v0, p0

    new-instance v20, Ldh;

    iget-object v2, v0, Ldh;->a:Lph;

    iget-object v3, v0, Ldh;->b:Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lhp$a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    move-wide/from16 v7, p4

    goto :goto_0

    :cond_0
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v7, v4

    :goto_0
    iget v9, v0, Ldh;->f:I

    iget-boolean v10, v0, Ldh;->g:Z

    iget-object v11, v0, Ldh;->h:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iget-object v12, v0, Ldh;->i:Lcs;

    iget-object v13, v0, Ldh;->j:Lhp$a;

    iget-wide v14, v0, Ldh;->k:J

    move-object/from16 v1, v20

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move-wide/from16 v16, p6

    move-wide/from16 v18, p2

    invoke-direct/range {v1 .. v19}, Ldh;-><init>(Lph;Ljava/lang/Object;Lhp$a;JJIZLandroidx/media2/exoplayer/external/source/TrackGroupArray;Lcs;Lhp$a;JJJ)V

    return-object v20
.end method

.method public d(I)Ldh;
    .locals 22

    move-object/from16 v0, p0

    move/from16 v9, p1

    new-instance v20, Ldh;

    move-object/from16 v1, v20

    iget-object v2, v0, Ldh;->a:Lph;

    iget-object v3, v0, Ldh;->b:Ljava/lang/Object;

    iget-object v4, v0, Ldh;->c:Lhp$a;

    iget-wide v5, v0, Ldh;->d:J

    iget-wide v7, v0, Ldh;->e:J

    iget-boolean v10, v0, Ldh;->g:Z

    iget-object v11, v0, Ldh;->h:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iget-object v12, v0, Ldh;->i:Lcs;

    iget-object v13, v0, Ldh;->j:Lhp$a;

    iget-wide v14, v0, Ldh;->k:J

    move-object/from16 p1, v1

    move-object/from16 v21, v2

    iget-wide v1, v0, Ldh;->l:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Ldh;->m:J

    move-wide/from16 v18, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct/range {v1 .. v19}, Ldh;-><init>(Lph;Ljava/lang/Object;Lhp$a;JJIZLandroidx/media2/exoplayer/external/source/TrackGroupArray;Lcs;Lhp$a;JJJ)V

    return-object v20
.end method

.method public e(Lph;Ljava/lang/Object;)Ldh;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    new-instance v20, Ldh;

    move-object/from16 v1, v20

    iget-object v4, v0, Ldh;->c:Lhp$a;

    iget-wide v5, v0, Ldh;->d:J

    iget-wide v7, v0, Ldh;->e:J

    iget v9, v0, Ldh;->f:I

    iget-boolean v10, v0, Ldh;->g:Z

    iget-object v11, v0, Ldh;->h:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iget-object v12, v0, Ldh;->i:Lcs;

    iget-object v13, v0, Ldh;->j:Lhp$a;

    iget-wide v14, v0, Ldh;->k:J

    move-object/from16 p2, v1

    iget-wide v1, v0, Ldh;->l:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Ldh;->m:J

    move-wide/from16 v18, v1

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    invoke-direct/range {v1 .. v19}, Ldh;-><init>(Lph;Ljava/lang/Object;Lhp$a;JJIZLandroidx/media2/exoplayer/external/source/TrackGroupArray;Lcs;Lhp$a;JJJ)V

    return-object v20
.end method

.method public f(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Lcs;)Ldh;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    new-instance v20, Ldh;

    move-object/from16 v1, v20

    iget-object v2, v0, Ldh;->a:Lph;

    iget-object v3, v0, Ldh;->b:Ljava/lang/Object;

    iget-object v4, v0, Ldh;->c:Lhp$a;

    iget-wide v5, v0, Ldh;->d:J

    iget-wide v7, v0, Ldh;->e:J

    iget v9, v0, Ldh;->f:I

    iget-boolean v10, v0, Ldh;->g:Z

    iget-object v13, v0, Ldh;->j:Lhp$a;

    iget-wide v14, v0, Ldh;->k:J

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    iget-wide v1, v0, Ldh;->l:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Ldh;->m:J

    move-wide/from16 v18, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v19}, Ldh;-><init>(Lph;Ljava/lang/Object;Lhp$a;JJIZLandroidx/media2/exoplayer/external/source/TrackGroupArray;Lcs;Lhp$a;JJJ)V

    return-object v20
.end method

.method public h(ZLph$c;)Lhp$a;
    .locals 1

    iget-object v0, p0, Ldh;->a:Lph;

    invoke-virtual {v0}, Lph;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Ldh;->n:Lhp$a;

    return-object p1

    :cond_0
    iget-object v0, p0, Ldh;->a:Lph;

    invoke-virtual {v0, p1}, Lph;->a(Z)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lph;->m(ILph$c;)Lph$c;

    move-result-object p1

    iget p1, p1, Lph$c;->f:I

    new-instance p2, Lhp$a;

    iget-object v0, p0, Ldh;->a:Lph;

    invoke-virtual {v0, p1}, Lph;->l(I)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, p1}, Lhp$a;-><init>(Ljava/lang/Object;)V

    return-object p2
.end method
