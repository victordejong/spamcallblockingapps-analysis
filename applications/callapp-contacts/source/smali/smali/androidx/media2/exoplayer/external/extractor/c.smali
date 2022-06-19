.class public Landroidx/media2/exoplayer/external/extractor/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/o;


# instance fields
.field private final a:J

.field private final b:J

.field private final c:I

.field private final d:J

.field private final e:I

.field private final f:J


# direct methods
.method public constructor <init>(JJII)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/c;->a:J

    .line 53
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/extractor/c;->b:J

    const/4 v0, -0x1

    if-ne p6, v0, :cond_0

    const/4 p6, 0x1

    .line 54
    :cond_0
    iput p6, p0, Landroidx/media2/exoplayer/external/extractor/c;->c:I

    .line 55
    iput p5, p0, Landroidx/media2/exoplayer/external/extractor/c;->e:I

    const-wide/16 v0, -0x1

    cmp-long p6, p1, v0

    if-nez p6, :cond_1

    .line 58
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/c;->d:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 59
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/c;->f:J

    return-void

    :cond_1
    sub-long v0, p1, p3

    .line 61
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/c;->d:J

    .line 62
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/media2/exoplayer/external/extractor/c;->a(JJI)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/c;->f:J

    return-void
.end method

.method private static a(JJI)J
    .locals 0

    sub-long/2addr p0, p2

    const-wide/16 p2, 0x0

    .line 115
    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    const-wide/16 p2, 0x8

    mul-long p0, p0, p2

    const-wide/32 p2, 0xf4240

    mul-long p0, p0, p2

    int-to-long p2, p4

    div-long/2addr p0, p2

    return-wide p0
.end method


# virtual methods
.method public final a(J)Landroidx/media2/exoplayer/external/extractor/o$a;
    .locals 13

    .line 73
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/c;->d:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 74
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/o$a;

    new-instance p2, Landroidx/media2/exoplayer/external/extractor/p;

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/c;->b:J

    invoke-direct {p2, v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/extractor/p;-><init>(JJ)V

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/extractor/o$a;-><init>(Landroidx/media2/exoplayer/external/extractor/p;)V

    return-object p1

    .line 1122
    :cond_0
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/c;->e:I

    int-to-long v2, v2

    mul-long v2, v2, p1

    const-wide/32 v4, 0x7a1200

    div-long/2addr v2, v4

    .line 1124
    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/c;->c:I

    int-to-long v5, v4

    div-long/2addr v2, v5

    int-to-long v5, v4

    mul-long v7, v2, v5

    const-wide/16 v9, 0x0

    int-to-long v2, v4

    sub-long v11, v0, v2

    .line 1126
    invoke-static/range {v7 .. v12}, Landroidx/media2/exoplayer/external/util/ac;->a(JJJ)J

    move-result-wide v0

    .line 1127
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/c;->b:J

    add-long/2addr v2, v0

    .line 77
    invoke-virtual {p0, v2, v3}, Landroidx/media2/exoplayer/external/extractor/c;->b(J)J

    move-result-wide v0

    .line 78
    new-instance v4, Landroidx/media2/exoplayer/external/extractor/p;

    invoke-direct {v4, v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/extractor/p;-><init>(JJ)V

    cmp-long v5, v0, p1

    if-gez v5, :cond_2

    .line 79
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/c;->c:I

    int-to-long v0, p1

    add-long/2addr v0, v2

    iget-wide v5, p0, Landroidx/media2/exoplayer/external/extractor/c;->a:J

    cmp-long p2, v0, v5

    if-ltz p2, :cond_1

    goto :goto_0

    :cond_1
    int-to-long p1, p1

    add-long/2addr v2, p1

    .line 83
    invoke-virtual {p0, v2, v3}, Landroidx/media2/exoplayer/external/extractor/c;->b(J)J

    move-result-wide p1

    .line 84
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/p;

    invoke-direct {v0, p1, p2, v2, v3}, Landroidx/media2/exoplayer/external/extractor/p;-><init>(JJ)V

    .line 85
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/o$a;

    invoke-direct {p1, v4, v0}, Landroidx/media2/exoplayer/external/extractor/o$a;-><init>(Landroidx/media2/exoplayer/external/extractor/p;Landroidx/media2/exoplayer/external/extractor/p;)V

    return-object p1

    .line 80
    :cond_2
    :goto_0
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/o$a;

    invoke-direct {p1, v4}, Landroidx/media2/exoplayer/external/extractor/o$a;-><init>(Landroidx/media2/exoplayer/external/extractor/p;)V

    return-object p1
.end method

.method public final b()J
    .locals 2

    .line 91
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/c;->f:J

    return-wide v0
.end method

.method public final b(J)J
    .locals 3

    .line 101
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/c;->b:J

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/c;->e:I

    invoke-static {p1, p2, v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/c;->a(JJI)J

    move-result-wide p1

    return-wide p1
.end method

.method public final j_()Z
    .locals 5

    .line 68
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/c;->d:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
