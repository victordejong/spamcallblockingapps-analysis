.class public final Landroidx/media2/exoplayer/external/audio/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/audio/AudioProcessor;


# instance fields
.field b:I

.field c:F

.field d:F

.field e:I

.field f:Z

.field g:J

.field h:J

.field private i:I

.field private j:I

.field private k:Landroidx/media2/exoplayer/external/audio/x;

.field private l:Ljava/nio/ByteBuffer;

.field private m:Ljava/nio/ShortBuffer;

.field private n:Ljava/nio/ByteBuffer;

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 91
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/y;->c:F

    .line 92
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/y;->d:F

    const/4 v0, -0x1

    .line 93
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/y;->i:I

    .line 94
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/y;->b:I

    .line 95
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/y;->e:I

    .line 96
    sget-object v1, Landroidx/media2/exoplayer/external/audio/y;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/y;->l:Ljava/nio/ByteBuffer;

    .line 97
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/y;->m:Ljava/nio/ShortBuffer;

    .line 98
    sget-object v1, Landroidx/media2/exoplayer/external/audio/y;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/y;->n:Ljava/nio/ByteBuffer;

    .line 99
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/y;->j:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 8

    .line 211
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/y;->k:Landroidx/media2/exoplayer/external/audio/x;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/audio/x;

    .line 212
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 214
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 215
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/audio/y;->g:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroidx/media2/exoplayer/external/audio/y;->g:J

    .line 1097
    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v3

    iget v4, v0, Landroidx/media2/exoplayer/external/audio/x;->a:I

    div-int/2addr v3, v4

    .line 1098
    iget v4, v0, Landroidx/media2/exoplayer/external/audio/x;->a:I

    mul-int v4, v4, v3

    mul-int/lit8 v4, v4, 0x2

    .line 1099
    iget-object v5, v0, Landroidx/media2/exoplayer/external/audio/x;->f:[S

    iget v6, v0, Landroidx/media2/exoplayer/external/audio/x;->g:I

    invoke-virtual {v0, v5, v6, v3}, Landroidx/media2/exoplayer/external/audio/x;->a([SII)[S

    move-result-object v5

    iput-object v5, v0, Landroidx/media2/exoplayer/external/audio/x;->f:[S

    .line 1100
    iget-object v5, v0, Landroidx/media2/exoplayer/external/audio/x;->f:[S

    iget v6, v0, Landroidx/media2/exoplayer/external/audio/x;->g:I

    iget v7, v0, Landroidx/media2/exoplayer/external/audio/x;->a:I

    mul-int v6, v6, v7

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v1, v5, v6, v4}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 1101
    iget v1, v0, Landroidx/media2/exoplayer/external/audio/x;->g:I

    add-int/2addr v1, v3

    iput v1, v0, Landroidx/media2/exoplayer/external/audio/x;->g:I

    .line 1102
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/audio/x;->b()V

    .line 217
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 219
    :cond_0
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/audio/x;->a()I

    move-result p1

    if-lez p1, :cond_2

    .line 221
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/y;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, p1, :cond_1

    .line 222
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/y;->l:Ljava/nio/ByteBuffer;

    .line 223
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/y;->m:Ljava/nio/ShortBuffer;

    goto :goto_0

    .line 225
    :cond_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/y;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 226
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/y;->m:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 228
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/y;->m:Ljava/nio/ShortBuffer;

    .line 1112
    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v2

    iget v3, v0, Landroidx/media2/exoplayer/external/audio/x;->a:I

    div-int/2addr v2, v3

    iget v3, v0, Landroidx/media2/exoplayer/external/audio/x;->i:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1113
    iget-object v3, v0, Landroidx/media2/exoplayer/external/audio/x;->h:[S

    iget v4, v0, Landroidx/media2/exoplayer/external/audio/x;->a:I

    mul-int v4, v4, v2

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 1114
    iget v1, v0, Landroidx/media2/exoplayer/external/audio/x;->i:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/media2/exoplayer/external/audio/x;->i:I

    .line 1115
    iget-object v1, v0, Landroidx/media2/exoplayer/external/audio/x;->h:[S

    iget v3, v0, Landroidx/media2/exoplayer/external/audio/x;->a:I

    mul-int v2, v2, v3

    iget-object v3, v0, Landroidx/media2/exoplayer/external/audio/x;->h:[S

    iget v4, v0, Landroidx/media2/exoplayer/external/audio/x;->i:I

    iget v0, v0, Landroidx/media2/exoplayer/external/audio/x;->a:I

    mul-int v4, v4, v0

    invoke-static {v1, v2, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/y;->h:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/y;->h:J

    .line 230
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/y;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 231
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/y;->l:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/y;->n:Ljava/nio/ByteBuffer;

    :cond_2
    return-void
.end method

.method public final a()Z
    .locals 3

    .line 188
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/y;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroidx/media2/exoplayer/external/audio/y;->c:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    .line 189
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Landroidx/media2/exoplayer/external/audio/y;->d:F

    sub-float/2addr v0, v1

    .line 190
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Landroidx/media2/exoplayer/external/audio/y;->e:I

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/y;->b:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final a(III)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 173
    iget p3, p0, Landroidx/media2/exoplayer/external/audio/y;->j:I

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    move p3, p1

    .line 175
    :cond_0
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/y;->b:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Landroidx/media2/exoplayer/external/audio/y;->i:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Landroidx/media2/exoplayer/external/audio/y;->e:I

    if-ne v0, p3, :cond_1

    const/4 p1, 0x0

    return p1

    .line 179
    :cond_1
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/y;->b:I

    .line 180
    iput p2, p0, Landroidx/media2/exoplayer/external/audio/y;->i:I

    .line 181
    iput p3, p0, Landroidx/media2/exoplayer/external/audio/y;->e:I

    const/4 p1, 0x1

    .line 182
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/audio/y;->f:Z

    return p1

    .line 171
    :cond_2
    new-instance v0, Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;

    invoke-direct {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;-><init>(III)V

    throw v0
.end method

.method public final b()I
    .locals 1

    .line 196
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/y;->i:I

    return v0
.end method

.method public final c()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final d()I
    .locals 1

    .line 206
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/y;->e:I

    return v0
.end method

.method public final e()V
    .locals 7

    .line 237
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/y;->k:Landroidx/media2/exoplayer/external/audio/x;

    if-eqz v0, :cond_2

    .line 1128
    iget v1, v0, Landroidx/media2/exoplayer/external/audio/x;->g:I

    .line 1129
    iget v2, v0, Landroidx/media2/exoplayer/external/audio/x;->b:F

    iget v3, v0, Landroidx/media2/exoplayer/external/audio/x;->c:F

    div-float/2addr v2, v3

    .line 1130
    iget v3, v0, Landroidx/media2/exoplayer/external/audio/x;->d:F

    iget v4, v0, Landroidx/media2/exoplayer/external/audio/x;->c:F

    mul-float v3, v3, v4

    .line 1131
    iget v4, v0, Landroidx/media2/exoplayer/external/audio/x;->i:I

    int-to-float v5, v1

    div-float/2addr v5, v2

    iget v2, v0, Landroidx/media2/exoplayer/external/audio/x;->j:I

    int-to-float v2, v2

    add-float/2addr v5, v2

    div-float/2addr v5, v3

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v5, v2

    float-to-int v2, v5

    add-int/2addr v4, v2

    .line 1135
    iget-object v2, v0, Landroidx/media2/exoplayer/external/audio/x;->f:[S

    iget v3, v0, Landroidx/media2/exoplayer/external/audio/x;->g:I

    iget v5, v0, Landroidx/media2/exoplayer/external/audio/x;->e:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    .line 1136
    invoke-virtual {v0, v2, v3, v5}, Landroidx/media2/exoplayer/external/audio/x;->a([SII)[S

    move-result-object v2

    iput-object v2, v0, Landroidx/media2/exoplayer/external/audio/x;->f:[S

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1138
    :goto_0
    iget v5, v0, Landroidx/media2/exoplayer/external/audio/x;->e:I

    mul-int/lit8 v5, v5, 0x2

    iget v6, v0, Landroidx/media2/exoplayer/external/audio/x;->a:I

    mul-int v5, v5, v6

    if-ge v3, v5, :cond_0

    .line 1139
    iget-object v5, v0, Landroidx/media2/exoplayer/external/audio/x;->f:[S

    iget v6, v0, Landroidx/media2/exoplayer/external/audio/x;->a:I

    mul-int v6, v6, v1

    add-int/2addr v6, v3

    aput-short v2, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1141
    :cond_0
    iget v1, v0, Landroidx/media2/exoplayer/external/audio/x;->g:I

    iget v3, v0, Landroidx/media2/exoplayer/external/audio/x;->e:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    iput v1, v0, Landroidx/media2/exoplayer/external/audio/x;->g:I

    .line 1142
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/audio/x;->b()V

    .line 1144
    iget v1, v0, Landroidx/media2/exoplayer/external/audio/x;->i:I

    if-le v1, v4, :cond_1

    .line 1145
    iput v4, v0, Landroidx/media2/exoplayer/external/audio/x;->i:I

    .line 1148
    :cond_1
    iput v2, v0, Landroidx/media2/exoplayer/external/audio/x;->g:I

    .line 1149
    iput v2, v0, Landroidx/media2/exoplayer/external/audio/x;->m:I

    .line 1150
    iput v2, v0, Landroidx/media2/exoplayer/external/audio/x;->j:I

    :cond_2
    const/4 v0, 0x1

    .line 240
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/y;->o:Z

    return-void
.end method

.method public final f()Ljava/nio/ByteBuffer;
    .locals 2

    .line 245
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/y;->n:Ljava/nio/ByteBuffer;

    .line 246
    sget-object v1, Landroidx/media2/exoplayer/external/audio/y;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/y;->n:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .line 252
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/y;->o:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/y;->k:Landroidx/media2/exoplayer/external/audio/x;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/audio/x;->a()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final h()V
    .locals 8

    .line 257
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/y;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 258
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/y;->f:Z

    if-eqz v0, :cond_0

    .line 259
    new-instance v0, Landroidx/media2/exoplayer/external/audio/x;

    iget v3, p0, Landroidx/media2/exoplayer/external/audio/y;->b:I

    iget v4, p0, Landroidx/media2/exoplayer/external/audio/y;->i:I

    iget v5, p0, Landroidx/media2/exoplayer/external/audio/y;->c:F

    iget v6, p0, Landroidx/media2/exoplayer/external/audio/y;->d:F

    iget v7, p0, Landroidx/media2/exoplayer/external/audio/y;->e:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroidx/media2/exoplayer/external/audio/x;-><init>(IIFFI)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/y;->k:Landroidx/media2/exoplayer/external/audio/x;

    goto :goto_0

    .line 260
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/y;->k:Landroidx/media2/exoplayer/external/audio/x;

    if-eqz v0, :cond_1

    .line 1155
    iput v1, v0, Landroidx/media2/exoplayer/external/audio/x;->g:I

    .line 1156
    iput v1, v0, Landroidx/media2/exoplayer/external/audio/x;->i:I

    .line 1157
    iput v1, v0, Landroidx/media2/exoplayer/external/audio/x;->j:I

    .line 1158
    iput v1, v0, Landroidx/media2/exoplayer/external/audio/x;->k:I

    .line 1159
    iput v1, v0, Landroidx/media2/exoplayer/external/audio/x;->l:I

    .line 1160
    iput v1, v0, Landroidx/media2/exoplayer/external/audio/x;->m:I

    .line 1161
    iput v1, v0, Landroidx/media2/exoplayer/external/audio/x;->n:I

    .line 1162
    iput v1, v0, Landroidx/media2/exoplayer/external/audio/x;->o:I

    .line 1163
    iput v1, v0, Landroidx/media2/exoplayer/external/audio/x;->p:I

    .line 1164
    iput v1, v0, Landroidx/media2/exoplayer/external/audio/x;->q:I

    .line 264
    :cond_1
    :goto_0
    sget-object v0, Landroidx/media2/exoplayer/external/audio/y;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/y;->n:Ljava/nio/ByteBuffer;

    const-wide/16 v2, 0x0

    .line 265
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/audio/y;->g:J

    .line 266
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/audio/y;->h:J

    .line 267
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/audio/y;->o:Z

    return-void
.end method

.method public final i()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 272
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/y;->c:F

    .line 273
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/y;->d:F

    const/4 v0, -0x1

    .line 274
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/y;->i:I

    .line 275
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/y;->b:I

    .line 276
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/y;->e:I

    .line 277
    sget-object v1, Landroidx/media2/exoplayer/external/audio/y;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/y;->l:Ljava/nio/ByteBuffer;

    .line 278
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/y;->m:Ljava/nio/ShortBuffer;

    .line 279
    sget-object v1, Landroidx/media2/exoplayer/external/audio/y;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/y;->n:Ljava/nio/ByteBuffer;

    .line 280
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/y;->j:I

    const/4 v0, 0x0

    .line 281
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/y;->f:Z

    const/4 v1, 0x0

    .line 282
    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/y;->k:Landroidx/media2/exoplayer/external/audio/x;

    const-wide/16 v1, 0x0

    .line 283
    iput-wide v1, p0, Landroidx/media2/exoplayer/external/audio/y;->g:J

    .line 284
    iput-wide v1, p0, Landroidx/media2/exoplayer/external/audio/y;->h:J

    .line 285
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/y;->o:Z

    return-void
.end method
