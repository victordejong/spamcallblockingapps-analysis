.class public final Lcom/google/android/exoplayer2/trackselection/a;
.super Lcom/google/android/exoplayer2/trackselection/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/a$a;,
        Lcom/google/android/exoplayer2/trackselection/a$b;
    }
.end annotation


# instance fields
.field private final d:Lcom/google/android/exoplayer2/upstream/c;

.field private final e:J

.field private final f:J

.field private final g:J

.field private final h:F

.field private final i:F

.field private final j:Lcom/google/common/collect/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/v<",
            "Lcom/google/android/exoplayer2/trackselection/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/google/android/exoplayer2/util/c;

.field private l:F

.field private m:I

.field private n:I

.field private o:J

.field private p:Lcom/google/android/exoplayer2/source/a/b;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/upstream/c;)V
    .locals 14

    .line 229
    invoke-static {}, Lcom/google/common/collect/v;->g()Lcom/google/common/collect/v;

    move-result-object v12

    sget-object v13, Lcom/google/android/exoplayer2/util/c;->a:Lcom/google/android/exoplayer2/util/c;

    const-wide/16 v4, 0x2710

    const-wide/16 v6, 0x61a8

    const-wide/16 v8, 0x61a8

    const v10, 0x3f333333    # 0.7f

    const/high16 v11, 0x3f400000    # 0.75f

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 220
    invoke-direct/range {v0 .. v13}, Lcom/google/android/exoplayer2/trackselection/a;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/upstream/c;JJJFFLjava/util/List;Lcom/google/android/exoplayer2/util/c;)V

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/upstream/c;JJJFFLjava/util/List;Lcom/google/android/exoplayer2/util/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "[I",
            "Lcom/google/android/exoplayer2/upstream/c;",
            "JJJFF",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/trackselection/a$a;",
            ">;",
            "Lcom/google/android/exoplayer2/util/c;",
            ")V"
        }
    .end annotation

    .line 270
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/b;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    .line 271
    iput-object p3, p0, Lcom/google/android/exoplayer2/trackselection/a;->d:Lcom/google/android/exoplayer2/upstream/c;

    const-wide/16 p1, 0x3e8

    mul-long p4, p4, p1

    .line 272
    iput-wide p4, p0, Lcom/google/android/exoplayer2/trackselection/a;->e:J

    mul-long p6, p6, p1

    .line 273
    iput-wide p6, p0, Lcom/google/android/exoplayer2/trackselection/a;->f:J

    mul-long p8, p8, p1

    .line 274
    iput-wide p8, p0, Lcom/google/android/exoplayer2/trackselection/a;->g:J

    .line 275
    iput p10, p0, Lcom/google/android/exoplayer2/trackselection/a;->h:F

    .line 276
    iput p11, p0, Lcom/google/android/exoplayer2/trackselection/a;->i:F

    .line 278
    invoke-static {p12}, Lcom/google/common/collect/v;->a(Ljava/util/Collection;)Lcom/google/common/collect/v;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/a;->j:Lcom/google/common/collect/v;

    .line 279
    iput-object p13, p0, Lcom/google/android/exoplayer2/trackselection/a;->k:Lcom/google/android/exoplayer2/util/c;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 280
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/a;->l:F

    const/4 p1, 0x0

    .line 281
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/a;->n:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 282
    iput-wide p1, p0, Lcom/google/android/exoplayer2/trackselection/a;->o:J

    return-void
.end method

