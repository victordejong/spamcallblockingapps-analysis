.class public final Landroidx/media2/exoplayer/external/extractor/mp4/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/g;
.implements Landroidx/media2/exoplayer/external/extractor/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/mp4/h$a;
    }
.end annotation


# static fields
.field public static final a:Landroidx/media2/exoplayer/external/extractor/j;


# instance fields
.field private final b:I

.field private final c:Landroidx/media2/exoplayer/external/util/p;

.field private final d:Landroidx/media2/exoplayer/external/util/p;

.field private final e:Landroidx/media2/exoplayer/external/util/p;

.field private final f:Landroidx/media2/exoplayer/external/util/p;

.field private final g:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media2/exoplayer/external/extractor/mp4/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:I

.field private j:J

.field private k:I

.field private l:Landroidx/media2/exoplayer/external/util/p;

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:Landroidx/media2/exoplayer/external/extractor/i;

.field private r:[Landroidx/media2/exoplayer/external/extractor/mp4/h$a;

.field private s:[[J

.field private t:I

.field private u:J

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/mp4/i;->a:Landroidx/media2/exoplayer/external/extractor/j;

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->a:Landroidx/media2/exoplayer/external/extractor/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 133
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/h;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->b:I

    .line 144
    new-instance p1, Landroidx/media2/exoplayer/external/util/p;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/util/p;-><init>(I)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->f:Landroidx/media2/exoplayer/external/util/p;

    .line 145
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->g:Ljava/util/ArrayDeque;

    .line 146
    new-instance p1, Landroidx/media2/exoplayer/external/util/p;

    sget-object v0, Landroidx/media2/exoplayer/external/util/n;->a:[B

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/util/p;-><init>([B)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->c:Landroidx/media2/exoplayer/external/util/p;

    .line 147
    new-instance p1, Landroidx/media2/exoplayer/external/util/p;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/util/p;-><init>(I)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->d:Landroidx/media2/exoplayer/external/util/p;

    .line 148
    new-instance p1, Landroidx/media2/exoplayer/external/util/p;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/util/p;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->e:Landroidx/media2/exoplayer/external/util/p;

    const/4 p1, -0x1

    .line 149
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->m:I

    return-void
.end method

.method private static a(Landroidx/media2/exoplayer/external/extractor/mp4/o;J)I
    .locals 2

    .line 750
    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/mp4/o;->a(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 753
    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/mp4/o;->b(J)I

    move-result v0

    :cond_0
    return v0
.end method

.method private static a(Landroidx/media2/exoplayer/external/extractor/mp4/o;JJ)J
    .locals 0

    .line 730
    invoke-static {p0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/mp4/h;->a(Landroidx/media2/exoplayer/external/extractor/mp4/o;J)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return-wide p3

    .line 734
    :cond_0
    iget-object p0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/o;->c:[J

    aget-wide p1, p0, p1

    .line 735
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private a(Landroidx/media2/exoplayer/external/extractor/mp4/a$a;Landroidx/media2/exoplayer/external/extractor/k;Z)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/extractor/mp4/a$a;",
            "Landroidx/media2/exoplayer/external/extractor/k;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/extractor/mp4/o;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 456
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 457
    :goto_0
    iget-object v2, p1, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 458
    iget-object v2, p1, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;

    .line 459
    iget v3, v2, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->a:I

    const v4, 0x7472616b

    if-ne v3, v4, :cond_0

    const v3, 0x6d766864

    .line 465
    invoke-virtual {p1, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->c(I)Landroidx/media2/exoplayer/external/extractor/mp4/a$b;

    move-result-object v4

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    iget-boolean v9, p0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->v:Z

    move-object v3, v2

    move v8, p3

    .line 463
    invoke-static/range {v3 .. v9}, Landroidx/media2/exoplayer/external/extractor/mp4/b;->a(Landroidx/media2/exoplayer/external/extractor/mp4/a$a;Landroidx/media2/exoplayer/external/extractor/mp4/a$b;JLandroidx/media2/exoplayer/external/drm/DrmInitData;ZZ)Landroidx/media2/exoplayer/external/extractor/mp4/l;

    move-result-object v3

    if-eqz v3, :cond_0

    const v4, 0x6d646961

    .line 474
    invoke-virtual {v2, v4}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->d(I)Landroidx/media2/exoplayer/external/extractor/mp4/a$a;

    move-result-object v2

    const v4, 0x6d696e66

    .line 475
    invoke-virtual {v2, v4}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->d(I)Landroidx/media2/exoplayer/external/extractor/mp4/a$a;

    move-result-object v2

    const v4, 0x7374626c

    .line 476
    invoke-virtual {v2, v4}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->d(I)Landroidx/media2/exoplayer/external/extractor/mp4/a$a;

    move-result-object v2

    .line 477
    invoke-static {v3, v2, p2}, Landroidx/media2/exoplayer/external/extractor/mp4/b;->a(Landroidx/media2/exoplayer/external/extractor/mp4/l;Landroidx/media2/exoplayer/external/extractor/mp4/a$a;Landroidx/media2/exoplayer/external/extractor/k;)Landroidx/media2/exoplayer/external/extractor/mp4/o;

    move-result-object v2

    .line 478
    iget v3, v2, Landroidx/media2/exoplayer/external/extractor/mp4/o;->b:I

    if-eqz v3, :cond_0

    .line 481
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private a(Landroidx/media2/exoplayer/external/extractor/mp4/a$a;)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 392
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 396
    new-instance v3, Landroidx/media2/exoplayer/external/extractor/k;

    invoke-direct {v3}, Landroidx/media2/exoplayer/external/extractor/k;-><init>()V

    const v4, 0x75647461

    .line 397
    invoke-virtual {v1, v4}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->c(I)Landroidx/media2/exoplayer/external/extractor/mp4/a$b;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 399
    iget-boolean v6, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->v:Z

    invoke-static {v4, v6}, Landroidx/media2/exoplayer/external/extractor/mp4/b;->a(Landroidx/media2/exoplayer/external/extractor/mp4/a$b;Z)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 401
    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/extractor/k;->a(Landroidx/media2/exoplayer/external/metadata/Metadata;)Z

    goto :goto_0

    :cond_0
    move-object v4, v5

    :cond_1
    :goto_0
    const v6, 0x6d657461

    .line 405
    invoke-virtual {v1, v6}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->d(I)Landroidx/media2/exoplayer/external/extractor/mp4/a$a;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 407
    invoke-static {v6}, Landroidx/media2/exoplayer/external/extractor/mp4/b;->a(Landroidx/media2/exoplayer/external/extractor/mp4/a$a;)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object v5

    .line 410
    :cond_2
    iget v6, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->b:I

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    .line 412
    :goto_1
    invoke-direct {v0, v1, v3, v6}, Landroidx/media2/exoplayer/external/extractor/mp4/h;->a(Landroidx/media2/exoplayer/external/extractor/mp4/a$a;Landroidx/media2/exoplayer/external/extractor/k;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 414
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v14, v9

    const/4 v12, 0x0

    const/4 v13, -0x1

    :goto_2
    if-ge v12, v6, :cond_9

    .line 416
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Landroidx/media2/exoplayer/external/extractor/mp4/o;

    .line 417
    iget-object v11, v8, Landroidx/media2/exoplayer/external/extractor/mp4/o;->a:Landroidx/media2/exoplayer/external/extractor/mp4/l;

    move-object/from16 v17, v8

    .line 419
    iget-wide v7, v11, Landroidx/media2/exoplayer/external/extractor/mp4/l;->e:J

    cmp-long v18, v7, v9

    if-eqz v18, :cond_4

    iget-wide v7, v11, Landroidx/media2/exoplayer/external/extractor/mp4/l;->e:J

    move-wide v9, v7

    move-object/from16 v7, v17

    goto :goto_3

    :cond_4
    move-object/from16 v7, v17

    iget-wide v9, v7, Landroidx/media2/exoplayer/external/extractor/mp4/o;->h:J

    .line 420
    :goto_3
    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 421
    new-instance v8, Landroidx/media2/exoplayer/external/extractor/mp4/h$a;

    move-object/from16 v19, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->q:Landroidx/media2/exoplayer/external/extractor/i;

    move/from16 v20, v6

    iget v6, v11, Landroidx/media2/exoplayer/external/extractor/mp4/l;->b:I

    .line 422
    invoke-interface {v1, v12, v6}, Landroidx/media2/exoplayer/external/extractor/i;->a(II)Landroidx/media2/exoplayer/external/extractor/q;

    move-result-object v1

    invoke-direct {v8, v11, v7, v1}, Landroidx/media2/exoplayer/external/extractor/mp4/h$a;-><init>(Landroidx/media2/exoplayer/external/extractor/mp4/l;Landroidx/media2/exoplayer/external/extractor/mp4/o;Landroidx/media2/exoplayer/external/extractor/q;)V

    .line 426
    iget v1, v7, Landroidx/media2/exoplayer/external/extractor/mp4/o;->e:I

    add-int/lit8 v1, v1, 0x1e

    .line 427
    iget-object v6, v11, Landroidx/media2/exoplayer/external/extractor/mp4/l;->f:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v6, v1}, Landroidx/media2/exoplayer/external/Format;->copyWithMaxInputSize(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    .line 428
    iget v6, v11, Landroidx/media2/exoplayer/external/extractor/mp4/l;->b:I

    move-wide/from16 v21, v14

    const/4 v14, 0x2

    if-ne v6, v14, :cond_5

    const-wide/16 v23, 0x0

    cmp-long v6, v9, v23

    if-lez v6, :cond_5

    iget v6, v7, Landroidx/media2/exoplayer/external/extractor/mp4/o;->b:I

    const/4 v15, 0x1

    if-le v6, v15, :cond_6

    .line 431
    iget v6, v7, Landroidx/media2/exoplayer/external/extractor/mp4/o;->b:I

    int-to-float v6, v6

    long-to-float v7, v9

    const v9, 0x49742400    # 1000000.0f

    div-float/2addr v7, v9

    div-float/2addr v6, v7

    .line 432
    invoke-virtual {v1, v6}, Landroidx/media2/exoplayer/external/Format;->copyWithFrameRate(F)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    goto :goto_4

    :cond_5
    const/4 v15, 0x1

    .line 434
    :cond_6
    :goto_4
    iget v6, v11, Landroidx/media2/exoplayer/external/extractor/mp4/l;->b:I

    .line 435
    invoke-static {v6, v1, v4, v5, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/g;->a(ILandroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/metadata/Metadata;Landroidx/media2/exoplayer/external/metadata/Metadata;Landroidx/media2/exoplayer/external/extractor/k;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    .line 437
    iget-object v6, v8, Landroidx/media2/exoplayer/external/extractor/mp4/h$a;->c:Landroidx/media2/exoplayer/external/extractor/q;

    invoke-interface {v6, v1}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/Format;)V

    .line 439
    iget v1, v11, Landroidx/media2/exoplayer/external/extractor/mp4/l;->b:I

    if-ne v1, v14, :cond_7

    const/4 v1, -0x1

    if-ne v13, v1, :cond_8

    .line 440
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    goto :goto_5

    :cond_7
    const/4 v1, -0x1

    .line 442
    :cond_8
    :goto_5
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v19

    move/from16 v6, v20

    move-wide/from16 v14, v21

    const/4 v7, 0x1

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_2

    .line 444
    :cond_9
    iput v13, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->t:I

    .line 445
    iput-wide v14, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->u:J

    const/4 v1, 0x0

    new-array v1, v1, [Landroidx/media2/exoplayer/external/extractor/mp4/h$a;

    .line 446
    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media2/exoplayer/external/extractor/mp4/h$a;

    iput-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->r:[Landroidx/media2/exoplayer/external/extractor/mp4/h$a;

    .line 447
    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/mp4/h;->a([Landroidx/media2/exoplayer/external/extractor/mp4/h$a;)[[J

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->s:[[J

    .line 449
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->q:Landroidx/media2/exoplayer/external/extractor/i;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/extractor/i;->a()V

    .line 450
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->q:Landroidx/media2/exoplayer/external/extractor/i;

    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/extractor/i;->a(Landroidx/media2/exoplayer/external/extractor/o;)V

    return-void
.end method

.method private static a([Landroidx/media2/exoplayer/external/extractor/mp4/h$a;)[[J
    .locals 15

    .line 685
    array-length v0, p0

    new-array v0, v0, [[J

    .line 686
    array-length v1, p0

    new-array v1, v1, [I

    .line 687
    array-length v2, p0

    new-array v2, v2, [J

    .line 688
    array-length v3, p0

    new-array v3, v3, [Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 689
    :goto_0
    array-length v6, p0

    if-ge v5, v6, :cond_0

    .line 690
    aget-object v6, p0, v5

    iget-object v6, v6, Landroidx/media2/exoplayer/external/extractor/mp4/h$a;->b:Landroidx/media2/exoplayer/external/extractor/mp4/o;

    iget v6, v6, Landroidx/media2/exoplayer/external/extractor/mp4/o;->b:I

    new-array v6, v6, [J

    aput-object v6, v0, v5

    .line 691
    aget-object v6, p0, v5

    iget-object v6, v6, Landroidx/media2/exoplayer/external/extractor/mp4/h$a;->b:Landroidx/media2/exoplayer/external/extractor/mp4/o;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/extractor/mp4/o;->f:[J

    aget-wide v7, v6, v4

    aput-wide v7, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    .line 695
    :goto_1
    array-length v8, p0

    if-ge v7, v8, :cond_4

    const-wide v8, 0x7fffffffffffffffL

    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 698
    :goto_2
    array-length v12, p0

    if-ge v11, v12, :cond_2

    .line 699
    aget-boolean v12, v3, v11

    if-nez v12, :cond_1

    aget-wide v12, v2, v11

    cmp-long v14, v12, v8

    if-gtz v14, :cond_1

    .line 701
    aget-wide v8, v2, v11

    move v10, v11

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 704
    :cond_2
    aget v8, v1, v10

    .line 705
    aget-object v9, v0, v10

    aput-wide v5, v9, v8

    .line 706
    aget-object v9, p0, v10

    iget-object v9, v9, Landroidx/media2/exoplayer/external/extractor/mp4/h$a;->b:Landroidx/media2/exoplayer/external/extractor/mp4/o;

    iget-object v9, v9, Landroidx/media2/exoplayer/external/extractor/mp4/o;->d:[I

    aget v9, v9, v8

    int-to-long v11, v9

    add-long/2addr v5, v11

    const/4 v9, 0x1

    add-int/2addr v8, v9

    .line 707
    aput v8, v1, v10

    .line 708
    aget-object v11, v0, v10

    array-length v11, v11

    if-ge v8, v11, :cond_3

    .line 709
    aget-object v9, p0, v10

    iget-object v9, v9, Landroidx/media2/exoplayer/external/extractor/mp4/h$a;->b:Landroidx/media2/exoplayer/external/extractor/mp4/o;

    iget-object v9, v9, Landroidx/media2/exoplayer/external/extractor/mp4/o;->f:[J

    aget-wide v8, v9, v8

    aput-wide v8, v2, v10

    goto :goto_1

    .line 712
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
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 370
    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;

    iget-wide v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->b:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_2

    .line 371
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;

    .line 372
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->a:I

    const v3, 0x6d6f6f76

    if-ne v2, v3, :cond_1

    .line 374
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/h;->a(Landroidx/media2/exoplayer/external/extractor/mp4/a$a;)V

    .line 375
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 376
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->h:I

    goto :goto_0

    .line 377
    :cond_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 378
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;

    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->a(Landroidx/media2/exoplayer/external/extractor/mp4/a$a;)V

    goto :goto_0

    .line 381
    :cond_2
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->h:I

    if-eq p1, v1, :cond_3

    .line 382
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/h;->d()V

    :cond_3
    return-void
.end method

.method static final synthetic c()[Landroidx/media2/exoplayer/external/extractor/g;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/g;

    .line 58
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/mp4/h;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/mp4/h;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    .line 273
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->h:I

    .line 274
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->k:I

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/extractor/h;Landroidx/media2/exoplayer/external/extractor/n;)I
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 186
    :cond_0
    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->h:I

    const v4, 0x66747970

    const-wide/16 v5, 0x0

    const/4 v8, -0x1

    const/16 v9, 0x8

    const/4 v10, 0x1

    if-eqz v3, :cond_1e

    const-wide/32 v12, 0x40000

    const/4 v14, 0x2

    if-eq v3, v10, :cond_15

    if-ne v3, v14, :cond_14

    .line 5504
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v3

    .line 5505
    iget v9, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->m:I

    if-ne v9, v8, :cond_b

    const-wide v15, 0x7fffffffffffffffL

    move-wide/from16 v17, v15

    move-wide/from16 v20, v17

    move-wide/from16 v24, v20

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/16 v19, 0x1

    const/16 v22, -0x1

    const/16 v23, -0x1

    .line 5609
    :goto_0
    iget-object v14, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->r:[Landroidx/media2/exoplayer/external/extractor/mp4/h$a;

    array-length v11, v14

    if-ge v9, v11, :cond_7

    .line 5610
    aget-object v11, v14, v9

    .line 5611
    iget v14, v11, Landroidx/media2/exoplayer/external/extractor/mp4/h$a;->d:I

    .line 5612
    iget-object v10, v11, Landroidx/media2/exoplayer/external/extractor/mp4/h$a;->b:Landroidx/media2/exoplayer/external/extractor/mp4/o;

    iget v10, v10, Landroidx/media2/exoplayer/external/extractor/mp4/o;->b:I

    if-eq v14, v10, :cond_6

    .line 5615
    iget-object v10, v11, Landroidx/media2/exoplayer/external/extractor/mp4/h$a;->b:Landroidx/media2/exoplayer/external/extractor/mp4/o;

    iget-object v10, v10, Landroidx/media2/exoplayer/external/extractor/mp4/o;->c:[J

    aget-wide v26, v10, v14

    .line 5616
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->s:[[J

    aget-object v10, v10, v9

    aget-wide v28, v10, v14

    sub-long v26, v26, v3

    cmp-long v10, v26, v5

    if-ltz v10, :cond_2

    cmp-long v10, v26, v12

    if-ltz v10, :cond_1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v10, 0x1

    :goto_2
    if-nez v10, :cond_3

    if-nez v7, :cond_4

    :cond_3
    if-ne v10, v7, :cond_5

    cmp-long v11, v26, v24

    if-gez v11, :cond_5

    :cond_4
    move/from16 v23, v9

    move v7, v10

    move-wide/from16 v24, v26

    move-wide/from16 v20, v28

    :cond_5
    cmp-long v11, v28, v17

    if-gez v11, :cond_6

    move/from16 v22, v9

    move/from16 v19, v10

    move-wide/from16 v17, v28

    :cond_6
    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x1

    goto :goto_0

    :cond_7
    cmp-long v7, v17, v15

    if-eqz v7, :cond_9

    if-eqz v19, :cond_9

    const-wide/32 v9, 0xa00000

    add-long v17, v17, v9

    cmp-long v7, v20, v17

    if-gez v7, :cond_8

    goto :goto_3

    :cond_8
    move/from16 v7, v22

    goto :goto_4

    :cond_9
    :goto_3
    move/from16 v7, v23

    .line 5506
    :goto_4
    iput v7, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->m:I

    if-ne v7, v8, :cond_a

    return v8

    .line 5510
    :cond_a
    aget-object v7, v14, v7

    iget-object v7, v7, Landroidx/media2/exoplayer/external/extractor/mp4/h$a;->a:Landroidx/media2/exoplayer/external/extractor/mp4/l;

    iget-object v7, v7, Landroidx/media2/exoplayer/external/extractor/mp4/l;->f:Landroidx/media2/exoplayer/external/Format;

    iget-object v7, v7, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    const-string v9, "audio/ac4"

    .line 5511
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->p:Z

    .line 5513
    :cond_b
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->r:[Landroidx/media2/exoplayer/external/extractor/mp4/h$a;

    iget v9, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->m:I

    aget-object v7, v7, v9

    .line 5514
    iget-object v14, v7, Landroidx/media2/exoplayer/external/extractor/mp4/h$a;->c:Landroidx/media2/exoplayer/external/extractor/q;

    .line 5515
    iget v9, v7, Landroidx/media2/exoplayer/external/extractor/mp4/h$a;->d:I

    .line 5516
    iget-object v10, v7, Landroidx/media2/exoplayer/external/extractor/mp4/h$a;->b:Landroidx/media2/exoplayer/external/extractor/mp4/o;

    iget-object v10, v10, Landroidx/media2/exoplayer/external/extractor/mp4/o;->c:[J

    aget-wide v12, v10, v9

    .line 5517
    iget-object v10, v7, Landroidx/media2/exoplayer/external/extractor/mp4/h$a;->b:Landroidx/media2/exoplayer/external/extractor/mp4/o;

    iget-object v10, v10, Landroidx/media2/exoplayer/external/extractor/mp4/o;->d:[I

    aget v10, v10, v9

    sub-long v3, v12, v3

    .line 5518
    iget v11, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->n:I

    move/from16 v17, v9

    int-to-long v8, v11

    add-long/2addr v3, v8

    cmp-long v8, v3, v5

    if-ltz v8, :cond_13

    const-wide/32 v5, 0x40000

    cmp-long v8, v3, v5

    if-ltz v8, :cond_c

    goto/16 :goto_8

    .line 5523
    :cond_c
    iget-object v2, v7, Landroidx/media2/exoplayer/external/extractor/mp4/h$a;->a:Landroidx/media2/exoplayer/external/extractor/mp4/l;

    iget v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/l;->g:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_d

    const-wide/16 v5, 0x8

    add-long/2addr v3, v5

    add-int/lit8 v10, v10, -0x8

    :cond_d
    long-to-int v2, v3

    .line 5529
    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/extractor/h;->b(I)V

    .line 5530
    iget-object v2, v7, Landroidx/media2/exoplayer/external/extractor/mp4/h$a;->a:Landroidx/media2/exoplayer/external/extractor/mp4/l;

    iget v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/l;->j:I

    if-eqz v2, :cond_10

    .line 5533
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->d:Landroidx/media2/exoplayer/external/util/p;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/4 v3, 0x0

    .line 5534
    aput-byte v3, v2, v3

    const/4 v4, 0x1

    .line 5535
    aput-byte v3, v2, v4

    const/4 v4, 0x2

    .line 5536
    aput-byte v3, v2, v4

    .line 5537
    iget-object v3, v7, Landroidx/media2/exoplayer/external/extractor/mp4/h$a;->a:Landroidx/media2/exoplayer/external/extractor/mp4/l;

    iget v3, v3, Landroidx/media2/exoplayer/external/extractor/mp4/l;->j:I

    .line 5538
    iget-object v4, v7, Landroidx/media2/exoplayer/external/extractor/mp4/h$a;->a:Landroidx/media2/exoplayer/external/extractor/mp4/l;

    iget v4, v4, Landroidx/media2/exoplayer/external/extractor/mp4/l;->j:I

    const/4 v5, 0x4

    rsub-int/lit8 v4, v4, 0x4

    .line 5542
    :goto_5
    iget v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->n:I

    if-ge v5, v10, :cond_12

    .line 5543
    iget v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->o:I

    if-nez v5, :cond_f

    .line 5545
    invoke-interface {v1, v2, v4, v3}, Landroidx/media2/exoplayer/external/extractor/h;->b([BII)V

    .line 5546
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->d:Landroidx/media2/exoplayer/external/util/p;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 5547
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->d:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v5

    if-ltz v5, :cond_e

    .line 5551
    iput v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->o:I

    .line 5553
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->c:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 5554
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->c:Landroidx/media2/exoplayer/external/util/p;

    const/4 v6, 0x4

    invoke-interface {v14, v5, v6}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    .line 5555
    iget v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->n:I

    add-int/2addr v5, v6

    iput v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->n:I

    add-int/2addr v10, v4

    goto :goto_5

    .line 5549
    :cond_e
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v2, "Invalid NAL length"

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    const/4 v6, 0x0

    .line 5559
    invoke-interface {v14, v1, v5, v6}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/extractor/h;IZ)I

    move-result v5

    .line 5560
    iget v6, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->n:I

    add-int/2addr v6, v5

    iput v6, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->n:I

    .line 5561
    iget v6, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->o:I

    sub-int/2addr v6, v5

    iput v6, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->o:I

    goto :goto_5

    .line 5565
    :cond_10
    iget-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->p:Z

    if-eqz v2, :cond_11

    .line 5566
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->e:Landroidx/media2/exoplayer/external/util/p;

    invoke-static {v10, v2}, Landroidx/media2/exoplayer/external/audio/b;->a(ILandroidx/media2/exoplayer/external/util/p;)V

    .line 5567
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->e:Landroidx/media2/exoplayer/external/util/p;

    .line 6125
    iget v2, v2, Landroidx/media2/exoplayer/external/util/p;->c:I

    .line 5568
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->e:Landroidx/media2/exoplayer/external/util/p;

    invoke-interface {v14, v3, v2}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    add-int/2addr v10, v2

    .line 5570
    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->n:I

    add-int/2addr v3, v2

    iput v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->n:I

    const/4 v2, 0x0

    .line 5571
    iput-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->p:Z

    goto :goto_7

    :cond_11
    :goto_6
    const/4 v2, 0x0

    .line 5573
    :goto_7
    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->n:I

    if-ge v3, v10, :cond_12

    sub-int v3, v10, v3

    .line 5574
    invoke-interface {v14, v1, v3, v2}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/extractor/h;IZ)I

    move-result v3

    .line 5575
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->n:I

    add-int/2addr v2, v3

    iput v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->n:I

    .line 5576
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->o:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->o:I

    goto :goto_6

    :cond_12
    move/from16 v18, v10

    .line 5579
    iget-object v1, v7, Landroidx/media2/exoplayer/external/extractor/mp4/h$a;->b:Landroidx/media2/exoplayer/external/extractor/mp4/o;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/mp4/o;->f:[J

    aget-wide v15, v1, v17

    iget-object v1, v7, Landroidx/media2/exoplayer/external/extractor/mp4/h$a;->b:Landroidx/media2/exoplayer/external/extractor/mp4/o;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/mp4/o;->g:[I

    aget v17, v1, v17

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-interface/range {v14 .. v20}, Landroidx/media2/exoplayer/external/extractor/q;->a(JIIILandroidx/media2/exoplayer/external/extractor/q$a;)V

    .line 5581
    iget v1, v7, Landroidx/media2/exoplayer/external/extractor/mp4/h$a;->d:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v7, Landroidx/media2/exoplayer/external/extractor/mp4/h$a;->d:I

    const/4 v1, -0x1

    .line 5582
    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->m:I

    const/4 v1, 0x0

    .line 5583
    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->n:I

    .line 5584
    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->o:I

    return v1

    :cond_13
    :goto_8
    const/4 v3, 0x1

    .line 5520
    iput-wide v12, v2, Landroidx/media2/exoplayer/external/extractor/n;->a:J

    return v3

    .line 200
    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 4346
    :cond_15
    iget-wide v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->j:J

    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->k:I

    int-to-long v7, v3

    sub-long/2addr v5, v7

    .line 4347
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v7

    add-long/2addr v7, v5

    .line 4349
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->l:Landroidx/media2/exoplayer/external/util/p;

    if-eqz v3, :cond_1a

    .line 4350
    iget-object v3, v3, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget v10, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->k:I

    long-to-int v6, v5

    invoke-interface {v1, v3, v10, v6}, Landroidx/media2/exoplayer/external/extractor/h;->b([BII)V

    .line 4351
    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->i:I

    if-ne v3, v4, :cond_19

    .line 4352
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->l:Landroidx/media2/exoplayer/external/util/p;

    .line 4765
    invoke-virtual {v3, v9}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 4766
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v4

    const v5, 0x71742020

    if-ne v4, v5, :cond_16

    :goto_9
    const/4 v3, 0x1

    goto :goto_a

    :cond_16
    const/4 v4, 0x4

    .line 4770
    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 4771
    :cond_17
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v4

    if-lez v4, :cond_18

    .line 4772
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v4

    if-ne v4, v5, :cond_17

    goto :goto_9

    :cond_18
    const/4 v3, 0x0

    .line 4352
    :goto_a
    iput-boolean v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->v:Z

    goto :goto_b

    .line 4353
    :cond_19
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 4354
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;

    new-instance v4, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;

    iget v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->i:I

    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->l:Landroidx/media2/exoplayer/external/util/p;

    invoke-direct {v4, v5, v6}, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;-><init>(ILandroidx/media2/exoplayer/external/util/p;)V

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->a(Landroidx/media2/exoplayer/external/extractor/mp4/a$b;)V

    goto :goto_b

    :cond_1a
    const-wide/32 v3, 0x40000

    cmp-long v9, v5, v3

    if-gez v9, :cond_1c

    long-to-int v3, v5

    .line 4359
    invoke-interface {v1, v3}, Landroidx/media2/exoplayer/external/extractor/h;->b(I)V

    :cond_1b
    :goto_b
    const/4 v3, 0x0

    goto :goto_c

    .line 4361
    :cond_1c
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v3

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroidx/media2/exoplayer/external/extractor/n;->a:J

    const/4 v3, 0x1

    .line 4365
    :goto_c
    invoke-direct {v0, v7, v8}, Landroidx/media2/exoplayer/external/extractor/mp4/h;->b(J)V

    if-eqz v3, :cond_1d

    .line 4366
    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->h:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1d

    const/4 v11, 0x1

    goto :goto_d

    :cond_1d
    const/4 v11, 0x0

    :goto_d
    if-eqz v11, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_1e
    const/4 v3, 0x1

    .line 2278
    iget v7, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->k:I

    if-nez v7, :cond_20

    .line 2280
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->f:Landroidx/media2/exoplayer/external/util/p;

    iget-object v7, v7, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/4 v8, 0x0

    invoke-interface {v1, v7, v8, v9, v3}, Landroidx/media2/exoplayer/external/extractor/h;->a([BIIZ)Z

    move-result v7

    if-nez v7, :cond_1f

    const/4 v10, 0x0

    goto/16 :goto_18

    .line 2283
    :cond_1f
    iput v9, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->k:I

    .line 2284
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->f:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v3, v8}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 2285
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->f:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/p;->g()J

    move-result-wide v7

    iput-wide v7, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->j:J

    .line 2286
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->f:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v3

    iput v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->i:I

    .line 2289
    :cond_20
    iget-wide v7, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->j:J

    const-wide/16 v10, 0x1

    cmp-long v3, v7, v10

    if-nez v3, :cond_21

    .line 2292
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->f:Landroidx/media2/exoplayer/external/util/p;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-interface {v1, v3, v9, v9}, Landroidx/media2/exoplayer/external/extractor/h;->b([BII)V

    .line 2293
    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->k:I

    add-int/2addr v3, v9

    iput v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->k:I

    .line 2294
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->f:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/p;->p()J

    move-result-wide v5

    iput-wide v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->j:J

    goto :goto_e

    :cond_21
    cmp-long v3, v7, v5

    if-nez v3, :cond_23

    .line 2298
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->d()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-nez v3, :cond_22

    .line 2299
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_22

    .line 2300
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;

    iget-wide v5, v3, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->b:J

    :cond_22
    cmp-long v3, v5, v7

    if-eqz v3, :cond_23

    .line 2303
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->k:I

    int-to-long v7, v3

    add-long/2addr v5, v7

    iput-wide v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->j:J

    .line 2307
    :cond_23
    :goto_e
    iget-wide v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->j:J

    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->k:I

    int-to-long v7, v3

    cmp-long v10, v5, v7

    if-ltz v10, :cond_2f

    .line 2311
    iget v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->i:I

    const v6, 0x6d6f6f76

    const v7, 0x6d657461

    if-eq v5, v6, :cond_25

    const v6, 0x7472616b

    if-eq v5, v6, :cond_25

    const v6, 0x6d646961

    if-eq v5, v6, :cond_25

    const v6, 0x6d696e66

    if-eq v5, v6, :cond_25

    const v6, 0x7374626c

    if-eq v5, v6, :cond_25

    const v6, 0x65647473

    if-eq v5, v6, :cond_25

    if-ne v5, v7, :cond_24

    goto :goto_f

    :cond_24
    const/4 v6, 0x0

    goto :goto_10

    :cond_25
    :goto_f
    const/4 v6, 0x1

    :goto_10
    const v8, 0x68646c72    # 4.3148E24f

    if-eqz v6, :cond_29

    .line 2312
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v3

    iget-wide v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->j:J

    add-long/2addr v3, v5

    iget v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->k:I

    int-to-long v5, v5

    sub-long/2addr v3, v5

    .line 2313
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->g:Ljava/util/ArrayDeque;

    new-instance v6, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;

    iget v10, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->i:I

    invoke-direct {v6, v10, v3, v4}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;-><init>(IJ)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 2314
    iget-wide v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->j:J

    iget v10, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->k:I

    int-to-long v10, v10

    cmp-long v12, v5, v10

    if-nez v12, :cond_26

    .line 2315
    invoke-direct {v0, v3, v4}, Landroidx/media2/exoplayer/external/extractor/mp4/h;->b(J)V

    :goto_11
    const/4 v3, 0x1

    goto/16 :goto_17

    .line 2317
    :cond_26
    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->i:I

    if-ne v3, v7, :cond_28

    .line 3666
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->e:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v3, v9}, Landroidx/media2/exoplayer/external/util/p;->a(I)V

    .line 3671
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->e:Landroidx/media2/exoplayer/external/util/p;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4, v9}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V

    .line 3672
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->e:Landroidx/media2/exoplayer/external/util/p;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 3673
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->e:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v3

    if-ne v3, v8, :cond_27

    .line 3674
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->a()V

    goto :goto_12

    .line 3676
    :cond_27
    invoke-interface {v1, v4}, Landroidx/media2/exoplayer/external/extractor/h;->b(I)V

    .line 2321
    :cond_28
    :goto_12
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/extractor/mp4/h;->d()V

    goto :goto_11

    :cond_29
    const v6, 0x6d646864

    if-eq v5, v6, :cond_2b

    const v6, 0x6d766864

    if-eq v5, v6, :cond_2b

    if-eq v5, v8, :cond_2b

    const v6, 0x73747364

    if-eq v5, v6, :cond_2b

    const v6, 0x73747473

    if-eq v5, v6, :cond_2b

    const v6, 0x73747373

    if-eq v5, v6, :cond_2b

    const v6, 0x63747473

    if-eq v5, v6, :cond_2b

    const v6, 0x656c7374

    if-eq v5, v6, :cond_2b

    const v6, 0x73747363

    if-eq v5, v6, :cond_2b

    const v6, 0x7374737a

    if-eq v5, v6, :cond_2b

    const v6, 0x73747a32

    if-eq v5, v6, :cond_2b

    const v6, 0x7374636f

    if-eq v5, v6, :cond_2b

    const v6, 0x636f3634

    if-eq v5, v6, :cond_2b

    const v6, 0x746b6864

    if-eq v5, v6, :cond_2b

    if-eq v5, v4, :cond_2b

    const v4, 0x75647461

    if-eq v5, v4, :cond_2b

    const v4, 0x6b657973

    if-eq v5, v4, :cond_2b

    const v4, 0x696c7374

    if-ne v5, v4, :cond_2a

    goto :goto_13

    :cond_2a
    const/4 v5, 0x0

    goto :goto_14

    :cond_2b
    :goto_13
    const/4 v5, 0x1

    :goto_14
    if-eqz v5, :cond_2e

    if-ne v3, v9, :cond_2c

    const/4 v5, 0x1

    goto :goto_15

    :cond_2c
    const/4 v5, 0x0

    .line 2326
    :goto_15
    invoke-static {v5}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 2327
    iget-wide v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->j:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v3, v5

    if-gtz v7, :cond_2d

    const/4 v5, 0x1

    goto :goto_16

    :cond_2d
    const/4 v5, 0x0

    :goto_16
    invoke-static {v5}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 2328
    new-instance v3, Landroidx/media2/exoplayer/external/util/p;

    iget-wide v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->j:J

    long-to-int v5, v4

    invoke-direct {v3, v5}, Landroidx/media2/exoplayer/external/util/p;-><init>(I)V

    iput-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->l:Landroidx/media2/exoplayer/external/util/p;

    .line 2329
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->f:Landroidx/media2/exoplayer/external/util/p;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->l:Landroidx/media2/exoplayer/external/util/p;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x1

    .line 2330
    iput v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->h:I

    goto :goto_17

    :cond_2e
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2332
    iput-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->l:Landroidx/media2/exoplayer/external/util/p;

    .line 2333
    iput v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->h:I

    :goto_17
    const/4 v10, 0x1

    :goto_18
    if-nez v10, :cond_0

    const/4 v3, -0x1

    return v3

    .line 2308
    :cond_2f
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v2, "Atom size less than header length (unsupported)."

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(J)Landroidx/media2/exoplayer/external/extractor/o$a;
    .locals 12

    .line 219
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->r:[Landroidx/media2/exoplayer/external/extractor/mp4/h$a;

    array-length v1, v0

    if-nez v1, :cond_0

    .line 220
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/o$a;

    sget-object p2, Landroidx/media2/exoplayer/external/extractor/p;->a:Landroidx/media2/exoplayer/external/extractor/p;

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/extractor/o$a;-><init>(Landroidx/media2/exoplayer/external/extractor/p;)V

    return-object p1

    :cond_0
    const-wide/16 v1, -0x1

    .line 229
    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->t:I

    const/4 v4, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v3, v4, :cond_3

    .line 230
    aget-object v0, v0, v3

    iget-object v0, v0, Landroidx/media2/exoplayer/external/extractor/mp4/h$a;->b:Landroidx/media2/exoplayer/external/extractor/mp4/o;

    .line 231
    invoke-static {v0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/mp4/h;->a(Landroidx/media2/exoplayer/external/extractor/mp4/o;J)I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 233
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/o$a;

    sget-object p2, Landroidx/media2/exoplayer/external/extractor/p;->a:Landroidx/media2/exoplayer/external/extractor/p;

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/extractor/o$a;-><init>(Landroidx/media2/exoplayer/external/extractor/p;)V

    return-object p1

    .line 235
    :cond_1
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/mp4/o;->f:[J

    aget-wide v8, v7, v3

    .line 237
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/mp4/o;->c:[J

    aget-wide v10, v7, v3

    cmp-long v7, v8, p1

    if-gez v7, :cond_2

    .line 238
    iget v7, v0, Landroidx/media2/exoplayer/external/extractor/mp4/o;->b:I

    add-int/lit8 v7, v7, -0x1

    if-ge v3, v7, :cond_2

    .line 239
    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/mp4/o;->b(J)I

    move-result p1

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_2

    .line 241
    iget-object p2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/o;->f:[J

    aget-wide v1, p2, p1

    .line 242
    iget-object p2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/o;->c:[J

    aget-wide p1, p2, p1

    goto :goto_0

    :cond_2
    move-wide p1, v1

    move-wide v1, v5

    :goto_0
    move-wide v3, p1

    move-wide p1, v8

    goto :goto_1

    :cond_3
    const-wide v10, 0x7fffffffffffffffL

    move-wide v3, v1

    move-wide v1, v5

    :goto_1
    const/4 v0, 0x0

    .line 251
    :goto_2
    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->r:[Landroidx/media2/exoplayer/external/extractor/mp4/h$a;

    array-length v8, v7

    if-ge v0, v8, :cond_6

    .line 252
    iget v8, p0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->t:I

    if-eq v0, v8, :cond_5

    .line 253
    aget-object v7, v7, v0

    iget-object v7, v7, Landroidx/media2/exoplayer/external/extractor/mp4/h$a;->b:Landroidx/media2/exoplayer/external/extractor/mp4/o;

    .line 254
    invoke-static {v7, p1, p2, v10, v11}, Landroidx/media2/exoplayer/external/extractor/mp4/h;->a(Landroidx/media2/exoplayer/external/extractor/mp4/o;JJ)J

    move-result-wide v8

    cmp-long v10, v1, v5

    if-eqz v10, :cond_4

    .line 256
    invoke-static {v7, v1, v2, v3, v4}, Landroidx/media2/exoplayer/external/extractor/mp4/h;->a(Landroidx/media2/exoplayer/external/extractor/mp4/o;JJ)J

    move-result-wide v3

    :cond_4
    move-wide v10, v8

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 261
    :cond_6
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/p;

    invoke-direct {v0, p1, p2, v10, v11}, Landroidx/media2/exoplayer/external/extractor/p;-><init>(JJ)V

    cmp-long p1, v1, v5

    if-nez p1, :cond_7

    .line 263
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/o$a;

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/extractor/o$a;-><init>(Landroidx/media2/exoplayer/external/extractor/p;)V

    return-object p1

    .line 265
    :cond_7
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/p;

    invoke-direct {p1, v1, v2, v3, v4}, Landroidx/media2/exoplayer/external/extractor/p;-><init>(JJ)V

    .line 266
    new-instance p2, Landroidx/media2/exoplayer/external/extractor/o$a;

    invoke-direct {p2, v0, p1}, Landroidx/media2/exoplayer/external/extractor/o$a;-><init>(Landroidx/media2/exoplayer/external/extractor/p;Landroidx/media2/exoplayer/external/extractor/p;)V

    return-object p2
.end method

.method public final a(JJ)V
    .locals 5

    .line 164
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    .line 165
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->k:I

    const/4 v1, -0x1

    .line 166
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->m:I

    .line 167
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->n:I

    .line 168
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->o:I

    .line 169
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->p:Z

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    .line 171
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/h;->d()V

    return-void

    .line 172
    :cond_0
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->r:[Landroidx/media2/exoplayer/external/extractor/mp4/h$a;

    if-eqz p1, :cond_2

    .line 1643
    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_2

    aget-object v2, p1, v0

    .line 1644
    iget-object v3, v2, Landroidx/media2/exoplayer/external/extractor/mp4/h$a;->b:Landroidx/media2/exoplayer/external/extractor/mp4/o;

    .line 1645
    invoke-virtual {v3, p3, p4}, Landroidx/media2/exoplayer/external/extractor/mp4/o;->a(J)I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 1648
    invoke-virtual {v3, p3, p4}, Landroidx/media2/exoplayer/external/extractor/mp4/o;->b(J)I

    move-result v4

    .line 1650
    :cond_1
    iput v4, v2, Landroidx/media2/exoplayer/external/extractor/mp4/h$a;->d:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/i;)V
    .locals 0

    .line 159
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->q:Landroidx/media2/exoplayer/external/extractor/i;

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/h;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 154
    invoke-static {p1}, Landroidx/media2/exoplayer/external/extractor/mp4/k;->b(Landroidx/media2/exoplayer/external/extractor/h;)Z

    move-result p1

    return p1
.end method

.method public final b()J
    .locals 2

    .line 214
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/h;->u:J

    return-wide v0
.end method

.method public final j_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
