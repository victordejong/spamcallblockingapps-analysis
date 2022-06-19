.class public final Lcom/google/android/exoplayer2/extractor/f/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/h;
.implements Lcom/google/android/exoplayer2/extractor/v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/f/g$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/exoplayer2/extractor/l;


# instance fields
.field public b:Lcom/google/android/exoplayer2/extractor/j;

.field private final c:I

.field private final d:Lcom/google/android/exoplayer2/util/u;

.field private final e:Lcom/google/android/exoplayer2/util/u;

.field private final f:Lcom/google/android/exoplayer2/util/u;

.field private final g:Lcom/google/android/exoplayer2/util/u;

.field private final h:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/extractor/f/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/android/exoplayer2/extractor/f/i;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:I

.field private m:J

.field private n:I

.field private o:Lcom/google/android/exoplayer2/util/u;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:[Lcom/google/android/exoplayer2/extractor/f/g$a;

.field private u:[[J

.field private v:I

.field private w:J

.field private x:I

.field private y:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    sget-object v0, Lcom/google/android/exoplayer2/extractor/f/-$$Lambda$g$F9RNb1Ob2Kb87TQr4Aa1FBPMKS4;->INSTANCE:Lcom/google/android/exoplayer2/extractor/f/-$$Lambda$g$F9RNb1Ob2Kb87TQr4Aa1FBPMKS4;

    sput-object v0, Lcom/google/android/exoplayer2/extractor/f/g;->a:Lcom/google/android/exoplayer2/extractor/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 175
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/f/g;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/f/g;->c:I

    const/4 v0, 0x4

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 187
    :goto_0
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/f/g;->k:I

    .line 188
    new-instance p1, Lcom/google/android/exoplayer2/extractor/f/i;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/f/i;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/g;->i:Lcom/google/android/exoplayer2/extractor/f/i;

    .line 189
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/g;->j:Ljava/util/List;

    .line 190
    new-instance p1, Lcom/google/android/exoplayer2/util/u;

    const/16 v1, 0x10

    invoke-direct {p1, v1}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/g;->g:Lcom/google/android/exoplayer2/util/u;

    .line 191
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/g;->h:Ljava/util/ArrayDeque;

    .line 192
    new-instance p1, Lcom/google/android/exoplayer2/util/u;

    sget-object v1, Lcom/google/android/exoplayer2/util/s;->a:[B

    invoke-direct {p1, v1}, Lcom/google/android/exoplayer2/util/u;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/g;->d:Lcom/google/android/exoplayer2/util/u;

    .line 193
    new-instance p1, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/g;->e:Lcom/google/android/exoplayer2/util/u;

    .line 194
    new-instance p1, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/u;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/g;->f:Lcom/google/android/exoplayer2/util/u;

    const/4 p1, -0x1

    .line 195
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/f/g;->p:I

    return-void
.end method

.method private static a(I)I
    .locals 1

    const v0, 0x68656963

    if-eq p0, v0, :cond_1

    const v0, 0x71742020

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method private static a(Lcom/google/android/exoplayer2/extractor/f/n;J)I
    .locals 2

    .line 823
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/f/n;->a(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 826
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/f/n;->b(J)I

    move-result v0

    :cond_0
    return v0
.end method

.method private static a(Lcom/google/android/exoplayer2/extractor/f/n;JJ)J
    .locals 0

    .line 803
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/f/g;->a(Lcom/google/android/exoplayer2/extractor/f/n;J)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return-wide p3

    .line 807
    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/f/n;->c:[J

    aget-wide p1, p0, p1

    .line 808
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/extractor/f/k;)Lcom/google/android/exoplayer2/extractor/f/k;
    .locals 0

    return-object p0
.end method

.method private a(Lcom/google/android/exoplayer2/extractor/f/a$a;)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 463
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 468
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/f/g;->x:I

    const/4 v11, 0x1

    if-ne v2, v11, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 469
    :goto_0
    new-instance v12, Lcom/google/android/exoplayer2/extractor/r;

    invoke-direct {v12}, Lcom/google/android/exoplayer2/extractor/r;-><init>()V

    const v2, 0x75647461

    .line 470
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/f/a$a;->c(I)Lcom/google/android/exoplayer2/extractor/f/a$b;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 473
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/f/b;->a(Lcom/google/android/exoplayer2/extractor/f/a$b;)Landroid/util/Pair;

    move-result-object v2

    .line 474
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 475
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz v3, :cond_1

    .line 477
    invoke-virtual {v12, v3}, Lcom/google/android/exoplayer2/extractor/r;->a(Lcom/google/android/exoplayer2/metadata/Metadata;)Z

    :cond_1
    move-object v14, v2

    move-object v15, v3

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    const v2, 0x6d657461

    .line 481
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/f/a$a;->d(I)Lcom/google/android/exoplayer2/extractor/f/a$a;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 483
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/f/b;->a(Lcom/google/android/exoplayer2/extractor/f/a$a;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v2

    move-object v8, v2

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    .line 486
    :goto_2
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/f/g;->c:I

    and-int/2addr v2, v11

    if-eqz v2, :cond_4

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x0

    .line 487
    sget-object v16, Lcom/google/android/exoplayer2/extractor/f/-$$Lambda$g$ufc9aTjlFv07_Pl368k76FOyDvs;->INSTANCE:Lcom/google/android/exoplayer2/extractor/f/-$$Lambda$g$ufc9aTjlFv07_Pl368k76FOyDvs;

    move-object/from16 v1, p1

    move-object v2, v12

    move-object v13, v8

    move-object/from16 v8, v16

    .line 488
    invoke-static/range {v1 .. v8}, Lcom/google/android/exoplayer2/extractor/f/b;->a(Lcom/google/android/exoplayer2/extractor/f/a$a;Lcom/google/android/exoplayer2/extractor/r;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZLcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v1

    .line 497
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/f/g;->b:Lcom/google/android/exoplayer2/extractor/j;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/j;

    .line 498
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x0

    const/4 v8, -0x1

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    :goto_4
    if-ge v7, v3, :cond_b

    .line 500
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v6, v17

    check-cast v6, Lcom/google/android/exoplayer2/extractor/f/n;

    .line 501
    iget v4, v6, Lcom/google/android/exoplayer2/extractor/f/n;->b:I

    if-eqz v4, :cond_a

    .line 504
    iget-object v4, v6, Lcom/google/android/exoplayer2/extractor/f/n;->a:Lcom/google/android/exoplayer2/extractor/f/k;

    move/from16 v19, v8

    move-object v5, v9

    .line 506
    iget-wide v8, v4, Lcom/google/android/exoplayer2/extractor/f/k;->e:J

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v20, v8, v17

    if-eqz v20, :cond_5

    iget-wide v8, v4, Lcom/google/android/exoplayer2/extractor/f/k;->e:J

    goto :goto_5

    :cond_5
    iget-wide v8, v6, Lcom/google/android/exoplayer2/extractor/f/n;->h:J

    .line 507
    :goto_5
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    move-object/from16 v20, v1

    .line 508
    new-instance v1, Lcom/google/android/exoplayer2/extractor/f/g$a;

    move/from16 v21, v3

    iget v3, v4, Lcom/google/android/exoplayer2/extractor/f/k;->b:I

    .line 509
    invoke-interface {v2, v7, v3}, Lcom/google/android/exoplayer2/extractor/j;->a(II)Lcom/google/android/exoplayer2/extractor/x;

    move-result-object v3

    invoke-direct {v1, v4, v6, v3}, Lcom/google/android/exoplayer2/extractor/f/g$a;-><init>(Lcom/google/android/exoplayer2/extractor/f/k;Lcom/google/android/exoplayer2/extractor/f/n;Lcom/google/android/exoplayer2/extractor/x;)V

    .line 513
    iget v3, v6, Lcom/google/android/exoplayer2/extractor/f/n;->e:I

    add-int/lit8 v3, v3, 0x1e

    move-wide/from16 v22, v10

    .line 514
    iget-object v10, v4, Lcom/google/android/exoplayer2/extractor/f/k;->f:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$a;

    move-result-object v10

    .line 17381
    iput v3, v10, Lcom/google/android/exoplayer2/Format$a;->l:I

    .line 516
    iget v3, v4, Lcom/google/android/exoplayer2/extractor/f/k;->b:I

    const/4 v11, 0x2

    if-ne v3, v11, :cond_6

    const-wide/16 v24, 0x0

    cmp-long v3, v8, v24

    if-lez v3, :cond_6

    iget v3, v6, Lcom/google/android/exoplayer2/extractor/f/n;->b:I

    const/4 v11, 0x1

    if-le v3, v11, :cond_6

    .line 519
    iget v3, v6, Lcom/google/android/exoplayer2/extractor/f/n;->b:I

    int-to-float v3, v3

    long-to-float v6, v8

    const v8, 0x49742400    # 1000000.0f

    div-float/2addr v6, v8

    div-float/2addr v3, v6

    .line 17449
    iput v3, v10, Lcom/google/android/exoplayer2/Format$a;->r:F

    .line 523
    :cond_6
    iget v3, v4, Lcom/google/android/exoplayer2/extractor/f/k;->b:I

    invoke-static {v3, v12, v10}, Lcom/google/android/exoplayer2/extractor/f/f;->a(ILcom/google/android/exoplayer2/extractor/r;Lcom/google/android/exoplayer2/Format$a;)V

    .line 524
    iget v3, v4, Lcom/google/android/exoplayer2/extractor/f/k;->b:I

    const/4 v6, 0x2

    new-array v8, v6, [Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v6, 0x0

    aput-object v14, v8, v6

    .line 530
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/f/g;->j:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x0

    goto :goto_6

    :cond_7
    new-instance v6, Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/f/g;->j:Ljava/util/List;

    invoke-direct {v6, v9}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    :goto_6
    const/4 v9, 0x1

    aput-object v6, v8, v9

    .line 524
    invoke-static {v3, v15, v13, v10, v8}, Lcom/google/android/exoplayer2/extractor/f/f;->a(ILcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/Format$a;[Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 531
    iget-object v3, v1, Lcom/google/android/exoplayer2/extractor/f/g$a;->c:Lcom/google/android/exoplayer2/extractor/x;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 533
    iget v3, v4, Lcom/google/android/exoplayer2/extractor/f/k;->b:I

    const/4 v4, 0x2

    move/from16 v6, v19

    if-ne v3, v4, :cond_8

    const/4 v3, -0x1

    if-ne v6, v3, :cond_9

    .line 534
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    move v8, v4

    goto :goto_7

    :cond_8
    const/4 v3, -0x1

    :cond_9
    move v8, v6

    .line 536
    :goto_7
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v10, v22

    goto :goto_8

    :cond_a
    move-object/from16 v20, v1

    move/from16 v21, v3

    move v6, v8

    move-object v5, v9

    const/4 v3, -0x1

    const/4 v9, 0x1

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    :goto_8
    add-int/lit8 v7, v7, 0x1

    move-object v9, v5

    move-object/from16 v1, v20

    move/from16 v3, v21

    goto/16 :goto_4

    :cond_b
    move v6, v8

    move-object v5, v9

    .line 538
    iput v6, v0, Lcom/google/android/exoplayer2/extractor/f/g;->v:I

    .line 539
    iput-wide v10, v0, Lcom/google/android/exoplayer2/extractor/f/g;->w:J

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/exoplayer2/extractor/f/g$a;

    .line 540
    invoke-interface {v5, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/extractor/f/g$a;

    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/f/g;->t:[Lcom/google/android/exoplayer2/extractor/f/g$a;

    .line 541
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/f/g;->a([Lcom/google/android/exoplayer2/extractor/f/g$a;)[[J

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/f/g;->u:[[J

    .line 543
    invoke-interface {v2}, Lcom/google/android/exoplayer2/extractor/j;->a()V

    .line 544
    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/extractor/j;->a(Lcom/google/android/exoplayer2/extractor/v;)V

    return-void
.end method

.method private static a([Lcom/google/android/exoplayer2/extractor/f/g$a;)[[J
    .locals 15

    .line 758
    array-length v0, p0

    new-array v0, v0, [[J

    .line 759
    array-length v1, p0

    new-array v1, v1, [I

    .line 760
    array-length v2, p0

    new-array v2, v2, [J

    .line 761
    array-length v3, p0

    new-array v3, v3, [Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 762
    :goto_0
    array-length v6, p0

    if-ge v5, v6, :cond_0

    .line 763
    aget-object v6, p0, v5

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/f/g$a;->b:Lcom/google/android/exoplayer2/extractor/f/n;

    iget v6, v6, Lcom/google/android/exoplayer2/extractor/f/n;->b:I

    new-array v6, v6, [J

    aput-object v6, v0, v5

    .line 764
    aget-object v6, p0, v5

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/f/g$a;->b:Lcom/google/android/exoplayer2/extractor/f/n;

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/f/n;->f:[J

    aget-wide v7, v6, v4

    aput-wide v7, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    .line 768
    :goto_1
    array-length v8, p0

    if-ge v7, v8, :cond_4

    const-wide v8, 0x7fffffffffffffffL

    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 771
    :goto_2
    array-length v12, p0

    if-ge v11, v12, :cond_2

    .line 772
    aget-boolean v12, v3, v11

    if-nez v12, :cond_1

    aget-wide v12, v2, v11

    cmp-long v14, v12, v8

    if-gtz v14, :cond_1

    .line 774
    aget-wide v8, v2, v11

    move v10, v11

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 777
    :cond_2
    aget v8, v1, v10

    .line 778
    aget-object v9, v0, v10

    aput-wide v5, v9, v8

    .line 779
    aget-object v9, p0, v10

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/f/g$a;->b:Lcom/google/android/exoplayer2/extractor/f/n;

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/f/n;->d:[I

    aget v9, v9, v8

    int-to-long v11, v9

    add-long/2addr v5, v11

    const/4 v9, 0x1

    add-int/2addr v8, v9

    .line 780
    aput v8, v1, v10

    .line 781
    aget-object v11, v0, v10

    array-length v11, v11

    if-ge v8, v11, :cond_3

    .line 782
    aget-object v9, p0, v10

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/f/g$a;->b:Lcom/google/android/exoplayer2/extractor/f/n;

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/f/n;->f:[J

    aget-wide v8, v9, v8

    aput-wide v8, v2, v10

    goto :goto_1

    .line 785
    :cond_3
    aput-boolean v9, v3, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private b(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 441
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/g;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/g;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/f/a$a;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/f/a$a;->b:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_2

    .line 442
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/g;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/f/a$a;

    .line 443
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/f/a$a;->a:I

    const v3, 0x6d6f6f76

    if-ne v2, v3, :cond_1

    .line 445
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/f/g;->a(Lcom/google/android/exoplayer2/extractor/f/a$a;)V

    .line 446
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/g;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 447
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/f/g;->k:I

    goto :goto_0

    .line 448
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/g;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 449
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/g;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/f/a$a;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/extractor/f/a$a;->a(Lcom/google/android/exoplayer2/extractor/f/a$a;)V

    goto :goto_0

    .line 452
    :cond_2
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/f/g;->k:I

    if-eq p1, v1, :cond_3

    .line 453
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/f/g;->c()V

    :cond_3
    return-void
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    .line 328
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/g;->k:I

    .line 329
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/g;->n:I

    return-void
.end method

.method private c(J)V
    .locals 7
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "tracks"
        }
    .end annotation

    .line 705
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/g;->t:[Lcom/google/android/exoplayer2/extractor/f/g$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 706
    iget-object v4, v3, Lcom/google/android/exoplayer2/extractor/f/g$a;->b:Lcom/google/android/exoplayer2/extractor/f/n;

    .line 707
    invoke-virtual {v4, p1, p2}, Lcom/google/android/exoplayer2/extractor/f/n;->a(J)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 710
    invoke-virtual {v4, p1, p2}, Lcom/google/android/exoplayer2/extractor/f/n;->b(J)I

    move-result v5

    .line 712
    :cond_0
    iput v5, v3, Lcom/google/android/exoplayer2/extractor/f/g$a;->d:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static synthetic d()[Lcom/google/android/exoplayer2/extractor/h;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/h;

    .line 67
    new-instance v1, Lcom/google/android/exoplayer2/extractor/f/g;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/f/g;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static synthetic lambda$F9RNb1Ob2Kb87TQr4Aa1FBPMKS4()[Lcom/google/android/exoplayer2/extractor/h;
    .locals 1

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/f/g;->d()[Lcom/google/android/exoplayer2/extractor/h;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$ufc9aTjlFv07_Pl368k76FOyDvs(Lcom/google/android/exoplayer2/extractor/f/k;)Lcom/google/android/exoplayer2/extractor/f/k;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/f/g;->a(Lcom/google/android/exoplayer2/extractor/f/k;)Lcom/google/android/exoplayer2/extractor/f/k;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/extractor/i;Lcom/google/android/exoplayer2/extractor/u;)I
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 239
    :cond_0
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/f/g;->k:I

    const v4, 0x66747970

    const-wide/16 v5, -0x1

    const/4 v7, 0x4

    const/4 v8, -0x1

    const/4 v11, 0x2

    const/16 v12, 0x8

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v3, :cond_2e

    const-wide/32 v15, 0x40000

    if-eq v3, v13, :cond_25

    const-wide/16 v17, 0x8

    if-eq v3, v11, :cond_11

    const/4 v4, 0x3

    if-ne v3, v4, :cond_10

    .line 13433
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/g;->i:Lcom/google/android/exoplayer2/extractor/f/i;

    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/f/g;->j:Ljava/util/List;

    .line 14115
    iget v15, v3, Lcom/google/android/exoplayer2/extractor/f/i;->b:I

    if-eqz v15, :cond_c

    if-eq v15, v13, :cond_a

    const/16 v13, 0xb01

    const/16 v9, 0xb00

    const/16 v10, 0x890

    if-eq v15, v11, :cond_6

    if-ne v15, v4, :cond_5

    .line 16193
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v15

    .line 16194
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->d()J

    move-result-wide v17

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v21

    sub-long v17, v17, v21

    iget v4, v3, Lcom/google/android/exoplayer2/extractor/f/i;->c:I

    int-to-long v5, v4

    sub-long v4, v17, v5

    long-to-int v5, v4

    .line 16195
    new-instance v4, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    .line 17169
    iget-object v6, v4, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 16196
    invoke-interface {v1, v6, v14, v5}, Lcom/google/android/exoplayer2/extractor/i;->b([BII)V

    .line 16198
    :goto_0
    iget-object v1, v3, Lcom/google/android/exoplayer2/extractor/f/i;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v14, v1, :cond_4

    .line 16199
    iget-object v1, v3, Lcom/google/android/exoplayer2/extractor/f/i;->a:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/f/i$a;

    .line 16200
    iget-wide v5, v1, Lcom/google/android/exoplayer2/extractor/f/i$a;->b:J

    sub-long/2addr v5, v15

    long-to-int v6, v5

    .line 16201
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 16205
    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 16206
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/u;->k()I

    move-result v5

    .line 16207
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/u;->f(I)Ljava/lang/String;

    move-result-object v6

    .line 16208
    invoke-static {v6}, Lcom/google/android/exoplayer2/extractor/f/i;->a(Ljava/lang/String;)I

    move-result v6

    .line 16210
    iget v1, v1, Lcom/google/android/exoplayer2/extractor/f/i$a;->c:I

    add-int/2addr v5, v12

    sub-int/2addr v1, v5

    if-eq v6, v10, :cond_2

    if-eq v6, v9, :cond_3

    if-eq v6, v13, :cond_3

    const/16 v1, 0xb03

    if-eq v6, v1, :cond_3

    const/16 v1, 0xb04

    if-ne v6, v1, :cond_1

    goto :goto_1

    .line 16221
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 16213
    :cond_2
    invoke-static {v4, v1}, Lcom/google/android/exoplayer2/extractor/f/i;->a(Lcom/google/android/exoplayer2/util/u;I)Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_4
    const-wide/16 v5, 0x0

    .line 14132
    iput-wide v5, v2, Lcom/google/android/exoplayer2/extractor/u;->a:J

    goto/16 :goto_4

    .line 14135
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 15157
    :cond_6
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->d()J

    move-result-wide v5

    .line 15158
    iget v7, v3, Lcom/google/android/exoplayer2/extractor/f/i;->c:I

    add-int/lit8 v7, v7, -0xc

    sub-int/2addr v7, v12

    .line 15159
    new-instance v8, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {v8, v7}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    .line 16169
    iget-object v15, v8, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 15160
    invoke-interface {v1, v15, v14, v7}, Lcom/google/android/exoplayer2/extractor/i;->b([BII)V

    const/4 v1, 0x0

    .line 15162
    :goto_2
    div-int/lit8 v15, v7, 0xc

    if-ge v1, v15, :cond_8

    .line 15163
    invoke-virtual {v8, v11}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 15164
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/u;->f()S

    move-result v15

    if-eq v15, v10, :cond_7

    if-eq v15, v9, :cond_7

    if-eq v15, v13, :cond_7

    const/16 v9, 0xb03

    if-eq v15, v9, :cond_7

    const/16 v9, 0xb04

    if-eq v15, v9, :cond_7

    .line 15178
    invoke-virtual {v8, v12}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    goto :goto_3

    .line 15173
    :cond_7
    iget v9, v3, Lcom/google/android/exoplayer2/extractor/f/i;->c:I

    int-to-long v10, v9

    sub-long v9, v5, v10

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/u;->k()I

    move-result v11

    int-to-long v12, v11

    sub-long/2addr v9, v12

    .line 15174
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/u;->k()I

    move-result v11

    .line 15175
    iget-object v12, v3, Lcom/google/android/exoplayer2/extractor/f/i;->a:Ljava/util/List;

    new-instance v13, Lcom/google/android/exoplayer2/extractor/f/i$a;

    invoke-direct {v13, v15, v9, v10, v11}, Lcom/google/android/exoplayer2/extractor/f/i$a;-><init>(IJI)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v1, v1, 0x1

    const/16 v9, 0xb00

    const/16 v10, 0x890

    const/4 v11, 0x2

    const/16 v12, 0x8

    const/16 v13, 0xb01

    goto :goto_2

    .line 15182
    :cond_8
    iget-object v1, v3, Lcom/google/android/exoplayer2/extractor/f/i;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    const-wide/16 v5, 0x0

    .line 15183
    iput-wide v5, v2, Lcom/google/android/exoplayer2/extractor/u;->a:J

    goto :goto_4

    .line 15187
    :cond_9
    iput v4, v3, Lcom/google/android/exoplayer2/extractor/f/i;->b:I

    .line 15188
    iget-object v1, v3, Lcom/google/android/exoplayer2/extractor/f/i;->a:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/f/i$a;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/extractor/f/i$a;->b:J

    iput-wide v3, v2, Lcom/google/android/exoplayer2/extractor/u;->a:J

    goto :goto_4

    .line 14142
    :cond_a
    new-instance v4, Lcom/google/android/exoplayer2/util/u;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    .line 14169
    iget-object v6, v4, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 14143
    invoke-interface {v1, v6, v14, v5}, Lcom/google/android/exoplayer2/extractor/i;->b([BII)V

    .line 14144
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/u;->k()I

    move-result v6

    add-int/2addr v6, v5

    iput v6, v3, Lcom/google/android/exoplayer2/extractor/f/i;->c:I

    .line 14145
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v4

    const v5, 0x53454654

    if-eq v4, v5, :cond_b

    const-wide/16 v4, 0x0

    .line 14146
    iput-wide v4, v2, Lcom/google/android/exoplayer2/extractor/u;->a:J

    goto :goto_4

    .line 14152
    :cond_b
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v4

    iget v1, v3, Lcom/google/android/exoplayer2/extractor/f/i;->c:I

    add-int/lit8 v1, v1, -0xc

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, v2, Lcom/google/android/exoplayer2/extractor/u;->a:J

    const/4 v1, 0x2

    .line 14153
    iput v1, v3, Lcom/google/android/exoplayer2/extractor/f/i;->b:I

    :goto_4
    const/4 v1, 0x1

    goto :goto_7

    .line 14117
    :cond_c
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->d()J

    move-result-wide v7

    cmp-long v1, v7, v5

    if-eqz v1, :cond_e

    cmp-long v1, v7, v17

    if-gez v1, :cond_d

    goto :goto_5

    :cond_d
    sub-long v4, v7, v17

    goto :goto_6

    :cond_e
    :goto_5
    const-wide/16 v4, 0x0

    .line 14121
    :goto_6
    iput-wide v4, v2, Lcom/google/android/exoplayer2/extractor/u;->a:J

    const/4 v1, 0x1

    .line 14122
    iput v1, v3, Lcom/google/android/exoplayer2/extractor/f/i;->b:I

    .line 13434
    :goto_7
    iget-wide v2, v2, Lcom/google/android/exoplayer2/extractor/u;->a:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_f

    .line 13435
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/f/g;->c()V

    :cond_f
    return v1

    .line 255
    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 12563
    :cond_11
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v3

    .line 12564
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/f/g;->p:I

    if-ne v5, v8, :cond_1b

    const-wide v5, 0x7fffffffffffffffL

    move-wide v12, v5

    move-wide/from16 v21, v12

    move-wide/from16 v26, v21

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v24, -0x1

    const/16 v25, -0x1

    .line 12670
    :goto_8
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/f/g;->t:[Lcom/google/android/exoplayer2/extractor/f/g$a;

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/google/android/exoplayer2/extractor/f/g$a;

    array-length v7, v7

    if-ge v11, v7, :cond_18

    .line 12671
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/f/g;->t:[Lcom/google/android/exoplayer2/extractor/f/g$a;

    aget-object v7, v7, v11

    .line 12672
    iget v14, v7, Lcom/google/android/exoplayer2/extractor/f/g$a;->d:I

    .line 12673
    iget-object v8, v7, Lcom/google/android/exoplayer2/extractor/f/g$a;->b:Lcom/google/android/exoplayer2/extractor/f/n;

    iget v8, v8, Lcom/google/android/exoplayer2/extractor/f/n;->b:I

    if-eq v14, v8, :cond_17

    .line 12676
    iget-object v7, v7, Lcom/google/android/exoplayer2/extractor/f/g$a;->b:Lcom/google/android/exoplayer2/extractor/f/n;

    iget-object v7, v7, Lcom/google/android/exoplayer2/extractor/f/n;->c:[J

    aget-wide v30, v7, v14

    .line 12677
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/f/g;->u:[[J

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[J

    aget-object v7, v7, v11

    aget-wide v32, v7, v14

    sub-long v30, v30, v3

    const-wide/16 v7, 0x0

    cmp-long v14, v30, v7

    if-ltz v14, :cond_13

    cmp-long v7, v30, v15

    if-ltz v7, :cond_12

    goto :goto_9

    :cond_12
    const/4 v7, 0x0

    goto :goto_a

    :cond_13
    :goto_9
    const/4 v7, 0x1

    :goto_a
    if-nez v7, :cond_14

    if-nez v10, :cond_15

    :cond_14
    if-ne v7, v10, :cond_16

    cmp-long v8, v30, v26

    if-gez v8, :cond_16

    :cond_15
    move v10, v7

    move/from16 v25, v11

    move-wide/from16 v26, v30

    move-wide/from16 v21, v32

    :cond_16
    cmp-long v8, v32, v12

    if-gez v8, :cond_17

    move v9, v7

    move/from16 v24, v11

    move-wide/from16 v12, v32

    :cond_17
    add-int/lit8 v11, v11, 0x1

    const/4 v8, -0x1

    const/4 v14, 0x0

    goto :goto_8

    :cond_18
    cmp-long v7, v12, v5

    if-eqz v7, :cond_1a

    if-eqz v9, :cond_1a

    const-wide/32 v5, 0xa00000

    add-long/2addr v12, v5

    cmp-long v5, v21, v12

    if-gez v5, :cond_19

    goto :goto_b

    :cond_19
    move/from16 v5, v24

    goto :goto_c

    :cond_1a
    :goto_b
    move/from16 v5, v25

    .line 12565
    :goto_c
    iput v5, v0, Lcom/google/android/exoplayer2/extractor/f/g;->p:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1b

    return v6

    .line 12570
    :cond_1b
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/f/g;->t:[Lcom/google/android/exoplayer2/extractor/f/g$a;

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/android/exoplayer2/extractor/f/g$a;

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/f/g;->p:I

    aget-object v5, v5, v6

    .line 12571
    iget-object v6, v5, Lcom/google/android/exoplayer2/extractor/f/g$a;->c:Lcom/google/android/exoplayer2/extractor/x;

    .line 12572
    iget v7, v5, Lcom/google/android/exoplayer2/extractor/f/g$a;->d:I

    .line 12573
    iget-object v8, v5, Lcom/google/android/exoplayer2/extractor/f/g$a;->b:Lcom/google/android/exoplayer2/extractor/f/n;

    iget-object v8, v8, Lcom/google/android/exoplayer2/extractor/f/n;->c:[J

    aget-wide v9, v8, v7

    .line 12574
    iget-object v8, v5, Lcom/google/android/exoplayer2/extractor/f/g$a;->b:Lcom/google/android/exoplayer2/extractor/f/n;

    iget-object v8, v8, Lcom/google/android/exoplayer2/extractor/f/n;->d:[I

    aget v8, v8, v7

    sub-long v3, v9, v3

    .line 12575
    iget v11, v0, Lcom/google/android/exoplayer2/extractor/f/g;->q:I

    int-to-long v11, v11

    add-long/2addr v3, v11

    const-wide/16 v11, 0x0

    cmp-long v13, v3, v11

    if-ltz v13, :cond_24

    cmp-long v11, v3, v15

    if-ltz v11, :cond_1c

    goto/16 :goto_f

    .line 12580
    :cond_1c
    iget-object v2, v5, Lcom/google/android/exoplayer2/extractor/f/g$a;->a:Lcom/google/android/exoplayer2/extractor/f/k;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/f/k;->g:I

    const/4 v9, 0x1

    if-ne v2, v9, :cond_1d

    add-long v3, v3, v17

    add-int/lit8 v8, v8, -0x8

    :cond_1d
    long-to-int v2, v3

    .line 12586
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    .line 12587
    iget-object v2, v5, Lcom/google/android/exoplayer2/extractor/f/g$a;->a:Lcom/google/android/exoplayer2/extractor/f/k;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/f/k;->j:I

    if-eqz v2, :cond_20

    .line 12590
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/f/g;->e:Lcom/google/android/exoplayer2/util/u;

    .line 13169
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/4 v3, 0x0

    .line 12591
    aput-byte v3, v2, v3

    const/4 v4, 0x1

    .line 12592
    aput-byte v3, v2, v4

    const/4 v4, 0x2

    .line 12593
    aput-byte v3, v2, v4

    .line 12594
    iget-object v3, v5, Lcom/google/android/exoplayer2/extractor/f/g$a;->a:Lcom/google/android/exoplayer2/extractor/f/k;

    iget v3, v3, Lcom/google/android/exoplayer2/extractor/f/k;->j:I

    .line 12595
    iget-object v4, v5, Lcom/google/android/exoplayer2/extractor/f/g$a;->a:Lcom/google/android/exoplayer2/extractor/f/k;

    iget v4, v4, Lcom/google/android/exoplayer2/extractor/f/k;->j:I

    const/4 v9, 0x4

    rsub-int/lit8 v4, v4, 0x4

    .line 12599
    :goto_d
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/f/g;->r:I

    if-ge v9, v8, :cond_23

    .line 12600
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/f/g;->s:I

    if-nez v9, :cond_1f

    .line 12602
    invoke-interface {v1, v2, v4, v3}, Lcom/google/android/exoplayer2/extractor/i;->b([BII)V

    .line 12603
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/f/g;->q:I

    add-int/2addr v9, v3

    iput v9, v0, Lcom/google/android/exoplayer2/extractor/f/g;->q:I

    .line 12604
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/f/g;->e:Lcom/google/android/exoplayer2/util/u;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 12605
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/f/g;->e:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v9

    if-ltz v9, :cond_1e

    .line 12609
    iput v9, v0, Lcom/google/android/exoplayer2/extractor/f/g;->s:I

    .line 12611
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/f/g;->d:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 12612
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/f/g;->d:Lcom/google/android/exoplayer2/util/u;

    const/4 v10, 0x4

    invoke-interface {v6, v9, v10}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/util/u;I)V

    .line 12613
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/f/g;->r:I

    add-int/2addr v9, v10

    iput v9, v0, Lcom/google/android/exoplayer2/extractor/f/g;->r:I

    add-int/2addr v8, v4

    goto :goto_d

    .line 12607
    :cond_1e
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "Invalid NAL length"

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    const/4 v10, 0x0

    .line 12617
    invoke-interface {v6, v1, v9, v10}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/upstream/e;IZ)I

    move-result v9

    .line 12618
    iget v10, v0, Lcom/google/android/exoplayer2/extractor/f/g;->q:I

    add-int/2addr v10, v9

    iput v10, v0, Lcom/google/android/exoplayer2/extractor/f/g;->q:I

    .line 12619
    iget v10, v0, Lcom/google/android/exoplayer2/extractor/f/g;->r:I

    add-int/2addr v10, v9

    iput v10, v0, Lcom/google/android/exoplayer2/extractor/f/g;->r:I

    .line 12620
    iget v10, v0, Lcom/google/android/exoplayer2/extractor/f/g;->s:I

    sub-int/2addr v10, v9

    iput v10, v0, Lcom/google/android/exoplayer2/extractor/f/g;->s:I

    goto :goto_d

    .line 12624
    :cond_20
    iget-object v2, v5, Lcom/google/android/exoplayer2/extractor/f/g$a;->a:Lcom/google/android/exoplayer2/extractor/f/k;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/f/k;->f:Lcom/google/android/exoplayer2/Format;

    iget-object v2, v2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v3, "audio/ac4"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 12625
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/f/g;->r:I

    if-nez v2, :cond_21

    .line 12626
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/f/g;->f:Lcom/google/android/exoplayer2/util/u;

    invoke-static {v8, v2}, Lcom/google/android/exoplayer2/audio/c;->a(ILcom/google/android/exoplayer2/util/u;)V

    .line 12627
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/f/g;->f:Lcom/google/android/exoplayer2/util/u;

    const/4 v3, 0x7

    invoke-interface {v6, v2, v3}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/util/u;I)V

    .line 12628
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/f/g;->r:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/f/g;->r:I

    :cond_21
    add-int/lit8 v8, v8, 0x7

    .line 12632
    :cond_22
    :goto_e
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/f/g;->r:I

    if-ge v2, v8, :cond_23

    sub-int v2, v8, v2

    const/4 v3, 0x0

    .line 12633
    invoke-interface {v6, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/upstream/e;IZ)I

    move-result v2

    .line 12634
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/f/g;->q:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/f/g;->q:I

    .line 12635
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/f/g;->r:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/f/g;->r:I

    .line 12636
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/f/g;->s:I

    sub-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/f/g;->s:I

    goto :goto_e

    :cond_23
    move v10, v8

    .line 12639
    iget-object v1, v5, Lcom/google/android/exoplayer2/extractor/f/g$a;->b:Lcom/google/android/exoplayer2/extractor/f/n;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/f/n;->f:[J

    aget-wide v2, v1, v7

    iget-object v1, v5, Lcom/google/android/exoplayer2/extractor/f/g$a;->b:Lcom/google/android/exoplayer2/extractor/f/n;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/f/n;->g:[I

    aget v9, v1, v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide v7, v2

    invoke-interface/range {v6 .. v12}, Lcom/google/android/exoplayer2/extractor/x;->a(JIIILcom/google/android/exoplayer2/extractor/x$a;)V

    .line 12641
    iget v1, v5, Lcom/google/android/exoplayer2/extractor/f/g$a;->d:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v5, Lcom/google/android/exoplayer2/extractor/f/g$a;->d:I

    const/4 v1, -0x1

    .line 12642
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/f/g;->p:I

    const/4 v1, 0x0

    .line 12643
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/f/g;->q:I

    .line 12644
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/f/g;->r:I

    .line 12645
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/f/g;->s:I

    return v1

    :cond_24
    :goto_f
    const/4 v3, 0x1

    .line 12577
    iput-wide v9, v2, Lcom/google/android/exoplayer2/extractor/u;->a:J

    return v3

    .line 10407
    :cond_25
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/f/g;->m:J

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/f/g;->n:I

    int-to-long v7, v3

    sub-long/2addr v5, v7

    .line 10408
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v7

    add-long/2addr v7, v5

    .line 10410
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/g;->o:Lcom/google/android/exoplayer2/util/u;

    if-eqz v3, :cond_2a

    .line 11169
    iget-object v9, v3, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 10412
    iget v10, v0, Lcom/google/android/exoplayer2/extractor/f/g;->n:I

    long-to-int v6, v5

    invoke-interface {v1, v9, v10, v6}, Lcom/google/android/exoplayer2/extractor/i;->b([BII)V

    .line 10413
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/f/g;->l:I

    if-ne v5, v4, :cond_29

    const/16 v4, 0x8

    .line 11839
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 11840
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v4

    .line 11841
    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/f/g;->a(I)I

    move-result v4

    if-eqz v4, :cond_26

    goto :goto_10

    :cond_26
    const/4 v4, 0x4

    .line 11845
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 11846
    :cond_27
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v4

    if-lez v4, :cond_28

    .line 11847
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/f/g;->a(I)I

    move-result v4

    if-eqz v4, :cond_27

    goto :goto_10

    :cond_28
    const/4 v4, 0x0

    .line 10414
    :goto_10
    iput v4, v0, Lcom/google/android/exoplayer2/extractor/f/g;->x:I

    goto :goto_11

    .line 10415
    :cond_29
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/f/g;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2b

    .line 10416
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/f/g;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/extractor/f/a$a;

    new-instance v5, Lcom/google/android/exoplayer2/extractor/f/a$b;

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/f/g;->l:I

    invoke-direct {v5, v6, v3}, Lcom/google/android/exoplayer2/extractor/f/a$b;-><init>(ILcom/google/android/exoplayer2/util/u;)V

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/extractor/f/a$a;->a(Lcom/google/android/exoplayer2/extractor/f/a$b;)V

    goto :goto_11

    :cond_2a
    cmp-long v3, v5, v15

    if-gez v3, :cond_2c

    long-to-int v3, v5

    .line 10421
    invoke-interface {v1, v3}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    :cond_2b
    :goto_11
    const/4 v3, 0x0

    goto :goto_12

    .line 10423
    :cond_2c
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v3

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/google/android/exoplayer2/extractor/u;->a:J

    const/4 v3, 0x1

    .line 10427
    :goto_12
    invoke-direct {v0, v7, v8}, Lcom/google/android/exoplayer2/extractor/f/g;->b(J)V

    if-eqz v3, :cond_2d

    .line 10428
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/f/g;->k:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2d

    const/4 v14, 0x1

    goto :goto_13

    :cond_2d
    const/4 v14, 0x0

    :goto_13
    if-eqz v14, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_2e
    const/4 v3, 0x1

    .line 1333
    iget v7, v0, Lcom/google/android/exoplayer2/extractor/f/g;->n:I

    const/4 v8, 0x0

    if-nez v7, :cond_32

    .line 1335
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/f/g;->g:Lcom/google/android/exoplayer2/util/u;

    .line 2169
    iget-object v7, v7, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/16 v9, 0x8

    const/4 v10, 0x0

    .line 1335
    invoke-interface {v1, v7, v10, v9, v3}, Lcom/google/android/exoplayer2/extractor/i;->a([BIIZ)Z

    move-result v7

    if-nez v7, :cond_31

    .line 2718
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/f/g;->x:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_30

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/f/g;->c:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_30

    .line 2720
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/g;->b:Lcom/google/android/exoplayer2/extractor/j;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/j;

    const/4 v4, 0x4

    .line 2721
    invoke-interface {v3, v10, v4}, Lcom/google/android/exoplayer2/extractor/j;->a(II)Lcom/google/android/exoplayer2/extractor/x;

    move-result-object v4

    .line 2723
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/f/g;->y:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    if-nez v5, :cond_2f

    goto :goto_14

    :cond_2f
    new-instance v8, Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    aput-object v5, v6, v10

    invoke-direct {v8, v6}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    .line 2724
    :goto_14
    new-instance v5, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    .line 3344
    iput-object v8, v5, Lcom/google/android/exoplayer2/Format$a;->i:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 2724
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 2725
    invoke-interface {v3}, Lcom/google/android/exoplayer2/extractor/j;->a()V

    .line 2726
    new-instance v4, Lcom/google/android/exoplayer2/extractor/v$b;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v4, v5, v6}, Lcom/google/android/exoplayer2/extractor/v$b;-><init>(J)V

    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/extractor/j;->a(Lcom/google/android/exoplayer2/extractor/v;)V

    :cond_30
    const/4 v13, 0x0

    goto/16 :goto_1e

    :cond_31
    const/16 v3, 0x8

    .line 1339
    iput v3, v0, Lcom/google/android/exoplayer2/extractor/f/g;->n:I

    .line 1340
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/g;->g:Lcom/google/android/exoplayer2/util/u;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 1341
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/g;->g:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/u;->h()J

    move-result-wide v9

    iput-wide v9, v0, Lcom/google/android/exoplayer2/extractor/f/g;->m:J

    .line 1342
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/g;->g:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v3

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/f/g;->l:I

    .line 1345
    :cond_32
    iget-wide v9, v0, Lcom/google/android/exoplayer2/extractor/f/g;->m:J

    const-wide/16 v11, 0x1

    cmp-long v3, v9, v11

    if-nez v3, :cond_33

    .line 1348
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/g;->g:Lcom/google/android/exoplayer2/util/u;

    .line 4169
    iget-object v3, v3, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/16 v5, 0x8

    .line 1348
    invoke-interface {v1, v3, v5, v5}, Lcom/google/android/exoplayer2/extractor/i;->b([BII)V

    .line 1349
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/f/g;->n:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/f/g;->n:I

    .line 1350
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/g;->g:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/u;->q()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/exoplayer2/extractor/f/g;->m:J

    goto :goto_15

    :cond_33
    const-wide/16 v11, 0x0

    cmp-long v3, v9, v11

    if-nez v3, :cond_35

    .line 1354
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->d()J

    move-result-wide v9

    cmp-long v3, v9, v5

    if-nez v3, :cond_34

    .line 1356
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/g;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/f/a$a;

    if-eqz v3, :cond_34

    .line 1358
    iget-wide v9, v3, Lcom/google/android/exoplayer2/extractor/f/a$a;->b:J

    :cond_34
    cmp-long v3, v9, v5

    if-eqz v3, :cond_35

    .line 1362
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v5

    sub-long/2addr v9, v5

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/f/g;->n:I

    int-to-long v5, v3

    add-long/2addr v9, v5

    iput-wide v9, v0, Lcom/google/android/exoplayer2/extractor/f/g;->m:J

    .line 1366
    :cond_35
    :goto_15
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/f/g;->m:J

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/f/g;->n:I

    int-to-long v9, v3

    cmp-long v7, v5, v9

    if-ltz v7, :cond_41

    .line 1370
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/f/g;->l:I

    const v6, 0x6d6f6f76

    const v7, 0x6d657461

    if-eq v5, v6, :cond_37

    const v6, 0x7472616b

    if-eq v5, v6, :cond_37

    const v6, 0x6d646961

    if-eq v5, v6, :cond_37

    const v6, 0x6d696e66

    if-eq v5, v6, :cond_37

    const v6, 0x7374626c

    if-eq v5, v6, :cond_37

    const v6, 0x65647473

    if-eq v5, v6, :cond_37

    if-ne v5, v7, :cond_36

    goto :goto_16

    :cond_36
    const/4 v6, 0x0

    goto :goto_17

    :cond_37
    :goto_16
    const/4 v6, 0x1

    :goto_17
    if-eqz v6, :cond_3a

    .line 1371
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/f/g;->m:J

    add-long/2addr v3, v5

    iget v8, v0, Lcom/google/android/exoplayer2/extractor/f/g;->n:I

    int-to-long v9, v8

    sub-long/2addr v3, v9

    int-to-long v8, v8

    cmp-long v10, v5, v8

    if-eqz v10, :cond_38

    .line 1372
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/f/g;->l:I

    if-ne v5, v7, :cond_38

    .line 5731
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/f/g;->f:Lcom/google/android/exoplayer2/util/u;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/u;->a(I)V

    .line 5732
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/f/g;->f:Lcom/google/android/exoplayer2/util/u;

    .line 6169
    iget-object v5, v5, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/4 v7, 0x0

    .line 5732
    invoke-interface {v1, v5, v7, v6}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 5733
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/f/g;->f:Lcom/google/android/exoplayer2/util/u;

    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/f/b;->a(Lcom/google/android/exoplayer2/util/u;)V

    .line 5734
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/f/g;->f:Lcom/google/android/exoplayer2/util/u;

    .line 7144
    iget v5, v5, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 5734
    invoke-interface {v1, v5}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    .line 5735
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    .line 1375
    :cond_38
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/f/g;->h:Ljava/util/ArrayDeque;

    new-instance v6, Lcom/google/android/exoplayer2/extractor/f/a$a;

    iget v7, v0, Lcom/google/android/exoplayer2/extractor/f/g;->l:I

    invoke-direct {v6, v7, v3, v4}, Lcom/google/android/exoplayer2/extractor/f/a$a;-><init>(IJ)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 1376
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/f/g;->m:J

    iget v7, v0, Lcom/google/android/exoplayer2/extractor/f/g;->n:I

    int-to-long v7, v7

    cmp-long v9, v5, v7

    if-nez v9, :cond_39

    .line 1377
    invoke-direct {v0, v3, v4}, Lcom/google/android/exoplayer2/extractor/f/g;->b(J)V

    goto :goto_18

    .line 1380
    :cond_39
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/f/g;->c()V

    :goto_18
    const/4 v3, 0x1

    goto/16 :goto_1d

    :cond_3a
    const v6, 0x6d646864

    if-eq v5, v6, :cond_3c

    const v6, 0x6d766864

    if-eq v5, v6, :cond_3c

    const v6, 0x68646c72    # 4.3148E24f

    if-eq v5, v6, :cond_3c

    const v6, 0x73747364

    if-eq v5, v6, :cond_3c

    const v6, 0x73747473

    if-eq v5, v6, :cond_3c

    const v6, 0x73747373

    if-eq v5, v6, :cond_3c

    const v6, 0x63747473

    if-eq v5, v6, :cond_3c

    const v6, 0x656c7374

    if-eq v5, v6, :cond_3c

    const v6, 0x73747363

    if-eq v5, v6, :cond_3c

    const v6, 0x7374737a

    if-eq v5, v6, :cond_3c

    const v6, 0x73747a32

    if-eq v5, v6, :cond_3c

    const v6, 0x7374636f

    if-eq v5, v6, :cond_3c

    const v6, 0x636f3634

    if-eq v5, v6, :cond_3c

    const v6, 0x746b6864

    if-eq v5, v6, :cond_3c

    if-eq v5, v4, :cond_3c

    const v4, 0x75647461

    if-eq v5, v4, :cond_3c

    const v4, 0x6b657973

    if-eq v5, v4, :cond_3c

    const v4, 0x696c7374

    if-ne v5, v4, :cond_3b

    goto :goto_19

    :cond_3b
    const/4 v4, 0x0

    goto :goto_1a

    :cond_3c
    :goto_19
    const/4 v4, 0x1

    :goto_1a
    if-eqz v4, :cond_3f

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3d

    const/4 v3, 0x1

    goto :goto_1b

    :cond_3d
    const/4 v3, 0x0

    .line 1385
    :goto_1b
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 1386
    iget-wide v3, v0, Lcom/google/android/exoplayer2/extractor/f/g;->m:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v3, v5

    if-gtz v7, :cond_3e

    const/4 v3, 0x1

    goto :goto_1c

    :cond_3e
    const/4 v3, 0x0

    :goto_1c
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 1387
    new-instance v3, Lcom/google/android/exoplayer2/util/u;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/f/g;->m:J

    long-to-int v5, v4

    invoke-direct {v3, v5}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    .line 1388
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/f/g;->g:Lcom/google/android/exoplayer2/util/u;

    .line 8169
    iget-object v4, v4, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 9169
    iget-object v5, v3, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 1388
    invoke-static {v4, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1389
    iput-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/g;->o:Lcom/google/android/exoplayer2/util/u;

    const/4 v3, 0x1

    .line 1390
    iput v3, v0, Lcom/google/android/exoplayer2/extractor/f/g;->k:I

    goto :goto_1d

    .line 1392
    :cond_3f
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v3

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/f/g;->n:I

    int-to-long v6, v5

    sub-long v22, v3, v6

    .line 9740
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/f/g;->l:I

    const v4, 0x6d707664

    if-ne v3, v4, :cond_40

    .line 9743
    new-instance v3, Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    const-wide/16 v20, 0x0

    const-wide v24, -0x7fffffffffffffffL    # -4.9E-324

    int-to-long v6, v5

    add-long v26, v22, v6

    iget-wide v6, v0, Lcom/google/android/exoplayer2/extractor/f/g;->m:J

    int-to-long v4, v5

    sub-long v28, v6, v4

    move-object/from16 v19, v3

    invoke-direct/range {v19 .. v29}, Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;-><init>(JJJJJ)V

    iput-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/g;->y:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    .line 1393
    :cond_40
    iput-object v8, v0, Lcom/google/android/exoplayer2/extractor/f/g;->o:Lcom/google/android/exoplayer2/util/u;

    const/4 v3, 0x1

    .line 1394
    iput v3, v0, Lcom/google/android/exoplayer2/extractor/f/g;->k:I

    :goto_1d
    const/4 v13, 0x1

    :goto_1e
    if-nez v13, :cond_0

    const/4 v3, -0x1

    return v3

    .line 1367
    :cond_41
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "Atom size less than header length (unsupported)."

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(J)Lcom/google/android/exoplayer2/extractor/v$a;
    .locals 12

    .line 274
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/g;->t:[Lcom/google/android/exoplayer2/extractor/f/g$a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/extractor/f/g$a;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 275
    new-instance p1, Lcom/google/android/exoplayer2/extractor/v$a;

    sget-object p2, Lcom/google/android/exoplayer2/extractor/w;->a:Lcom/google/android/exoplayer2/extractor/w;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/v$a;-><init>(Lcom/google/android/exoplayer2/extractor/w;)V

    return-object p1

    :cond_0
    const-wide/16 v0, -0x1

    .line 284
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/f/g;->v:I

    const/4 v3, -0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v2, v3, :cond_3

    .line 285
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/f/g;->t:[Lcom/google/android/exoplayer2/extractor/f/g$a;

    aget-object v2, v6, v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/f/g$a;->b:Lcom/google/android/exoplayer2/extractor/f/n;

    .line 286
    invoke-static {v2, p1, p2}, Lcom/google/android/exoplayer2/extractor/f/g;->a(Lcom/google/android/exoplayer2/extractor/f/n;J)I

    move-result v6

    if-ne v6, v3, :cond_1

    .line 288
    new-instance p1, Lcom/google/android/exoplayer2/extractor/v$a;

    sget-object p2, Lcom/google/android/exoplayer2/extractor/w;->a:Lcom/google/android/exoplayer2/extractor/w;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/v$a;-><init>(Lcom/google/android/exoplayer2/extractor/w;)V

    return-object p1

    .line 290
    :cond_1
    iget-object v7, v2, Lcom/google/android/exoplayer2/extractor/f/n;->f:[J

    aget-wide v8, v7, v6

    .line 292
    iget-object v7, v2, Lcom/google/android/exoplayer2/extractor/f/n;->c:[J

    aget-wide v10, v7, v6

    cmp-long v7, v8, p1

    if-gez v7, :cond_2

    .line 293
    iget v7, v2, Lcom/google/android/exoplayer2/extractor/f/n;->b:I

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_2

    .line 294
    invoke-virtual {v2, p1, p2}, Lcom/google/android/exoplayer2/extractor/f/n;->b(J)I

    move-result p1

    if-eq p1, v3, :cond_2

    if-eq p1, v6, :cond_2

    .line 296
    iget-object p2, v2, Lcom/google/android/exoplayer2/extractor/f/n;->f:[J

    aget-wide v0, p2, p1

    .line 297
    iget-object p2, v2, Lcom/google/android/exoplayer2/extractor/f/n;->c:[J

    aget-wide p1, p2, p1

    goto :goto_0

    :cond_2
    move-wide p1, v0

    move-wide v0, v4

    :goto_0
    move-wide v2, p1

    move-wide p1, v8

    goto :goto_1

    :cond_3
    const-wide v10, 0x7fffffffffffffffL

    move-wide v2, v0

    move-wide v0, v4

    :goto_1
    const/4 v6, 0x0

    .line 306
    :goto_2
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/f/g;->t:[Lcom/google/android/exoplayer2/extractor/f/g$a;

    array-length v8, v7

    if-ge v6, v8, :cond_6

    .line 307
    iget v8, p0, Lcom/google/android/exoplayer2/extractor/f/g;->v:I

    if-eq v6, v8, :cond_5

    .line 308
    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/google/android/exoplayer2/extractor/f/g$a;->b:Lcom/google/android/exoplayer2/extractor/f/n;

    .line 309
    invoke-static {v7, p1, p2, v10, v11}, Lcom/google/android/exoplayer2/extractor/f/g;->a(Lcom/google/android/exoplayer2/extractor/f/n;JJ)J

    move-result-wide v8

    cmp-long v10, v0, v4

    if-eqz v10, :cond_4

    .line 311
    invoke-static {v7, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/f/g;->a(Lcom/google/android/exoplayer2/extractor/f/n;JJ)J

    move-result-wide v2

    :cond_4
    move-wide v10, v8

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 316
    :cond_6
    new-instance v6, Lcom/google/android/exoplayer2/extractor/w;

    invoke-direct {v6, p1, p2, v10, v11}, Lcom/google/android/exoplayer2/extractor/w;-><init>(JJ)V

    cmp-long p1, v0, v4

    if-nez p1, :cond_7

    .line 318
    new-instance p1, Lcom/google/android/exoplayer2/extractor/v$a;

    invoke-direct {p1, v6}, Lcom/google/android/exoplayer2/extractor/v$a;-><init>(Lcom/google/android/exoplayer2/extractor/w;)V

    return-object p1

    .line 320
    :cond_7
    new-instance p1, Lcom/google/android/exoplayer2/extractor/w;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/w;-><init>(JJ)V

    .line 321
    new-instance p2, Lcom/google/android/exoplayer2/extractor/v$a;

    invoke-direct {p2, v6, p1}, Lcom/google/android/exoplayer2/extractor/v$a;-><init>(Lcom/google/android/exoplayer2/extractor/w;Lcom/google/android/exoplayer2/extractor/w;)V

    return-object p2
.end method

.method public final a(JJ)V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/g;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    .line 212
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/g;->n:I

    const/4 v1, -0x1

    .line 213
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/f/g;->p:I

    .line 214
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/g;->q:I

    .line 215
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/g;->r:I

    .line 216
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/g;->s:I

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 220
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/f/g;->k:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/f/g;->c()V

    return-void

    .line 223
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/g;->i:Lcom/google/android/exoplayer2/extractor/f/i;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/f/i;->a()V

    .line 224
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/g;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void

    .line 226
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/g;->t:[Lcom/google/android/exoplayer2/extractor/f/g$a;

    if-eqz p1, :cond_2

    .line 227
    invoke-direct {p0, p3, p4}, Lcom/google/android/exoplayer2/extractor/f/g;->c(J)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/j;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/g;->b:Lcom/google/android/exoplayer2/extractor/j;

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/i;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/g;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/extractor/f/j;->a(Lcom/google/android/exoplayer2/extractor/i;Z)Z

    move-result p1

    return p1
.end method

.method public final b()J
    .locals 2

    .line 269
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/f/g;->w:J

    return-wide v0
.end method
