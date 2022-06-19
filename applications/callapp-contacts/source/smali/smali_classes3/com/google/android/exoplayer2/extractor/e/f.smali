.class final Lcom/google/android/exoplayer2/extractor/e/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/e/e;


# instance fields
.field private final a:[J

.field private final b:[J

.field private final c:J

.field private final d:J


# direct methods
.method private constructor <init>([J[JJJ)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/e/f;->a:[J

    .line 106
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/e/f;->b:[J

    .line 107
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/e/f;->c:J

    .line 108
    iput-wide p5, p0, Lcom/google/android/exoplayer2/extractor/e/f;->d:J

    return-void
.end method

.method public static a(JJLcom/google/android/exoplayer2/audio/o$a;Lcom/google/android/exoplayer2/util/u;)Lcom/google/android/exoplayer2/extractor/e/f;
    .locals 22

    move-wide/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const/16 v4, 0xa

    .line 52
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 53
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v4

    const/4 v5, 0x0

    if-gtz v4, :cond_0

    return-object v5

    .line 57
    :cond_0
    iget v6, v2, Lcom/google/android/exoplayer2/audio/o$a;->d:I

    int-to-long v7, v4

    const-wide/32 v9, 0xf4240

    const/16 v4, 0x7d00

    if-lt v6, v4, :cond_1

    const/16 v4, 0x480

    goto :goto_0

    :cond_1
    const/16 v4, 0x240

    :goto_0
    int-to-long v11, v4

    mul-long v9, v9, v11

    int-to-long v11, v6

    .line 58
    invoke-static/range {v7 .. v12}, Lcom/google/android/exoplayer2/util/af;->b(JJJ)J

    move-result-wide v16

    .line 60
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v4

    .line 61
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v6

    .line 62
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v7

    const/4 v8, 0x2

    .line 63
    invoke-virtual {v3, v8}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 65
    iget v2, v2, Lcom/google/android/exoplayer2/audio/o$a;->c:I

    int-to-long v9, v2

    add-long v9, p2, v9

    .line 67
    new-array v14, v4, [J

    .line 68
    new-array v15, v4, [J

    const/4 v2, 0x0

    move-wide/from16 v11, p2

    :goto_1
    if-ge v2, v4, :cond_6

    move/from16 v18, v6

    int-to-long v5, v2

    mul-long v5, v5, v16

    move-wide/from16 v20, v9

    int-to-long v8, v4

    .line 70
    div-long/2addr v5, v8

    aput-wide v5, v14, v2

    move-wide/from16 v5, v20

    .line 73
    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    aput-wide v8, v15, v2

    const/4 v8, 0x1

    if-eq v7, v8, :cond_5

    const/4 v8, 0x2

    if-eq v7, v8, :cond_4

    const/4 v9, 0x3

    if-eq v7, v9, :cond_3

    const/4 v9, 0x4

    if-eq v7, v9, :cond_2

    const/4 v9, 0x0

    return-object v9

    :cond_2
    const/4 v9, 0x0

    .line 86
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/u;->o()I

    move-result v10

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    .line 83
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/u;->g()I

    move-result v10

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    .line 80
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v10

    goto :goto_2

    :cond_5
    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 77
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v10

    :goto_2
    mul-int v10, v10, v18

    int-to-long v8, v10

    add-long/2addr v11, v8

    add-int/lit8 v2, v2, 0x1

    move-wide v9, v5

    move/from16 v6, v18

    const/4 v5, 0x0

    const/4 v8, 0x2

    goto :goto_1

    :cond_6
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_7

    cmp-long v2, v0, v11

    if-eqz v2, :cond_7

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VBRI data size mismatch: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VbriSeeker"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_7
    new-instance v0, Lcom/google/android/exoplayer2/extractor/e/f;

    move-object v13, v0

    move-wide/from16 v18, v11

    invoke-direct/range {v13 .. v19}, Lcom/google/android/exoplayer2/extractor/e/f;-><init>([J[JJJ)V

    return-object v0
.end method


# virtual methods
.method public final a(J)Lcom/google/android/exoplayer2/extractor/v$a;
    .locals 8

    .line 118
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/e/f;->a:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/util/af;->a([JJZ)I

    move-result v0

    .line 119
    new-instance v2, Lcom/google/android/exoplayer2/extractor/w;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/e/f;->a:[J

    aget-wide v4, v3, v0

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/e/f;->b:[J

    aget-wide v6, v3, v0

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/android/exoplayer2/extractor/w;-><init>(JJ)V

    .line 120
    iget-wide v3, v2, Lcom/google/android/exoplayer2/extractor/w;->b:J

    cmp-long v5, v3, p1

    if-gez v5, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/e/f;->a:[J

    array-length p2, p1

    sub-int/2addr p2, v1

    if-ne v0, p2, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    new-instance p2, Lcom/google/android/exoplayer2/extractor/w;

    add-int/2addr v0, v1

    aget-wide v3, p1, v0

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/e/f;->b:[J

    aget-wide v0, p1, v0

    invoke-direct {p2, v3, v4, v0, v1}, Lcom/google/android/exoplayer2/extractor/w;-><init>(JJ)V

    .line 124
    new-instance p1, Lcom/google/android/exoplayer2/extractor/v$a;

    invoke-direct {p1, v2, p2}, Lcom/google/android/exoplayer2/extractor/v$a;-><init>(Lcom/google/android/exoplayer2/extractor/w;Lcom/google/android/exoplayer2/extractor/w;)V

    return-object p1

    .line 121
    :cond_1
    :goto_0
    new-instance p1, Lcom/google/android/exoplayer2/extractor/v$a;

    invoke-direct {p1, v2}, Lcom/google/android/exoplayer2/extractor/v$a;-><init>(Lcom/google/android/exoplayer2/extractor/w;)V

    return-object p1
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()J
    .locals 2

    .line 135
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/e/f;->c:J

    return-wide v0
.end method

.method public final c()J
    .locals 2

    .line 140
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/e/f;->d:J

    return-wide v0
.end method

.method public final c(J)J
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/e/f;->a:[J

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/e/f;->b:[J

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2}, Lcom/google/android/exoplayer2/util/af;->a([JJZ)I

    move-result p1

    aget-wide p1, v0, p1

    return-wide p1
.end method
