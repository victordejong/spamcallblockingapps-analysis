.class public final Landroidx/media2/exoplayer/external/audio/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/audio/b$a;
    }
.end annotation


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [I

    .line 78
    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media2/exoplayer/external/audio/b;->a:[I

    return-void

    :array_0
    .array-data 4
        0x7d2
        0x7d0
        0x780
        0x641
        0x640
        0x3e9
        0x3e8
        0x3c0
        0x320
        0x320
        0x1e0
        0x190
        0x190
        0x800
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;)I
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 220
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 221
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 222
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 223
    new-instance p0, Landroidx/media2/exoplayer/external/util/o;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/util/o;-><init>([B)V

    invoke-static {p0}, Landroidx/media2/exoplayer/external/audio/b;->a(Landroidx/media2/exoplayer/external/util/o;)Landroidx/media2/exoplayer/external/audio/b$a;

    move-result-object p0

    iget p0, p0, Landroidx/media2/exoplayer/external/audio/b$a;->e:I

    return p0
.end method

.method public static a([BI)I
    .locals 4

    .line 194
    array-length v0, p0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x2

    .line 198
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    const v2, 0xffff

    const/4 v3, 0x4

    if-ne v0, v2, :cond_1

    .line 201
    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    const/4 v2, 0x5

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    const/4 v2, 0x6

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    or-int/2addr v0, p0

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    const p0, 0xac41

    if-ne p1, p0, :cond_2

    add-int/lit8 v1, v1, 0x2

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public static a(Landroidx/media2/exoplayer/external/util/p;Ljava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;
    .locals 11

    const/4 v0, 0x1

    .line 108
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 109
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result p0

    and-int/lit8 p0, p0, 0x20

    shr-int/lit8 p0, p0, 0x5

    if-ne p0, v0, :cond_0

    const p0, 0xbb80

    const v6, 0xbb80

    goto :goto_0

    :cond_0
    const p0, 0xac44

    const v6, 0xac44

    :goto_0
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-string v1, "audio/ac4"

    move-object v0, p1

    move-object v8, p3

    move-object v10, p2

    .line 110
    invoke-static/range {v0 .. v10}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroidx/media2/exoplayer/external/util/o;)Landroidx/media2/exoplayer/external/audio/b$a;
    .locals 10

    const/16 v0, 0x10

    .line 133
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v1

    .line 135
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v0

    const/4 v2, 0x4

    const v3, 0xffff

    if-ne v0, v3, :cond_0

    const/16 v0, 0x18

    .line 138
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v0

    const/4 v3, 0x7

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    :goto_0
    add-int/2addr v0, v3

    const v3, 0xac41

    if-ne v1, v3, :cond_1

    add-int/lit8 v0, v0, 0x2

    :cond_1
    move v7, v0

    const/4 v0, 0x2

    .line 145
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    const/4 v5, 0x0

    .line 1242
    :goto_1
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v6

    add-int/2addr v5, v6

    .line 1243
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/o;->e()Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    shl-int/2addr v5, v0

    goto :goto_1

    :cond_2
    add-int/2addr v1, v5

    :cond_3
    const/16 v5, 0xa

    .line 149
    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v5

    .line 150
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/o;->e()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 151
    invoke-virtual {p0, v4}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v6

    if-lez v6, :cond_4

    .line 152
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 155
    :cond_4
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/o;->e()Z

    move-result v6

    const v8, 0xbb80

    const v9, 0xac44

    if-eqz v6, :cond_5

    const v6, 0xbb80

    goto :goto_2

    :cond_5
    const v6, 0xac44

    .line 156
    :goto_2
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result p0

    if-ne v6, v9, :cond_6

    const/16 v9, 0xd

    if-ne p0, v9, :cond_6

    .line 159
    sget-object v0, Landroidx/media2/exoplayer/external/audio/b;->a:[I

    aget p0, v0, p0

    move v8, p0

    goto :goto_5

    :cond_6
    if-ne v6, v8, :cond_c

    .line 160
    sget-object v8, Landroidx/media2/exoplayer/external/audio/b;->a:[I

    array-length v9, v8

    if-ge p0, v9, :cond_c

    .line 161
    aget v3, v8, p0

    .line 162
    rem-int/lit8 v5, v5, 0x5

    const/16 v8, 0x8

    const/4 v9, 0x1

    if-eq v5, v9, :cond_9

    const/16 v9, 0xb

    if-eq v5, v0, :cond_8

    if-eq v5, v4, :cond_9

    if-eq v5, v2, :cond_7

    goto :goto_3

    :cond_7
    if-eq p0, v4, :cond_b

    if-eq p0, v8, :cond_b

    if-ne p0, v9, :cond_a

    goto :goto_4

    :cond_8
    if-eq p0, v8, :cond_b

    if-ne p0, v9, :cond_a

    goto :goto_4

    :cond_9
    if-eq p0, v4, :cond_b

    if-ne p0, v8, :cond_a

    goto :goto_4

    :cond_a
    :goto_3
    move v8, v3

    goto :goto_5

    :cond_b
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_c
    const/4 v8, 0x0

    .line 183
    :goto_5
    new-instance p0, Landroidx/media2/exoplayer/external/audio/b$a;

    const/4 v5, 0x2

    const/4 v9, 0x0

    move-object v3, p0

    move v4, v1

    invoke-direct/range {v3 .. v9}, Landroidx/media2/exoplayer/external/audio/b$a;-><init>(IIIIILandroidx/media2/exoplayer/external/audio/b$1;)V

    return-object p0
.end method

.method public static a(ILandroidx/media2/exoplayer/external/util/p;)V
    .locals 3

    const/4 v0, 0x7

    .line 229
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/p;->a(I)V

    .line 230
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/4 v1, 0x0

    const/16 v2, -0x54

    aput-byte v2, v0, v1

    .line 231
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/4 v1, 0x1

    const/16 v2, 0x40

    aput-byte v2, v0, v1

    .line 232
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/4 v1, 0x2

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 233
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    .line 234
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    .line 235
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    .line 236
    iget-object p1, p1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v0, 0x6

    aput-byte p0, p1, v0

    return-void
.end method