.method static a([[J)Lcom/google/common/collect/v;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[J)",
            "Lcom/google/common/collect/v<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1138
    invoke-static {}, Lcom/google/common/collect/an;->b()Lcom/google/common/collect/an;

    move-result-object v1

    .line 1155
    invoke-static {v1}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    new-instance v2, Lcom/google/common/collect/ai$2;

    invoke-direct {v2, v1}, Lcom/google/common/collect/ai$2;-><init>(Ljava/util/Comparator;)V

    .line 1282
    invoke-virtual {v2}, Lcom/google/common/collect/ai$c;->b()Lcom/google/common/collect/ai$b;

    move-result-object v1

    .line 582
    invoke-virtual {v1}, Lcom/google/common/collect/ai$b;->a()Lcom/google/common/collect/ac;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 583
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_4

    .line 584
    aget-object v4, v0, v3

    array-length v4, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    .line 587
    aget-object v4, v0, v3

    array-length v4, v4

    new-array v5, v4, [D

    const/4 v6, 0x0

    .line 588
    :goto_1
    aget-object v7, v0, v3

    array-length v7, v7

    const-wide/16 v8, 0x0

    if-ge v6, v7, :cond_1

    .line 589
    aget-object v7, v0, v3

    aget-wide v10, v7, v6

    const-wide/16 v12, -0x1

    cmp-long v7, v10, v12

    if-nez v7, :cond_0

    goto :goto_2

    :cond_0
    aget-object v7, v0, v3

    aget-wide v8, v7, v6

    long-to-double v7, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    :goto_2
    aput-wide v8, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, -0x1

    .line 591
    aget-wide v6, v5, v4

    aget-wide v10, v5, v2

    sub-double/2addr v6, v10

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v4, :cond_3

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    .line 593
    aget-wide v13, v5, v10

    add-int/lit8 v10, v10, 0x1

    aget-wide v15, v5, v10

    add-double/2addr v13, v15

    mul-double v13, v13, v11

    cmpl-double v11, v6, v8

    if-nez v11, :cond_2

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    goto :goto_4

    .line 595
    :cond_2
    aget-wide v11, v5, v2

    sub-double/2addr v13, v11

    div-double v11, v13, v6

    .line 596
    :goto_4
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v1, v11, v12}, Lcom/google/common/collect/ah;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 599
    :cond_4
    invoke-interface {v1}, Lcom/google/common/collect/ah;->i()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/v;->a(Ljava/util/Collection;)Lcom/google/common/collect/v;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/util/List;[J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/common/collect/v$a<",
            "Lcom/google/android/exoplayer2/trackselection/a$a;",
            ">;>;[J)V"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 613
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 614
    aget-wide v4, p1, v3

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 616
    :cond_0
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 617
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/v$a;

    if-eqz v3, :cond_1

    .line 621
    new-instance v4, Lcom/google/android/exoplayer2/trackselection/a$a;

    aget-wide v5, p1, v0

    invoke-direct {v4, v1, v2, v5, v6}, Lcom/google/android/exoplayer2/trackselection/a$a;-><init>(JJ)V

    invoke-virtual {v3, v4}, Lcom/google/common/collect/v$a;->b(Ljava/lang/Object;)Lcom/google/common/collect/v$a;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method static a([Lcom/google/android/exoplayer2/trackselection/c$a;)[[J
    .locals 8

    .line 555
    array-length v0, p0

    new-array v0, v0, [[J

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 556
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 557
    aget-object v3, p0, v2

    if-nez v3, :cond_0

    new-array v3, v1, [J

    .line 559
    aput-object v3, v0, v2

    goto :goto_2

    .line 562
    :cond_0
    iget-object v4, v3, Lcom/google/android/exoplayer2/trackselection/c$a;->b:[I

    array-length v4, v4

    new-array v4, v4, [J

    aput-object v4, v0, v2

    const/4 v4, 0x0

    .line 563
    :goto_1
    iget-object v5, v3, Lcom/google/android/exoplayer2/trackselection/c$a;->b:[I

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 564
    aget-object v5, v0, v2

    iget-object v6, v3, Lcom/google/android/exoplayer2/trackselection/c$a;->a:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v7, v3, Lcom/google/android/exoplayer2/trackselection/c$a;->b:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    iget v6, v6, Lcom/google/android/exoplayer2/Format;->bitrate:I

    int-to-long v6, v6

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 566
    :cond_1
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/util/Arrays;->sort([J)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 353
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/a;->m:I

    return v0
.end method

.method public final a(F)V
    .locals 0

    .line 301
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/a;->l:F

    return-void
.end method

.method public final b()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 288
    iput-wide v0, p0, Lcom/google/android/exoplayer2/trackselection/a;->o:J

    const/4 v0, 0x0

    .line 289
    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/a;->p:Lcom/google/android/exoplayer2/source/a/b;

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    .line 296
    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/a;->p:Lcom/google/android/exoplayer2/source/a/b;

    return-void
.end method
