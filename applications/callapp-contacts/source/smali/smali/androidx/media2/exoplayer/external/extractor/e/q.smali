.class public final Landroidx/media2/exoplayer/external/extractor/e/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/e/m;


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/util/p;

.field private b:Landroidx/media2/exoplayer/external/extractor/q;

.field private c:Z

.field private d:J

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroidx/media2/exoplayer/external/util/p;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/p;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/q;->a:Landroidx/media2/exoplayer/external/util/p;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/q;->c:Z

    return-void
.end method

.method public final a(JI)V
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    .line 77
    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/extractor/e/q;->c:Z

    .line 78
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/e/q;->d:J

    const/4 p1, 0x0

    .line 79
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/e/q;->e:I

    .line 80
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/e/q;->f:I

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/i;Landroidx/media2/exoplayer/external/extractor/e/ah$d;)V
    .locals 3

    .line 66
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->a()V

    .line 67
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->b()I

    move-result v0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/i;->a(II)Landroidx/media2/exoplayer/external/extractor/q;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/q;->b:Landroidx/media2/exoplayer/external/extractor/q;

    .line 68
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->c()Ljava/lang/String;

    move-result-object p2

    const-string v0, "application/id3"

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {p2, v0, v1, v2, v1}, Landroidx/media2/exoplayer/external/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/Format;)V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/util/p;)V
    .locals 7

    .line 85
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/q;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v0

    .line 89
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/e/q;->f:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_3

    rsub-int/lit8 v1, v1, 0xa

    .line 91
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 92
    iget-object v3, p1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    .line 1142
    iget v4, p1, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 92
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/e/q;->a:Landroidx/media2/exoplayer/external/util/p;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/e/q;->f:I

    invoke-static {v3, v4, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/e/q;->f:I

    add-int/2addr v3, v1

    if-ne v3, v2, :cond_3

    .line 96
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/e/q;->a:Landroidx/media2/exoplayer/external/util/p;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    const/16 v1, 0x49

    .line 97
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/e/q;->a:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v4

    if-ne v1, v4, :cond_2

    const/16 v1, 0x44

    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/e/q;->a:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v4

    if-ne v1, v4, :cond_2

    const/16 v1, 0x33

    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/e/q;->a:Landroidx/media2/exoplayer/external/util/p;

    .line 98
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v4

    if-eq v1, v4, :cond_1

    goto :goto_0

    .line 103
    :cond_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/e/q;->a:Landroidx/media2/exoplayer/external/util/p;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 104
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/e/q;->a:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/p;->m()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/e/q;->e:I

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "Id3Reader"

    const-string v0, "Discarding invalid ID3 tag"

    .line 99
    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/extractor/e/q;->c:Z

    return-void

    .line 108
    :cond_3
    :goto_1
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/e/q;->e:I

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/e/q;->f:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 109
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/e/q;->b:Landroidx/media2/exoplayer/external/extractor/q;

    invoke-interface {v1, p1, v0}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    .line 110
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/e/q;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/e/q;->f:I

    return-void
.end method

.method public final b()V
    .locals 8

    .line 115
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/q;->c:Z

    if-eqz v0, :cond_1

    iget v5, p0, Landroidx/media2/exoplayer/external/extractor/e/q;->e:I

    if-eqz v5, :cond_1

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/e/q;->f:I

    if-eq v0, v5, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/e/q;->b:Landroidx/media2/exoplayer/external/extractor/q;

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/e/q;->d:J

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Landroidx/media2/exoplayer/external/extractor/q;->a(JIIILandroidx/media2/exoplayer/external/extractor/q$a;)V

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/q;->c:Z

    :cond_1
    :goto_0
    return-void
.end method
