.class public Lml;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lak;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lml$b;,
        Lml$a;
    }
.end annotation


# static fields
.field public static final J:[B

.field public static final K:Landroidx/media2/exoplayer/external/Format;


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:Z

.field public E:Z

.field public F:Lck;

.field public G:[Lkk;

.field public H:[Lkk;

.field public I:Z

.field public final a:I

.field public final b:Lsl;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroidx/media2/exoplayer/external/drm/DrmInitData;

.field public final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lml$b;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lyt;

.field public final g:Lyt;

.field public final h:Lyt;

.field public final i:[B

.field public final j:Lyt;

.field public final k:Lju;

.field public final l:Lyt;

.field public final m:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lhl$a;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lml$a;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Lkk;

.field public p:I

.field public q:I

.field public r:J

.field public s:I

.field public t:Lyt;

.field public u:J

.field public v:I

.field public w:J

.field public x:J

.field public y:J

.field public z:Lml$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    sget-object v0, Lll;->a:Ldk;

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lml;->J:[B

    const/4 v0, 0x0

    const-string v1, "application/x-emsg"

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/Format;->p(Ljava/lang/String;Ljava/lang/String;J)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    sput-object v0, Lml;->K:Landroidx/media2/exoplayer/external/Format;

    return-void

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lml;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lml;-><init>(ILju;)V

    return-void
.end method

.method public constructor <init>(ILju;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lml;-><init>(ILju;Lsl;Landroidx/media2/exoplayer/external/drm/DrmInitData;)V

    return-void
.end method

.method public constructor <init>(ILju;Lsl;Landroidx/media2/exoplayer/external/drm/DrmInitData;)V
    .locals 6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lml;-><init>(ILju;Lsl;Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILju;Lsl;Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lju;",
            "Lsl;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lml;-><init>(ILju;Lsl;Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;Lkk;)V

    return-void
.end method

.method public constructor <init>(ILju;Lsl;Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;Lkk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lju;",
            "Lsl;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;",
            "Lkk;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/2addr p1, v0

    iput p1, p0, Lml;->a:I

    iput-object p2, p0, Lml;->k:Lju;

    iput-object p3, p0, Lml;->b:Lsl;

    iput-object p4, p0, Lml;->d:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lml;->c:Ljava/util/List;

    iput-object p6, p0, Lml;->o:Lkk;

    new-instance p1, Lyt;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lyt;-><init>(I)V

    iput-object p1, p0, Lml;->l:Lyt;

    new-instance p1, Lyt;

    sget-object p3, Lwt;->a:[B

    invoke-direct {p1, p3}, Lyt;-><init>([B)V

    iput-object p1, p0, Lml;->f:Lyt;

    new-instance p1, Lyt;

    const/4 p3, 0x5

    invoke-direct {p1, p3}, Lyt;-><init>(I)V

    iput-object p1, p0, Lml;->g:Lyt;

    new-instance p1, Lyt;

    invoke-direct {p1}, Lyt;-><init>()V

    iput-object p1, p0, Lml;->h:Lyt;

    new-array p1, p2, [B

    iput-object p1, p0, Lml;->i:[B

    new-instance p2, Lyt;

    invoke-direct {p2, p1}, Lyt;-><init>([B)V

    iput-object p2, p0, Lml;->j:Lyt;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lml;->m:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lml;->n:Ljava/util/ArrayDeque;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lml;->e:Landroid/util/SparseArray;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lml;->x:J

    iput-wide p1, p0, Lml;->w:J

    iput-wide p1, p0, Lml;->y:J

    invoke-virtual {p0}, Lml;->d()V

    return-void
.end method

.method public static A(Lyt;Landroid/util/SparseArray;)Lml$b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyt;",
            "Landroid/util/SparseArray<",
            "Lml$b;",
            ">;)",
            "Lml$b;"
        }
    .end annotation

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lyt;->J(I)V

    invoke-virtual {p0}, Lyt;->h()I

    move-result v0

    invoke-static {v0}, Lhl;->b(I)I

    move-result v0

    invoke-virtual {p0}, Lyt;->h()I

    move-result v1

    invoke-static {p1, v1}, Lml;->h(Landroid/util/SparseArray;I)Lml$b;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lyt;->B()J

    move-result-wide v1

    iget-object v3, p1, Lml$b;->b:Lul;

    iput-wide v1, v3, Lul;->c:J

    iput-wide v1, v3, Lul;->d:J

    :cond_1
    iget-object v1, p1, Lml$b;->d:Ljl;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lyt;->A()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    iget v2, v1, Ljl;->a:I

    :goto_0
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lyt;->A()I

    move-result v3

    goto :goto_1

    :cond_3
    iget v3, v1, Ljl;->b:I

    :goto_1
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lyt;->A()I

    move-result v4

    goto :goto_2

    :cond_4
    iget v4, v1, Ljl;->c:I

    :goto_2
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lyt;->A()I

    move-result p0

    goto :goto_3

    :cond_5
    iget p0, v1, Ljl;->d:I

    :goto_3
    iget-object v0, p1, Lml$b;->b:Lul;

    new-instance v1, Ljl;

    invoke-direct {v1, v2, v3, v4, p0}, Ljl;-><init>(IIII)V

    iput-object v1, v0, Lul;->a:Ljl;

    return-object p1
.end method

.method public static B(Lhl$a;Landroid/util/SparseArray;I[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhl$a;",
            "Landroid/util/SparseArray<",
            "Lml$b;",
            ">;I[B)V"
        }
    .end annotation

    const v0, 0x74666864

    invoke-virtual {p0, v0}, Lhl$a;->g(I)Lhl$b;

    move-result-object v0

    iget-object v0, v0, Lhl$b;->b:Lyt;

    invoke-static {v0, p1}, Lml;->A(Lyt;Landroid/util/SparseArray;)Lml$b;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lml$b;->b:Lul;

    iget-wide v1, v0, Lul;->s:J

    invoke-virtual {p1}, Lml$b;->g()V

    const v3, 0x74666474

    invoke-virtual {p0, v3}, Lhl$a;->g(I)Lhl$b;

    move-result-object v4

    if-eqz v4, :cond_1

    and-int/lit8 v4, p2, 0x2

    if-nez v4, :cond_1

    invoke-virtual {p0, v3}, Lhl$a;->g(I)Lhl$b;

    move-result-object v1

    iget-object v1, v1, Lhl$b;->b:Lyt;

    invoke-static {v1}, Lml;->z(Lyt;)J

    move-result-wide v1

    :cond_1
    invoke-static {p0, p1, v1, v2, p2}, Lml;->E(Lhl$a;Lml$b;JI)V

    iget-object p1, p1, Lml$b;->c:Lsl;

    iget-object p2, v0, Lul;->a:Ljl;

    iget p2, p2, Ljl;->a:I

    invoke-virtual {p1, p2}, Lsl;->a(I)Ltl;

    move-result-object p1

    const p2, 0x7361697a

    invoke-virtual {p0, p2}, Lhl$a;->g(I)Lhl$b;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p2, Lhl$b;->b:Lyt;

    invoke-static {p1, p2, v0}, Lml;->u(Ltl;Lyt;Lul;)V

    :cond_2
    const p2, 0x7361696f

    invoke-virtual {p0, p2}, Lhl$a;->g(I)Lhl$b;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p2, Lhl$b;->b:Lyt;

    invoke-static {p2, v0}, Lml;->t(Lyt;Lul;)V

    :cond_3
    const p2, 0x73656e63

    invoke-virtual {p0, p2}, Lhl$a;->g(I)Lhl$b;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p2, Lhl$b;->b:Lyt;

    invoke-static {p2, v0}, Lml;->w(Lyt;Lul;)V

    :cond_4
    const p2, 0x73626770

    invoke-virtual {p0, p2}, Lhl$a;->g(I)Lhl$b;

    move-result-object p2

    const v1, 0x73677064

    invoke-virtual {p0, v1}, Lhl$a;->g(I)Lhl$b;

    move-result-object v1

    if-eqz p2, :cond_6

    if-eqz v1, :cond_6

    iget-object p2, p2, Lhl$b;->b:Lyt;

    iget-object v1, v1, Lhl$b;->b:Lyt;

    if-eqz p1, :cond_5

    iget-object p1, p1, Ltl;->b:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    invoke-static {p2, v1, p1, v0}, Lml;->x(Lyt;Lyt;Ljava/lang/String;Lul;)V

    :cond_6
    iget-object p1, p0, Lhl$a;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p1, :cond_8

    iget-object v1, p0, Lhl$a;->c:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhl$b;

    iget v2, v1, Lhl;->a:I

    const v3, 0x75756964

    if-ne v2, v3, :cond_7

    iget-object v1, v1, Lhl$b;->b:Lyt;

    invoke-static {v1, v0, p3}, Lml;->F(Lyt;Lul;[B)V

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method

.method public static C(Lyt;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyt;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljl;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lyt;->J(I)V

    invoke-virtual {p0}, Lyt;->h()I

    move-result v0

    invoke-virtual {p0}, Lyt;->A()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Lyt;->A()I

    move-result v2

    invoke-virtual {p0}, Lyt;->A()I

    move-result v3

    invoke-virtual {p0}, Lyt;->h()I

    move-result p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v4, Ljl;

    invoke-direct {v4, v1, v2, v3, p0}, Ljl;-><init>(IIII)V

    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static D(Lml$b;IJILyt;I)I
    .locals 31

    move-object/from16 v0, p0

    const/16 v1, 0x8

    move-object/from16 v2, p5

    invoke-virtual {v2, v1}, Lyt;->J(I)V

    invoke-virtual/range {p5 .. p5}, Lyt;->h()I

    move-result v1

    invoke-static {v1}, Lhl;->b(I)I

    move-result v1

    iget-object v3, v0, Lml$b;->c:Lsl;

    iget-object v0, v0, Lml$b;->b:Lul;

    iget-object v4, v0, Lul;->a:Ljl;

    iget-object v5, v0, Lul;->h:[I

    invoke-virtual/range {p5 .. p5}, Lyt;->A()I

    move-result v6

    aput v6, v5, p1

    iget-object v5, v0, Lul;->g:[J

    iget-wide v6, v0, Lul;->c:J

    aput-wide v6, v5, p1

    and-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_0

    aget-wide v6, v5, p1

    invoke-virtual/range {p5 .. p5}, Lyt;->h()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    aput-wide v6, v5, p1

    :cond_0
    and-int/lit8 v5, v1, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    iget v8, v4, Ljl;->d:I

    if-eqz v5, :cond_2

    invoke-virtual/range {p5 .. p5}, Lyt;->A()I

    move-result v8

    :cond_2
    and-int/lit16 v9, v1, 0x100

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    and-int/lit16 v10, v1, 0x200

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    :goto_2
    and-int/lit16 v11, v1, 0x400

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    goto :goto_3

    :cond_5
    const/4 v11, 0x0

    :goto_3
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    iget-object v12, v3, Lsl;->h:[J

    const-wide/16 v13, 0x0

    if-eqz v12, :cond_7

    array-length v15, v12

    if-ne v15, v7, :cond_7

    aget-wide v15, v12, v6

    cmp-long v12, v15, v13

    if-nez v12, :cond_7

    iget-object v12, v3, Lsl;->i:[J

    aget-wide v13, v12, v6

    const-wide/16 v15, 0x3e8

    iget-wide v6, v3, Lsl;->c:J

    move-wide/from16 v17, v6

    invoke-static/range {v13 .. v18}, Lnu;->f0(JJJ)J

    move-result-wide v13

    :cond_7
    iget-object v6, v0, Lul;->i:[I

    iget-object v7, v0, Lul;->j:[I

    iget-object v15, v0, Lul;->k:[J

    iget-object v12, v0, Lul;->l:[Z

    iget v2, v3, Lsl;->b:I

    move/from16 v17, v8

    const/4 v8, 0x2

    if-ne v2, v8, :cond_8

    const/4 v2, 0x1

    and-int/lit8 v8, p4, 0x1

    if-eqz v8, :cond_8

    const/16 v16, 0x1

    goto :goto_5

    :cond_8
    const/16 v16, 0x0

    :goto_5
    iget-object v8, v0, Lul;->h:[I

    aget v8, v8, p1

    add-int v8, p6, v8

    iget-wide v2, v3, Lsl;->c:J

    move-wide/from16 v24, v13

    move-object v14, v12

    if-lez p1, :cond_9

    iget-wide v12, v0, Lul;->s:J

    goto :goto_6

    :cond_9
    move-wide/from16 v12, p2

    :goto_6
    move-wide/from16 p1, v12

    move/from16 v12, p6

    :goto_7
    if-ge v12, v8, :cond_11

    if-eqz v9, :cond_a

    invoke-virtual/range {p5 .. p5}, Lyt;->A()I

    move-result v13

    goto :goto_8

    :cond_a
    iget v13, v4, Ljl;->b:I

    :goto_8
    if-eqz v10, :cond_b

    invoke-virtual/range {p5 .. p5}, Lyt;->A()I

    move-result v18

    move/from16 v26, v9

    move/from16 v9, v18

    goto :goto_9

    :cond_b
    move/from16 v26, v9

    iget v9, v4, Ljl;->c:I

    :goto_9
    if-nez v12, :cond_c

    if-eqz v5, :cond_c

    move/from16 v27, v5

    move/from16 v5, v17

    goto :goto_a

    :cond_c
    if-eqz v11, :cond_d

    invoke-virtual/range {p5 .. p5}, Lyt;->h()I

    move-result v18

    move/from16 v27, v5

    move/from16 v5, v18

    goto :goto_a

    :cond_d
    move/from16 v27, v5

    iget v5, v4, Ljl;->d:I

    :goto_a
    move/from16 v28, v1

    if-eqz v1, :cond_e

    invoke-virtual/range {p5 .. p5}, Lyt;->h()I

    move-result v1

    move/from16 v29, v10

    move/from16 v30, v11

    int-to-long v10, v1

    const-wide/16 v18, 0x3e8

    mul-long v10, v10, v18

    div-long/2addr v10, v2

    long-to-int v1, v10

    aput v1, v7, v12

    const/4 v1, 0x0

    goto :goto_b

    :cond_e
    move/from16 v29, v10

    move/from16 v30, v11

    const/4 v1, 0x0

    aput v1, v7, v12

    :goto_b
    const-wide/16 v20, 0x3e8

    move-wide/from16 v18, p1

    move-wide/from16 v22, v2

    invoke-static/range {v18 .. v23}, Lnu;->f0(JJJ)J

    move-result-wide v10

    sub-long v10, v10, v24

    aput-wide v10, v15, v12

    aput v9, v6, v12

    shr-int/lit8 v5, v5, 0x10

    const/4 v9, 0x1

    and-int/2addr v5, v9

    if-nez v5, :cond_10

    if-eqz v16, :cond_f

    if-nez v12, :cond_10

    :cond_f
    const/4 v5, 0x1

    goto :goto_c

    :cond_10
    const/4 v5, 0x0

    :goto_c
    aput-boolean v5, v14, v12

    int-to-long v10, v13

    move-wide/from16 v18, v2

    move-wide/from16 v1, p1

    add-long/2addr v1, v10

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 p1, v1

    move-wide/from16 v2, v18

    move/from16 v9, v26

    move/from16 v5, v27

    move/from16 v1, v28

    move/from16 v10, v29

    move/from16 v11, v30

    goto/16 :goto_7

    :cond_11
    move-wide/from16 v1, p1

    iput-wide v1, v0, Lul;->s:J

    return v8
.end method

.method public static E(Lhl$a;Lml$b;JI)V
    .locals 13

    move-object v7, p1

    move-object v0, p0

    iget-object v8, v0, Lhl$a;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const v10, 0x7472756e

    if-ge v1, v9, :cond_1

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhl$b;

    iget v5, v4, Lhl;->a:I

    if-ne v5, v10, :cond_0

    iget-object v4, v4, Lhl$b;->b:Lyt;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Lyt;->J(I)V

    invoke-virtual {v4}, Lyt;->A()I

    move-result v4

    if-lez v4, :cond_0

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput v0, v7, Lml$b;->g:I

    iput v0, v7, Lml$b;->f:I

    iput v0, v7, Lml$b;->e:I

    iget-object v1, v7, Lml$b;->b:Lul;

    invoke-virtual {v1, v2, v3}, Lul;->e(II)V

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v9, :cond_3

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhl$b;

    iget v2, v0, Lhl;->a:I

    if-ne v2, v10, :cond_2

    add-int/lit8 v12, v1, 0x1

    iget-object v5, v0, Lhl$b;->b:Lyt;

    move-object v0, p1

    move-wide v2, p2

    move/from16 v4, p4

    invoke-static/range {v0 .. v6}, Lml;->D(Lml$b;IJILyt;I)I

    move-result v6

    move v1, v12

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static F(Lyt;Lul;[B)V
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lyt;->J(I)V

    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-virtual {p0, p2, v0, v1}, Lyt;->f([BII)V

    sget-object v0, Lml;->J:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p0, v1, p1}, Lml;->v(Lyt;ILul;)V

    return-void
.end method

.method public static L(I)Z
    .locals 1

    const v0, 0x6d6f6f76

    if-eq p0, v0, :cond_1

    const v0, 0x7472616b

    if-eq p0, v0, :cond_1

    const v0, 0x6d646961

    if-eq p0, v0, :cond_1

    const v0, 0x6d696e66

    if-eq p0, v0, :cond_1

    const v0, 0x7374626c

    if-eq p0, v0, :cond_1

    const v0, 0x6d6f6f66

    if-eq p0, v0, :cond_1

    const v0, 0x74726166

    if-eq p0, v0, :cond_1

    const v0, 0x6d766578

    if-eq p0, v0, :cond_1

    const v0, 0x65647473

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static M(I)Z
    .locals 1

    const v0, 0x68646c72    # 4.3148E24f

    if-eq p0, v0, :cond_1

    const v0, 0x6d646864

    if-eq p0, v0, :cond_1

    const v0, 0x6d766864

    if-eq p0, v0, :cond_1

    const v0, 0x73696478

    if-eq p0, v0, :cond_1

    const v0, 0x73747364

    if-eq p0, v0, :cond_1

    const v0, 0x74666474

    if-eq p0, v0, :cond_1

    const v0, 0x74666864

    if-eq p0, v0, :cond_1

    const v0, 0x746b6864

    if-eq p0, v0, :cond_1

    const v0, 0x74726578

    if-eq p0, v0, :cond_1

    const v0, 0x7472756e

    if-eq p0, v0, :cond_1

    const v0, 0x70737368    # 3.013775E29f

    if-eq p0, v0, :cond_1

    const v0, 0x7361697a

    if-eq p0, v0, :cond_1

    const v0, 0x7361696f

    if-eq p0, v0, :cond_1

    const v0, 0x73656e63

    if-eq p0, v0, :cond_1

    const v0, 0x75756964

    if-eq p0, v0, :cond_1

    const v0, 0x73626770

    if-eq p0, v0, :cond_1

    const v0, 0x73677064

    if-eq p0, v0, :cond_1

    const v0, 0x656c7374

    if-eq p0, v0, :cond_1

    const v0, 0x6d656864

    if-eq p0, v0, :cond_1

    const v0, 0x656d7367

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static f(Ljava/util/List;)Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lhl$b;",
            ">;)",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhl$b;

    iget v5, v4, Lhl;->a:I

    const v6, 0x70737368    # 3.013775E29f

    if-ne v5, v6, :cond_2

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iget-object v4, v4, Lhl$b;->b:Lyt;

    iget-object v4, v4, Lyt;->a:[B

    invoke-static {v4}, Lql;->d([B)Ljava/util/UUID;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v4, "FragmentedMp4Extractor"

    const-string v5, "Skipped pssh atom (failed to extract uuid)"

    invoke-static {v4, v5}, Lst;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v6, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    const-string v7, "video/mp4"

    invoke-direct {v6, v5, v7, v4}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    new-instance v1, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-direct {v1, v3}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>(Ljava/util/List;)V

    :goto_2
    return-object v1
.end method

.method public static g(Landroid/util/SparseArray;)Lml$b;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lml$b;",
            ">;)",
            "Lml$b;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lml$b;

    iget v6, v5, Lml$b;->g:I

    iget-object v7, v5, Lml$b;->b:Lul;

    iget v8, v7, Lul;->e:I

    if-ne v6, v8, :cond_0

    goto :goto_1

    :cond_0
    iget-object v7, v7, Lul;->g:[J

    aget-wide v6, v7, v6

    cmp-long v8, v6, v2

    if-gez v8, :cond_1

    move-object v1, v5

    move-wide v2, v6

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static h(Landroid/util/SparseArray;I)Lml$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lml$b;",
            ">;I)",
            "Lml$b;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, Lml$b;

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0
.end method

.method public static final synthetic i()[Lak;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lak;

    new-instance v1, Lml;

    invoke-direct {v1}, Lml;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static r(Lyt;)J
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lyt;->J(I)V

    invoke-virtual {p0}, Lyt;->h()I

    move-result v0

    invoke-static {v0}, Lhl;->c(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lyt;->y()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lyt;->B()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static s(Lhl$a;Landroid/util/SparseArray;I[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhl$a;",
            "Landroid/util/SparseArray<",
            "Lml$b;",
            ">;I[B)V"
        }
    .end annotation

    iget-object v0, p0, Lhl$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lhl$a;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhl$a;

    iget v3, v2, Lhl;->a:I

    const v4, 0x74726166

    if-ne v3, v4, :cond_0

    invoke-static {v2, p1, p2, p3}, Lml;->B(Lhl$a;Landroid/util/SparseArray;I[B)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static t(Lyt;Lul;)V
    .locals 5

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lyt;->J(I)V

    invoke-virtual {p0}, Lyt;->h()I

    move-result v1

    invoke-static {v1}, Lhl;->b(I)I

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v0}, Lyt;->K(I)V

    :cond_0
    invoke-virtual {p0}, Lyt;->A()I

    move-result v0

    if-ne v0, v3, :cond_2

    invoke-static {v1}, Lhl;->c(I)I

    move-result v0

    iget-wide v1, p1, Lul;->d:J

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lyt;->y()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lyt;->B()J

    move-result-wide v3

    :goto_0
    add-long/2addr v1, v3

    iput-wide v1, p1, Lul;->d:J

    return-void

    :cond_2
    new-instance p0, Lch;

    const/16 p1, 0x28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Unexpected saio entry count: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lch;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static u(Ltl;Lyt;Lul;)V
    .locals 7

    iget p0, p0, Ltl;->d:I

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lyt;->J(I)V

    invoke-virtual {p1}, Lyt;->h()I

    move-result v1

    invoke-static {v1}, Lhl;->b(I)I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Lyt;->K(I)V

    :cond_0
    invoke-virtual {p1}, Lyt;->w()I

    move-result v0

    invoke-virtual {p1}, Lyt;->A()I

    move-result v1

    iget v3, p2, Lul;->f:I

    if-ne v1, v3, :cond_5

    const/4 v3, 0x0

    if-nez v0, :cond_2

    iget-object v0, p2, Lul;->n:[Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    invoke-virtual {p1}, Lyt;->w()I

    move-result v6

    add-int/2addr v5, v6

    if-le v6, p0, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    aput-boolean v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-le v0, p0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    mul-int v0, v0, v1

    add-int/lit8 v5, v0, 0x0

    iget-object p0, p2, Lul;->n:[Z

    invoke-static {p0, v3, v1, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    :cond_4
    invoke-virtual {p2, v5}, Lul;->d(I)V

    return-void

    :cond_5
    new-instance p0, Lch;

    iget p1, p2, Lul;->f:I

    const/16 p2, 0x29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Length mismatch: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lch;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static v(Lyt;ILul;)V
    .locals 3

    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lyt;->J(I)V

    invoke-virtual {p0}, Lyt;->h()I

    move-result p1

    invoke-static {p1}, Lhl;->b(I)I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_2

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lyt;->A()I

    move-result v1

    iget v2, p2, Lul;->f:I

    if-ne v1, v2, :cond_1

    iget-object v2, p2, Lul;->n:[Z

    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    invoke-virtual {p0}, Lyt;->a()I

    move-result p1

    invoke-virtual {p2, p1}, Lul;->d(I)V

    invoke-virtual {p2, p0}, Lul;->b(Lyt;)V

    return-void

    :cond_1
    new-instance p0, Lch;

    iget p1, p2, Lul;->f:I

    const/16 p2, 0x29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Length mismatch: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lch;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lch;

    const-string p1, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-direct {p0, p1}, Lch;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static w(Lyt;Lul;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lml;->v(Lyt;ILul;)V

    return-void
.end method

.method public static x(Lyt;Lyt;Ljava/lang/String;Lul;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lyt;->J(I)V

    invoke-virtual/range {p0 .. p0}, Lyt;->h()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lyt;->h()I

    move-result v5

    const v6, 0x73656967

    if-eq v5, v6, :cond_0

    return-void

    :cond_0
    invoke-static {v4}, Lhl;->c(I)I

    move-result v4

    const/4 v5, 0x4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_1

    invoke-virtual {v0, v5}, Lyt;->K(I)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lyt;->h()I

    move-result v0

    if-ne v0, v7, :cond_a

    invoke-virtual {v1, v3}, Lyt;->J(I)V

    invoke-virtual/range {p1 .. p1}, Lyt;->h()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lyt;->h()I

    move-result v3

    if-eq v3, v6, :cond_2

    return-void

    :cond_2
    invoke-static {v0}, Lhl;->c(I)I

    move-result v0

    if-ne v0, v7, :cond_4

    invoke-virtual/range {p1 .. p1}, Lyt;->y()J

    move-result-wide v3

    const-wide/16 v8, 0x0

    cmp-long v0, v3, v8

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Lch;

    const-string v1, "Variable length description in sgpd found (unsupported)"

    invoke-direct {v0, v1}, Lch;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v3, 0x2

    if-lt v0, v3, :cond_5

    invoke-virtual {v1, v5}, Lyt;->K(I)V

    :cond_5
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lyt;->y()J

    move-result-wide v3

    const-wide/16 v8, 0x1

    cmp-long v0, v3, v8

    if-nez v0, :cond_9

    invoke-virtual {v1, v7}, Lyt;->K(I)V

    invoke-virtual/range {p1 .. p1}, Lyt;->w()I

    move-result v0

    and-int/lit16 v3, v0, 0xf0

    shr-int/lit8 v13, v3, 0x4

    and-int/lit8 v14, v0, 0xf

    invoke-virtual/range {p1 .. p1}, Lyt;->w()I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v7, :cond_6

    const/4 v9, 0x1

    goto :goto_1

    :cond_6
    const/4 v9, 0x0

    :goto_1
    if-nez v9, :cond_7

    return-void

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lyt;->w()I

    move-result v11

    const/16 v0, 0x10

    new-array v12, v0, [B

    invoke-virtual {v1, v12, v3, v0}, Lyt;->f([BII)V

    const/4 v0, 0x0

    if-nez v11, :cond_8

    invoke-virtual/range {p1 .. p1}, Lyt;->w()I

    move-result v0

    new-array v4, v0, [B

    invoke-virtual {v1, v4, v3, v0}, Lyt;->f([BII)V

    move-object v15, v4

    goto :goto_2

    :cond_8
    move-object v15, v0

    :goto_2
    iput-boolean v7, v2, Lul;->m:Z

    new-instance v0, Ltl;

    move-object v8, v0

    move-object/from16 v10, p2

    invoke-direct/range {v8 .. v15}, Ltl;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v0, v2, Lul;->o:Ltl;

    return-void

    :cond_9
    new-instance v0, Lch;

    const-string v1, "Entry count in sgpd != 1 (unsupported)."

    invoke-direct {v0, v1}, Lch;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lch;

    const-string v1, "Entry count in sbgp != 1 (unsupported)."

    invoke-direct {v0, v1}, Lch;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static y(Lyt;J)Landroid/util/Pair;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyt;",
            "J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Lvj;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lyt;->J(I)V

    invoke-virtual/range {p0 .. p0}, Lyt;->h()I

    move-result v1

    invoke-static {v1}, Lhl;->c(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lyt;->K(I)V

    invoke-virtual/range {p0 .. p0}, Lyt;->y()J

    move-result-wide v9

    if-nez v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lyt;->y()J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lyt;->y()J

    move-result-wide v5

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lyt;->B()J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lyt;->B()J

    move-result-wide v5

    :goto_0
    add-long v5, p1, v5

    move-wide v11, v3

    move-wide v13, v5

    const-wide/32 v5, 0xf4240

    move-wide v3, v11

    move-wide v7, v9

    invoke-static/range {v3 .. v8}, Lnu;->f0(JJJ)J

    move-result-wide v15

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lyt;->K(I)V

    invoke-virtual/range {p0 .. p0}, Lyt;->C()I

    move-result v1

    new-array v7, v1, [I

    new-array v8, v1, [J

    new-array v5, v1, [J

    new-array v6, v1, [J

    const/4 v3, 0x0

    move-wide v3, v11

    move-wide/from16 v17, v15

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lyt;->h()I

    move-result v12

    const/high16 v19, -0x80000000

    and-int v19, v12, v19

    if-nez v19, :cond_1

    invoke-virtual/range {p0 .. p0}, Lyt;->y()J

    move-result-wide v19

    const v21, 0x7fffffff

    and-int v12, v12, v21

    aput v12, v7, v11

    aput-wide v13, v8, v11

    aput-wide v17, v6, v11

    add-long v17, v3, v19

    const-wide/32 v19, 0xf4240

    move-wide/from16 v3, v17

    move-object v12, v5

    move-object v2, v6

    move-wide/from16 v5, v19

    move/from16 p1, v1

    move-object v1, v7

    move-object/from16 v22, v8

    move-wide v7, v9

    invoke-static/range {v3 .. v8}, Lnu;->f0(JJJ)J

    move-result-wide v3

    aget-wide v5, v2, v11

    sub-long v5, v3, v5

    aput-wide v5, v12, v11

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lyt;->K(I)V

    aget v6, v1, v11

    int-to-long v6, v6

    add-long/2addr v13, v6

    add-int/lit8 v11, v11, 0x1

    move-object v7, v1

    move-object v6, v2

    move-object v5, v12

    move-object/from16 v8, v22

    const/4 v2, 0x4

    move/from16 v1, p1

    move-wide/from16 v23, v3

    move-wide/from16 v3, v17

    move-wide/from16 v17, v23

    goto :goto_1

    :cond_1
    new-instance v0, Lch;

    const-string v1, "Unhandled indirect reference"

    invoke-direct {v0, v1}, Lch;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v12, v5

    move-object v2, v6

    move-object v1, v7

    move-object/from16 v22, v8

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v3, Lvj;

    move-object/from16 v4, v22

    invoke-direct {v3, v1, v4, v12, v2}, Lvj;-><init>([I[J[J[J)V

    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static z(Lyt;)J
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lyt;->J(I)V

    invoke-virtual {p0}, Lyt;->h()I

    move-result v0

    invoke-static {v0}, Lhl;->c(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lyt;->B()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lyt;->y()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public final G(J)V
    .locals 3

    :goto_0
    iget-object v0, p0, Lml;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lml;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhl$a;

    iget-wide v0, v0, Lhl$a;->b:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    iget-object v0, p0, Lml;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhl$a;

    invoke-virtual {p0, v0}, Lml;->l(Lhl$a;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lml;->d()V

    return-void
.end method

.method public final H(Lbk;)Z
    .locals 8

    iget v0, p0, Lml;->s:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lml;->l:Lyt;

    iget-object v0, v0, Lyt;->a:[B

    invoke-interface {p1, v0, v2, v1, v3}, Lbk;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iput v1, p0, Lml;->s:I

    iget-object v0, p0, Lml;->l:Lyt;

    invoke-virtual {v0, v2}, Lyt;->J(I)V

    iget-object v0, p0, Lml;->l:Lyt;

    invoke-virtual {v0}, Lyt;->y()J

    move-result-wide v4

    iput-wide v4, p0, Lml;->r:J

    iget-object v0, p0, Lml;->l:Lyt;

    invoke-virtual {v0}, Lyt;->h()I

    move-result v0

    iput v0, p0, Lml;->q:I

    :cond_1
    iget-wide v4, p0, Lml;->r:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    iget-object v0, p0, Lml;->l:Lyt;

    iget-object v0, v0, Lyt;->a:[B

    invoke-interface {p1, v0, v1, v1}, Lbk;->readFully([BII)V

    iget v0, p0, Lml;->s:I

    add-int/2addr v0, v1

    iput v0, p0, Lml;->s:I

    iget-object v0, p0, Lml;->l:Lyt;

    invoke-virtual {v0}, Lyt;->B()J

    move-result-wide v4

    :goto_0
    iput-wide v4, p0, Lml;->r:J

    goto :goto_1

    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    invoke-interface {p1}, Lbk;->getLength()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    iget-object v0, p0, Lml;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lml;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhl$a;

    iget-wide v4, v0, Lhl$a;->b:J

    :cond_3
    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lbk;->getPosition()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v0, p0, Lml;->s:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    goto :goto_0

    :cond_4
    :goto_1
    iget-wide v4, p0, Lml;->r:J

    iget v0, p0, Lml;->s:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_e

    invoke-interface {p1}, Lbk;->getPosition()J

    move-result-wide v4

    iget v0, p0, Lml;->s:I

    int-to-long v6, v0

    sub-long/2addr v4, v6

    iget v0, p0, Lml;->q:I

    const v6, 0x6d6f6f66

    if-ne v0, v6, :cond_5

    iget-object v0, p0, Lml;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v0, :cond_5

    iget-object v7, p0, Lml;->e:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lml$b;

    iget-object v7, v7, Lml$b;->b:Lul;

    iput-wide v4, v7, Lul;->b:J

    iput-wide v4, v7, Lul;->d:J

    iput-wide v4, v7, Lul;->c:J

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    iget v0, p0, Lml;->q:I

    const v6, 0x6d646174

    const/4 v7, 0x0

    if-ne v0, v6, :cond_7

    iput-object v7, p0, Lml;->z:Lml$b;

    iget-wide v0, p0, Lml;->r:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lml;->u:J

    iget-boolean p1, p0, Lml;->I:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lml;->F:Lck;

    new-instance v0, Lik$b;

    iget-wide v1, p0, Lml;->x:J

    invoke-direct {v0, v1, v2, v4, v5}, Lik$b;-><init>(JJ)V

    invoke-interface {p1, v0}, Lck;->e(Lik;)V

    iput-boolean v3, p0, Lml;->I:Z

    :cond_6
    const/4 p1, 0x2

    iput p1, p0, Lml;->p:I

    return v3

    :cond_7
    invoke-static {v0}, Lml;->L(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Lbk;->getPosition()J

    move-result-wide v0

    iget-wide v4, p0, Lml;->r:J

    add-long/2addr v0, v4

    const-wide/16 v4, 0x8

    sub-long/2addr v0, v4

    iget-object p1, p0, Lml;->m:Ljava/util/ArrayDeque;

    new-instance v2, Lhl$a;

    iget v4, p0, Lml;->q:I

    invoke-direct {v2, v4, v0, v1}, Lhl$a;-><init>(IJ)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v4, p0, Lml;->r:J

    iget p1, p0, Lml;->s:I

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-nez p1, :cond_8

    invoke-virtual {p0, v0, v1}, Lml;->G(J)V

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Lml;->d()V

    goto :goto_4

    :cond_9
    iget p1, p0, Lml;->q:I

    invoke-static {p1}, Lml;->M(I)Z

    move-result p1

    const-wide/32 v4, 0x7fffffff

    if-eqz p1, :cond_c

    iget p1, p0, Lml;->s:I

    if-ne p1, v1, :cond_b

    iget-wide v6, p0, Lml;->r:J

    cmp-long p1, v6, v4

    if-gtz p1, :cond_a

    new-instance p1, Lyt;

    long-to-int v0, v6

    invoke-direct {p1, v0}, Lyt;-><init>(I)V

    iput-object p1, p0, Lml;->t:Lyt;

    iget-object v0, p0, Lml;->l:Lyt;

    iget-object v0, v0, Lyt;->a:[B

    iget-object p1, p1, Lyt;->a:[B

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_a
    new-instance p1, Lch;

    const-string v0, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-direct {p1, v0}, Lch;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Lch;

    const-string v0, "Leaf atom defines extended atom size (unsupported)."

    invoke-direct {p1, v0}, Lch;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iget-wide v0, p0, Lml;->r:J

    cmp-long p1, v0, v4

    if-gtz p1, :cond_d

    iput-object v7, p0, Lml;->t:Lyt;

    :goto_3
    iput v3, p0, Lml;->p:I

    :goto_4
    return v3

    :cond_d
    new-instance p1, Lch;

    const-string v0, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-direct {p1, v0}, Lch;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    new-instance p1, Lch;

    const-string v0, "Atom size less than header length (unsupported)."

    invoke-direct {p1, v0}, Lch;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final I(Lbk;)V
    .locals 3

    iget-wide v0, p0, Lml;->r:J

    long-to-int v1, v0

    iget v0, p0, Lml;->s:I

    sub-int/2addr v1, v0

    iget-object v0, p0, Lml;->t:Lyt;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lyt;->a:[B

    const/16 v2, 0x8

    invoke-interface {p1, v0, v2, v1}, Lbk;->readFully([BII)V

    new-instance v0, Lhl$b;

    iget v1, p0, Lml;->q:I

    iget-object v2, p0, Lml;->t:Lyt;

    invoke-direct {v0, v1, v2}, Lhl$b;-><init>(ILyt;)V

    invoke-interface {p1}, Lbk;->getPosition()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lml;->n(Lhl$b;J)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1}, Lbk;->skipFully(I)V

    :goto_0
    invoke-interface {p1}, Lbk;->getPosition()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lml;->G(J)V

    return-void
.end method

.method public final J(Lbk;)V
    .locals 8

    iget-object v0, p0, Lml;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    iget-object v5, p0, Lml;->e:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lml$b;

    iget-object v5, v5, Lml$b;->b:Lul;

    iget-boolean v6, v5, Lul;->r:Z

    if-eqz v6, :cond_0

    iget-wide v5, v5, Lul;->d:J

    cmp-long v7, v5, v2

    if-gez v7, :cond_0

    iget-object v1, p0, Lml;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lml$b;

    move-wide v2, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const/4 p1, 0x3

    iput p1, p0, Lml;->p:I

    return-void

    :cond_2
    invoke-interface {p1}, Lbk;->getPosition()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v0, v2

    if-ltz v0, :cond_3

    invoke-interface {p1, v0}, Lbk;->skipFully(I)V

    iget-object v0, v1, Lml$b;->b:Lul;

    invoke-virtual {v0, p1}, Lul;->a(Lbk;)V

    return-void

    :cond_3
    new-instance p1, Lch;

    const-string v0, "Offset to encryption data was negative."

    invoke-direct {p1, v0}, Lch;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final K(Lbk;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lml;->p:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v2, v4, :cond_7

    iget-object v2, v0, Lml;->z:Lml$b;

    if-nez v2, :cond_3

    iget-object v2, v0, Lml;->e:Landroid/util/SparseArray;

    invoke-static {v2}, Lml;->g(Landroid/util/SparseArray;)Lml$b;

    move-result-object v2

    if-nez v2, :cond_1

    iget-wide v2, v0, Lml;->u:J

    invoke-interface/range {p1 .. p1}, Lbk;->getPosition()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v3, v2

    if-ltz v3, :cond_0

    invoke-interface {v1, v3}, Lbk;->skipFully(I)V

    invoke-virtual/range {p0 .. p0}, Lml;->d()V

    return v7

    :cond_0
    new-instance v1, Lch;

    const-string v2, "Offset to end of mdat was negative."

    invoke-direct {v1, v2}, Lch;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v8, v2, Lml$b;->b:Lul;

    iget-object v8, v8, Lul;->g:[J

    iget v9, v2, Lml$b;->g:I

    aget-wide v9, v8, v9

    invoke-interface/range {p1 .. p1}, Lbk;->getPosition()J

    move-result-wide v11

    sub-long/2addr v9, v11

    long-to-int v8, v9

    if-gez v8, :cond_2

    const-string v8, "FragmentedMp4Extractor"

    const-string v9, "Ignoring negative offset to sample data."

    invoke-static {v8, v9}, Lst;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    :cond_2
    invoke-interface {v1, v8}, Lbk;->skipFully(I)V

    iput-object v2, v0, Lml;->z:Lml$b;

    :cond_3
    iget-object v2, v0, Lml;->z:Lml$b;

    iget-object v8, v2, Lml$b;->b:Lul;

    iget-object v8, v8, Lul;->i:[I

    iget v9, v2, Lml$b;->e:I

    aget v8, v8, v9

    iput v8, v0, Lml;->A:I

    iget v10, v2, Lml$b;->h:I

    if-ge v9, v10, :cond_5

    invoke-interface {v1, v8}, Lbk;->skipFully(I)V

    iget-object v1, v0, Lml;->z:Lml$b;

    invoke-static {v1}, Lml$b;->a(Lml$b;)V

    iget-object v1, v0, Lml;->z:Lml$b;

    invoke-virtual {v1}, Lml$b;->e()Z

    move-result v1

    if-nez v1, :cond_4

    iput-object v3, v0, Lml;->z:Lml$b;

    :cond_4
    iput v4, v0, Lml;->p:I

    return v6

    :cond_5
    iget-object v2, v2, Lml$b;->c:Lsl;

    iget v2, v2, Lsl;->g:I

    if-ne v2, v6, :cond_6

    const/16 v2, 0x8

    sub-int/2addr v8, v2

    iput v8, v0, Lml;->A:I

    invoke-interface {v1, v2}, Lbk;->skipFully(I)V

    :cond_6
    iget-object v2, v0, Lml;->z:Lml$b;

    invoke-virtual {v2}, Lml$b;->f()I

    move-result v2

    iput v2, v0, Lml;->B:I

    iget v8, v0, Lml;->A:I

    add-int/2addr v8, v2

    iput v8, v0, Lml;->A:I

    iput v5, v0, Lml;->p:I

    iput v7, v0, Lml;->C:I

    iget-object v2, v0, Lml;->z:Lml$b;

    iget-object v2, v2, Lml$b;->c:Lsl;

    iget-object v2, v2, Lsl;->f:Landroidx/media2/exoplayer/external/Format;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    const-string v8, "audio/ac4"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v0, Lml;->E:Z

    :cond_7
    iget-object v2, v0, Lml;->z:Lml$b;

    iget-object v8, v2, Lml$b;->b:Lul;

    iget-object v9, v2, Lml$b;->c:Lsl;

    iget-object v10, v2, Lml$b;->a:Lkk;

    iget v2, v2, Lml$b;->e:I

    invoke-virtual {v8, v2}, Lul;->c(I)J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    mul-long v11, v11, v13

    iget-object v13, v0, Lml;->k:Lju;

    if-eqz v13, :cond_8

    invoke-virtual {v13, v11, v12}, Lju;->a(J)J

    move-result-wide v11

    :cond_8
    move-wide v14, v11

    iget v11, v9, Lsl;->j:I

    if-eqz v11, :cond_d

    iget-object v12, v0, Lml;->g:Lyt;

    iget-object v12, v12, Lyt;->a:[B

    aput-byte v7, v12, v7

    aput-byte v7, v12, v6

    const/4 v13, 0x2

    aput-byte v7, v12, v13

    add-int/lit8 v13, v11, 0x1

    rsub-int/lit8 v11, v11, 0x4

    :goto_0
    iget v4, v0, Lml;->B:I

    iget v3, v0, Lml;->A:I

    if-ge v4, v3, :cond_f

    iget v3, v0, Lml;->C:I

    if-nez v3, :cond_b

    invoke-interface {v1, v12, v11, v13}, Lbk;->readFully([BII)V

    iget-object v3, v0, Lml;->g:Lyt;

    invoke-virtual {v3, v7}, Lyt;->J(I)V

    iget-object v3, v0, Lml;->g:Lyt;

    invoke-virtual {v3}, Lyt;->h()I

    move-result v3

    if-lt v3, v6, :cond_a

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lml;->C:I

    iget-object v3, v0, Lml;->f:Lyt;

    invoke-virtual {v3, v7}, Lyt;->J(I)V

    iget-object v3, v0, Lml;->f:Lyt;

    invoke-interface {v10, v3, v5}, Lkk;->c(Lyt;I)V

    iget-object v3, v0, Lml;->g:Lyt;

    invoke-interface {v10, v3, v6}, Lkk;->c(Lyt;I)V

    iget-object v3, v0, Lml;->H:[Lkk;

    array-length v3, v3

    if-lez v3, :cond_9

    iget-object v3, v9, Lsl;->f:Landroidx/media2/exoplayer/external/Format;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    aget-byte v4, v12, v5

    invoke-static {v3, v4}, Lwt;->g(Ljava/lang/String;B)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    goto :goto_1

    :cond_9
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, v0, Lml;->D:Z

    iget v3, v0, Lml;->B:I

    add-int/lit8 v3, v3, 0x5

    iput v3, v0, Lml;->B:I

    iget v3, v0, Lml;->A:I

    add-int/2addr v3, v11

    iput v3, v0, Lml;->A:I

    const/4 v3, 0x0

    goto :goto_0

    :cond_a
    new-instance v1, Lch;

    const-string v2, "Invalid NAL length"

    invoke-direct {v1, v2}, Lch;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    iget-boolean v4, v0, Lml;->D:Z

    if-eqz v4, :cond_c

    iget-object v4, v0, Lml;->h:Lyt;

    invoke-virtual {v4, v3}, Lyt;->F(I)V

    iget-object v3, v0, Lml;->h:Lyt;

    iget-object v3, v3, Lyt;->a:[B

    iget v4, v0, Lml;->C:I

    invoke-interface {v1, v3, v7, v4}, Lbk;->readFully([BII)V

    iget-object v3, v0, Lml;->h:Lyt;

    iget v4, v0, Lml;->C:I

    invoke-interface {v10, v3, v4}, Lkk;->c(Lyt;I)V

    iget v3, v0, Lml;->C:I

    iget-object v4, v0, Lml;->h:Lyt;

    iget-object v5, v4, Lyt;->a:[B

    invoke-virtual {v4}, Lyt;->d()I

    move-result v4

    invoke-static {v5, v4}, Lwt;->k([BI)I

    move-result v4

    iget-object v5, v0, Lml;->h:Lyt;

    iget-object v6, v9, Lsl;->f:Landroidx/media2/exoplayer/external/Format;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    const-string v7, "video/hevc"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lyt;->J(I)V

    iget-object v5, v0, Lml;->h:Lyt;

    invoke-virtual {v5, v4}, Lyt;->I(I)V

    iget-object v4, v0, Lml;->h:Lyt;

    iget-object v5, v0, Lml;->H:[Lkk;

    invoke-static {v14, v15, v4, v5}, Lnr;->a(JLyt;[Lkk;)V

    goto :goto_2

    :cond_c
    const/4 v4, 0x0

    invoke-interface {v10, v1, v3, v4}, Lkk;->d(Lbk;IZ)I

    move-result v3

    :goto_2
    iget v4, v0, Lml;->B:I

    add-int/2addr v4, v3

    iput v4, v0, Lml;->B:I

    iget v4, v0, Lml;->C:I

    sub-int/2addr v4, v3

    iput v4, v0, Lml;->C:I

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_d
    iget-boolean v3, v0, Lml;->E:Z

    if-eqz v3, :cond_e

    iget v3, v0, Lml;->A:I

    iget-object v4, v0, Lml;->j:Lyt;

    invoke-static {v3, v4}, Lth;->a(ILyt;)V

    iget-object v3, v0, Lml;->j:Lyt;

    invoke-virtual {v3}, Lyt;->d()I

    move-result v3

    iget-object v4, v0, Lml;->j:Lyt;

    invoke-interface {v10, v4, v3}, Lkk;->c(Lyt;I)V

    iget v4, v0, Lml;->A:I

    add-int/2addr v4, v3

    iput v4, v0, Lml;->A:I

    iget v4, v0, Lml;->B:I

    add-int/2addr v4, v3

    iput v4, v0, Lml;->B:I

    const/4 v3, 0x0

    iput-boolean v3, v0, Lml;->E:Z

    goto :goto_3

    :cond_e
    const/4 v3, 0x0

    :goto_3
    iget v4, v0, Lml;->B:I

    iget v5, v0, Lml;->A:I

    if-ge v4, v5, :cond_f

    sub-int/2addr v5, v4

    invoke-interface {v10, v1, v5, v3}, Lkk;->d(Lbk;IZ)I

    move-result v4

    iget v5, v0, Lml;->B:I

    add-int/2addr v5, v4

    iput v5, v0, Lml;->B:I

    goto :goto_3

    :cond_f
    iget-object v1, v8, Lul;->l:[Z

    aget-boolean v1, v1, v2

    iget-object v2, v0, Lml;->z:Lml$b;

    invoke-static {v2}, Lml$b;->b(Lml$b;)Ltl;

    move-result-object v2

    if-eqz v2, :cond_10

    const/high16 v3, 0x40000000    # 2.0f

    or-int/2addr v1, v3

    iget-object v2, v2, Ltl;->c:Lkk$a;

    move v13, v1

    move-object/from16 v16, v2

    goto :goto_4

    :cond_10
    move v13, v1

    const/16 v16, 0x0

    :goto_4
    iget v1, v0, Lml;->A:I

    const/4 v2, 0x0

    move-wide v11, v14

    move-wide v3, v14

    move v14, v1

    move v15, v2

    invoke-interface/range {v10 .. v16}, Lkk;->a(JIIILkk$a;)V

    invoke-virtual {v0, v3, v4}, Lml;->q(J)V

    iget-object v1, v0, Lml;->z:Lml$b;

    invoke-virtual {v1}, Lml$b;->e()Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x0

    iput-object v1, v0, Lml;->z:Lml$b;

    :cond_11
    const/4 v1, 0x3

    iput v1, v0, Lml;->p:I

    const/4 v1, 0x1

    return v1
.end method

.method public a(Lbk;Lhk;)I
    .locals 1

    :cond_0
    :goto_0
    iget p2, p0, Lml;->p:I

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    invoke-virtual {p0, p1}, Lml;->K(Lbk;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p0, p1}, Lml;->J(Lbk;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lml;->I(Lbk;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lml;->H(Lbk;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, -0x1

    return p1
.end method

.method public b(Lbk;)Z
    .locals 0

    invoke-static {p1}, Lrl;->b(Lbk;)Z

    move-result p1

    return p1
.end method

.method public c(Lck;)V
    .locals 3

    iput-object p1, p0, Lml;->F:Lck;

    iget-object v0, p0, Lml;->b:Lsl;

    if-eqz v0, :cond_0

    new-instance v1, Lml$b;

    iget v0, v0, Lsl;->b:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Lck;->track(II)Lkk;

    move-result-object p1

    invoke-direct {v1, p1}, Lml$b;-><init>(Lkk;)V

    iget-object p1, p0, Lml;->b:Lsl;

    new-instance v0, Ljl;

    invoke-direct {v0, v2, v2, v2, v2}, Ljl;-><init>(IIII)V

    invoke-virtual {v1, p1, v0}, Lml$b;->d(Lsl;Ljl;)V

    iget-object p1, p0, Lml;->e:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lml;->j()V

    iget-object p1, p0, Lml;->F:Lck;

    invoke-interface {p1}, Lck;->endTracks()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lml;->p:I

    iput v0, p0, Lml;->s:I

    return-void
.end method

.method public final e(Landroid/util/SparseArray;I)Ljl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljl;",
            ">;I)",
            "Ljl;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Ljl;

    return-object p1

    :cond_0
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljl;

    invoke-static {p1}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final j()V
    .locals 8

    iget-object v0, p0, Lml;->G:[Lkk;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Lkk;

    iput-object v0, p0, Lml;->G:[Lkk;

    iget-object v3, p0, Lml;->o:Lkk;

    if-eqz v3, :cond_0

    aput-object v3, v0, v1

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lml;->a:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    iget-object v6, p0, Lml;->F:Lck;

    iget-object v7, p0, Lml;->e:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    invoke-interface {v6, v7, v5}, Lck;->track(II)Lkk;

    move-result-object v5

    aput-object v5, v0, v3

    move v3, v4

    :cond_1
    iget-object v0, p0, Lml;->G:[Lkk;

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkk;

    iput-object v0, p0, Lml;->G:[Lkk;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    sget-object v6, Lml;->K:Landroidx/media2/exoplayer/external/Format;

    invoke-interface {v5, v6}, Lkk;->b(Landroidx/media2/exoplayer/external/Format;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lml;->H:[Lkk;

    if-nez v0, :cond_3

    iget-object v0, p0, Lml;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lkk;

    iput-object v0, p0, Lml;->H:[Lkk;

    :goto_2
    iget-object v0, p0, Lml;->H:[Lkk;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lml;->F:Lck;

    iget-object v3, p0, Lml;->e:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    const/4 v4, 0x3

    invoke-interface {v0, v3, v4}, Lck;->track(II)Lkk;

    move-result-object v0

    iget-object v3, p0, Lml;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/Format;

    invoke-interface {v0, v3}, Lkk;->b(Landroidx/media2/exoplayer/external/Format;)V

    iget-object v3, p0, Lml;->H:[Lkk;

    aput-object v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public k(Lsl;)Lsl;
    .locals 0

    return-object p1
.end method

.method public final l(Lhl$a;)V
    .locals 2

    iget v0, p1, Lhl;->a:I

    const v1, 0x6d6f6f76

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lml;->p(Lhl$a;)V

    goto :goto_0

    :cond_0
    const v1, 0x6d6f6f66

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lml;->o(Lhl$a;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lml;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lml;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhl$a;

    invoke-virtual {v0, p1}, Lhl$a;->d(Lhl$a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final m(Lyt;)V
    .locals 12

    iget-object v0, p0, Lml;->G:[Lkk;

    if-eqz v0, :cond_4

    array-length v0, v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lyt;->J(I)V

    invoke-virtual {p1}, Lyt;->a()I

    move-result v8

    invoke-virtual {p1}, Lyt;->q()Ljava/lang/String;

    invoke-virtual {p1}, Lyt;->q()Ljava/lang/String;

    invoke-virtual {p1}, Lyt;->y()J

    move-result-wide v5

    invoke-virtual {p1}, Lyt;->y()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    invoke-static/range {v1 .. v6}, Lnu;->f0(JJJ)J

    move-result-wide v1

    invoke-virtual {p1}, Lyt;->c()I

    move-result v3

    iget-object v4, p1, Lyt;->a:[B

    add-int/lit8 v5, v3, -0x4

    const/4 v6, 0x0

    aput-byte v6, v4, v5

    add-int/lit8 v5, v3, -0x3

    aput-byte v6, v4, v5

    add-int/lit8 v5, v3, -0x2

    aput-byte v6, v4, v5

    add-int/lit8 v3, v3, -0x1

    aput-byte v6, v4, v3

    iget-object v3, p0, Lml;->G:[Lkk;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v7, v3, v5

    invoke-virtual {p1, v0}, Lyt;->J(I)V

    invoke-interface {v7, p1, v8}, Lkk;->c(Lyt;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Lml;->y:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v3, v9

    if-eqz p1, :cond_3

    add-long/2addr v3, v1

    iget-object p1, p0, Lml;->k:Lju;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v3, v4}, Lju;->a(J)J

    move-result-wide v3

    :cond_2
    move-wide v9, v3

    iget-object p1, p0, Lml;->G:[Lkk;

    array-length v0, p1

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v0, :cond_4

    aget-object v1, p1, v11

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, v9

    move v5, v8

    invoke-interface/range {v1 .. v7}, Lkk;->a(JIIILkk$a;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lml;->n:Ljava/util/ArrayDeque;

    new-instance v0, Lml$a;

    invoke-direct {v0, v1, v2, v8}, Lml$a;-><init>(JI)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget p1, p0, Lml;->v:I

    add-int/2addr p1, v8

    iput p1, p0, Lml;->v:I

    :cond_4
    :goto_2
    return-void
.end method

.method public final n(Lhl$b;J)V
    .locals 2

    iget-object v0, p0, Lml;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p2, p0, Lml;->m:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lhl$a;

    invoke-virtual {p2, p1}, Lhl$a;->e(Lhl$b;)V

    goto :goto_0

    :cond_0
    iget v0, p1, Lhl;->a:I

    const v1, 0x73696478

    if-ne v0, v1, :cond_1

    iget-object p1, p1, Lhl$b;->b:Lyt;

    invoke-static {p1, p2, p3}, Lml;->y(Lyt;J)Landroid/util/Pair;

    move-result-object p1

    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    iput-wide p2, p0, Lml;->y:J

    iget-object p2, p0, Lml;->F:Lck;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lik;

    invoke-interface {p2, p1}, Lck;->e(Lik;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lml;->I:Z

    goto :goto_0

    :cond_1
    const p2, 0x656d7367

    if-ne v0, p2, :cond_2

    iget-object p1, p1, Lhl$b;->b:Lyt;

    invoke-virtual {p0, p1}, Lml;->m(Lyt;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final o(Lhl$a;)V
    .locals 7

    iget-object v0, p0, Lml;->e:Landroid/util/SparseArray;

    iget v1, p0, Lml;->a:I

    iget-object v2, p0, Lml;->i:[B

    invoke-static {p1, v0, v1, v2}, Lml;->s(Lhl$a;Landroid/util/SparseArray;I[B)V

    iget-object v0, p0, Lml;->d:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lhl$a;->c:Ljava/util/List;

    invoke-static {p1}, Lml;->f(Ljava/util/List;)Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lml;->e:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lml;->e:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lml$b;

    invoke-virtual {v3, p1}, Lml$b;->j(Landroidx/media2/exoplayer/external/drm/DrmInitData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-wide v1, p0, Lml;->w:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v1, v3

    if-eqz p1, :cond_3

    iget-object p1, p0, Lml;->e:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_2
    if-ge v0, p1, :cond_2

    iget-object v1, p0, Lml;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lml$b;

    iget-wide v5, p0, Lml;->w:J

    invoke-virtual {v1, v5, v6}, Lml$b;->h(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iput-wide v3, p0, Lml;->w:J

    :cond_3
    return-void
.end method

.method public final p(Lhl$a;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lml;->b:Lsl;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v5, "Unexpected moov box."

    invoke-static {v2, v5}, Lit;->g(ZLjava/lang/Object;)V

    iget-object v2, v0, Lml;->d:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v1, Lhl$a;->c:Ljava/util/List;

    invoke-static {v2}, Lml;->f(Ljava/util/List;)Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-result-object v2

    :goto_1
    const v5, 0x6d766578

    invoke-virtual {v1, v5}, Lhl$a;->f(I)Lhl$a;

    move-result-object v5

    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v8, v5, Lhl$a;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move-wide v13, v6

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v8, :cond_4

    iget-object v7, v5, Lhl$a;->c:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lhl$b;

    iget v9, v7, Lhl;->a:I

    const v10, 0x74726578

    if-ne v9, v10, :cond_2

    iget-object v7, v7, Lhl$b;->b:Lyt;

    invoke-static {v7}, Lml;->C(Lyt;)Landroid/util/Pair;

    move-result-object v7

    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljl;

    invoke-virtual {v12, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    :cond_2
    const v10, 0x6d656864

    if-ne v9, v10, :cond_3

    iget-object v7, v7, Lhl$b;->b:Lyt;

    invoke-static {v7}, Lml;->r(Lyt;)J

    move-result-wide v9

    move-wide v13, v9

    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    iget-object v5, v1, Lhl$a;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v11, :cond_8

    iget-object v5, v1, Lhl$a;->d:Ljava/util/List;

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhl$a;

    iget v6, v5, Lhl;->a:I

    const v7, 0x7472616b

    if-ne v6, v7, :cond_6

    const v6, 0x6d766864

    invoke-virtual {v1, v6}, Lhl$a;->g(I)Lhl$b;

    move-result-object v6

    iget v7, v0, Lml;->a:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_5

    const/16 v16, 0x1

    goto :goto_5

    :cond_5
    const/16 v16, 0x0

    :goto_5
    const/16 v17, 0x0

    move-wide v7, v13

    move-object v9, v2

    move/from16 v18, v10

    move/from16 v10, v16

    move/from16 v16, v11

    move/from16 v11, v17

    invoke-static/range {v5 .. v11}, Lil;->v(Lhl$a;Lhl$b;JLandroidx/media2/exoplayer/external/drm/DrmInitData;ZZ)Lsl;

    move-result-object v5

    invoke-virtual {v0, v5}, Lml;->k(Lsl;)Lsl;

    if-eqz v5, :cond_7

    iget v6, v5, Lsl;->a:I

    invoke-virtual {v15, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6

    :cond_6
    move/from16 v18, v10

    move/from16 v16, v11

    :cond_7
    :goto_6
    add-int/lit8 v10, v18, 0x1

    move/from16 v11, v16

    goto :goto_4

    :cond_8
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v1

    iget-object v2, v0, Lml;->e:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_a

    :goto_7
    if-ge v4, v1, :cond_9

    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsl;

    new-instance v3, Lml$b;

    iget-object v5, v0, Lml;->F:Lck;

    iget v6, v2, Lsl;->b:I

    invoke-interface {v5, v4, v6}, Lck;->track(II)Lkk;

    move-result-object v5

    invoke-direct {v3, v5}, Lml$b;-><init>(Lkk;)V

    iget v5, v2, Lsl;->a:I

    invoke-virtual {v0, v12, v5}, Lml;->e(Landroid/util/SparseArray;I)Ljl;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lml$b;->d(Lsl;Ljl;)V

    iget-object v5, v0, Lml;->e:Landroid/util/SparseArray;

    iget v6, v2, Lsl;->a:I

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-wide v5, v0, Lml;->x:J

    iget-wide v2, v2, Lsl;->e:J

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lml;->x:J

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lml;->j()V

    iget-object v1, v0, Lml;->F:Lck;

    invoke-interface {v1}, Lck;->endTracks()V

    goto :goto_a

    :cond_a
    iget-object v2, v0, Lml;->e:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ne v2, v1, :cond_b

    goto :goto_8

    :cond_b
    const/4 v3, 0x0

    :goto_8
    invoke-static {v3}, Lit;->f(Z)V

    :goto_9
    if-ge v4, v1, :cond_c

    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsl;

    iget-object v3, v0, Lml;->e:Landroid/util/SparseArray;

    iget v5, v2, Lsl;->a:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lml$b;

    iget v5, v2, Lsl;->a:I

    invoke-virtual {v0, v12, v5}, Lml;->e(Landroid/util/SparseArray;I)Ljl;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lml$b;->d(Lsl;Ljl;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_c
    :goto_a
    return-void
.end method

.method public final q(J)V
    .locals 13

    :cond_0
    iget-object v0, p0, Lml;->n:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lml;->n:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lml$a;

    iget v1, p0, Lml;->v:I

    iget v2, v0, Lml$a;->b:I

    sub-int/2addr v1, v2

    iput v1, p0, Lml;->v:I

    iget-wide v1, v0, Lml$a;->a:J

    add-long/2addr v1, p1

    iget-object v3, p0, Lml;->k:Lju;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1, v2}, Lju;->a(J)J

    move-result-wide v1

    :cond_1
    iget-object v10, p0, Lml;->G:[Lkk;

    array-length v11, v10

    const/4 v3, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v11, :cond_0

    aget-object v3, v10, v12

    const/4 v6, 0x1

    iget v7, v0, Lml$a;->b:I

    iget v8, p0, Lml;->v:I

    const/4 v9, 0x0

    move-wide v4, v1

    invoke-interface/range {v3 .. v9}, Lkk;->a(JIIILkk$a;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 2

    iget-object p1, p0, Lml;->e:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lml;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lml$b;

    invoke-virtual {v1}, Lml$b;->g()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lml;->n:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    iput p2, p0, Lml;->v:I

    iput-wide p3, p0, Lml;->w:J

    iget-object p1, p0, Lml;->m:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    iput-boolean p2, p0, Lml;->E:Z

    invoke-virtual {p0}, Lml;->d()V

    return-void
.end method
