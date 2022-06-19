.class public Lcom/google/android/exoplayer2/extractor/mp4/g;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/c1/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/g$b;,
        Lcom/google/android/exoplayer2/extractor/mp4/g$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/exoplayer2/c1/l;

.field private static final b:[B

.field private static final c:Lcom/google/android/exoplayer2/Format;


# instance fields
.field private A:J

.field private B:J

.field private C:Lcom/google/android/exoplayer2/extractor/mp4/g$b;

.field private D:I

.field private E:I

.field private F:I

.field private G:Z

.field private H:Lcom/google/android/exoplayer2/c1/j;

.field private I:[Lcom/google/android/exoplayer2/c1/v;

.field private J:[Lcom/google/android/exoplayer2/c1/v;

.field private K:Z

.field private final d:I

.field private final e:Lcom/google/android/exoplayer2/extractor/mp4/l;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/mp4/g$b;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/android/exoplayer2/util/v;

.field private final i:Lcom/google/android/exoplayer2/util/v;

.field private final j:Lcom/google/android/exoplayer2/util/v;

.field private final k:[B

.field private final l:Lcom/google/android/exoplayer2/util/v;

.field private final m:Lcom/google/android/exoplayer2/util/e0;

.field private final n:Lcom/google/android/exoplayer2/metadata/emsg/b;

.field private final o:Lcom/google/android/exoplayer2/util/v;

.field private final p:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/extractor/mp4/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/extractor/mp4/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Lcom/google/android/exoplayer2/c1/v;

.field private s:I

.field private t:I

.field private u:J

.field private v:I

.field private w:Lcom/google/android/exoplayer2/util/v;

.field private x:J

.field private y:I

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/extractor/mp4/a;->a:Lcom/google/android/exoplayer2/extractor/mp4/a;

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->a:Lcom/google/android/exoplayer2/c1/l;

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->b:[B

    const/4 v0, 0x0

    const-string v1, "application/x-emsg"

    const-wide v2, 0x7fffffffffffffffL

    .line 3
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/Format;->t(Ljava/lang/String;Ljava/lang/String;J)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->c:Lcom/google/android/exoplayer2/Format;

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

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/g;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/g;-><init>(ILcom/google/android/exoplayer2/util/e0;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/util/e0;)V
    .locals 2

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/g;-><init>(ILcom/google/android/exoplayer2/util/e0;Lcom/google/android/exoplayer2/extractor/mp4/l;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/util/e0;Lcom/google/android/exoplayer2/extractor/mp4/l;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/util/e0;",
            "Lcom/google/android/exoplayer2/extractor/mp4/l;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/mp4/g;-><init>(ILcom/google/android/exoplayer2/util/e0;Lcom/google/android/exoplayer2/extractor/mp4/l;Ljava/util/List;Lcom/google/android/exoplayer2/c1/v;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/util/e0;Lcom/google/android/exoplayer2/extractor/mp4/l;Ljava/util/List;Lcom/google/android/exoplayer2/c1/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/util/e0;",
            "Lcom/google/android/exoplayer2/extractor/mp4/l;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lcom/google/android/exoplayer2/c1/v;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/2addr p1, v0

    .line 6
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->d:I

    .line 7
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->m:Lcom/google/android/exoplayer2/util/e0;

    .line 8
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->e:Lcom/google/android/exoplayer2/extractor/mp4/l;

    .line 9
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->f:Ljava/util/List;

    .line 10
    iput-object p5, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->r:Lcom/google/android/exoplayer2/c1/v;

    .line 11
    new-instance p1, Lcom/google/android/exoplayer2/metadata/emsg/b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/metadata/emsg/b;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->n:Lcom/google/android/exoplayer2/metadata/emsg/b;

    .line 12
    new-instance p1, Lcom/google/android/exoplayer2/util/v;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/util/v;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->o:Lcom/google/android/exoplayer2/util/v;

    .line 13
    new-instance p1, Lcom/google/android/exoplayer2/util/v;

    sget-object p3, Lcom/google/android/exoplayer2/util/s;->a:[B

    invoke-direct {p1, p3}, Lcom/google/android/exoplayer2/util/v;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->h:Lcom/google/android/exoplayer2/util/v;

    .line 14
    new-instance p1, Lcom/google/android/exoplayer2/util/v;

    const/4 p3, 0x5

    invoke-direct {p1, p3}, Lcom/google/android/exoplayer2/util/v;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->i:Lcom/google/android/exoplayer2/util/v;

    .line 15
    new-instance p1, Lcom/google/android/exoplayer2/util/v;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/v;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->j:Lcom/google/android/exoplayer2/util/v;

    new-array p1, p2, [B

    .line 16
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->k:[B

    .line 17
    new-instance p2, Lcom/google/android/exoplayer2/util/v;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/util/v;-><init>([B)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->l:Lcom/google/android/exoplayer2/util/v;

    .line 18
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->p:Ljava/util/ArrayDeque;

    .line 19
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->q:Ljava/util/ArrayDeque;

    .line 20
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->g:Landroid/util/SparseArray;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->A:J

    .line 22
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->z:J

    .line 23
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->B:J

    .line 24
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/g;->a()V

    return-void
.end method

.method private static A(Lcom/google/android/exoplayer2/util/v;J)Landroid/util/Pair;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/v;",
            "J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Lcom/google/android/exoplayer2/c1/c;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x8

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v1

    .line 3
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/c;->c(I)I

    move-result v1

    const/4 v2, 0x4

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/v;->B()J

    move-result-wide v9

    if-nez v1, :cond_0

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/v;->B()J

    move-result-wide v3

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/v;->B()J

    move-result-wide v5

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/v;->E()J

    move-result-wide v3

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/v;->E()J

    move-result-wide v5

    :goto_0
    add-long v5, p1, v5

    move-wide v11, v3

    move-wide v13, v5

    const-wide/32 v5, 0xf4240

    move-wide v3, v11

    move-wide v7, v9

    .line 10
    invoke-static/range {v3 .. v8}, Lcom/google/android/exoplayer2/util/h0;->l0(JJJ)J

    move-result-wide v15

    const/4 v1, 0x2

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/v;->F()I

    move-result v1

    .line 13
    new-array v7, v1, [I

    .line 14
    new-array v8, v1, [J

    .line 15
    new-array v5, v1, [J

    .line 16
    new-array v6, v1, [J

    const/4 v3, 0x0

    move-wide v3, v11

    move-wide/from16 v17, v15

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v1, :cond_2

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v12

    const/high16 v19, -0x80000000

    and-int v19, v12, v19

    if-nez v19, :cond_1

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/v;->B()J

    move-result-wide v19

    const v21, 0x7fffffff

    and-int v12, v12, v21

    .line 19
    aput v12, v7, v11

    .line 20
    aput-wide v13, v8, v11

    .line 21
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

    .line 22
    invoke-static/range {v3 .. v8}, Lcom/google/android/exoplayer2/util/h0;->l0(JJJ)J

    move-result-wide v3

    .line 23
    aget-wide v5, v2, v11

    sub-long v5, v3, v5

    aput-wide v5, v12, v11

    const/4 v5, 0x4

    .line 24
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    .line 25
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

    .line 26
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Unhandled indirect reference"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v12, v5

    move-object v2, v6

    move-object v1, v7

    move-object/from16 v22, v8

    .line 27
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v3, Lcom/google/android/exoplayer2/c1/c;

    move-object/from16 v4, v22

    invoke-direct {v3, v1, v4, v12, v2}, Lcom/google/android/exoplayer2/c1/c;-><init>([I[J[J[J)V

    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static B(Lcom/google/android/exoplayer2/util/v;)J
    .locals 2

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v0

    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/c;->c(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->E()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->B()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private static C(Lcom/google/android/exoplayer2/util/v;Landroid/util/SparseArray;)Lcom/google/android/exoplayer2/extractor/mp4/g$b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/v;",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/mp4/g$b;",
            ">;)",
            "Lcom/google/android/exoplayer2/extractor/mp4/g$b;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v0

    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/c;->b(I)I

    move-result v0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v1

    .line 5
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/extractor/mp4/g;->j(Landroid/util/SparseArray;I)Lcom/google/android/exoplayer2/extractor/mp4/g$b;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->E()J

    move-result-wide v1

    .line 7
    iget-object v3, p1, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->b:Lcom/google/android/exoplayer2/extractor/mp4/n;

    iput-wide v1, v3, Lcom/google/android/exoplayer2/extractor/mp4/n;->c:J

    .line 8
    iput-wide v1, v3, Lcom/google/android/exoplayer2/extractor/mp4/n;->d:J

    .line 9
    :cond_1
    iget-object v1, p1, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->e:Lcom/google/android/exoplayer2/extractor/mp4/e;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->D()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    iget v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/e;->a:I

    :goto_0
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->D()I

    move-result v3

    goto :goto_1

    :cond_3
    iget v3, v1, Lcom/google/android/exoplayer2/extractor/mp4/e;->b:I

    :goto_1
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_4

    .line 12
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->D()I

    move-result v4

    goto :goto_2

    :cond_4
    iget v4, v1, Lcom/google/android/exoplayer2/extractor/mp4/e;->c:I

    :goto_2
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->D()I

    move-result p0

    goto :goto_3

    :cond_5
    iget p0, v1, Lcom/google/android/exoplayer2/extractor/mp4/e;->d:I

    .line 14
    :goto_3
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->b:Lcom/google/android/exoplayer2/extractor/mp4/n;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp4/e;

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/google/android/exoplayer2/extractor/mp4/e;-><init>(IIII)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/n;->a:Lcom/google/android/exoplayer2/extractor/mp4/e;

    return-object p1
.end method

.method private static D(Lcom/google/android/exoplayer2/extractor/mp4/c$a;Landroid/util/SparseArray;I[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/mp4/c$a;",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/mp4/g$b;",
            ">;I[B)V"
        }
    .end annotation

    const v0, 0x74666864

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/c$b;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/c$b;->b:Lcom/google/android/exoplayer2/util/v;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/g;->C(Lcom/google/android/exoplayer2/util/v;Landroid/util/SparseArray;)Lcom/google/android/exoplayer2/extractor/mp4/g$b;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->b:Lcom/google/android/exoplayer2/extractor/mp4/n;

    .line 4
    iget-wide v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/n;->s:J

    .line 5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->g()V

    const v3, 0x74666474

    .line 6
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/c$b;

    move-result-object v4

    if-eqz v4, :cond_1

    and-int/lit8 v4, p2, 0x2

    if-nez v4, :cond_1

    .line 7
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/c$b;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/c$b;->b:Lcom/google/android/exoplayer2/util/v;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/g;->B(Lcom/google/android/exoplayer2/util/v;)J

    move-result-wide v1

    .line 8
    :cond_1
    invoke-static {p0, p1, v1, v2, p2}, Lcom/google/android/exoplayer2/extractor/mp4/g;->G(Lcom/google/android/exoplayer2/extractor/mp4/c$a;Lcom/google/android/exoplayer2/extractor/mp4/g$b;JI)V

    .line 9
    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->d:Lcom/google/android/exoplayer2/extractor/mp4/l;

    iget-object p2, v0, Lcom/google/android/exoplayer2/extractor/mp4/n;->a:Lcom/google/android/exoplayer2/extractor/mp4/e;

    iget p2, p2, Lcom/google/android/exoplayer2/extractor/mp4/e;->a:I

    .line 10
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/l;->a(I)Lcom/google/android/exoplayer2/extractor/mp4/m;

    move-result-object p1

    const p2, 0x7361697a

    .line 11
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/c$b;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 12
    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/mp4/c$b;->b:Lcom/google/android/exoplayer2/util/v;

    invoke-static {p1, p2, v0}, Lcom/google/android/exoplayer2/extractor/mp4/g;->w(Lcom/google/android/exoplayer2/extractor/mp4/m;Lcom/google/android/exoplayer2/util/v;Lcom/google/android/exoplayer2/extractor/mp4/n;)V

    :cond_2
    const p2, 0x7361696f

    .line 13
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/c$b;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 14
    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/mp4/c$b;->b:Lcom/google/android/exoplayer2/util/v;

    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/extractor/mp4/g;->v(Lcom/google/android/exoplayer2/util/v;Lcom/google/android/exoplayer2/extractor/mp4/n;)V

    :cond_3
    const p2, 0x73656e63

    .line 15
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/c$b;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 16
    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/mp4/c$b;->b:Lcom/google/android/exoplayer2/util/v;

    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/extractor/mp4/g;->y(Lcom/google/android/exoplayer2/util/v;Lcom/google/android/exoplayer2/extractor/mp4/n;)V

    :cond_4
    const p2, 0x73626770

    .line 17
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/c$b;

    move-result-object p2

    const v1, 0x73677064

    .line 18
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/c$b;

    move-result-object v1

    if-eqz p2, :cond_6

    if-eqz v1, :cond_6

    .line 19
    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/mp4/c$b;->b:Lcom/google/android/exoplayer2/util/v;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/c$b;->b:Lcom/google/android/exoplayer2/util/v;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/m;->b:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    invoke-static {p2, v1, p1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/g;->z(Lcom/google/android/exoplayer2/util/v;Lcom/google/android/exoplayer2/util/v;Ljava/lang/String;Lcom/google/android/exoplayer2/extractor/mp4/n;)V

    .line 20
    :cond_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p1, :cond_8

    .line 21
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->c:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/c$b;

    .line 22
    iget v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/c;->a:I

    const v3, 0x75756964

    if-ne v2, v3, :cond_7

    .line 23
    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/c$b;->b:Lcom/google/android/exoplayer2/util/v;

    invoke-static {v1, v0, p3}, Lcom/google/android/exoplayer2/extractor/mp4/g;->H(Lcom/google/android/exoplayer2/util/v;Lcom/google/android/exoplayer2/extractor/mp4/n;[B)V

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method

.method private static E(Lcom/google/android/exoplayer2/util/v;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/v;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/extractor/mp4/e;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xc

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->D()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->D()I

    move-result v2

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->D()I

    move-result v3

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result p0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp4/e;

    invoke-direct {v4, v1, v2, v3, p0}, Lcom/google/android/exoplayer2/extractor/mp4/e;-><init>(IIII)V

    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static F(Lcom/google/android/exoplayer2/extractor/mp4/g$b;IJILcom/google/android/exoplayer2/util/v;I)I
    .locals 31

    move-object/from16 v0, p0

    const/16 v1, 0x8

    move-object/from16 v2, p5

    .line 1
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 2
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v1

    .line 3
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/c;->b(I)I

    move-result v1

    .line 4
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->d:Lcom/google/android/exoplayer2/extractor/mp4/l;

    .line 5
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->b:Lcom/google/android/exoplayer2/extractor/mp4/n;

    .line 6
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/n;->a:Lcom/google/android/exoplayer2/extractor/mp4/e;

    .line 7
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/n;->h:[I

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/v;->D()I

    move-result v6

    aput v6, v5, p1

    .line 8
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/n;->g:[J

    iget-wide v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/n;->c:J

    aput-wide v6, v5, p1

    and-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_0

    .line 9
    aget-wide v6, v5, p1

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/v;->k()I

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

    .line 10
    :goto_0
    iget v8, v4, Lcom/google/android/exoplayer2/extractor/mp4/e;->d:I

    if-eqz v5, :cond_2

    .line 11
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/v;->D()I

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

    .line 12
    :goto_4
    iget-object v12, v3, Lcom/google/android/exoplayer2/extractor/mp4/l;->h:[J

    const-wide/16 v13, 0x0

    if-eqz v12, :cond_7

    array-length v15, v12

    if-ne v15, v7, :cond_7

    aget-wide v15, v12, v6

    cmp-long v12, v15, v13

    if-nez v12, :cond_7

    .line 13
    iget-object v12, v3, Lcom/google/android/exoplayer2/extractor/mp4/l;->i:[J

    aget-wide v13, v12, v6

    const-wide/16 v15, 0x3e8

    iget-wide v6, v3, Lcom/google/android/exoplayer2/extractor/mp4/l;->c:J

    move-wide/from16 v17, v6

    .line 14
    invoke-static/range {v13 .. v18}, Lcom/google/android/exoplayer2/util/h0;->l0(JJJ)J

    move-result-wide v13

    .line 15
    :cond_7
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/n;->i:[I

    .line 16
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/n;->j:[I

    .line 17
    iget-object v15, v0, Lcom/google/android/exoplayer2/extractor/mp4/n;->k:[J

    .line 18
    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/mp4/n;->l:[Z

    .line 19
    iget v2, v3, Lcom/google/android/exoplayer2/extractor/mp4/l;->b:I

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

    .line 20
    :goto_5
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/n;->h:[I

    aget v8, v8, p1

    add-int v8, p6, v8

    .line 21
    iget-wide v2, v3, Lcom/google/android/exoplayer2/extractor/mp4/l;->c:J

    move-wide/from16 v24, v13

    move-object v14, v12

    if-lez p1, :cond_9

    .line 22
    iget-wide v12, v0, Lcom/google/android/exoplayer2/extractor/mp4/n;->s:J

    goto :goto_6

    :cond_9
    move-wide/from16 v12, p2

    :goto_6
    move-wide/from16 p1, v12

    move/from16 v12, p6

    :goto_7
    if-ge v12, v8, :cond_11

    if-eqz v9, :cond_a

    .line 23
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/v;->D()I

    move-result v13

    goto :goto_8

    :cond_a
    iget v13, v4, Lcom/google/android/exoplayer2/extractor/mp4/e;->b:I

    :goto_8
    if-eqz v10, :cond_b

    .line 24
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/v;->D()I

    move-result v18

    move/from16 v26, v9

    move/from16 v9, v18

    goto :goto_9

    :cond_b
    move/from16 v26, v9

    iget v9, v4, Lcom/google/android/exoplayer2/extractor/mp4/e;->c:I

    :goto_9
    if-nez v12, :cond_c

    if-eqz v5, :cond_c

    move/from16 v27, v5

    move/from16 v5, v17

    goto :goto_a

    :cond_c
    if-eqz v11, :cond_d

    .line 25
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v18

    move/from16 v27, v5

    move/from16 v5, v18

    goto :goto_a

    :cond_d
    move/from16 v27, v5

    iget v5, v4, Lcom/google/android/exoplayer2/extractor/mp4/e;->d:I

    :goto_a
    if-eqz v1, :cond_e

    move/from16 v28, v1

    .line 26
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v1

    move/from16 v29, v10

    move/from16 v30, v11

    int-to-long v10, v1

    const-wide/16 v18, 0x3e8

    mul-long v10, v10, v18

    .line 27
    div-long/2addr v10, v2

    long-to-int v1, v10

    aput v1, v7, v12

    const/4 v1, 0x0

    goto :goto_b

    :cond_e
    move/from16 v28, v1

    move/from16 v29, v10

    move/from16 v30, v11

    const/4 v1, 0x0

    .line 28
    aput v1, v7, v12

    :goto_b
    const-wide/16 v20, 0x3e8

    move-wide/from16 v18, p1

    move-wide/from16 v22, v2

    .line 29
    invoke-static/range {v18 .. v23}, Lcom/google/android/exoplayer2/util/h0;->l0(JJJ)J

    move-result-wide v10

    sub-long v10, v10, v24

    aput-wide v10, v15, v12

    .line 30
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

    .line 31
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

    .line 32
    iput-wide v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/n;->s:J

    return v8
.end method

.method private static G(Lcom/google/android/exoplayer2/extractor/mp4/c$a;Lcom/google/android/exoplayer2/extractor/mp4/g$b;JI)V
    .locals 13

    move-object v7, p1

    move-object v0, p0

    .line 1
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->c:Ljava/util/List;

    .line 2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const v10, 0x7472756e

    if-ge v1, v9, :cond_1

    .line 3
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/c$b;

    .line 4
    iget v5, v4, Lcom/google/android/exoplayer2/extractor/mp4/c;->a:I

    if-ne v5, v10, :cond_0

    .line 5
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/c$b;->b:Lcom/google/android/exoplayer2/util/v;

    const/16 v5, 0xc

    .line 6
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 7
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/v;->D()I

    move-result v4

    if-lez v4, :cond_0

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iput v0, v7, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->h:I

    .line 9
    iput v0, v7, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->g:I

    .line 10
    iput v0, v7, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->f:I

    .line 11
    iget-object v1, v7, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->b:Lcom/google/android/exoplayer2/extractor/mp4/n;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/n;->e(II)V

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v9, :cond_3

    .line 12
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/c$b;

    .line 13
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/c;->a:I

    if-ne v2, v10, :cond_2

    add-int/lit8 v12, v1, 0x1

    .line 14
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/c$b;->b:Lcom/google/android/exoplayer2/util/v;

    move-object v0, p1

    move-wide v2, p2

    move/from16 v4, p4

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/mp4/g;->F(Lcom/google/android/exoplayer2/extractor/mp4/g$b;IJILcom/google/android/exoplayer2/util/v;I)I

    move-result v6

    move v1, v12

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static H(Lcom/google/android/exoplayer2/util/v;Lcom/google/android/exoplayer2/extractor/mp4/n;[B)V
    .locals 2

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    const/4 v0, 0x0

    const/16 v1, 0x10

    .line 2
    invoke-virtual {p0, p2, v0, v1}, Lcom/google/android/exoplayer2/util/v;->h([BII)V

    .line 3
    sget-object v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->b:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {p0, v1, p1}, Lcom/google/android/exoplayer2/extractor/mp4/g;->x(Lcom/google/android/exoplayer2/util/v;ILcom/google/android/exoplayer2/extractor/mp4/n;)V

    return-void
.end method

.method private I(J)V
    .locals 3

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/c$a;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->b:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/c$a;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/g;->n(Lcom/google/android/exoplayer2/extractor/mp4/c$a;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/g;->a()V

    return-void
.end method

.method private J(Lcom/google/android/exoplayer2/c1/i;)Z
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->v:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->o:Lcom/google/android/exoplayer2/util/v;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/v;->a:[B

    invoke-interface {p1, v0, v2, v1, v3}, Lcom/google/android/exoplayer2/c1/i;->a([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 3
    :cond_0
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->v:I

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->o:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->o:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/v;->B()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->u:J

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->o:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->t:I

    .line 7
    :cond_1
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->u:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->o:Lcom/google/android/exoplayer2/util/v;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/v;->a:[B

    invoke-interface {p1, v0, v1, v1}, Lcom/google/android/exoplayer2/c1/i;->readFully([BII)V

    .line 9
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->v:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->v:I

    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->o:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/v;->E()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->u:J

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    .line 11
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->getLength()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/c$a;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->b:J

    :cond_3
    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    .line 14
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->k()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->v:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->u:J

    .line 15
    :cond_4
    :goto_0
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->u:J

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->v:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_e

    .line 16
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->k()J

    move-result-wide v4

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->v:I

    int-to-long v6, v0

    sub-long/2addr v4, v6

    .line 17
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->t:I

    const v6, 0x6d6f6f66

    if-ne v0, v6, :cond_5

    .line 18
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v0, :cond_5

    .line 19
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->g:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/extractor/mp4/g$b;

    iget-object v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->b:Lcom/google/android/exoplayer2/extractor/mp4/n;

    .line 20
    iput-wide v4, v7, Lcom/google/android/exoplayer2/extractor/mp4/n;->b:J

    .line 21
    iput-wide v4, v7, Lcom/google/android/exoplayer2/extractor/mp4/n;->d:J

    .line 22
    iput-wide v4, v7, Lcom/google/android/exoplayer2/extractor/mp4/n;->c:J

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 23
    :cond_5
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->t:I

    const v6, 0x6d646174

    const/4 v7, 0x0

    if-ne v0, v6, :cond_7

    .line 24
    iput-object v7, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->C:Lcom/google/android/exoplayer2/extractor/mp4/g$b;

    .line 25
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->u:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->x:J

    .line 26
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->K:Z

    if-nez p1, :cond_6

    .line 27
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->H:Lcom/google/android/exoplayer2/c1/j;

    new-instance v0, Lcom/google/android/exoplayer2/c1/t$b;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->A:J

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/google/android/exoplayer2/c1/t$b;-><init>(JJ)V

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/c1/j;->c(Lcom/google/android/exoplayer2/c1/t;)V

    .line 28
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->K:Z

    :cond_6
    const/4 p1, 0x2

    .line 29
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->s:I

    return v3

    .line 30
    :cond_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/g;->N(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 31
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->k()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->u:J

    add-long/2addr v0, v4

    const-wide/16 v4, 0x8

    sub-long/2addr v0, v4

    .line 32
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->p:Ljava/util/ArrayDeque;

    new-instance v2, Lcom/google/android/exoplayer2/extractor/mp4/c$a;

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->t:I

    invoke-direct {v2, v4, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;-><init>(IJ)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 33
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->u:J

    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->v:I

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-nez p1, :cond_8

    .line 34
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/g;->I(J)V

    goto :goto_2

    .line 35
    :cond_8
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/g;->a()V

    goto :goto_2

    .line 36
    :cond_9
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->t:I

    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/mp4/g;->O(I)Z

    move-result p1

    const-wide/32 v4, 0x7fffffff

    if-eqz p1, :cond_c

    .line 37
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->v:I

    if-ne p1, v1, :cond_b

    .line 38
    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->u:J

    cmp-long p1, v6, v4

    if-gtz p1, :cond_a

    .line 39
    new-instance p1, Lcom/google/android/exoplayer2/util/v;

    long-to-int v0, v6

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/v;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->w:Lcom/google/android/exoplayer2/util/v;

    .line 40
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->o:Lcom/google/android/exoplayer2/util/v;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/v;->a:[B

    iget-object p1, p1, Lcom/google/android/exoplayer2/util/v;->a:[B

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->s:I

    goto :goto_2

    .line 42
    :cond_a
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_b
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Leaf atom defines extended atom size (unsupported)."

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_c
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->u:J

    cmp-long p1, v0, v4

    if-gtz p1, :cond_d

    .line 45
    iput-object v7, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->w:Lcom/google/android/exoplayer2/util/v;

    .line 46
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->s:I

    :goto_2
    return v3

    .line 47
    :cond_d
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_e
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Atom size less than header length (unsupported)."

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private K(Lcom/google/android/exoplayer2/c1/i;)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->u:J

    long-to-int v1, v0

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->v:I

    sub-int/2addr v1, v0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->w:Lcom/google/android/exoplayer2/util/v;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/v;->a:[B

    const/16 v2, 0x8

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/c1/i;->readFully([BII)V

    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/c$b;

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->t:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->w:Lcom/google/android/exoplayer2/util/v;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/c$b;-><init>(ILcom/google/android/exoplayer2/util/v;)V

    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->k()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/g;->p(Lcom/google/android/exoplayer2/extractor/mp4/c$b;J)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/c1/i;->h(I)V

    .line 6
    :goto_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->k()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/g;->I(J)V

    return-void
.end method

.method private L(Lcom/google/android/exoplayer2/c1/i;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 2
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->g:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/extractor/mp4/g$b;

    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->b:Lcom/google/android/exoplayer2/extractor/mp4/n;

    .line 3
    iget-boolean v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/n;->r:Z

    if-eqz v6, :cond_0

    iget-wide v5, v5, Lcom/google/android/exoplayer2/extractor/mp4/n;->d:J

    cmp-long v7, v5, v2

    if-gez v7, :cond_0

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->g:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/g$b;

    move-wide v2, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const/4 p1, 0x3

    .line 5
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->s:I

    return-void

    .line 6
    :cond_2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->k()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v0, v2

    if-ltz v0, :cond_3

    .line 7
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/c1/i;->h(I)V

    .line 8
    iget-object v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->b:Lcom/google/android/exoplayer2/extractor/mp4/n;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/n;->a(Lcom/google/android/exoplayer2/c1/i;)V

    return-void

    .line 9
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Offset to encryption data was negative."

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private M(Lcom/google/android/exoplayer2/c1/i;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->s:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v2, v4, :cond_8

    .line 2
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->C:Lcom/google/android/exoplayer2/extractor/mp4/g$b;

    if-nez v2, :cond_3

    .line 3
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->g:Landroid/util/SparseArray;

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/g;->i(Landroid/util/SparseArray;)Lcom/google/android/exoplayer2/extractor/mp4/g$b;

    move-result-object v2

    if-nez v2, :cond_1

    .line 4
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->x:J

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/c1/i;->k()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v3, v2

    if-ltz v3, :cond_0

    .line 5
    invoke-interface {v1, v3}, Lcom/google/android/exoplayer2/c1/i;->h(I)V

    .line 6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/mp4/g;->a()V

    return v7

    .line 7
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "Offset to end of mdat was negative."

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_1
    iget-object v8, v2, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->b:Lcom/google/android/exoplayer2/extractor/mp4/n;

    iget-object v8, v8, Lcom/google/android/exoplayer2/extractor/mp4/n;->g:[J

    iget v9, v2, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->h:I

    aget-wide v9, v8, v9

    .line 9
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/c1/i;->k()J

    move-result-wide v11

    sub-long/2addr v9, v11

    long-to-int v8, v9

    if-gez v8, :cond_2

    const-string v8, "FragmentedMp4Extractor"

    const-string v9, "Ignoring negative offset to sample data."

    .line 10
    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/util/o;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    .line 11
    :cond_2
    invoke-interface {v1, v8}, Lcom/google/android/exoplayer2/c1/i;->h(I)V

    .line 12
    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->C:Lcom/google/android/exoplayer2/extractor/mp4/g$b;

    .line 13
    :cond_3
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->C:Lcom/google/android/exoplayer2/extractor/mp4/g$b;

    iget-object v8, v2, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->b:Lcom/google/android/exoplayer2/extractor/mp4/n;

    iget-object v8, v8, Lcom/google/android/exoplayer2/extractor/mp4/n;->i:[I

    iget v9, v2, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->f:I

    aget v8, v8, v9

    iput v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->D:I

    .line 14
    iget v10, v2, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->i:I

    if-ge v9, v10, :cond_5

    .line 15
    invoke-interface {v1, v8}, Lcom/google/android/exoplayer2/c1/i;->h(I)V

    .line 16
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->C:Lcom/google/android/exoplayer2/extractor/mp4/g$b;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->a(Lcom/google/android/exoplayer2/extractor/mp4/g$b;)V

    .line 17
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->C:Lcom/google/android/exoplayer2/extractor/mp4/g$b;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->e()Z

    move-result v1

    if-nez v1, :cond_4

    .line 18
    iput-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->C:Lcom/google/android/exoplayer2/extractor/mp4/g$b;

    .line 19
    :cond_4
    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->s:I

    return v6

    .line 20
    :cond_5
    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->d:Lcom/google/android/exoplayer2/extractor/mp4/l;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/l;->g:I

    if-ne v2, v6, :cond_6

    const/16 v2, 0x8

    sub-int/2addr v8, v2

    .line 21
    iput v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->D:I

    .line 22
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/c1/i;->h(I)V

    .line 23
    :cond_6
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->C:Lcom/google/android/exoplayer2/extractor/mp4/g$b;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->d:Lcom/google/android/exoplayer2/extractor/mp4/l;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/l;->f:Lcom/google/android/exoplayer2/Format;

    iget-object v2, v2, Lcom/google/android/exoplayer2/Format;->l:Ljava/lang/String;

    const-string v8, "audio/ac4"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 24
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->C:Lcom/google/android/exoplayer2/extractor/mp4/g$b;

    iget v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->D:I

    const/4 v9, 0x7

    .line 25
    invoke-virtual {v2, v8, v9}, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->f(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->E:I

    .line 26
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->D:I

    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->l:Lcom/google/android/exoplayer2/util/v;

    invoke-static {v2, v8}, Lcom/google/android/exoplayer2/audio/h;->a(ILcom/google/android/exoplayer2/util/v;)V

    .line 27
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->C:Lcom/google/android/exoplayer2/extractor/mp4/g$b;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->a:Lcom/google/android/exoplayer2/c1/v;

    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->l:Lcom/google/android/exoplayer2/util/v;

    invoke-interface {v2, v8, v9}, Lcom/google/android/exoplayer2/c1/v;->b(Lcom/google/android/exoplayer2/util/v;I)V

    .line 28
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->E:I

    add-int/2addr v2, v9

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->E:I

    goto :goto_0

    .line 29
    :cond_7
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->C:Lcom/google/android/exoplayer2/extractor/mp4/g$b;

    iget v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->D:I

    .line 30
    invoke-virtual {v2, v8, v7}, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->f(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->E:I

    .line 31
    :goto_0
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->D:I

    iget v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->E:I

    add-int/2addr v2, v8

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->D:I

    .line 32
    iput v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->s:I

    .line 33
    iput v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->F:I

    .line 34
    :cond_8
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->C:Lcom/google/android/exoplayer2/extractor/mp4/g$b;

    iget-object v8, v2, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->b:Lcom/google/android/exoplayer2/extractor/mp4/n;

    .line 35
    iget-object v9, v2, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->d:Lcom/google/android/exoplayer2/extractor/mp4/l;

    .line 36
    iget-object v10, v2, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->a:Lcom/google/android/exoplayer2/c1/v;

    .line 37
    iget v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->f:I

    .line 38
    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/extractor/mp4/n;->c(I)J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    mul-long v11, v11, v13

    .line 39
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->m:Lcom/google/android/exoplayer2/util/e0;

    if-eqz v13, :cond_9

    .line 40
    invoke-virtual {v13, v11, v12}, Lcom/google/android/exoplayer2/util/e0;->a(J)J

    move-result-wide v11

    :cond_9
    move-wide v14, v11

    .line 41
    iget v11, v9, Lcom/google/android/exoplayer2/extractor/mp4/l;->j:I

    if-eqz v11, :cond_e

    .line 42
    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->i:Lcom/google/android/exoplayer2/util/v;

    iget-object v12, v12, Lcom/google/android/exoplayer2/util/v;->a:[B

    .line 43
    aput-byte v7, v12, v7

    .line 44
    aput-byte v7, v12, v6

    const/4 v13, 0x2

    .line 45
    aput-byte v7, v12, v13

    add-int/lit8 v13, v11, 0x1

    rsub-int/lit8 v11, v11, 0x4

    .line 46
    :goto_1
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->E:I

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->D:I

    if-ge v4, v3, :cond_f

    .line 47
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->F:I

    if-nez v3, :cond_c

    .line 48
    invoke-interface {v1, v12, v11, v13}, Lcom/google/android/exoplayer2/c1/i;->readFully([BII)V

    .line 49
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->i:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 50
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->i:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v3

    if-lt v3, v6, :cond_b

    add-int/lit8 v3, v3, -0x1

    .line 51
    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->F:I

    .line 52
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->h:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 53
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->h:Lcom/google/android/exoplayer2/util/v;

    invoke-interface {v10, v3, v5}, Lcom/google/android/exoplayer2/c1/v;->b(Lcom/google/android/exoplayer2/util/v;I)V

    .line 54
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->i:Lcom/google/android/exoplayer2/util/v;

    invoke-interface {v10, v3, v6}, Lcom/google/android/exoplayer2/c1/v;->b(Lcom/google/android/exoplayer2/util/v;I)V

    .line 55
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->J:[Lcom/google/android/exoplayer2/c1/v;

    array-length v3, v3

    if-lez v3, :cond_a

    iget-object v3, v9, Lcom/google/android/exoplayer2/extractor/mp4/l;->f:Lcom/google/android/exoplayer2/Format;

    iget-object v3, v3, Lcom/google/android/exoplayer2/Format;->l:Ljava/lang/String;

    aget-byte v4, v12, v5

    .line 56
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/s;->g(Ljava/lang/String;B)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    goto :goto_2

    :cond_a
    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->G:Z

    .line 57
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->E:I

    add-int/lit8 v3, v3, 0x5

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->E:I

    .line 58
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->D:I

    add-int/2addr v3, v11

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->D:I

    const/4 v3, 0x0

    goto :goto_1

    .line 59
    :cond_b
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "Invalid NAL length"

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_c
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->G:Z

    if-eqz v4, :cond_d

    .line 61
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->j:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/util/v;->I(I)V

    .line 62
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->j:Lcom/google/android/exoplayer2/util/v;

    iget-object v3, v3, Lcom/google/android/exoplayer2/util/v;->a:[B

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->F:I

    invoke-interface {v1, v3, v7, v4}, Lcom/google/android/exoplayer2/c1/i;->readFully([BII)V

    .line 63
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->j:Lcom/google/android/exoplayer2/util/v;

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->F:I

    invoke-interface {v10, v3, v4}, Lcom/google/android/exoplayer2/c1/v;->b(Lcom/google/android/exoplayer2/util/v;I)V

    .line 64
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->F:I

    .line 65
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->j:Lcom/google/android/exoplayer2/util/v;

    iget-object v5, v4, Lcom/google/android/exoplayer2/util/v;->a:[B

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/v;->d()I

    move-result v4

    invoke-static {v5, v4}, Lcom/google/android/exoplayer2/util/s;->k([BI)I

    move-result v4

    .line 66
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->j:Lcom/google/android/exoplayer2/util/v;

    iget-object v6, v9, Lcom/google/android/exoplayer2/extractor/mp4/l;->f:Lcom/google/android/exoplayer2/Format;

    iget-object v6, v6, Lcom/google/android/exoplayer2/Format;->l:Ljava/lang/String;

    const-string v7, "video/hevc"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 67
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->j:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/util/v;->L(I)V

    .line 68
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->j:Lcom/google/android/exoplayer2/util/v;

    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->J:[Lcom/google/android/exoplayer2/c1/v;

    invoke-static {v14, v15, v4, v5}, Lcom/google/android/exoplayer2/text/l/g;->a(JLcom/google/android/exoplayer2/util/v;[Lcom/google/android/exoplayer2/c1/v;)V

    goto :goto_3

    :cond_d
    const/4 v4, 0x0

    .line 69
    invoke-interface {v10, v1, v3, v4}, Lcom/google/android/exoplayer2/c1/v;->a(Lcom/google/android/exoplayer2/c1/i;IZ)I

    move-result v3

    .line 70
    :goto_3
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->E:I

    add-int/2addr v4, v3

    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->E:I

    .line 71
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->F:I

    sub-int/2addr v4, v3

    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->F:I

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto/16 :goto_1

    .line 72
    :cond_e
    :goto_4
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->E:I

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->D:I

    if-ge v3, v4, :cond_f

    sub-int/2addr v4, v3

    const/4 v3, 0x0

    .line 73
    invoke-interface {v10, v1, v4, v3}, Lcom/google/android/exoplayer2/c1/v;->a(Lcom/google/android/exoplayer2/c1/i;IZ)I

    move-result v4

    .line 74
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->E:I

    add-int/2addr v5, v4

    iput v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->E:I

    goto :goto_4

    .line 75
    :cond_f
    iget-object v1, v8, Lcom/google/android/exoplayer2/extractor/mp4/n;->l:[Z

    aget-boolean v1, v1, v2

    .line 76
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->C:Lcom/google/android/exoplayer2/extractor/mp4/g$b;

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->b(Lcom/google/android/exoplayer2/extractor/mp4/g$b;)Lcom/google/android/exoplayer2/extractor/mp4/m;

    move-result-object v2

    if-eqz v2, :cond_10

    const/high16 v3, 0x40000000    # 2.0f

    or-int/2addr v1, v3

    .line 77
    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/m;->c:Lcom/google/android/exoplayer2/c1/v$a;

    move v13, v1

    move-object/from16 v16, v2

    goto :goto_5

    :cond_10
    move v13, v1

    const/16 v16, 0x0

    .line 78
    :goto_5
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->D:I

    const/4 v2, 0x0

    move-wide v11, v14

    move-wide v3, v14

    move v14, v1

    move v15, v2

    invoke-interface/range {v10 .. v16}, Lcom/google/android/exoplayer2/c1/v;->c(JIIILcom/google/android/exoplayer2/c1/v$a;)V

    .line 79
    invoke-direct {v0, v3, v4}, Lcom/google/android/exoplayer2/extractor/mp4/g;->s(J)V

    .line 80
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->C:Lcom/google/android/exoplayer2/extractor/mp4/g$b;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->e()Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x0

    .line 81
    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->C:Lcom/google/android/exoplayer2/extractor/mp4/g$b;

    :cond_11
    const/4 v1, 0x3

    .line 82
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->s:I

    const/4 v1, 0x1

    return v1
.end method

.method private static N(I)Z
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

.method private static O(I)Z
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

.method private a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->s:I

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->v:I

    return-void
.end method

.method private d(Landroid/util/SparseArray;I)Lcom/google/android/exoplayer2/extractor/mp4/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/mp4/e;",
            ">;I)",
            "Lcom/google/android/exoplayer2/extractor/mp4/e;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/extractor/mp4/e;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/extractor/mp4/e;

    return-object p1
.end method

.method private static e(Ljava/util/List;)Lcom/google/android/exoplayer2/drm/DrmInitData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/extractor/mp4/c$b;",
            ">;)",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 2
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/c$b;

    .line 3
    iget v5, v4, Lcom/google/android/exoplayer2/extractor/mp4/c;->a:I

    const v6, 0x70737368    # 3.013775E29f

    if-ne v5, v6, :cond_2

    if-nez v3, :cond_0

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :cond_0
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/c$b;->b:Lcom/google/android/exoplayer2/util/v;

    iget-object v4, v4, Lcom/google/android/exoplayer2/util/v;->a:[B

    .line 6
    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/mp4/j;->d([B)Ljava/util/UUID;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v4, "FragmentedMp4Extractor"

    const-string v5, "Skipped pssh atom (failed to extract uuid)"

    .line 7
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/o;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_1
    new-instance v6, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    const-string v7, "video/mp4"

    invoke-direct {v6, v5, v7, v4}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    new-instance v1, Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-direct {v1, v3}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>(Ljava/util/List;)V

    :goto_2
    return-object v1
.end method

.method private static i(Landroid/util/SparseArray;)Lcom/google/android/exoplayer2/extractor/mp4/g$b;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/mp4/g$b;",
            ">;)",
            "Lcom/google/android/exoplayer2/extractor/mp4/g$b;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    .line 2
    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/extractor/mp4/g$b;

    .line 3
    iget v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->h:I

    iget-object v7, v5, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->b:Lcom/google/android/exoplayer2/extractor/mp4/n;

    iget v8, v7, Lcom/google/android/exoplayer2/extractor/mp4/n;->e:I

    if-ne v6, v8, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/n;->g:[J

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

.method private static j(Landroid/util/SparseArray;I)Lcom/google/android/exoplayer2/extractor/mp4/g$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/mp4/g$b;",
            ">;I)",
            "Lcom/google/android/exoplayer2/extractor/mp4/g$b;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;

    return-object p0
.end method

.method static synthetic k()[Lcom/google/android/exoplayer2/c1/h;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/c1/h;

    .line 1
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp4/g;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/mp4/g;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private l()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->I:[Lcom/google/android/exoplayer2/c1/v;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/exoplayer2/c1/v;

    .line 2
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->I:[Lcom/google/android/exoplayer2/c1/v;

    .line 3
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->r:Lcom/google/android/exoplayer2/c1/v;

    if-eqz v3, :cond_0

    aput-object v3, v0, v1

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 4
    :goto_0
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->d:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    .line 5
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->H:Lcom/google/android/exoplayer2/c1/j;

    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->g:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    invoke-interface {v6, v7, v5}, Lcom/google/android/exoplayer2/c1/j;->t(II)Lcom/google/android/exoplayer2/c1/v;

    move-result-object v5

    aput-object v5, v0, v3

    move v3, v4

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->I:[Lcom/google/android/exoplayer2/c1/v;

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/c1/v;

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->I:[Lcom/google/android/exoplayer2/c1/v;

    .line 8
    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 9
    sget-object v6, Lcom/google/android/exoplayer2/extractor/mp4/g;->c:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v5, v6}, Lcom/google/android/exoplayer2/c1/v;->d(Lcom/google/android/exoplayer2/Format;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->J:[Lcom/google/android/exoplayer2/c1/v;

    if-nez v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/exoplayer2/c1/v;

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->J:[Lcom/google/android/exoplayer2/c1/v;

    .line 12
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->J:[Lcom/google/android/exoplayer2/c1/v;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->H:Lcom/google/android/exoplayer2/c1/j;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->g:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    const/4 v4, 0x3

    invoke-interface {v0, v3, v4}, Lcom/google/android/exoplayer2/c1/j;->t(II)Lcom/google/android/exoplayer2/c1/v;

    move-result-object v0

    .line 14
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->f:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/Format;

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/c1/v;->d(Lcom/google/android/exoplayer2/Format;)V

    .line 15
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->J:[Lcom/google/android/exoplayer2/c1/v;

    aput-object v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private n(Lcom/google/android/exoplayer2/extractor/mp4/c$a;)V
    .locals 2

    .line 1
    iget v0, p1, Lcom/google/android/exoplayer2/extractor/mp4/c;->a:I

    const v1, 0x6d6f6f76

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/g;->r(Lcom/google/android/exoplayer2/extractor/mp4/c$a;)V

    goto :goto_0

    :cond_0
    const v1, 0x6d6f6f66

    if-ne v0, v1, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/g;->q(Lcom/google/android/exoplayer2/extractor/mp4/c$a;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/c$a;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->d(Lcom/google/android/exoplayer2/extractor/mp4/c$a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private o(Lcom/google/android/exoplayer2/util/v;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->I:[Lcom/google/android/exoplayer2/c1/v;

    if-eqz v2, :cond_7

    array-length v2, v2

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    const/16 v2, 0x8

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v2

    .line 4
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/c;->c(I)I

    move-result v2

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_1

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping unsupported emsg version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentedMp4Extractor"

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/o;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/v;->B()J

    move-result-wide v11

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/v;->E()J

    move-result-wide v5

    const-wide/32 v7, 0xf4240

    move-wide v9, v11

    invoke-static/range {v5 .. v10}, Lcom/google/android/exoplayer2/util/h0;->l0(JJJ)J

    move-result-wide v13

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/v;->B()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    invoke-static/range {v5 .. v10}, Lcom/google/android/exoplayer2/util/h0;->l0(JJJ)J

    move-result-wide v5

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/v;->B()J

    move-result-wide v7

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/v;->t()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/v;->t()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object/from16 v19, v2

    move-wide/from16 v21, v5

    move-wide/from16 v23, v7

    move-object/from16 v20, v9

    move-wide v7, v3

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/v;->t()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/v;->t()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Ljava/lang/String;

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/v;->B()J

    move-result-wide v5

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/v;->B()J

    move-result-wide v10

    const-wide/32 v12, 0xf4240

    move-wide v14, v5

    invoke-static/range {v10 .. v15}, Lcom/google/android/exoplayer2/util/h0;->l0(JJJ)J

    move-result-wide v7

    .line 16
    iget-wide v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->B:J

    cmp-long v12, v10, v3

    if-eqz v12, :cond_3

    add-long/2addr v10, v7

    move-wide/from16 v16, v10

    goto :goto_0

    :cond_3
    move-wide/from16 v16, v3

    .line 17
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/v;->B()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    move-wide v14, v5

    invoke-static/range {v10 .. v15}, Lcom/google/android/exoplayer2/util/h0;->l0(JJJ)J

    move-result-wide v5

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/v;->B()J

    move-result-wide v10

    move-object/from16 v19, v2

    move-wide/from16 v21, v5

    move-object/from16 v20, v9

    move-wide/from16 v23, v10

    move-wide/from16 v13, v16

    .line 19
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/v;->a()I

    move-result v2

    new-array v2, v2, [B

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/v;->a()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6, v5}, Lcom/google/android/exoplayer2/util/v;->h([BII)V

    .line 21
    new-instance v1, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    move-object/from16 v18, v1

    move-object/from16 v25, v2

    invoke-direct/range {v18 .. v25}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    .line 22
    new-instance v2, Lcom/google/android/exoplayer2/util/v;

    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->n:Lcom/google/android/exoplayer2/metadata/emsg/b;

    .line 23
    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/metadata/emsg/b;->a(Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)[B

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/util/v;-><init>([B)V

    .line 24
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/v;->a()I

    move-result v1

    .line 25
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->I:[Lcom/google/android/exoplayer2/c1/v;

    array-length v9, v5

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_4

    aget-object v11, v5, v10

    .line 26
    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 27
    invoke-interface {v11, v2, v1}, Lcom/google/android/exoplayer2/c1/v;->b(Lcom/google/android/exoplayer2/util/v;I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    cmp-long v2, v13, v3

    if-nez v2, :cond_5

    .line 28
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->q:Ljava/util/ArrayDeque;

    new-instance v3, Lcom/google/android/exoplayer2/extractor/mp4/g$a;

    invoke-direct {v3, v7, v8, v1}, Lcom/google/android/exoplayer2/extractor/mp4/g$a;-><init>(JI)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 29
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->y:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->y:I

    goto :goto_4

    .line 30
    :cond_5
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->m:Lcom/google/android/exoplayer2/util/e0;

    if-eqz v2, :cond_6

    .line 31
    invoke-virtual {v2, v13, v14}, Lcom/google/android/exoplayer2/util/e0;->a(J)J

    move-result-wide v13

    .line 32
    :cond_6
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->I:[Lcom/google/android/exoplayer2/c1/v;

    array-length v3, v2

    :goto_3
    if-ge v6, v3, :cond_7

    aget-object v15, v2, v6

    const/16 v18, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-wide/from16 v16, v13

    move/from16 v19, v1

    .line 33
    invoke-interface/range {v15 .. v21}, Lcom/google/android/exoplayer2/c1/v;->c(JIIILcom/google/android/exoplayer2/c1/v$a;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    return-void
.end method

.method private p(Lcom/google/android/exoplayer2/extractor/mp4/c$b;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->p:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/extractor/mp4/c$a;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->e(Lcom/google/android/exoplayer2/extractor/mp4/c$b;)V

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p1, Lcom/google/android/exoplayer2/extractor/mp4/c;->a:I

    const v1, 0x73696478

    if-ne v0, v1, :cond_1

    .line 4
    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/c$b;->b:Lcom/google/android/exoplayer2/util/v;

    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/mp4/g;->A(Lcom/google/android/exoplayer2/util/v;J)Landroid/util/Pair;

    move-result-object p1

    .line 5
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->B:J

    .line 6
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->H:Lcom/google/android/exoplayer2/c1/j;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/c1/t;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/c1/j;->c(Lcom/google/android/exoplayer2/c1/t;)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->K:Z

    goto :goto_0

    :cond_1
    const p2, 0x656d7367

    if-ne v0, p2, :cond_2

    .line 8
    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/c$b;->b:Lcom/google/android/exoplayer2/util/v;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/g;->o(Lcom/google/android/exoplayer2/util/v;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private q(Lcom/google/android/exoplayer2/extractor/mp4/c$a;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->g:Landroid/util/SparseArray;

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->d:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->k:[B

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/g;->u(Lcom/google/android/exoplayer2/extractor/mp4/c$a;Landroid/util/SparseArray;I[B)V

    .line 2
    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->c:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/mp4/g;->e(Ljava/util/List;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->g:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 4
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->g:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp4/g$b;

    invoke-virtual {v3, p1}, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->j(Lcom/google/android/exoplayer2/drm/DrmInitData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->z:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v1, v3

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->g:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_1
    if-ge v0, p1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->g:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/g$b;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->z:J

    invoke-virtual {v1, v5, v6}, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->h(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8
    :cond_1
    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->z:J

    :cond_2
    return-void
.end method

.method private r(Lcom/google/android/exoplayer2/extractor/mp4/c$a;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->e:Lcom/google/android/exoplayer2/extractor/mp4/l;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v5, "Unexpected moov box."

    invoke-static {v2, v5}, Lcom/google/android/exoplayer2/util/e;->g(ZLjava/lang/Object;)V

    .line 2
    iget-object v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->c:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/g;->e(Ljava/util/List;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v2

    const v5, 0x6d766578

    .line 3
    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->f(I)Lcom/google/android/exoplayer2/extractor/mp4/c$a;

    move-result-object v5

    .line 4
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    iget-object v8, v5, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move-wide v13, v6

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_3

    .line 6
    iget-object v7, v5, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->c:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/extractor/mp4/c$b;

    .line 7
    iget v9, v7, Lcom/google/android/exoplayer2/extractor/mp4/c;->a:I

    const v10, 0x74726578

    if-ne v9, v10, :cond_1

    .line 8
    iget-object v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/c$b;->b:Lcom/google/android/exoplayer2/util/v;

    invoke-static {v7}, Lcom/google/android/exoplayer2/extractor/mp4/g;->E(Lcom/google/android/exoplayer2/util/v;)Landroid/util/Pair;

    move-result-object v7

    .line 9
    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v12, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_1
    const v10, 0x6d656864

    if-ne v9, v10, :cond_2

    .line 10
    iget-object v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/c$b;->b:Lcom/google/android/exoplayer2/util/v;

    invoke-static {v7}, Lcom/google/android/exoplayer2/extractor/mp4/g;->t(Lcom/google/android/exoplayer2/util/v;)J

    move-result-wide v9

    move-wide v13, v9

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 11
    :cond_3
    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    .line 12
    iget-object v5, v1, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v11, :cond_7

    .line 13
    iget-object v5, v1, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->d:Ljava/util/List;

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/extractor/mp4/c$a;

    .line 14
    iget v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/c;->a:I

    const v7, 0x7472616b

    if-ne v6, v7, :cond_5

    const v6, 0x6d766864

    .line 15
    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/c$b;

    move-result-object v6

    iget v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->d:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_4

    const/16 v16, 0x1

    goto :goto_4

    :cond_4
    const/16 v16, 0x0

    :goto_4
    const/16 v17, 0x0

    move-wide v7, v13

    move-object v9, v2

    move/from16 v18, v10

    move/from16 v10, v16

    move/from16 v16, v11

    move/from16 v11, v17

    .line 16
    invoke-static/range {v5 .. v11}, Lcom/google/android/exoplayer2/extractor/mp4/d;->v(Lcom/google/android/exoplayer2/extractor/mp4/c$a;Lcom/google/android/exoplayer2/extractor/mp4/c$b;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZ)Lcom/google/android/exoplayer2/extractor/mp4/l;

    move-result-object v5

    .line 17
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/extractor/mp4/g;->m(Lcom/google/android/exoplayer2/extractor/mp4/l;)Lcom/google/android/exoplayer2/extractor/mp4/l;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 18
    iget v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/l;->a:I

    invoke-virtual {v15, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_5

    :cond_5
    move/from16 v18, v10

    move/from16 v16, v11

    :cond_6
    :goto_5
    add-int/lit8 v10, v18, 0x1

    move/from16 v11, v16

    goto :goto_3

    .line 19
    :cond_7
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 20
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->g:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_9

    :goto_6
    if-ge v4, v1, :cond_8

    .line 21
    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/mp4/l;

    .line 22
    new-instance v3, Lcom/google/android/exoplayer2/extractor/mp4/g$b;

    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->H:Lcom/google/android/exoplayer2/c1/j;

    iget v6, v2, Lcom/google/android/exoplayer2/extractor/mp4/l;->b:I

    invoke-interface {v5, v4, v6}, Lcom/google/android/exoplayer2/c1/j;->t(II)Lcom/google/android/exoplayer2/c1/v;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/google/android/exoplayer2/extractor/mp4/g$b;-><init>(Lcom/google/android/exoplayer2/c1/v;)V

    .line 23
    iget v5, v2, Lcom/google/android/exoplayer2/extractor/mp4/l;->a:I

    invoke-direct {v0, v12, v5}, Lcom/google/android/exoplayer2/extractor/mp4/g;->d(Landroid/util/SparseArray;I)Lcom/google/android/exoplayer2/extractor/mp4/e;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->d(Lcom/google/android/exoplayer2/extractor/mp4/l;Lcom/google/android/exoplayer2/extractor/mp4/e;)V

    .line 24
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->g:Landroid/util/SparseArray;

    iget v6, v2, Lcom/google/android/exoplayer2/extractor/mp4/l;->a:I

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->A:J

    iget-wide v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/l;->e:J

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->A:J

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 26
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/mp4/g;->l()V

    .line 27
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->H:Lcom/google/android/exoplayer2/c1/j;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/c1/j;->o()V

    goto :goto_9

    .line 28
    :cond_9
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->g:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ne v2, v1, :cond_a

    goto :goto_7

    :cond_a
    const/4 v3, 0x0

    :goto_7
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/e;->f(Z)V

    :goto_8
    if-ge v4, v1, :cond_b

    .line 29
    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/mp4/l;

    .line 30
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->g:Landroid/util/SparseArray;

    iget v5, v2, Lcom/google/android/exoplayer2/extractor/mp4/l;->a:I

    .line 31
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp4/g$b;

    iget v5, v2, Lcom/google/android/exoplayer2/extractor/mp4/l;->a:I

    .line 32
    invoke-direct {v0, v12, v5}, Lcom/google/android/exoplayer2/extractor/mp4/g;->d(Landroid/util/SparseArray;I)Lcom/google/android/exoplayer2/extractor/mp4/e;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->d(Lcom/google/android/exoplayer2/extractor/mp4/l;Lcom/google/android/exoplayer2/extractor/mp4/e;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_b
    :goto_9
    return-void
.end method

.method private s(J)V
    .locals 13

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/g$a;

    .line 3
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->y:I

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/g$a;->b:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->y:I

    .line 4
    iget-wide v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/g$a;->a:J

    add-long/2addr v1, p1

    .line 5
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->m:Lcom/google/android/exoplayer2/util/e0;

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v3, v1, v2}, Lcom/google/android/exoplayer2/util/e0;->a(J)J

    move-result-wide v1

    .line 7
    :cond_1
    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->I:[Lcom/google/android/exoplayer2/c1/v;

    array-length v11, v10

    const/4 v3, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v11, :cond_0

    aget-object v3, v10, v12

    const/4 v6, 0x1

    .line 8
    iget v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/g$a;->b:I

    iget v8, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->y:I

    const/4 v9, 0x0

    move-wide v4, v1

    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer2/c1/v;->c(JIIILcom/google/android/exoplayer2/c1/v$a;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static t(Lcom/google/android/exoplayer2/util/v;)J
    .locals 2

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v0

    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/c;->c(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->B()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->E()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private static u(Lcom/google/android/exoplayer2/extractor/mp4/c$a;Landroid/util/SparseArray;I[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/mp4/c$a;",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/mp4/g$b;",
            ">;I[B)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/mp4/c$a;

    .line 3
    iget v3, v2, Lcom/google/android/exoplayer2/extractor/mp4/c;->a:I

    const v4, 0x74726166

    if-ne v3, v4, :cond_0

    .line 4
    invoke-static {v2, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/mp4/g;->D(Lcom/google/android/exoplayer2/extractor/mp4/c$a;Landroid/util/SparseArray;I[B)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static v(Lcom/google/android/exoplayer2/util/v;Lcom/google/android/exoplayer2/extractor/mp4/n;)V
    .locals 5

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v1

    .line 3
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/c;->b(I)I

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->D()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 6
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/c;->c(I)I

    move-result v0

    .line 7
    iget-wide v1, p1, Lcom/google/android/exoplayer2/extractor/mp4/n;->d:J

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->B()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->E()J

    move-result-wide v3

    :goto_0
    add-long/2addr v1, v3

    iput-wide v1, p1, Lcom/google/android/exoplayer2/extractor/mp4/n;->d:J

    return-void

    .line 9
    :cond_2
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected saio entry count: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static w(Lcom/google/android/exoplayer2/extractor/mp4/m;Lcom/google/android/exoplayer2/util/v;Lcom/google/android/exoplayer2/extractor/mp4/n;)V
    .locals 7

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/m;->d:I

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v1

    .line 4
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/c;->b(I)I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->z()I

    move-result v0

    .line 7
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->D()I

    move-result v1

    .line 8
    iget v3, p2, Lcom/google/android/exoplayer2/extractor/mp4/n;->f:I

    if-ne v1, v3, :cond_5

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p2, Lcom/google/android/exoplayer2/extractor/mp4/n;->n:[Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    .line 10
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->z()I

    move-result v6

    add-int/2addr v5, v6

    if-le v6, p0, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 11
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

    .line 12
    iget-object p0, p2, Lcom/google/android/exoplayer2/extractor/mp4/n;->n:[Z

    invoke-static {p0, v3, v1, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 13
    :cond_4
    invoke-virtual {p2, v5}, Lcom/google/android/exoplayer2/extractor/mp4/n;->d(I)V

    return-void

    .line 14
    :cond_5
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Length mismatch: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/google/android/exoplayer2/extractor/mp4/n;->f:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static x(Lcom/google/android/exoplayer2/util/v;ILcom/google/android/exoplayer2/extractor/mp4/n;)V
    .locals 3

    add-int/lit8 p1, p1, 0x8

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result p1

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/mp4/c;->b(I)I

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

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->D()I

    move-result v1

    .line 5
    iget v2, p2, Lcom/google/android/exoplayer2/extractor/mp4/n;->f:I

    if-ne v1, v2, :cond_1

    .line 6
    iget-object v2, p2, Lcom/google/android/exoplayer2/extractor/mp4/n;->n:[Z

    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->a()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/extractor/mp4/n;->d(I)V

    .line 8
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/n;->b(Lcom/google/android/exoplayer2/util/v;)V

    return-void

    .line 9
    :cond_1
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Length mismatch: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/google/android/exoplayer2/extractor/mp4/n;->f:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_2
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string p1, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static y(Lcom/google/android/exoplayer2/util/v;Lcom/google/android/exoplayer2/extractor/mp4/n;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/g;->x(Lcom/google/android/exoplayer2/util/v;ILcom/google/android/exoplayer2/extractor/mp4/n;)V

    return-void
.end method

.method private static z(Lcom/google/android/exoplayer2/util/v;Lcom/google/android/exoplayer2/util/v;Ljava/lang/String;Lcom/google/android/exoplayer2/extractor/mp4/n;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/16 v3, 0x8

    .line 1
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v4

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v5

    const v6, 0x73656967

    if-eq v5, v6, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/mp4/c;->c(I)I

    move-result v4

    const/4 v5, 0x4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_1

    .line 5
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    .line 6
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v0

    if-ne v0, v7, :cond_a

    .line 7
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v0

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v3

    if-eq v3, v6, :cond_2

    return-void

    .line 10
    :cond_2
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/c;->c(I)I

    move-result v0

    if-ne v0, v7, :cond_4

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/v;->B()J

    move-result-wide v3

    const-wide/16 v8, 0x0

    cmp-long v0, v3, v8

    if-eqz v0, :cond_3

    goto :goto_0

    .line 12
    :cond_3
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Variable length description in sgpd found (unsupported)"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v3, 0x2

    if-lt v0, v3, :cond_5

    .line 13
    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    .line 14
    :cond_5
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/v;->B()J

    move-result-wide v3

    const-wide/16 v8, 0x1

    cmp-long v0, v3, v8

    if-nez v0, :cond_9

    .line 15
    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/v;->z()I

    move-result v0

    and-int/lit16 v3, v0, 0xf0

    shr-int/lit8 v13, v3, 0x4

    and-int/lit8 v14, v0, 0xf

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/v;->z()I

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

    .line 18
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/v;->z()I

    move-result v11

    const/16 v0, 0x10

    new-array v12, v0, [B

    .line 19
    invoke-virtual {v1, v12, v3, v0}, Lcom/google/android/exoplayer2/util/v;->h([BII)V

    const/4 v0, 0x0

    if-nez v11, :cond_8

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/v;->z()I

    move-result v0

    .line 21
    new-array v4, v0, [B

    .line 22
    invoke-virtual {v1, v4, v3, v0}, Lcom/google/android/exoplayer2/util/v;->h([BII)V

    move-object v15, v4

    goto :goto_2

    :cond_8
    move-object v15, v0

    .line 23
    :goto_2
    iput-boolean v7, v2, Lcom/google/android/exoplayer2/extractor/mp4/n;->m:Z

    .line 24
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/m;

    move-object v8, v0

    move-object/from16 v10, p2

    invoke-direct/range {v8 .. v15}, Lcom/google/android/exoplayer2/extractor/mp4/m;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v0, v2, Lcom/google/android/exoplayer2/extractor/mp4/n;->o:Lcom/google/android/exoplayer2/extractor/mp4/m;

    return-void

    .line 25
    :cond_9
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Entry count in sgpd != 1 (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_a
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Entry count in sbgp != 1 (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/c1/i;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/mp4/k;->b(Lcom/google/android/exoplayer2/c1/i;)Z

    move-result p1

    return p1
.end method

.method public f(Lcom/google/android/exoplayer2/c1/i;Lcom/google/android/exoplayer2/c1/s;)I
    .locals 1

    .line 1
    :cond_0
    :goto_0
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->s:I

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/g;->M(Lcom/google/android/exoplayer2/c1/i;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/g;->L(Lcom/google/android/exoplayer2/c1/i;)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/g;->K(Lcom/google/android/exoplayer2/c1/i;)V

    goto :goto_0

    .line 5
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/g;->J(Lcom/google/android/exoplayer2/c1/i;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, -0x1

    return p1
.end method

.method public g(Lcom/google/android/exoplayer2/c1/j;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->H:Lcom/google/android/exoplayer2/c1/j;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->e:Lcom/google/android/exoplayer2/extractor/mp4/l;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp4/g$b;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/l;->b:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Lcom/google/android/exoplayer2/c1/j;->t(II)Lcom/google/android/exoplayer2/c1/v;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/extractor/mp4/g$b;-><init>(Lcom/google/android/exoplayer2/c1/v;)V

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->e:Lcom/google/android/exoplayer2/extractor/mp4/l;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/e;

    invoke-direct {v0, v2, v2, v2, v2}, Lcom/google/android/exoplayer2/extractor/mp4/e;-><init>(IIII)V

    invoke-virtual {v1, p1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->d(Lcom/google/android/exoplayer2/extractor/mp4/l;Lcom/google/android/exoplayer2/extractor/mp4/e;)V

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->g:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/g;->l()V

    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->H:Lcom/google/android/exoplayer2/c1/j;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/j;->o()V

    :cond_0
    return-void
.end method

.method public h(JJ)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->g:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->g:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/g$b;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->g()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->q:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 4
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->y:I

    .line 5
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->z:J

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->p:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/g;->a()V

    return-void
.end method

.method protected m(Lcom/google/android/exoplayer2/extractor/mp4/l;)Lcom/google/android/exoplayer2/extractor/mp4/l;
    .locals 0

    return-object p1
.end method
