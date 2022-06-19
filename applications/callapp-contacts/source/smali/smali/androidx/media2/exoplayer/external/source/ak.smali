.class public Landroidx/media2/exoplayer/external/source/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/ak$a;,
        Landroidx/media2/exoplayer/external/source/ak$b;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media2/exoplayer/external/source/aj;

.field final b:Landroidx/media2/exoplayer/external/source/aj$a;

.field final c:Landroidx/media2/exoplayer/external/util/p;

.field d:Landroidx/media2/exoplayer/external/Format;

.field public e:Z

.field public f:Landroidx/media2/exoplayer/external/source/ak$b;

.field private final g:Landroidx/media2/exoplayer/external/upstream/b;

.field private final h:I

.field private i:Landroidx/media2/exoplayer/external/source/ak$a;

.field private j:Landroidx/media2/exoplayer/external/source/ak$a;

.field private k:Landroidx/media2/exoplayer/external/source/ak$a;

.field private l:Z

.field private m:Landroidx/media2/exoplayer/external/Format;

.field private n:J

.field private o:J


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/b;)V
    .locals 3

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ak;->g:Landroidx/media2/exoplayer/external/upstream/b;

    .line 114
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/upstream/b;->c()I

    move-result p1

    iput p1, p0, Landroidx/media2/exoplayer/external/source/ak;->h:I

    .line 115
    new-instance v0, Landroidx/media2/exoplayer/external/source/aj;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/source/aj;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ak;->a:Landroidx/media2/exoplayer/external/source/aj;

    .line 116
    new-instance v0, Landroidx/media2/exoplayer/external/source/aj$a;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/source/aj$a;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ak;->b:Landroidx/media2/exoplayer/external/source/aj$a;

    .line 117
    new-instance v0, Landroidx/media2/exoplayer/external/util/p;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/p;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ak;->c:Landroidx/media2/exoplayer/external/util/p;

    .line 118
    new-instance v0, Landroidx/media2/exoplayer/external/source/ak$a;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p1}, Landroidx/media2/exoplayer/external/source/ak$a;-><init>(JI)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ak;->i:Landroidx/media2/exoplayer/external/source/ak$a;

    .line 119
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ak;->j:Landroidx/media2/exoplayer/external/source/ak$a;

    .line 120
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ak;->k:Landroidx/media2/exoplayer/external/source/ak$a;

    return-void
.end method

