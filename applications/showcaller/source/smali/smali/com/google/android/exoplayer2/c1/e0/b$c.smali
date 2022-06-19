.class final Lcom/google/android/exoplayer2/c1/e0/b$c;
.super Ljava/lang/Object;
.source "WavExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/c1/e0/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/c1/e0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/c1/j;

.field private final b:Lcom/google/android/exoplayer2/c1/v;

.field private final c:Lcom/google/android/exoplayer2/c1/e0/c;

.field private final d:Lcom/google/android/exoplayer2/Format;

.field private final e:I

.field private f:J

.field private g:I

.field private h:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/c1/j;Lcom/google/android/exoplayer2/c1/v;Lcom/google/android/exoplayer2/c1/e0/c;Ljava/lang/String;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v2, p1

    .line 2
    iput-object v2, v0, Lcom/google/android/exoplayer2/c1/e0/b$c;->a:Lcom/google/android/exoplayer2/c1/j;

    move-object/from16 v2, p2

    .line 3
    iput-object v2, v0, Lcom/google/android/exoplayer2/c1/e0/b$c;->b:Lcom/google/android/exoplayer2/c1/v;

    .line 4
    iput-object v1, v0, Lcom/google/android/exoplayer2/c1/e0/b$c;->c:Lcom/google/android/exoplayer2/c1/e0/c;

    .line 5
    iget v2, v1, Lcom/google/android/exoplayer2/c1/e0/c;->b:I

    iget v3, v1, Lcom/google/android/exoplayer2/c1/e0/c;->f:I

    mul-int v2, v2, v3

    div-int/lit8 v2, v2, 0x8

    .line 6
    iget v3, v1, Lcom/google/android/exoplayer2/c1/e0/c;->e:I

    if-ne v3, v2, :cond_0

    .line 7
    iget v3, v1, Lcom/google/android/exoplayer2/c1/e0/c;->c:I

    mul-int v3, v3, v2

    div-int/lit8 v3, v3, 0xa

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v0, Lcom/google/android/exoplayer2/c1/e0/b$c;->e:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 9
    iget v10, v1, Lcom/google/android/exoplayer2/c1/e0/c;->c:I

    mul-int v2, v2, v10

    mul-int/lit8 v7, v2, 0x8

    iget v9, v1, Lcom/google/android/exoplayer2/c1/e0/c;->b:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v5, p4

    move/from16 v11, p5

    .line 10
    invoke-static/range {v4 .. v15}, Lcom/google/android/exoplayer2/Format;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/c1/e0/b$c;->d:Lcom/google/android/exoplayer2/Format;

    return-void

    .line 11
    :cond_0
    new-instance v3, Lcom/google/android/exoplayer2/ParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected block size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; got: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/google/android/exoplayer2/c1/e0/c;->e:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/c1/e0/b$c;->f:J

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/c1/e0/b$c;->g:I

    const-wide/16 p1, 0x0

    .line 3
    iput-wide p1, p0, Lcom/google/android/exoplayer2/c1/e0/b$c;->h:J

    return-void
.end method

.method public b(IJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/e0/b$c;->a:Lcom/google/android/exoplayer2/c1/j;

    new-instance v8, Lcom/google/android/exoplayer2/c1/e0/e;

    iget-object v2, p0, Lcom/google/android/exoplayer2/c1/e0/b$c;->c:Lcom/google/android/exoplayer2/c1/e0/c;

    int-to-long v4, p1

    const/4 v3, 0x1

    move-object v1, v8

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/c1/e0/e;-><init>(Lcom/google/android/exoplayer2/c1/e0/c;IJJ)V

    invoke-interface {v0, v8}, Lcom/google/android/exoplayer2/c1/j;->c(Lcom/google/android/exoplayer2/c1/t;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/e0/b$c;->b:Lcom/google/android/exoplayer2/c1/v;

    iget-object p2, p0, Lcom/google/android/exoplayer2/c1/e0/b$c;->d:Lcom/google/android/exoplayer2/Format;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/c1/v;->d(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/c1/i;J)Z
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-nez v6, :cond_0

    :goto_0
    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_2

    .line 1
    iget v5, v0, Lcom/google/android/exoplayer2/c1/e0/b$c;->g:I

    iget v6, v0, Lcom/google/android/exoplayer2/c1/e0/b$c;->e:I

    if-ge v5, v6, :cond_2

    sub-int/2addr v6, v5

    int-to-long v5, v6

    .line 2
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v6, v5

    .line 3
    iget-object v5, v0, Lcom/google/android/exoplayer2/c1/e0/b$c;->b:Lcom/google/android/exoplayer2/c1/v;

    move-object/from16 v7, p1

    invoke-interface {v5, v7, v6, v3}, Lcom/google/android/exoplayer2/c1/v;->a(Lcom/google/android/exoplayer2/c1/i;IZ)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget v6, v0, Lcom/google/android/exoplayer2/c1/e0/b$c;->g:I

    add-int/2addr v6, v5

    iput v6, v0, Lcom/google/android/exoplayer2/c1/e0/b$c;->g:I

    goto :goto_1

    .line 5
    :cond_2
    iget-object v1, v0, Lcom/google/android/exoplayer2/c1/e0/b$c;->c:Lcom/google/android/exoplayer2/c1/e0/c;

    iget v2, v1, Lcom/google/android/exoplayer2/c1/e0/c;->e:I

    .line 6
    iget v3, v0, Lcom/google/android/exoplayer2/c1/e0/b$c;->g:I

    div-int/2addr v3, v2

    if-lez v3, :cond_3

    .line 7
    iget-wide v5, v0, Lcom/google/android/exoplayer2/c1/e0/b$c;->f:J

    iget-wide v7, v0, Lcom/google/android/exoplayer2/c1/e0/b$c;->h:J

    const-wide/32 v9, 0xf4240

    iget v1, v1, Lcom/google/android/exoplayer2/c1/e0/c;->c:I

    int-to-long v11, v1

    .line 8
    invoke-static/range {v7 .. v12}, Lcom/google/android/exoplayer2/util/h0;->l0(JJJ)J

    move-result-wide v7

    add-long v10, v5, v7

    mul-int v13, v3, v2

    .line 9
    iget v1, v0, Lcom/google/android/exoplayer2/c1/e0/b$c;->g:I

    sub-int/2addr v1, v13

    .line 10
    iget-object v9, v0, Lcom/google/android/exoplayer2/c1/e0/b$c;->b:Lcom/google/android/exoplayer2/c1/v;

    const/4 v12, 0x1

    const/4 v15, 0x0

    move v14, v1

    invoke-interface/range {v9 .. v15}, Lcom/google/android/exoplayer2/c1/v;->c(JIIILcom/google/android/exoplayer2/c1/v$a;)V

    .line 11
    iget-wide v5, v0, Lcom/google/android/exoplayer2/c1/e0/b$c;->h:J

    int-to-long v2, v3

    add-long/2addr v5, v2

    iput-wide v5, v0, Lcom/google/android/exoplayer2/c1/e0/b$c;->h:J

    .line 12
    iput v1, v0, Lcom/google/android/exoplayer2/c1/e0/b$c;->g:I

    :cond_3
    return v4
.end method
