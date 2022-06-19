.class final Landroidx/media2/exoplayer/external/extractor/c/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/c/c$a;


# instance fields
.field private final a:J

.field private final b:I

.field private final c:J

.field private final d:J

.field private final e:J

.field private final f:[J


# direct methods
.method constructor <init>(JIJ)V
    .locals 9

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    .line 102
    invoke-direct/range {v0 .. v8}, Landroidx/media2/exoplayer/external/extractor/c/g;-><init>(JIJJ[J)V

    return-void
.end method

.method constructor <init>(JIJJ[J)V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/c/g;->a:J

    .line 117
    iput p3, p0, Landroidx/media2/exoplayer/external/extractor/c/g;->b:I

    .line 118
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/extractor/c/g;->c:J

    .line 119
    iput-object p8, p0, Landroidx/media2/exoplayer/external/extractor/c/g;->f:[J

    .line 120
    iput-wide p6, p0, Landroidx/media2/exoplayer/external/extractor/c/g;->d:J

    const-wide/16 p3, -0x1

    cmp-long p5, p6, p3

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    add-long p3, p1, p6

    .line 121
    :goto_0
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/extractor/c/g;->e:J

    return-void
.end method

.method private a(I)J
    .locals 4

    .line 193
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/c/g;->c:J

    int-to-long v2, p1

    mul-long v0, v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final a(J)Landroidx/media2/exoplayer/external/extractor/o$a;
    .locals 12

    .line 131
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/extractor/c/g;->j_()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/o$a;

    new-instance p2, Landroidx/media2/exoplayer/external/extractor/p;

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/c/g;->a:J

    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/c/g;->b:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-direct {p2, v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/extractor/p;-><init>(JJ)V

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/extractor/o$a;-><init>(Landroidx/media2/exoplayer/external/extractor/p;)V

    return-object p1

    :cond_0
    const-wide/16 v6, 0x0

    .line 134
    iget-wide v8, p0, Landroidx/media2/exoplayer/external/extractor/c/g;->c:J

    move-wide v4, p1

    invoke-static/range {v4 .. v9}, Landroidx/media2/exoplayer/external/util/ac;->a(JJJ)J

    move-result-wide p1

    long-to-double v0, p1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    .line 135
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/c/g;->c:J

    long-to-double v4, v4

    div-double/2addr v0, v4

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x4070000000000000L    # 256.0

    cmpg-double v8, v0, v4

    if-gtz v8, :cond_1

    goto :goto_1

    :cond_1
    cmpl-double v4, v0, v2

    if-ltz v4, :cond_2

    move-wide v4, v6

    goto :goto_1

    :cond_2
    double-to-int v2, v0

    .line 143
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/c/g;->f:[J

    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    .line 144
    aget-wide v4, v3, v2

    long-to-double v4, v4

    const/16 v8, 0x63

    if-ne v2, v8, :cond_3

    move-wide v8, v6

    goto :goto_0

    :cond_3
    add-int/lit8 v8, v2, 0x1

    .line 145
    aget-wide v8, v3, v8

    long-to-double v8, v8

    :goto_0
    int-to-double v2, v2

    sub-double/2addr v0, v2

    sub-double/2addr v8, v4

    mul-double v0, v0, v8

    add-double/2addr v4, v0

    :goto_1
    div-double/2addr v4, v6

    .line 151
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/c/g;->d:J

    long-to-double v0, v0

    mul-double v4, v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    .line 153
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/c/g;->b:I

    int-to-long v8, v0

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/c/g;->d:J

    const-wide/16 v2, 0x1

    sub-long v10, v0, v2

    invoke-static/range {v6 .. v11}, Landroidx/media2/exoplayer/external/util/ac;->a(JJJ)J

    move-result-wide v0

    .line 154
    new-instance v2, Landroidx/media2/exoplayer/external/extractor/o$a;

    new-instance v3, Landroidx/media2/exoplayer/external/extractor/p;

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/c/g;->a:J

    add-long/2addr v4, v0

    invoke-direct {v3, p1, p2, v4, v5}, Landroidx/media2/exoplayer/external/extractor/p;-><init>(JJ)V

    invoke-direct {v2, v3}, Landroidx/media2/exoplayer/external/extractor/o$a;-><init>(Landroidx/media2/exoplayer/external/extractor/p;)V

    return-object v2
.end method

.method public final b()J
    .locals 2

    .line 178
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/c/g;->c:J

    return-wide v0
.end method

.method public final c()J
    .locals 2

    .line 183
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/c/g;->e:J

    return-wide v0
.end method

.method public final c(J)J
    .locals 11

    .line 159
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/c/g;->a:J

    sub-long/2addr p1, v0

    .line 160
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/extractor/c/g;->j_()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/c/g;->b:I

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    goto :goto_2

    .line 163
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/c/g;->f:[J

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    long-to-double p1, p1

    const-wide/high16 v1, 0x4070000000000000L    # 256.0

    mul-double p1, p1, v1

    .line 164
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/c/g;->d:J

    long-to-double v1, v1

    div-double/2addr p1, v1

    double-to-long v1, p1

    const/4 v3, 0x1

    .line 165
    invoke-static {v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/util/ac;->a([JJZ)I

    move-result v1

    .line 166
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/extractor/c/g;->a(I)J

    move-result-wide v2

    .line 167
    aget-wide v4, v0, v1

    add-int/lit8 v6, v1, 0x1

    .line 168
    invoke-direct {p0, v6}, Landroidx/media2/exoplayer/external/extractor/c/g;->a(I)J

    move-result-wide v7

    const/16 v9, 0x63

    if-ne v1, v9, :cond_1

    const-wide/16 v0, 0x100

    goto :goto_0

    .line 169
    :cond_1
    aget-wide v9, v0, v6

    move-wide v0, v9

    :goto_0
    cmp-long v6, v4, v0

    if-nez v6, :cond_2

    const-wide/16 p1, 0x0

    goto :goto_1

    :cond_2
    long-to-double v9, v4

    sub-double/2addr p1, v9

    sub-long/2addr v0, v4

    long-to-double v0, v0

    div-double/2addr p1, v0

    :goto_1
    sub-long/2addr v7, v2

    long-to-double v0, v7

    mul-double p1, p1, v0

    .line 173
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    add-long/2addr v2, p1

    return-wide v2

    :cond_3
    :goto_2
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public final j_()Z
    .locals 1

    .line 126
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/c/g;->f:[J

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
