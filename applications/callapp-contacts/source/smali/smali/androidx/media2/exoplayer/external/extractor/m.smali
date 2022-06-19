.class public final Landroidx/media2/exoplayer/external/extractor/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final h:[Ljava/lang/String;

.field private static final i:[I

.field private static final j:[I

.field private static final k:[I

.field private static final l:[I

.field private static final m:[I

.field private static final n:[I


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "audio/mpeg-L1"

    const-string v1, "audio/mpeg-L2"

    const-string v2, "audio/mpeg"

    .line 40
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/m;->h:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 42
    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/m;->i:[I

    const/16 v0, 0xe

    new-array v1, v0, [I

    .line 43
    fill-array-data v1, :array_1

    sput-object v1, Landroidx/media2/exoplayer/external/extractor/m;->j:[I

    new-array v1, v0, [I

    .line 47
    fill-array-data v1, :array_2

    sput-object v1, Landroidx/media2/exoplayer/external/extractor/m;->k:[I

    new-array v1, v0, [I

    .line 51
    fill-array-data v1, :array_3

    sput-object v1, Landroidx/media2/exoplayer/external/extractor/m;->l:[I

    new-array v1, v0, [I

    .line 55
    fill-array-data v1, :array_4

    sput-object v1, Landroidx/media2/exoplayer/external/extractor/m;->m:[I

    new-array v0, v0, [I

    .line 59
    fill-array-data v0, :array_5

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/m;->n:[I

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

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 7

    const/high16 v0, -0x200000

    and-int v1, p0, v0

    const/4 v2, -0x1

    if-eq v1, v0, :cond_0

    return v2

    :cond_0
    ushr-int/lit8 v0, p0, 0x13

    const/4 v1, 0x3

    and-int/2addr v0, v1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    return v2

    :cond_1
    ushr-int/lit8 v4, p0, 0x11

    and-int/2addr v4, v1

    if-nez v4, :cond_2

    return v2

    :cond_2
    ushr-int/lit8 v5, p0, 0xc

    const/16 v6, 0xf

    and-int/2addr v5, v6

    if-eqz v5, :cond_d

    if-ne v5, v6, :cond_3

    goto :goto_3

    :cond_3
    ushr-int/lit8 v6, p0, 0xa

    and-int/2addr v6, v1

    if-ne v6, v1, :cond_4

    return v2

    .line 94
    :cond_4
    sget-object v2, Landroidx/media2/exoplayer/external/extractor/m;->i:[I

    aget v2, v2, v6

    const/4 v6, 0x2

    if-ne v0, v6, :cond_5

    .line 97
    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_5
    if-nez v0, :cond_6

    .line 100
    div-int/lit8 v2, v2, 0x4

    :cond_6
    :goto_0
    ushr-int/lit8 p0, p0, 0x9

    and-int/2addr p0, v3

    if-ne v4, v1, :cond_8

    if-ne v0, v1, :cond_7

    .line 107
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/m;->j:[I

    sub-int/2addr v5, v3

    aget v0, v0, v5

    goto :goto_1

    :cond_7
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/m;->k:[I

    sub-int/2addr v5, v3

    aget v0, v0, v5

    :goto_1
    mul-int/lit8 v0, v0, 0xc

    .line 108
    div-int/2addr v0, v2

    add-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x4

    return v0

    :cond_8
    if-ne v0, v1, :cond_a

    if-ne v4, v6, :cond_9

    .line 112
    sget-object v6, Landroidx/media2/exoplayer/external/extractor/m;->l:[I

    sub-int/2addr v5, v3

    aget v5, v6, v5

    goto :goto_2

    :cond_9
    sget-object v6, Landroidx/media2/exoplayer/external/extractor/m;->m:[I

    sub-int/2addr v5, v3

    aget v5, v6, v5

    goto :goto_2

    .line 115
    :cond_a
    sget-object v6, Landroidx/media2/exoplayer/external/extractor/m;->n:[I

    sub-int/2addr v5, v3

    aget v5, v6, v5

    :goto_2
    const/16 v6, 0x90

    if-ne v0, v1, :cond_b

    mul-int/lit16 v5, v5, 0x90

    .line 121
    div-int/2addr v5, v2

    add-int/2addr v5, p0

    return v5

    :cond_b
    if-ne v4, v3, :cond_c

    const/16 v6, 0x48

    :cond_c
    mul-int v6, v6, v5

    .line 124
    div-int/2addr v6, v2

    add-int/2addr v6, p0

    return v6

    :cond_d
    :goto_3
    return v2
.end method

.method public static a(ILandroidx/media2/exoplayer/external/extractor/m;)Z
    .locals 11

    const/high16 v0, -0x200000

    and-int v1, p0, v0

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    return v2

    :cond_0
    ushr-int/lit8 v0, p0, 0x13

    const/4 v1, 0x3

    and-int/2addr v0, v1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    return v2

    :cond_1
    ushr-int/lit8 v4, p0, 0x11

    and-int/2addr v4, v1

    if-nez v4, :cond_2

    return v2

    :cond_2
    ushr-int/lit8 v5, p0, 0xc

    const/16 v6, 0xf

    and-int/2addr v5, v6

    if-eqz v5, :cond_e

    if-ne v5, v6, :cond_3

    goto/16 :goto_5

    :cond_3
    ushr-int/lit8 v6, p0, 0xa

    and-int/2addr v6, v1

    if-ne v6, v1, :cond_4

    return v2

    .line 162
    :cond_4
    sget-object v2, Landroidx/media2/exoplayer/external/extractor/m;->i:[I

    aget v2, v2, v6

    const/4 v6, 0x2

    if-ne v0, v6, :cond_5

    .line 165
    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_5
    if-nez v0, :cond_6

    .line 168
    div-int/lit8 v2, v2, 0x4

    :cond_6
    :goto_0
    ushr-int/lit8 v7, p0, 0x9

    and-int/2addr v7, v3

    if-ne v4, v1, :cond_8

    if-ne v0, v1, :cond_7

    .line 177
    sget-object v8, Landroidx/media2/exoplayer/external/extractor/m;->j:[I

    sub-int/2addr v5, v3

    aget v5, v8, v5

    goto :goto_1

    :cond_7
    sget-object v8, Landroidx/media2/exoplayer/external/extractor/m;->k:[I

    sub-int/2addr v5, v3

    aget v5, v8, v5

    :goto_1
    mul-int/lit8 v8, v5, 0xc

    .line 178
    div-int/2addr v8, v2

    add-int/2addr v8, v7

    mul-int/lit8 v8, v8, 0x4

    const/16 v7, 0x180

    goto :goto_4

    :cond_8
    const/16 v8, 0x480

    if-ne v0, v1, :cond_a

    if-ne v4, v6, :cond_9

    .line 184
    sget-object v9, Landroidx/media2/exoplayer/external/extractor/m;->l:[I

    sub-int/2addr v5, v3

    aget v5, v9, v5

    goto :goto_2

    :cond_9
    sget-object v9, Landroidx/media2/exoplayer/external/extractor/m;->m:[I

    sub-int/2addr v5, v3

    aget v5, v9, v5

    goto :goto_2

    .line 189
    :cond_a
    sget-object v9, Landroidx/media2/exoplayer/external/extractor/m;->n:[I

    sub-int/2addr v5, v3

    aget v5, v9, v5

    if-ne v4, v3, :cond_b

    const/16 v8, 0x240

    :cond_b
    if-ne v4, v3, :cond_c

    const/16 v9, 0x48

    goto :goto_3

    :cond_c
    :goto_2
    const/16 v9, 0x90

    :goto_3
    mul-int v9, v9, v5

    .line 191
    div-int/2addr v9, v2

    add-int/2addr v7, v9

    move v10, v8

    move v8, v7

    move v7, v10

    .line 195
    :goto_4
    sget-object v9, Landroidx/media2/exoplayer/external/extractor/m;->h:[Ljava/lang/String;

    rsub-int/lit8 v4, v4, 0x3

    aget-object v4, v9, v4

    shr-int/lit8 p0, p0, 0x6

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_d

    const/4 v6, 0x1

    .line 1224
    :cond_d
    iput v0, p1, Landroidx/media2/exoplayer/external/extractor/m;->a:I

    .line 1225
    iput-object v4, p1, Landroidx/media2/exoplayer/external/extractor/m;->b:Ljava/lang/String;

    .line 1226
    iput v8, p1, Landroidx/media2/exoplayer/external/extractor/m;->c:I

    .line 1227
    iput v2, p1, Landroidx/media2/exoplayer/external/extractor/m;->d:I

    .line 1228
    iput v6, p1, Landroidx/media2/exoplayer/external/extractor/m;->e:I

    .line 1229
    iput v5, p1, Landroidx/media2/exoplayer/external/extractor/m;->f:I

    .line 1230
    iput v7, p1, Landroidx/media2/exoplayer/external/extractor/m;->g:I

    return v3

    :cond_e
    :goto_5
    return v2
.end method
