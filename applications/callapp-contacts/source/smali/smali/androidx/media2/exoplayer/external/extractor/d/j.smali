.class final Landroidx/media2/exoplayer/external/extractor/d/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field private final c:[B

.field private final d:I


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/d/j;->c:[B

    .line 47
    array-length p1, p1

    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/d/j;->d:I

    return-void
.end method

.method private b()V
    .locals 2

    .line 131
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/d/j;->a:I

    if-ltz v0, :cond_1

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/d/j;->d:I

    if-lt v0, v1, :cond_0

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/d/j;->b:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 6

    .line 76
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/d/j;->a:I

    .line 77
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/d/j;->b:I

    rsub-int/lit8 v1, v1, 0x8

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 78
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/d/j;->c:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    const/16 v2, 0xff

    and-int/2addr v0, v2

    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/d/j;->b:I

    shr-int/2addr v0, v4

    rsub-int/lit8 v4, v1, 0x8

    shr-int v4, v2, v4

    and-int/2addr v0, v4

    :goto_0
    if-ge v1, p1, :cond_0

    .line 80
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/d/j;->c:[B

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, v4, v3

    and-int/2addr v3, v2

    shl-int/2addr v3, v1

    or-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x8

    move v3, v5

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    rsub-int/lit8 v2, p1, 0x20

    ushr-int/2addr v1, v2

    and-int/2addr v0, v1

    .line 84
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/extractor/d/j;->b(I)V

    return v0
.end method

.method public final a()Z
    .locals 2

    .line 64
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/d/j;->c:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/d/j;->a:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/d/j;->b:I

    shr-int/2addr v0, v1

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/extractor/d/j;->b(I)V

    return v0
.end method

.method public final b(I)V
    .locals 3

    .line 94
    div-int/lit8 v0, p1, 0x8

    .line 95
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/d/j;->a:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/d/j;->a:I

    .line 96
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/d/j;->b:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    add-int/2addr v2, p1

    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/d/j;->b:I

    const/4 p1, 0x7

    if-le v2, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 98
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/d/j;->a:I

    add-int/lit8 v2, v2, -0x8

    .line 99
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/d/j;->b:I

    .line 101
    :cond_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/d/j;->b()V

    return-void
.end method
