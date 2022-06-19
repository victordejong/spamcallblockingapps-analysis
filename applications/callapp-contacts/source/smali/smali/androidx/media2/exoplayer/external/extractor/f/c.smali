.class final Landroidx/media2/exoplayer/external/extractor/f/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/o;


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field final d:I

.field final e:I

.field f:I

.field g:J

.field private final h:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/f/c;->a:I

    .line 60
    iput p2, p0, Landroidx/media2/exoplayer/external/extractor/f/c;->b:I

    .line 61
    iput p3, p0, Landroidx/media2/exoplayer/external/extractor/f/c;->h:I

    .line 62
    iput p4, p0, Landroidx/media2/exoplayer/external/extractor/f/c;->c:I

    .line 63
    iput p5, p0, Landroidx/media2/exoplayer/external/extractor/f/c;->d:I

    .line 64
    iput p6, p0, Landroidx/media2/exoplayer/external/extractor/f/c;->e:I

    const/4 p1, -0x1

    .line 65
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/f/c;->f:I

    const-wide/16 p1, -0x1

    .line 66
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/f/c;->g:J

    return-void
.end method


# virtual methods
.method public final a(J)Landroidx/media2/exoplayer/external/extractor/o$a;
    .locals 13

    .line 118
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/f/c;->g:J

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/f/c;->f:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 119
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/f/c;->h:I

    int-to-long v2, v2

    mul-long v2, v2, p1

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    .line 121
    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/f/c;->c:I

    int-to-long v5, v4

    div-long/2addr v2, v5

    int-to-long v5, v4

    mul-long v7, v2, v5

    int-to-long v2, v4

    sub-long v11, v0, v2

    const-wide/16 v9, 0x0

    .line 122
    invoke-static/range {v7 .. v12}, Landroidx/media2/exoplayer/external/util/ac;->a(JJJ)J

    move-result-wide v2

    .line 123
    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/f/c;->f:I

    int-to-long v4, v4

    add-long/2addr v4, v2

    .line 124
    invoke-virtual {p0, v4, v5}, Landroidx/media2/exoplayer/external/extractor/f/c;->b(J)J

    move-result-wide v6

    .line 125
    new-instance v8, Landroidx/media2/exoplayer/external/extractor/p;

    invoke-direct {v8, v6, v7, v4, v5}, Landroidx/media2/exoplayer/external/extractor/p;-><init>(JJ)V

    cmp-long v9, v6, p1

    if-gez v9, :cond_1

    .line 126
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/f/c;->c:I

    int-to-long v6, p1

    sub-long/2addr v0, v6

    cmp-long p2, v2, v0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    int-to-long p1, p1

    add-long/2addr v4, p1

    .line 130
    invoke-virtual {p0, v4, v5}, Landroidx/media2/exoplayer/external/extractor/f/c;->b(J)J

    move-result-wide p1

    .line 131
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/p;

    invoke-direct {v0, p1, p2, v4, v5}, Landroidx/media2/exoplayer/external/extractor/p;-><init>(JJ)V

    .line 132
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/o$a;

    invoke-direct {p1, v8, v0}, Landroidx/media2/exoplayer/external/extractor/o$a;-><init>(Landroidx/media2/exoplayer/external/extractor/p;Landroidx/media2/exoplayer/external/extractor/p;)V

    return-object p1

    .line 127
    :cond_1
    :goto_0
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/o$a;

    invoke-direct {p1, v8}, Landroidx/media2/exoplayer/external/extractor/o$a;-><init>(Landroidx/media2/exoplayer/external/extractor/p;)V

    return-object p1
.end method

.method public final b()J
    .locals 4

    .line 112
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/f/c;->g:J

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/f/c;->f:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/f/c;->c:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    .line 113
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/f/c;->b:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final b(J)J
    .locals 2

    .line 144
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/f/c;->f:I

    int-to-long v0, v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    .line 145
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/f/c;->h:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public final j_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
