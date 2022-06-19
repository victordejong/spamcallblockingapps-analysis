.class final Landroidx/media2/exoplayer/external/extractor/e/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field public b:[B

.field public c:I

.field private final d:I

.field private e:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/e/t;->d:I

    add-int/lit8 p2, p2, 0x3

    .line 45
    new-array p1, p2, [B

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/t;->b:[B

    const/4 p2, 0x2

    const/4 v0, 0x1

    .line 46
    aput-byte v0, p1, p2

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/t;->e:Z

    .line 54
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/t;->a:Z

    return-void
.end method

.method public final a(I)V
    .locals 3

    .line 70
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/t;->e:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 71
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/e/t;->d:I

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/e/t;->e:Z

    if-eqz v1, :cond_1

    const/4 p1, 0x3

    .line 74
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/e/t;->c:I

    .line 75
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/e/t;->a:Z

    :cond_1
    return-void
.end method

.method public final a([BII)V
    .locals 4

    .line 87
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/t;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sub-int/2addr p3, p2

    .line 91
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/t;->b:[B

    array-length v1, v0

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/e/t;->c:I

    add-int v3, v2, p3

    if-ge v1, v3, :cond_1

    add-int/2addr v2, p3

    mul-int/lit8 v2, v2, 0x2

    .line 92
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/t;->b:[B

    .line 94
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/t;->b:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/e/t;->c:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/e/t;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/e/t;->c:I

    return-void
.end method

.method public final b(I)Z
    .locals 2

    .line 106
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/t;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 109
    :cond_0
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/e/t;->c:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e/t;->c:I

    .line 110
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/e/t;->e:Z

    const/4 p1, 0x1

    .line 111
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/e/t;->a:Z

    return p1
.end method
