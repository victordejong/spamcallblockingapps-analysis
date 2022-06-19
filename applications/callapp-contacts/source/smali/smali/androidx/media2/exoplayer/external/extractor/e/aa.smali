.class public final Landroidx/media2/exoplayer/external/extractor/e/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/e/ah;


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/extractor/e/z;

.field private final b:Landroidx/media2/exoplayer/external/util/p;

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/e/z;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->a:Landroidx/media2/exoplayer/external/extractor/e/z;

    .line 50
    new-instance p1, Landroidx/media2/exoplayer/external/util/p;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/util/p;-><init>(I)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->b:Landroidx/media2/exoplayer/external/util/p;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->f:Z

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/util/p;I)V
    .locals 7

    const/4 v0, 0x1

    and-int/2addr p2, v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 70
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v2

    .line 1142
    iget v3, p1, Landroidx/media2/exoplayer/external/util/p;->b:I

    add-int/2addr v3, v2

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 74
    :goto_1
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->f:Z

    if-eqz v2, :cond_3

    if-nez p2, :cond_2

    return-void

    .line 78
    :cond_2
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->f:Z

    .line 79
    invoke-virtual {p1, v3}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 80
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->d:I

    .line 83
    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result p2

    if-lez p2, :cond_9

    .line 84
    iget p2, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->d:I

    const/4 v2, 0x3

    if-ge p2, v2, :cond_6

    if-nez p2, :cond_4

    .line 88
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result p2

    .line 2142
    iget v3, p1, Landroidx/media2/exoplayer/external/util/p;->b:I

    sub-int/2addr v3, v0

    .line 89
    invoke-virtual {p1, v3}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    const/16 v3, 0xff

    if-ne p2, v3, :cond_4

    .line 92
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->f:Z

    return-void

    .line 96
    :cond_4
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result p2

    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->d:I

    rsub-int/lit8 v3, v3, 0x3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 97
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->b:Landroidx/media2/exoplayer/external/util/p;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->d:I

    invoke-virtual {p1, v3, v4, p2}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    .line 98
    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->d:I

    add-int/2addr v3, p2

    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->d:I

    if-ne v3, v2, :cond_3

    .line 100
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p2, v2}, Landroidx/media2/exoplayer/external/util/p;->a(I)V

    .line 101
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p2, v0}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 102
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result p2

    .line 103
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v3

    and-int/lit16 v4, p2, 0x80

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    .line 104
    :goto_3
    iput-boolean v4, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->e:Z

    and-int/lit8 p2, p2, 0xf

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v3

    add-int/2addr p2, v2

    .line 105
    iput p2, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->c:I

    .line 107
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->b:Landroidx/media2/exoplayer/external/util/p;

    .line 2149
    iget-object p2, p2, Landroidx/media2/exoplayer/external/util/p;->a:[B

    array-length p2, p2

    .line 107
    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->c:I

    if-ge p2, v3, :cond_3

    .line 109
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->b:Landroidx/media2/exoplayer/external/util/p;

    iget-object p2, p2, Landroidx/media2/exoplayer/external/util/p;->a:[B

    .line 110
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->b:Landroidx/media2/exoplayer/external/util/p;

    const/16 v4, 0x1002

    iget v5, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->c:I

    array-length v6, p2

    mul-int/lit8 v6, v6, 0x2

    .line 111
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 110
    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/util/p;->a(I)V

    .line 112
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->b:Landroidx/media2/exoplayer/external/util/p;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-static {p2, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_2

    .line 117
    :cond_6
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result p2

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->c:I

    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->d:I

    sub-int/2addr v2, v3

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 118
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->b:Landroidx/media2/exoplayer/external/util/p;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->d:I

    invoke-virtual {p1, v2, v3, p2}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    .line 119
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->d:I

    add-int/2addr v2, p2

    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->d:I

    .line 120
    iget p2, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->c:I

    if-ne v2, p2, :cond_3

    .line 121
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->e:Z

    if-eqz v2, :cond_8

    .line 123
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->b:Landroidx/media2/exoplayer/external/util/p;

    iget-object p2, p2, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->c:I

    const/4 v3, -0x1

    invoke-static {p2, v2, v3}, Landroidx/media2/exoplayer/external/util/ac;->b([BII)I

    move-result p2

    if-eqz p2, :cond_7

    .line 125
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->f:Z

    return-void

    .line 128
    :cond_7
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->b:Landroidx/media2/exoplayer/external/util/p;

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->c:I

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {p2, v2}, Landroidx/media2/exoplayer/external/util/p;->a(I)V

    goto :goto_4

    .line 131
    :cond_8
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v2, p2}, Landroidx/media2/exoplayer/external/util/p;->a(I)V

    .line 133
    :goto_4
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->a:Landroidx/media2/exoplayer/external/extractor/e/z;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-interface {p2, v2}, Landroidx/media2/exoplayer/external/extractor/e/z;->a(Landroidx/media2/exoplayer/external/util/p;)V

    .line 134
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->d:I

    goto/16 :goto_2

    :cond_9
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/util/z;Landroidx/media2/exoplayer/external/extractor/i;Landroidx/media2/exoplayer/external/extractor/e/ah$d;)V
    .locals 1

    .line 56
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->a:Landroidx/media2/exoplayer/external/extractor/e/z;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/e/z;->a(Landroidx/media2/exoplayer/external/util/z;Landroidx/media2/exoplayer/external/extractor/i;Landroidx/media2/exoplayer/external/extractor/e/ah$d;)V

    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/e/aa;->f:Z

    return-void
.end method
