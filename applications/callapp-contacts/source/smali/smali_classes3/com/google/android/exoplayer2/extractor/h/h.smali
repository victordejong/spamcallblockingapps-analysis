.class public final Lcom/google/android/exoplayer2/extractor/h/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/h/j;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/u;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/google/android/exoplayer2/extractor/x;

.field private e:I

.field private f:I

.field private g:I

.field private h:J

.field private i:Lcom/google/android/exoplayer2/Format;

.field private j:I

.field private k:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/google/android/exoplayer2/util/u;

    const/16 v1, 0x12

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/u;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/h;->a:Lcom/google/android/exoplayer2/util/u;

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/h/h;->e:I

    .line 71
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/h;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/h/h;->e:I

    .line 77
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/h/h;->f:I

    .line 78
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/h/h;->g:I

    return-void
.end method

.method public final a(JI)V
    .locals 0

    .line 90
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/h/h;->k:J

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/j;Lcom/google/android/exoplayer2/extractor/h/ad$d;)V
    .locals 1

    .line 83
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->a()V

    .line 84
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/h;->c:Ljava/lang/String;

    .line 85
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->b()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplayer2/extractor/j;->a(II)Lcom/google/android/exoplayer2/extractor/x;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/h;->d:Lcom/google/android/exoplayer2/extractor/x;

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/util/u;)V
    .locals 11

    .line 95
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/h;->d:Lcom/google/android/exoplayer2/extractor/x;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v0

    if-lez v0, :cond_7

    .line 97
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/h/h;->e:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_1

    .line 112
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/h/h;->j:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/h/h;->f:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 113
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/h/h;->d:Lcom/google/android/exoplayer2/extractor/x;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/util/u;I)V

    .line 114
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/h/h;->f:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/h/h;->f:I

    .line 115
    iget v8, p0, Lcom/google/android/exoplayer2/extractor/h/h;->j:I

    if-ne v1, v8, :cond_0

    .line 116
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/h/h;->d:Lcom/google/android/exoplayer2/extractor/x;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/h/h;->k:J

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/x;->a(JIIILcom/google/android/exoplayer2/extractor/x$a;)V

    .line 117
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/h/h;->k:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/h/h;->h:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/h/h;->k:J

    .line 118
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/h/h;->e:I

    goto :goto_0

    .line 122
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/h;->a:Lcom/google/android/exoplayer2/util/u;

    .line 3169
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 4142
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v4

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/h/h;->f:I

    const/16 v6, 0x12

    rsub-int/lit8 v5, v5, 0x12

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 4143
    iget v5, p0, Lcom/google/android/exoplayer2/extractor/h/h;->f:I

    invoke-virtual {p1, v0, v5, v4}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    .line 4144
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/h/h;->f:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/h/h;->f:I

    if-ne v0, v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    .line 4176
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/h;->a:Lcom/google/android/exoplayer2/util/u;

    .line 5169
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 4177
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/h/h;->i:Lcom/google/android/exoplayer2/Format;

    if-nez v2, :cond_4

    .line 4178
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/h/h;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/h/h;->b:Ljava/lang/String;

    invoke-static {v0, v2, v4}, Lcom/google/android/exoplayer2/audio/l;->a([BLjava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/extractor/h/h;->i:Lcom/google/android/exoplayer2/Format;

    .line 4179
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/h/h;->d:Lcom/google/android/exoplayer2/extractor/x;

    invoke-interface {v4, v2}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 4181
    :cond_4
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/l;->b([B)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/h/h;->j:I

    const-wide/32 v4, 0xf4240

    .line 4185
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/l;->a([B)I

    move-result v0

    int-to-long v7, v0

    mul-long v7, v7, v4

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/h;->i:Lcom/google/android/exoplayer2/Format;

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v4, v0

    div-long/2addr v7, v4

    long-to-int v0, v7

    int-to-long v4, v0

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/h/h;->h:J

    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/h;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 107
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/h;->d:Lcom/google/android/exoplayer2/extractor/x;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/h/h;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-interface {v0, v2, v6}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/util/u;I)V

    .line 108
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/h/h;->e:I

    goto/16 :goto_0

    .line 1156
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v0

    if-lez v0, :cond_6

    .line 1157
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/h/h;->g:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/h/h;->g:I

    .line 1158
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v4

    or-int/2addr v0, v4

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/h/h;->g:I

    .line 1159
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/l;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1160
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/h;->a:Lcom/google/android/exoplayer2/util/u;

    .line 2169
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 1161
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/h/h;->g:I

    shr-int/lit8 v5, v4, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    shr-int/lit8 v5, v4, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 1162
    aput-byte v5, v0, v2

    shr-int/lit8 v5, v4, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 1163
    aput-byte v5, v0, v1

    const/4 v1, 0x3

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 1164
    aput-byte v4, v0, v1

    const/4 v0, 0x4

    .line 1165
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/h/h;->f:I

    .line 1166
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/h/h;->g:I

    const/4 v3, 0x1

    :cond_6
    if-eqz v3, :cond_0

    .line 100
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/h/h;->e:I

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
