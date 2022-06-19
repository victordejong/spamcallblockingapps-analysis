.class final Lcom/google/android/exoplayer2/c1/z/c;
.super Lcom/google/android/exoplayer2/c1/a;
.source "FlacBinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/c1/z/c$b;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/util/l;IJJ)V
    .locals 16

    move-object/from16 v0, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/android/exoplayer2/c1/z/b;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/c1/z/b;-><init>(Lcom/google/android/exoplayer2/util/l;)V

    new-instance v2, Lcom/google/android/exoplayer2/c1/z/c$b;

    const/4 v3, 0x0

    move/from16 v4, p2

    invoke-direct {v2, v0, v4, v3}, Lcom/google/android/exoplayer2/c1/z/c$b;-><init>(Lcom/google/android/exoplayer2/util/l;ILcom/google/android/exoplayer2/c1/z/c$a;)V

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/l;->h()J

    move-result-wide v3

    iget-wide v7, v0, Lcom/google/android/exoplayer2/util/l;->j:J

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/l;->e()J

    move-result-wide v13

    iget v0, v0, Lcom/google/android/exoplayer2/util/l;->c:I

    const/4 v5, 0x6

    .line 4
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    .line 5
    invoke-direct/range {v0 .. v15}, Lcom/google/android/exoplayer2/c1/a;-><init>(Lcom/google/android/exoplayer2/c1/a$d;Lcom/google/android/exoplayer2/c1/a$f;JJJJJJI)V

    return-void
.end method
