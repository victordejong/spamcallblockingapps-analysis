.class public final Lcom/google/android/exoplayer2/util/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[B

.field public b:I

.field public c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lcom/google/android/exoplayer2/util/af;->f:[B

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/t;->a:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 47
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/util/t;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/t;->a:[B

    .line 58
    iput p2, p0, Lcom/google/android/exoplayer2/util/t;->d:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 98
    iget v0, p0, Lcom/google/android/exoplayer2/util/t;->d:I

    iget v1, p0, Lcom/google/android/exoplayer2/util/t;->b:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/google/android/exoplayer2/util/t;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final a(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    .line 305
    new-array v0, p1, [B

    .line 306
    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/util/t;->c([BI)V

    .line 307
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1
.end method

.method public final a(I)V
    .locals 1

    .line 124
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lcom/google/android/exoplayer2/util/t;->b:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    .line 125
    iput p1, p0, Lcom/google/android/exoplayer2/util/t;->c:I

    .line 126
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/t;->g()V

    return-void
.end method

.method public final a([BI)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/t;->a:[B

    const/4 p1, 0x0

    .line 89
    iput p1, p0, Lcom/google/android/exoplayer2/util/t;->b:I

    .line 90
    iput p1, p0, Lcom/google/android/exoplayer2/util/t;->c:I

    .line 91
    iput p2, p0, Lcom/google/android/exoplayer2/util/t;->d:I

    return-void
.end method

.method public final b()I
    .locals 2

    .line 105
    iget v0, p0, Lcom/google/android/exoplayer2/util/t;->b:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/google/android/exoplayer2/util/t;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final b(I)V
    .locals 3

    .line 146
    div-int/lit8 v0, p1, 0x8

    .line 147
    iget v1, p0, Lcom/google/android/exoplayer2/util/t;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/util/t;->b:I

    .line 148
    iget v2, p0, Lcom/google/android/exoplayer2/util/t;->c:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    add-int/2addr v2, p1

    iput v2, p0, Lcom/google/android/exoplayer2/util/t;->c:I

    const/4 p1, 0x7

    if-le v2, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 150
    iput v1, p0, Lcom/google/android/exoplayer2/util/t;->b:I

    add-int/lit8 v2, v2, -0x8

    .line 151
    iput v2, p0, Lcom/google/android/exoplayer2/util/t;->c:I

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/t;->g()V

    return-void
.end method

.method public final b([BI)V
    .locals 9

    shr-int/lit8 v0, p2, 0x3

    const/4 v1, 0x0

    add-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xff

    const/16 v4, 0x8

    if-ge v2, v0, :cond_0

    .line 219
    iget-object v5, p0, Lcom/google/android/exoplayer2/util/t;->a:[B

    iget v6, p0, Lcom/google/android/exoplayer2/util/t;->b:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/exoplayer2/util/t;->b:I

    aget-byte v6, v5, v6

    iget v8, p0, Lcom/google/android/exoplayer2/util/t;->c:I

    shl-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, p1, v2

    .line 220
    aget-byte v6, p1, v2

    aget-byte v5, v5, v7

    and-int/2addr v3, v5

    sub-int/2addr v4, v8

    shr-int/2addr v3, v4

    or-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    and-int/lit8 p2, p2, 0x7

    if-nez p2, :cond_1

    return-void

    .line 228
    :cond_1
    aget-byte v2, p1, v0

    shr-int v5, v3, p2

    and-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 229
    iget v2, p0, Lcom/google/android/exoplayer2/util/t;->c:I

    add-int v5, v2, p2

    if-le v5, v4, :cond_2

    .line 231
    aget-byte v5, p1, v0

    iget-object v6, p0, Lcom/google/android/exoplayer2/util/t;->a:[B

    iget v7, p0, Lcom/google/android/exoplayer2/util/t;->b:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/google/android/exoplayer2/util/t;->b:I

    aget-byte v6, v6, v7

    and-int/2addr v6, v3

    shl-int/2addr v6, v2

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v0

    sub-int/2addr v2, v4

    .line 232
    iput v2, p0, Lcom/google/android/exoplayer2/util/t;->c:I

    .line 234
    :cond_2
    iget v2, p0, Lcom/google/android/exoplayer2/util/t;->c:I

    add-int/2addr v2, p2

    iput v2, p0, Lcom/google/android/exoplayer2/util/t;->c:I

    .line 235
    iget-object v5, p0, Lcom/google/android/exoplayer2/util/t;->a:[B

    iget v6, p0, Lcom/google/android/exoplayer2/util/t;->b:I

    aget-byte v5, v5, v6

    and-int/2addr v3, v5

    rsub-int/lit8 v5, v2, 0x8

    shr-int/2addr v3, v5

    .line 236
    aget-byte v5, p1, v0

    rsub-int/lit8 p2, p2, 0x8

    shl-int p2, v3, p2

    int-to-byte p2, p2

    or-int/2addr p2, v5

    int-to-byte p2, p2

    aput-byte p2, p1, v0

    if-ne v2, v4, :cond_3

    .line 238
    iput v1, p0, Lcom/google/android/exoplayer2/util/t;->c:I

    add-int/lit8 v6, v6, 0x1

    .line 239
    iput v6, p0, Lcom/google/android/exoplayer2/util/t;->b:I

    .line 241
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/t;->g()V

    return-void
.end method

.method public final c()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/google/android/exoplayer2/util/t;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 115
    iget v0, p0, Lcom/google/android/exoplayer2/util/t;->b:I

    return v0
.end method

.method public final c(I)I
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 178
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/util/t;->c:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/exoplayer2/util/t;->c:I

    const/4 v1, 0x0

    .line 179
    :goto_0
    iget v2, p0, Lcom/google/android/exoplayer2/util/t;->c:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_1

    add-int/lit8 v2, v2, -0x8

    .line 180
    iput v2, p0, Lcom/google/android/exoplayer2/util/t;->c:I

    .line 181
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/t;->a:[B

    iget v4, p0, Lcom/google/android/exoplayer2/util/t;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/android/exoplayer2/util/t;->b:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    goto :goto_0

    .line 183
    :cond_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/util/t;->a:[B

    iget v5, p0, Lcom/google/android/exoplayer2/util/t;->b:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    rsub-int/lit8 v6, v2, 0x8

    shr-int/2addr v4, v6

    or-int/2addr v1, v4

    const/4 v4, -0x1

    rsub-int/lit8 p1, p1, 0x20

    ushr-int p1, v4, p1

    and-int/2addr p1, v1

    if-ne v2, v3, :cond_2

    .line 186
    iput v0, p0, Lcom/google/android/exoplayer2/util/t;->c:I

    add-int/lit8 v5, v5, 0x1

    .line 187
    iput v5, p0, Lcom/google/android/exoplayer2/util/t;->b:I

    .line 189
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/t;->g()V

    return p1
.end method

.method public final c([BI)V
    .locals 3

    .line 267
    iget v0, p0, Lcom/google/android/exoplayer2/util/t;->c:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 268
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/t;->a:[B

    iget v2, p0, Lcom/google/android/exoplayer2/util/t;->b:I

    invoke-static {v0, v2, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    iget p1, p0, Lcom/google/android/exoplayer2/util/t;->b:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/exoplayer2/util/t;->b:I

    .line 270
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/t;->g()V

    return-void
.end method

.method public final d()V
    .locals 2

    .line 133
    iget v0, p0, Lcom/google/android/exoplayer2/util/t;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/util/t;->c:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 134
    iput v0, p0, Lcom/google/android/exoplayer2/util/t;->c:I

    .line 135
    iget v0, p0, Lcom/google/android/exoplayer2/util/t;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/util/t;->b:I

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/t;->g()V

    return-void
.end method

.method public final d(I)V
    .locals 1

    .line 280
    iget v0, p0, Lcom/google/android/exoplayer2/util/t;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 281
    iget v0, p0, Lcom/google/android/exoplayer2/util/t;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/util/t;->b:I

    .line 282
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/t;->g()V

    return-void
.end method

.method public final e()Z
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/t;->a:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/t;->b:I

    aget-byte v0, v0, v1

    iget v1, p0, Lcom/google/android/exoplayer2/util/t;->c:I

    const/16 v2, 0x80

    shr-int v1, v2, v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 163
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/t;->d()V

    return v0
.end method

.method public final f()V
    .locals 1

    .line 248
    iget v0, p0, Lcom/google/android/exoplayer2/util/t;->c:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 251
    iput v0, p0, Lcom/google/android/exoplayer2/util/t;->c:I

    .line 252
    iget v0, p0, Lcom/google/android/exoplayer2/util/t;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/util/t;->b:I

    .line 253
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/t;->g()V

    return-void
.end method

.method public final g()V
    .locals 2

    .line 349
    iget v0, p0, Lcom/google/android/exoplayer2/util/t;->b:I

    if-ltz v0, :cond_1

    iget v1, p0, Lcom/google/android/exoplayer2/util/t;->d:I

    if-lt v0, v1, :cond_0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/util/t;->c:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    return-void
.end method
