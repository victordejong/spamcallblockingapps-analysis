.class public final Lcom/google/android/exoplayer2/c1/r;
.super Ljava/lang/Object;
.source "MpegAudioHeader.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I

.field private static final e:[I

.field private static final f:[I

.field private static final g:[I


# instance fields
.field public h:I

.field public i:Ljava/lang/String;

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "audio/mpeg-L1"

    const-string v1, "audio/mpeg-L2"

    const-string v2, "audio/mpeg"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/c1/r;->a:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/c1/r;->b:[I

    const/16 v0, 0xe

    new-array v1, v0, [I

    .line 3
    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/android/exoplayer2/c1/r;->c:[I

    new-array v1, v0, [I

    .line 4
    fill-array-data v1, :array_2

    sput-object v1, Lcom/google/android/exoplayer2/c1/r;->d:[I

    new-array v1, v0, [I

    .line 5
    fill-array-data v1, :array_3

    sput-object v1, Lcom/google/android/exoplayer2/c1/r;->e:[I

    new-array v1, v0, [I

    .line 6
    fill-array-data v1, :array_4

    sput-object v1, Lcom/google/android/exoplayer2/c1/r;->f:[I

    new-array v0, v0, [I

    .line 7
    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/android/exoplayer2/c1/r;->g:[I

    return-void

    :array_0
    .array-data 4
        0xac44
        0xbb80
        0x7d00
    .end array-data

    :array_1
    .array-data 4
        0x7d00
        0xfa00
        0x17700
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x46500
        0x4e200
        0x55f00
        0x5dc00
        0x65900
        0x6d600
    .end array-data

    :array_2
    .array-data 4
        0x7d00
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x23280
        0x27100
        0x2af80
        0x2ee00
        0x36b00
        0x3e800
    .end array-data

    :array_3
    .array-data 4
        0x7d00
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x4e200
        0x5dc00
    .end array-data

    :array_4
    .array-data 4
        0x7d00
        0x9c40
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x4e200
    .end array-data

    :array_5
    .array-data 4
        0x1f40
        0x3e80
        0x5dc0
        0x7d00
        0x9c40
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x23280
        0x27100
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/c1/r;->d(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    ushr-int/lit8 v0, p0, 0x13

    const/4 v2, 0x3

    and-int/2addr v0, v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    return v1

    :cond_1
    ushr-int/lit8 v3, p0, 0x11

    and-int/2addr v3, v2

    if-nez v3, :cond_2

    return v1

    :cond_2
    ushr-int/lit8 v4, p0, 0xc

    const/16 v5, 0xf

    and-int/2addr v4, v5

    ushr-int/lit8 p0, p0, 0xa

    and-int/2addr p0, v2

    if-eqz v4, :cond_4

    if-eq v4, v5, :cond_4

    if-ne p0, v2, :cond_3

    goto :goto_0

    .line 2
    :cond_3
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/c1/r;->c(II)I

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method public static b(I)I
    .locals 7

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/c1/r;->d(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    ushr-int/lit8 v0, p0, 0x13

    const/4 v2, 0x3

    and-int/2addr v0, v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    return v1

    :cond_1
    ushr-int/lit8 v4, p0, 0x11

    and-int/2addr v4, v2

    if-nez v4, :cond_2

    return v1

    :cond_2
    ushr-int/lit8 v5, p0, 0xc

    const/16 v6, 0xf

    and-int/2addr v5, v6

    if-eqz v5, :cond_d

    if-ne v5, v6, :cond_3

    goto :goto_3

    :cond_3
    ushr-int/lit8 v6, p0, 0xa

    and-int/2addr v6, v2

    if-ne v6, v2, :cond_4

    return v1

    .line 2
    :cond_4
    sget-object v1, Lcom/google/android/exoplayer2/c1/r;->b:[I

    aget v1, v1, v6

    const/4 v6, 0x2

    if-ne v0, v6, :cond_5

    .line 3
    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_5
    if-nez v0, :cond_6

    .line 4
    div-int/lit8 v1, v1, 0x4

    :cond_6
    :goto_0
    ushr-int/lit8 p0, p0, 0x9

    and-int/2addr p0, v3

    if-ne v4, v2, :cond_8

    if-ne v0, v2, :cond_7

    .line 5
    sget-object v0, Lcom/google/android/exoplayer2/c1/r;->c:[I

    sub-int/2addr v5, v3

    aget v0, v0, v5

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/google/android/exoplayer2/c1/r;->d:[I

    sub-int/2addr v5, v3

    aget v0, v0, v5

    :goto_1
    mul-int/lit8 v0, v0, 0xc

    .line 6
    div-int/2addr v0, v1

    add-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x4

    return v0

    :cond_8
    if-ne v0, v2, :cond_a

    if-ne v4, v6, :cond_9

    .line 7
    sget-object v6, Lcom/google/android/exoplayer2/c1/r;->e:[I

    sub-int/2addr v5, v3

    aget v5, v6, v5

    goto :goto_2

    :cond_9
    sget-object v6, Lcom/google/android/exoplayer2/c1/r;->f:[I

    sub-int/2addr v5, v3

    aget v5, v6, v5

    goto :goto_2

    .line 8
    :cond_a
    sget-object v6, Lcom/google/android/exoplayer2/c1/r;->g:[I

    sub-int/2addr v5, v3

    aget v5, v6, v5

    :goto_2
    const/16 v6, 0x90

    if-ne v0, v2, :cond_b

    mul-int/lit16 v5, v5, 0x90

    .line 9
    div-int/2addr v5, v1

    add-int/2addr v5, p0

    return v5

    :cond_b
    if-ne v4, v3, :cond_c

    const/16 v6, 0x48

    :cond_c
    mul-int v6, v6, v5

    .line 10
    div-int/2addr v6, v1

    add-int/2addr v6, p0

    return v6

    :cond_d
    :goto_3
    return v1
.end method

.method private static c(II)I
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x480

    const/4 v2, 0x3

    if-eq p1, v0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    if-ne p1, v2, :cond_0

    const/16 p0, 0x180

    return p0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    return v1

    :cond_2
    if-ne p0, v2, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0x240

    :goto_0
    return v1
.end method

.method private static d(I)Z
    .locals 1

    const/high16 v0, -0x200000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e(ILcom/google/android/exoplayer2/c1/r;)Z
    .locals 11

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/c1/r;->d(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    ushr-int/lit8 v0, p0, 0x13

    const/4 v2, 0x3

    and-int/lit8 v4, v0, 0x3

    const/4 v0, 0x1

    if-ne v4, v0, :cond_1

    return v1

    :cond_1
    ushr-int/lit8 v3, p0, 0x11

    and-int/2addr v3, v2

    if-nez v3, :cond_2

    return v1

    :cond_2
    ushr-int/lit8 v5, p0, 0xc

    const/16 v6, 0xf

    and-int/2addr v5, v6

    if-eqz v5, :cond_d

    if-ne v5, v6, :cond_3

    goto/16 :goto_8

    :cond_3
    ushr-int/lit8 v6, p0, 0xa

    and-int/2addr v6, v2

    if-ne v6, v2, :cond_4

    return v1

    .line 2
    :cond_4
    sget-object v1, Lcom/google/android/exoplayer2/c1/r;->b:[I

    aget v1, v1, v6

    const/4 v6, 0x2

    if-ne v4, v6, :cond_5

    .line 3
    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_5
    if-nez v4, :cond_6

    .line 4
    div-int/lit8 v1, v1, 0x4

    :cond_6
    :goto_0
    move v7, v1

    ushr-int/lit8 v1, p0, 0x9

    and-int/2addr v1, v0

    .line 5
    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/c1/r;->c(II)I

    move-result v10

    if-ne v3, v2, :cond_8

    if-ne v4, v2, :cond_7

    .line 6
    sget-object v8, Lcom/google/android/exoplayer2/c1/r;->c:[I

    sub-int/2addr v5, v0

    aget v5, v8, v5

    goto :goto_1

    :cond_7
    sget-object v8, Lcom/google/android/exoplayer2/c1/r;->d:[I

    sub-int/2addr v5, v0

    aget v5, v8, v5

    :goto_1
    mul-int/lit8 v8, v5, 0xc

    .line 7
    div-int/2addr v8, v7

    add-int/2addr v8, v1

    mul-int/lit8 v8, v8, 0x4

    :goto_2
    move v9, v5

    goto :goto_6

    :cond_8
    if-ne v4, v2, :cond_a

    if-ne v3, v6, :cond_9

    .line 8
    sget-object v8, Lcom/google/android/exoplayer2/c1/r;->e:[I

    sub-int/2addr v5, v0

    aget v5, v8, v5

    goto :goto_3

    :cond_9
    sget-object v8, Lcom/google/android/exoplayer2/c1/r;->f:[I

    sub-int/2addr v5, v0

    aget v5, v8, v5

    :goto_3
    mul-int/lit16 v8, v5, 0x90

    .line 9
    div-int/2addr v8, v7

    goto :goto_5

    .line 10
    :cond_a
    sget-object v8, Lcom/google/android/exoplayer2/c1/r;->g:[I

    sub-int/2addr v5, v0

    aget v5, v8, v5

    if-ne v3, v0, :cond_b

    const/16 v8, 0x48

    goto :goto_4

    :cond_b
    const/16 v8, 0x90

    :goto_4
    mul-int v8, v8, v5

    .line 11
    div-int/2addr v8, v7

    :goto_5
    add-int/2addr v8, v1

    goto :goto_2

    .line 12
    :goto_6
    sget-object v1, Lcom/google/android/exoplayer2/c1/r;->a:[Ljava/lang/String;

    rsub-int/lit8 v3, v3, 0x3

    aget-object v5, v1, v3

    shr-int/lit8 p0, p0, 0x6

    and-int/2addr p0, v2

    if-ne p0, v2, :cond_c

    const/4 p0, 0x1

    goto :goto_7

    :cond_c
    const/4 p0, 0x2

    :goto_7
    move-object v3, p1

    move v6, v8

    move v8, p0

    .line 13
    invoke-direct/range {v3 .. v10}, Lcom/google/android/exoplayer2/c1/r;->f(ILjava/lang/String;IIIII)V

    return v0

    :cond_d
    :goto_8
    return v1
.end method

.method private f(ILjava/lang/String;IIIII)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/c1/r;->h:I

    .line 2
    iput-object p2, p0, Lcom/google/android/exoplayer2/c1/r;->i:Ljava/lang/String;

    .line 3
    iput p3, p0, Lcom/google/android/exoplayer2/c1/r;->j:I

    .line 4
    iput p4, p0, Lcom/google/android/exoplayer2/c1/r;->k:I

    .line 5
    iput p5, p0, Lcom/google/android/exoplayer2/c1/r;->l:I

    .line 6
    iput p6, p0, Lcom/google/android/exoplayer2/c1/r;->m:I

    .line 7
    iput p7, p0, Lcom/google/android/exoplayer2/c1/r;->n:I

    return-void
.end method
