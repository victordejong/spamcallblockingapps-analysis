.class public final Lcom/google/android/exoplayer2/audio/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v1, v0, [I

    .line 52
    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/exoplayer2/audio/l;->a:[I

    new-array v0, v0, [I

    .line 58
    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/audio/l;->b:[I

    const/16 v0, 0x1d

    new-array v0, v0, [I

    .line 64
    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/exoplayer2/audio/l;->c:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x6
        0x6
        0x6
        0x7
        0x8
        0x8
    .end array-data

    :array_1
    .array-data 4
        -0x1
        0x1f40
        0x3e80
        0x7d00
        -0x1
        -0x1
        0x2b11
        0x5622
        0xac44
        -0x1
        -0x1
        0x2ee0
        0x5dc0
        0xbb80
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x40
        0x70
        0x80
        0xc0
        0xe0
        0x100
        0x180
        0x1c0
        0x200
        0x280
        0x300
        0x380
        0x400
        0x480
        0x500
        0x600
        0x780
        0x800
        0x900
        0xa00
        0xa80
        0xb00
        0xb07
        0xb80
        0xc00
        0xf00
        0x1000
        0x1800
        0x1e00
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 153
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 155
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_2

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x4

    .line 167
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v0, 0x5

    .line 163
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x4

    .line 160
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    :goto_0
    and-int/lit8 p0, p0, 0x3c

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v0, 0x5

    .line 157
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    :goto_1
    and-int/lit16 p0, p0, 0xfc

    :goto_2
    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v1

    add-int/lit8 p0, p0, 0x1

    mul-int/lit8 p0, p0, 0x20

    return p0
.end method

.method public static a([B)I
    .locals 6

    const/4 v0, 0x0

    .line 127
    aget-byte v0, p0, v0

    const/4 v1, -0x2

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, -0x1

    const/4 v5, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_0

    .line 139
    aget-byte v0, p0, v4

    and-int/lit8 v0, v0, 0x1

    shl-int/2addr v0, v2

    aget-byte p0, p0, v3

    goto :goto_1

    .line 135
    :cond_0
    aget-byte v0, p0, v3

    and-int/2addr v0, v5

    shl-int/2addr v0, v4

    aget-byte p0, p0, v2

    goto :goto_0

    .line 132
    :cond_1
    aget-byte v0, p0, v4

    and-int/2addr v0, v5

    shl-int/2addr v0, v4

    aget-byte p0, p0, v5

    :goto_0
    and-int/lit8 p0, p0, 0x3c

    goto :goto_2

    .line 129
    :cond_2
    aget-byte v0, p0, v3

    and-int/lit8 v0, v0, 0x1

    shl-int/2addr v0, v2

    aget-byte p0, p0, v4

    :goto_1
    and-int/lit16 p0, p0, 0xfc

    :goto_2
    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    mul-int/lit8 p0, p0, 0x20

    return p0
.end method

.method public static a([BLjava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1203
    aget-byte v2, v0, v1

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0x7f

    if-ne v2, v6, :cond_0

    .line 1205
    new-instance v2, Lcom/google/android/exoplayer2/util/t;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/util/t;-><init>([B)V

    goto/16 :goto_5

    .line 1208
    :cond_0
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 1231
    aget-byte v2, v0, v1

    const/4 v6, -0x2

    if-eq v2, v6, :cond_2

    aget-byte v2, v0, v1

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    const/4 v2, 0x0

    .line 1211
    :goto_2
    array-length v6, v0

    sub-int/2addr v6, v5

    if-ge v2, v6, :cond_3

    .line 1212
    aget-byte v6, v0, v2

    add-int/lit8 v7, v2, 0x1

    .line 1213
    aget-byte v8, v0, v7

    aput-byte v8, v0, v2

    .line 1214
    aput-byte v6, v0, v7

    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    .line 1217
    :cond_3
    new-instance v2, Lcom/google/android/exoplayer2/util/t;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/util/t;-><init>([B)V

    .line 1218
    aget-byte v6, v0, v1

    const/16 v7, 0x1f

    if-ne v6, v7, :cond_5

    .line 1220
    new-instance v6, Lcom/google/android/exoplayer2/util/t;

    invoke-direct {v6, v0}, Lcom/google/android/exoplayer2/util/t;-><init>([B)V

    .line 1221
    :goto_3
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/t;->a()I

    move-result v7

    const/16 v8, 0x10

    if-lt v7, v8, :cond_5

    .line 1222
    invoke-virtual {v6, v4}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    const/16 v7, 0xe

    .line 1223
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v8

    and-int/lit16 v8, v8, 0x3fff

    .line 1324
    iget v9, v2, Lcom/google/android/exoplayer2/util/t;->c:I

    const/16 v10, 0x8

    rsub-int/lit8 v9, v9, 0x8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1325
    iget v11, v2, Lcom/google/android/exoplayer2/util/t;->c:I

    rsub-int/lit8 v11, v11, 0x8

    sub-int/2addr v11, v9

    const v12, 0xff00

    .line 1326
    iget v13, v2, Lcom/google/android/exoplayer2/util/t;->c:I

    shr-int/2addr v12, v13

    shl-int v13, v5, v11

    sub-int/2addr v13, v5

    or-int/2addr v12, v13

    .line 1327
    iget-object v13, v2, Lcom/google/android/exoplayer2/util/t;->a:[B

    iget v14, v2, Lcom/google/android/exoplayer2/util/t;->b:I

    iget-object v15, v2, Lcom/google/android/exoplayer2/util/t;->a:[B

    iget v1, v2, Lcom/google/android/exoplayer2/util/t;->b:I

    aget-byte v1, v15, v1

    and-int/2addr v1, v12

    int-to-byte v1, v1

    aput-byte v1, v13, v14

    rsub-int/lit8 v1, v9, 0xe

    ushr-int v9, v8, v1

    .line 1329
    iget-object v12, v2, Lcom/google/android/exoplayer2/util/t;->a:[B

    iget v13, v2, Lcom/google/android/exoplayer2/util/t;->b:I

    iget-object v14, v2, Lcom/google/android/exoplayer2/util/t;->a:[B

    iget v15, v2, Lcom/google/android/exoplayer2/util/t;->b:I

    aget-byte v14, v14, v15

    shl-int/2addr v9, v11

    or-int/2addr v9, v14

    int-to-byte v9, v9

    aput-byte v9, v12, v13

    .line 1332
    iget v9, v2, Lcom/google/android/exoplayer2/util/t;->b:I

    add-int/2addr v9, v5

    :goto_4
    if-le v1, v10, :cond_4

    .line 1334
    iget-object v11, v2, Lcom/google/android/exoplayer2/util/t;->a:[B

    add-int/lit8 v12, v9, 0x1

    add-int/lit8 v13, v1, -0x8

    ushr-int v13, v8, v13

    int-to-byte v13, v13

    aput-byte v13, v11, v9

    add-int/lit8 v1, v1, -0x8

    move v9, v12

    goto :goto_4

    :cond_4
    rsub-int/lit8 v10, v1, 0x8

    .line 1338
    iget-object v11, v2, Lcom/google/android/exoplayer2/util/t;->a:[B

    aget-byte v12, v11, v9

    shl-int v13, v5, v10

    sub-int/2addr v13, v5

    and-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v11, v9

    shl-int v1, v5, v1

    sub-int/2addr v1, v5

    and-int/2addr v1, v8

    .line 1341
    iget-object v8, v2, Lcom/google/android/exoplayer2/util/t;->a:[B

    aget-byte v11, v8, v9

    shl-int/2addr v1, v10

    or-int/2addr v1, v11

    int-to-byte v1, v1

    aput-byte v1, v8, v9

    .line 1343
    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 1344
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/t;->g()V

    const/4 v1, 0x0

    goto/16 :goto_3

    .line 2067
    :cond_5
    array-length v1, v0

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/util/t;->a([BI)V

    :goto_5
    const/16 v0, 0x3c

    .line 98
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    const/4 v0, 0x6

    .line 99
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v0

    .line 100
    sget-object v1, Lcom/google/android/exoplayer2/audio/l;->a:[I

    aget v0, v1, v0

    const/4 v1, 0x4

    .line 101
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v1

    .line 102
    sget-object v6, Lcom/google/android/exoplayer2/audio/l;->b:[I

    aget v1, v6, v1

    const/4 v6, 0x5

    .line 103
    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v6

    .line 104
    sget-object v7, Lcom/google/android/exoplayer2/audio/l;->c:[I

    array-length v8, v7

    if-lt v6, v8, :cond_6

    goto :goto_6

    .line 105
    :cond_6
    aget v3, v7, v6

    mul-int/lit16 v3, v3, 0x3e8

    div-int/2addr v3, v4

    :goto_6
    const/16 v6, 0xa

    .line 106
    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 107
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v2

    if-lez v2, :cond_7

    const/16 v16, 0x1

    goto :goto_7

    :cond_7
    const/16 v16, 0x0

    :goto_7
    add-int v0, v0, v16

    .line 108
    new-instance v2, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    move-object/from16 v4, p1

    .line 2244
    iput-object v4, v2, Lcom/google/android/exoplayer2/Format$a;->a:Ljava/lang/String;

    const-string v4, "audio/vnd.dts"

    .line 2370
    iput-object v4, v2, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 3311
    iput v3, v2, Lcom/google/android/exoplayer2/Format$a;->f:I

    .line 3517
    iput v0, v2, Lcom/google/android/exoplayer2/Format$a;->x:I

    .line 3528
    iput v1, v2, Lcom/google/android/exoplayer2/Format$a;->y:I

    const/4 v0, 0x0

    .line 4403
    iput-object v0, v2, Lcom/google/android/exoplayer2/Format$a;->n:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v0, p2

    .line 5278
    iput-object v0, v2, Lcom/google/android/exoplayer2/Format$a;->c:Ljava/lang/String;

    .line 116
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Z
    .locals 1

    const v0, 0x7ffe8001

    if-eq p0, v0, :cond_1

    const v0, -0x180fe80

    if-eq p0, v0, :cond_1

    const v0, 0x1fffe800

    if-eq p0, v0, :cond_1

    const v0, -0xe0ff18

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b([B)I
    .locals 7

    const/4 v0, 0x0

    .line 181
    aget-byte v1, p0, v0

    const/4 v2, -0x2

    const/4 v3, 0x6

    const/4 v4, 0x7

    const/4 v5, 0x1

    const/4 v6, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_0

    const/4 v1, 0x5

    .line 195
    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0xc

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v6

    or-int/2addr v1, v2

    aget-byte p0, p0, v4

    goto :goto_1

    .line 183
    :cond_0
    aget-byte v0, p0, v3

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0xc

    aget-byte v1, p0, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v6

    or-int/2addr v0, v1

    const/16 v1, 0x8

    aget-byte p0, p0, v1

    goto :goto_0

    .line 190
    :cond_1
    aget-byte v0, p0, v4

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0xc

    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v6

    or-int/2addr v0, v1

    const/16 v1, 0x9

    aget-byte p0, p0, v1

    :goto_0
    and-int/lit8 p0, p0, 0x3c

    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v0

    add-int/2addr p0, v5

    const/4 v0, 0x1

    goto :goto_2

    .line 187
    :cond_2
    aget-byte v1, p0, v6

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0xc

    aget-byte v2, p0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v6

    or-int/2addr v1, v2

    aget-byte p0, p0, v3

    :goto_1
    and-int/lit16 p0, p0, 0xf0

    shr-int/2addr p0, v6

    or-int/2addr p0, v1

    add-int/2addr p0, v5

    :goto_2
    if-eqz v0, :cond_3

    mul-int/lit8 p0, p0, 0x10

    .line 199
    div-int/lit8 p0, p0, 0xe

    :cond_3
    return p0
.end method
