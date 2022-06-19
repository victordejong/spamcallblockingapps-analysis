.class public final Landroidx/media2/exoplayer/external/extractor/e/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/e/m;


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/util/p;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroidx/media2/exoplayer/external/extractor/q;

.field private e:I

.field private f:I

.field private g:I

.field private h:J

.field private i:Landroidx/media2/exoplayer/external/Format;

.field private j:I

.field private k:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroidx/media2/exoplayer/external/util/p;

    const/16 v1, 0x12

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/p;-><init>([B)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->a:Landroidx/media2/exoplayer/external/util/p;

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->e:I

    .line 71
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->e:I

    .line 77
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->f:I

    .line 78
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->g:I

    return-void
.end method

.method public final a(JI)V
    .locals 0

    .line 90
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->k:J

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/i;Landroidx/media2/exoplayer/external/extractor/e/ah$d;)V
    .locals 1

    .line 83
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->a()V

    .line 84
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->c:Ljava/lang/String;

    .line 85
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->b()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroidx/media2/exoplayer/external/extractor/i;->a(II)Landroidx/media2/exoplayer/external/extractor/q;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->d:Landroidx/media2/exoplayer/external/extractor/q;

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/util/p;)V
    .locals 11

    .line 95
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v0

    if-lez v0, :cond_7

    .line 96
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->e:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_1

    .line 111
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->j:I

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->f:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 112
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->d:Landroidx/media2/exoplayer/external/extractor/q;

    invoke-interface {v1, p1, v0}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    .line 113
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->f:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->f:I

    .line 114
    iget v8, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->j:I

    if-ne v1, v8, :cond_0

    .line 115
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->d:Landroidx/media2/exoplayer/external/extractor/q;

    iget-wide v5, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->k:J

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Landroidx/media2/exoplayer/external/extractor/q;->a(JIIILandroidx/media2/exoplayer/external/extractor/q$a;)V

    .line 116
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->k:J

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->h:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->k:J

    .line 117
    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->e:I

    goto :goto_0

    .line 121
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 103
    :cond_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->a:Landroidx/media2/exoplayer/external/util/p;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    .line 2141
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v4

    iget v5, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->f:I

    const/16 v6, 0x12

    rsub-int/lit8 v5, v5, 0x12

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2142
    iget v5, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->f:I

    invoke-virtual {p1, v0, v5, v4}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    .line 2143
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->f:I

    add-int/2addr v0, v4

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->f:I

    if-ne v0, v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    .line 2175
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->a:Landroidx/media2/exoplayer/external/util/p;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    .line 2176
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->i:Landroidx/media2/exoplayer/external/Format;

    if-nez v2, :cond_4

    .line 2177
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->c:Ljava/lang/String;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->b:Ljava/lang/String;

    invoke-static {v0, v2, v4}, Landroidx/media2/exoplayer/external/audio/s;->a([BLjava/lang/String;Ljava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v2

    iput-object v2, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->i:Landroidx/media2/exoplayer/external/Format;

    .line 2178
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->d:Landroidx/media2/exoplayer/external/extractor/q;

    invoke-interface {v4, v2}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/Format;)V

    .line 2180
    :cond_4
    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/s;->b([B)I

    move-result v2

    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->j:I

    const-wide/32 v4, 0xf4240

    .line 2184
    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/s;->a([B)I

    move-result v0

    int-to-long v7, v0

    mul-long v7, v7, v4

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->i:Landroidx/media2/exoplayer/external/Format;

    iget v0, v0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    int-to-long v4, v0

    div-long/2addr v7, v4

    long-to-int v0, v7

    int-to-long v4, v0

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->h:J

    .line 105
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->a:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 106
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->d:Landroidx/media2/exoplayer/external/extractor/q;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->a:Landroidx/media2/exoplayer/external/util/p;

    invoke-interface {v0, v2, v6}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    .line 107
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->e:I

    goto/16 :goto_0

    .line 1155
    :cond_5
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v0

    if-lez v0, :cond_6

    .line 1156
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->g:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->g:I

    .line 1157
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v4

    or-int/2addr v0, v4

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->g:I

    .line 1158
    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/s;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1159
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->a:Landroidx/media2/exoplayer/external/util/p;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->g:I

    shr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 1160
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->a:Landroidx/media2/exoplayer/external/util/p;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->g:I

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 1161
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->a:Landroidx/media2/exoplayer/external/util/p;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->g:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 1162
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->a:Landroidx/media2/exoplayer/external/util/p;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/4 v1, 0x3

    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->g:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    const/4 v0, 0x4

    .line 1163
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->f:I

    .line 1164
    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->g:I

    const/4 v3, 0x1

    :cond_6
    if-eqz v3, :cond_0

    .line 99
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/e/k;->e:I

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
