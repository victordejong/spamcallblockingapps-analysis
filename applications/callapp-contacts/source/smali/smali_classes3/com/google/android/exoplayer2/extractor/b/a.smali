.class final Lcom/google/android/exoplayer2/extractor/b/a;
.super Lcom/google/android/exoplayer2/extractor/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/b/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/p;IJJ)V
    .locals 16

    move-object/from16 v0, p1

    .line 52
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/b/-$$Lambda$LmB_5M7T1dQwslEuP3JuOptba6c;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/extractor/b/-$$Lambda$LmB_5M7T1dQwslEuP3JuOptba6c;-><init>(Lcom/google/android/exoplayer2/extractor/p;)V

    new-instance v2, Lcom/google/android/exoplayer2/extractor/b/a$a;

    const/4 v3, 0x0

    move/from16 v4, p2

    invoke-direct {v2, v0, v4, v3}, Lcom/google/android/exoplayer2/extractor/b/a$a;-><init>(Lcom/google/android/exoplayer2/extractor/p;ILcom/google/android/exoplayer2/extractor/b/a$1;)V

    .line 54
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/p;->a()J

    move-result-wide v3

    iget-wide v7, v0, Lcom/google/android/exoplayer2/extractor/p;->j:J

    .line 1212
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/p;->d:I

    if-lez v5, :cond_0

    .line 1213
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/p;->d:I

    int-to-long v5, v5

    iget v9, v0, Lcom/google/android/exoplayer2/extractor/p;->c:I

    int-to-long v9, v9

    add-long/2addr v5, v9

    const-wide/16 v9, 0x2

    div-long/2addr v5, v9

    const-wide/16 v9, 0x1

    :goto_0
    add-long/2addr v5, v9

    move-wide v13, v5

    goto :goto_2

    .line 1218
    :cond_0
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/p;->a:I

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/p;->b:I

    if-ne v5, v6, :cond_1

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/p;->a:I

    if-lez v5, :cond_1

    .line 1219
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/p;->a:I

    int-to-long v5, v5

    goto :goto_1

    :cond_1
    const-wide/16 v5, 0x1000

    .line 1221
    :goto_1
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/p;->g:I

    int-to-long v9, v9

    mul-long v5, v5, v9

    iget v9, v0, Lcom/google/android/exoplayer2/extractor/p;->h:I

    int-to-long v9, v9

    mul-long v5, v5, v9

    const-wide/16 v9, 0x8

    div-long/2addr v5, v9

    const-wide/16 v9, 0x40

    goto :goto_0

    :goto_2
    const/4 v5, 0x6

    .line 59
    iget v0, v0, Lcom/google/android/exoplayer2/extractor/p;->c:I

    .line 60
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    .line 51
    invoke-direct/range {v0 .. v15}, Lcom/google/android/exoplayer2/extractor/a;-><init>(Lcom/google/android/exoplayer2/extractor/a$d;Lcom/google/android/exoplayer2/extractor/a$f;JJJJJJI)V

    return-void
.end method
