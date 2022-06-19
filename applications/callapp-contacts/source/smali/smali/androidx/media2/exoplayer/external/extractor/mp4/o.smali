.class final Landroidx/media2/exoplayer/external/extractor/mp4/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/media2/exoplayer/external/extractor/mp4/l;

.field public final b:I

.field public final c:[J

.field public final d:[I

.field public final e:I

.field public final f:[J

.field public final g:[I

.field public final h:J


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/mp4/l;[J[II[J[IJ)V
    .locals 4

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    array-length v0, p3

    array-length v1, p5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Z)V

    .line 62
    array-length v0, p2

    array-length v1, p5

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Z)V

    .line 63
    array-length v0, p6

    array-length v1, p5

    if-ne v0, v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/a;->a(Z)V

    .line 65
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/o;->a:Landroidx/media2/exoplayer/external/extractor/mp4/l;

    .line 66
    iput-object p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/o;->c:[J

    .line 67
    iput-object p3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/o;->d:[I

    .line 68
    iput p4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/o;->e:I

    .line 69
    iput-object p5, p0, Landroidx/media2/exoplayer/external/extractor/mp4/o;->f:[J

    .line 70
    iput-object p6, p0, Landroidx/media2/exoplayer/external/extractor/mp4/o;->g:[I

    .line 71
    iput-wide p7, p0, Landroidx/media2/exoplayer/external/extractor/mp4/o;->h:J

    .line 72
    array-length p1, p2

    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/o;->b:I

    .line 73
    array-length p1, p6

    if-lez p1, :cond_3

    .line 74
    array-length p1, p6

    sub-int/2addr p1, v3

    aget p2, p6, p1

    const/high16 p3, 0x20000000

    or-int/2addr p2, p3

    aput p2, p6, p1

    :cond_3
    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 2

    .line 88
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/o;->f:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Landroidx/media2/exoplayer/external/util/ac;->a([JJZ)I

    move-result p1

    :goto_0
    if-ltz p1, :cond_1

    .line 90
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/o;->g:[I

    aget p2, p2, p1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final b(J)I
    .locals 3

    .line 105
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/o;->f:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Landroidx/media2/exoplayer/external/util/ac;->a([JJZZ)I

    move-result p1

    .line 106
    :goto_0
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/o;->f:[J

    array-length p2, p2

    if-ge p1, p2, :cond_1

    .line 107
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/o;->g:[I

    aget p2, p2, p1

    and-int/2addr p2, v1

    if-eqz p2, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