.method private a(Landroidx/media2/exoplayer/external/source/ak$a;)V
    .locals 5

    .line 697
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/source/ak$a;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 703
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ak;->k:Landroidx/media2/exoplayer/external/source/ak$a;

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/source/ak$a;->c:Z

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ak;->k:Landroidx/media2/exoplayer/external/source/ak$a;

    iget-wide v1, v1, Landroidx/media2/exoplayer/external/source/ak$a;->a:J

    iget-wide v3, p1, Landroidx/media2/exoplayer/external/source/ak$a;->a:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    iget v1, p0, Landroidx/media2/exoplayer/external/source/ak;->h:I

    div-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 705
    new-array v1, v0, [Landroidx/media2/exoplayer/external/upstream/a;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 708
    iget-object v3, p1, Landroidx/media2/exoplayer/external/source/ak$a;->d:Landroidx/media2/exoplayer/external/upstream/a;

    aput-object v3, v1, v2

    .line 709
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/ak$a;->a()Landroidx/media2/exoplayer/external/source/ak$a;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 711
    :cond_1
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ak;->g:Landroidx/media2/exoplayer/external/upstream/b;

    invoke-interface {p1, v1}, Landroidx/media2/exoplayer/external/upstream/b;->a([Landroidx/media2/exoplayer/external/upstream/a;)V

    return-void
.end method

.method private b(I)I
    .locals 6

    .line 723
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ak;->k:Landroidx/media2/exoplayer/external/source/ak$a;

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/source/ak$a;->c:Z

    if-nez v0, :cond_0

    .line 724
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ak;->k:Landroidx/media2/exoplayer/external/source/ak$a;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ak;->g:Landroidx/media2/exoplayer/external/upstream/b;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/upstream/b;->a()Landroidx/media2/exoplayer/external/upstream/a;

    move-result-object v1

    new-instance v2, Landroidx/media2/exoplayer/external/source/ak$a;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/ak;->k:Landroidx/media2/exoplayer/external/source/ak$a;

    iget-wide v3, v3, Landroidx/media2/exoplayer/external/source/ak$a;->b:J

    iget v5, p0, Landroidx/media2/exoplayer/external/source/ak;->h:I

    invoke-direct {v2, v3, v4, v5}, Landroidx/media2/exoplayer/external/source/ak$a;-><init>(JI)V

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/source/ak$a;->a(Landroidx/media2/exoplayer/external/upstream/a;Landroidx/media2/exoplayer/external/source/ak$a;)V

    .line 727
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ak;->k:Landroidx/media2/exoplayer/external/source/ak$a;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/source/ak$a;->b:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/ak;->o:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private b(J)V
    .locals 3

    .line 577
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ak;->j:Landroidx/media2/exoplayer/external/source/ak$a;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/source/ak$a;->b:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 578
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ak;->j:Landroidx/media2/exoplayer/external/source/ak$a;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/ak$a;->e:Landroidx/media2/exoplayer/external/source/ak$a;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ak;->j:Landroidx/media2/exoplayer/external/source/ak$a;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(I)V
    .locals 4

    .line 736
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ak;->o:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/ak;->o:J

    .line 737
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ak;->k:Landroidx/media2/exoplayer/external/source/ak$a;

    iget-wide v2, p1, Landroidx/media2/exoplayer/external/source/ak$a;->b:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 738
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ak;->k:Landroidx/media2/exoplayer/external/source/ak$a;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/ak$a;->e:Landroidx/media2/exoplayer/external/source/ak$a;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ak;->k:Landroidx/media2/exoplayer/external/source/ak$a;

    :cond_0
    return-void
.end method

.method private c(J)V
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 595
    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ak;->i:Landroidx/media2/exoplayer/external/source/ak$a;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/source/ak$a;->b:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 596
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ak;->g:Landroidx/media2/exoplayer/external/upstream/b;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ak;->i:Landroidx/media2/exoplayer/external/source/ak$a;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/ak$a;->d:Landroidx/media2/exoplayer/external/upstream/a;

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/upstream/b;->a(Landroidx/media2/exoplayer/external/upstream/a;)V

    .line 597
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ak;->i:Landroidx/media2/exoplayer/external/source/ak$a;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/ak$a;->a()Landroidx/media2/exoplayer/external/source/ak$a;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ak;->i:Landroidx/media2/exoplayer/external/source/ak$a;

    goto :goto_0

    .line 601
    :cond_1
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ak;->j:Landroidx/media2/exoplayer/external/source/ak$a;

    iget-wide p1, p1, Landroidx/media2/exoplayer/external/source/ak$a;->a:J

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ak;->i:Landroidx/media2/exoplayer/external/source/ak$a;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/source/ak$a;->a:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_2

    .line 602
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ak;->i:Landroidx/media2/exoplayer/external/source/ak$a;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ak;->j:Landroidx/media2/exoplayer/external/source/ak$a;

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    .line 236
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ak;->a:Landroidx/media2/exoplayer/external/source/aj;

    .line 1168
    iget v1, v0, Landroidx/media2/exoplayer/external/source/aj;->b:I

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/source/aj;->a(I)I

    move-result v1

    .line 1169
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/aj;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/aj;->a:[I

    aget v0, v0, v1

    return v0

    :cond_0
    iget v0, v0, Landroidx/media2/exoplayer/external/source/aj;->c:I

    return v0
.end method

.method public final a(JZ)I
    .locals 2

    .line 333
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ak;->a:Landroidx/media2/exoplayer/external/source/aj;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/media2/exoplayer/external/source/aj;->a(JZZ)I

    move-result p1

    return p1
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/h;IZ)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 644
    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/source/ak;->b(I)I

    move-result p2

    .line 645
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ak;->k:Landroidx/media2/exoplayer/external/source/ak$a;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/ak$a;->d:Landroidx/media2/exoplayer/external/upstream/a;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/upstream/a;->a:[B

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ak;->k:Landroidx/media2/exoplayer/external/source/ak$a;

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/ak;->o:J

    .line 646
    invoke-virtual {v1, v2, v3}, Landroidx/media2/exoplayer/external/source/ak$a;->a(J)I

    move-result v1

    .line 645
    invoke-interface {p1, v0, v1, p2}, Landroidx/media2/exoplayer/external/extractor/h;->a([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    return p2

    .line 651
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 653
    :cond_1
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/ak;->c(I)V

    return p1
.end method

.method public final a(I)V
    .locals 1

    .line 156
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ak;->a:Landroidx/media2/exoplayer/external/source/aj;

    .line 1142
    iput p1, v0, Landroidx/media2/exoplayer/external/source/aj;->c:I

    return-void
.end method

.method public final a(J)V
    .locals 3

    .line 624
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ak;->n:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    .line 625
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/ak;->n:J

    const/4 p1, 0x1

    .line 626
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/source/ak;->l:Z

    :cond_0
    return-void
.end method

.method public final a(JIIILandroidx/media2/exoplayer/external/extractor/q$a;)V
    .locals 11

    move-object v0, p0

    .line 675
    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/source/ak;->l:Z

    if-eqz v1, :cond_0

    .line 676
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ak;->m:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/source/ak;->a(Landroidx/media2/exoplayer/external/Format;)V

    .line 678
    :cond_0
    iget-wide v1, v0, Landroidx/media2/exoplayer/external/source/ak;->n:J

    add-long v4, p1, v1

    .line 679
    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/source/ak;->e:Z

    if-eqz v1, :cond_3

    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_2

    .line 680
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ak;->a:Landroidx/media2/exoplayer/external/source/aj;

    invoke-virtual {v1, v4, v5}, Landroidx/media2/exoplayer/external/source/aj;->a(J)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 683
    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/source/ak;->e:Z

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    .line 685
    :cond_3
    :goto_1
    iget-wide v1, v0, Landroidx/media2/exoplayer/external/source/ak;->o:J

    move v9, p4

    int-to-long v6, v9

    sub-long/2addr v1, v6

    move/from16 v3, p5

    int-to-long v6, v3

    sub-long v7, v1, v6

    .line 686
    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/ak;->a:Landroidx/media2/exoplayer/external/source/aj;

    move v6, p3

    move-object/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Landroidx/media2/exoplayer/external/source/aj;->a(JIJILandroidx/media2/exoplayer/external/extractor/q$a;)V

    return-void
.end method

.method final a(JLjava/nio/ByteBuffer;I)V
    .locals 3

    .line 534
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/ak;->b(J)V

    :cond_0
    :goto_0
    if-lez p4, :cond_1

    .line 537
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ak;->j:Landroidx/media2/exoplayer/external/source/ak$a;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/source/ak$a;->b:J

    sub-long/2addr v0, p1

    long-to-int v1, v0

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 538
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ak;->j:Landroidx/media2/exoplayer/external/source/ak$a;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/ak$a;->d:Landroidx/media2/exoplayer/external/upstream/a;

    .line 539
    iget-object v1, v1, Landroidx/media2/exoplayer/external/upstream/a;->a:[B

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ak;->j:Landroidx/media2/exoplayer/external/source/ak$a;

    invoke-virtual {v2, p1, p2}, Landroidx/media2/exoplayer/external/source/ak$a;->a(J)I

    move-result v2

    invoke-virtual {p3, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr p4, v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    .line 542
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ak;->j:Landroidx/media2/exoplayer/external/source/ak$a;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/source/ak$a;->b:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 543
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ak;->j:Landroidx/media2/exoplayer/external/source/ak$a;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/ak$a;->e:Landroidx/media2/exoplayer/external/source/ak$a;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ak;->j:Landroidx/media2/exoplayer/external/source/ak$a;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(JZZ)V
    .locals 1

    .line 293
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ak;->a:Landroidx/media2/exoplayer/external/source/aj;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/source/aj;->b(JZZ)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/ak;->c(J)V

    return-void
.end method

.method final a(J[BI)V
    .locals 5

    .line 556
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/ak;->b(J)V

    move v0, p4

    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 559
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ak;->j:Landroidx/media2/exoplayer/external/source/ak$a;

    iget-wide v1, v1, Landroidx/media2/exoplayer/external/source/ak$a;->b:J

    sub-long/2addr v1, p1

    long-to-int v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 560
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ak;->j:Landroidx/media2/exoplayer/external/source/ak$a;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/source/ak$a;->d:Landroidx/media2/exoplayer/external/upstream/a;

    .line 561
    iget-object v2, v2, Landroidx/media2/exoplayer/external/upstream/a;->a:[B

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/ak;->j:Landroidx/media2/exoplayer/external/source/ak$a;

    invoke-virtual {v3, p1, p2}, Landroidx/media2/exoplayer/external/source/ak$a;->a(J)I

    move-result v3

    sub-int v4, p4, v0

    invoke-static {v2, v3, p3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v1

    int-to-long v1, v1

    add-long/2addr p1, v1

    .line 565
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ak;->j:Landroidx/media2/exoplayer/external/source/ak$a;

    iget-wide v1, v1, Landroidx/media2/exoplayer/external/source/ak$a;->b:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 566
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ak;->j:Landroidx/media2/exoplayer/external/source/ak$a;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/ak$a;->e:Landroidx/media2/exoplayer/external/source/ak$a;

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/ak;->j:Landroidx/media2/exoplayer/external/source/ak$a;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Landroidx/media2/exoplayer/external/Format;)V
    .locals 7

    .line 632
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ak;->n:J

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 1753
    iget-wide v2, p1, Landroidx/media2/exoplayer/external/Format;->subsampleOffsetUs:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    .line 1754
    iget-wide v2, p1, Landroidx/media2/exoplayer/external/Format;->subsampleOffsetUs:J

    add-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Landroidx/media2/exoplayer/external/Format;->copyWithSubsampleOffsetUs(J)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 633
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ak;->a:Landroidx/media2/exoplayer/external/source/aj;

    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/source/aj;->b(Landroidx/media2/exoplayer/external/Format;)Z

    move-result v0

    .line 634
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ak;->m:Landroidx/media2/exoplayer/external/Format;

    const/4 p1, 0x0

    .line 635
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/source/ak;->l:Z

    .line 636
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ak;->f:Landroidx/media2/exoplayer/external/source/ak$b;

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 637
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/source/ak$b;->i()V

    :cond_2
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/util/p;I)V
    .locals 5

    :goto_0
    if-lez p2, :cond_0

    .line 660
    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/source/ak;->b(I)I

    move-result v0

    .line 661
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ak;->k:Landroidx/media2/exoplayer/external/source/ak$a;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/ak$a;->d:Landroidx/media2/exoplayer/external/upstream/a;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/upstream/a;->a:[B

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ak;->k:Landroidx/media2/exoplayer/external/source/ak$a;

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/source/ak;->o:J

    .line 662
    invoke-virtual {v2, v3, v4}, Landroidx/media2/exoplayer/external/source/ak$a;->a(J)I

    move-result v2

    .line 661
    invoke-virtual {p1, v1, v2, v0}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    sub-int/2addr p2, v0

    .line 664
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/ak;->c(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 3

    .line 141
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ak;->a:Landroidx/media2/exoplayer/external/source/aj;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/source/aj;->a(Z)V

    .line 142
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ak;->i:Landroidx/media2/exoplayer/external/source/ak$a;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/ak;->a(Landroidx/media2/exoplayer/external/source/ak$a;)V

    .line 143
    new-instance p1, Landroidx/media2/exoplayer/external/source/ak$a;

    iget v0, p0, Landroidx/media2/exoplayer/external/source/ak;->h:I

    const-wide/16 v1, 0x0

    invoke-direct {p1, v1, v2, v0}, Landroidx/media2/exoplayer/external/source/ak$a;-><init>(JI)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ak;->i:Landroidx/media2/exoplayer/external/source/ak$a;

    .line 144
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ak;->j:Landroidx/media2/exoplayer/external/source/ak$a;

    .line 145
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ak;->k:Landroidx/media2/exoplayer/external/source/ak$a;

    .line 146
    iput-wide v1, p0, Landroidx/media2/exoplayer/external/source/ak;->o:J

    .line 147
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ak;->g:Landroidx/media2/exoplayer/external/upstream/b;

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/upstream/b;->b()V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 278
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ak;->a:Landroidx/media2/exoplayer/external/source/aj;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/aj;->g()V

    .line 279
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ak;->i:Landroidx/media2/exoplayer/external/source/ak$a;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ak;->j:Landroidx/media2/exoplayer/external/source/ak$a;

    return-void
.end method

.method public final c()V
    .locals 2

    .line 307
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ak;->a:Landroidx/media2/exoplayer/external/source/aj;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/aj;->i()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/source/ak;->c(J)V

    return-void
.end method
