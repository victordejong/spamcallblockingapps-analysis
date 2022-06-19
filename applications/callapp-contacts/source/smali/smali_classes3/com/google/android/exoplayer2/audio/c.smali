.class public final Lcom/google/android/exoplayer2/audio/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/c$a;
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

    sput-object v0, Lcom/google/android/exoplayer2/audio/c;->a:[I

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

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;)I
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 216
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 217
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 218
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 219
    new-instance p0, Lcom/google/android/exoplayer2/util/t;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/util/t;-><init>([B)V

    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/c;->a(Lcom/google/android/exoplayer2/util/t;)Lcom/google/android/exoplayer2/audio/c$a;

    move-result-object p0

    iget p0, p0, Lcom/google/android/exoplayer2/audio/c$a;->e:I

    return p0
.end method

.method public static a([BI)I
    .locals 4

    .line 190
    array-length v0, p0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x2

    .line 194
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

    .line 197
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

.method public static a(Lcom/google/android/exoplayer2/util/u;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 1

    const/4 v0, 0x1

    .line 108
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 109
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result p0

    and-int/lit8 p0, p0, 0x20

    shr-int/lit8 p0, p0, 0x5

    if-ne p0, v0, :cond_0

    const p0, 0xbb80

    goto :goto_0

    :cond_0
    const p0, 0xac44

    .line 110
    :goto_0
    new-instance v0, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    .line 1244
    iput-object p1, v0, Lcom/google/android/exoplayer2/Format$a;->a:Ljava/lang/String;

    const-string p1, "audio/ac4"

    .line 1370
    iput-object p1, v0, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    const/4 p1, 0x2

    .line 1517
    iput p1, v0, Lcom/google/android/exoplayer2/Format$a;->x:I

    .line 1528
    iput p0, v0, Lcom/google/android/exoplayer2/Format$a;->y:I

    .line 2403
    iput-object p3, v0, Lcom/google/android/exoplayer2/Format$a;->n:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 3278
    iput-object p2, v0, Lcom/google/android/exoplayer2/Format$a;->c:Ljava/lang/String;

    .line 117
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/google/android/exoplayer2/util/t;)Lcom/google/android/exoplayer2/audio/c$a;
    .locals 10

    const/16 v0, 0x10

    .line 129
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v1

    .line 131
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v0

    const/4 v2, 0x4

    const v3, 0xffff

    if-ne v0, v3, :cond_0

    const/16 v0, 0x18

    .line 134
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/t;->c(I)I

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

    .line 141
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    const/4 v5, 0x0

    .line 4239
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v6

    add-int/2addr v5, v6

    .line 4240
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/t;->e()Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    shl-int/2addr v5, v0

    goto :goto_1

    :cond_2
    add-int/2addr v1, v5

    :cond_3
    const/16 v5, 0xa

    .line 145
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v5

    .line 146
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/t;->e()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 147
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v6

    if-lez v6, :cond_4

    .line 148
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 151
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/t;->e()Z

    move-result v6

    const v8, 0xbb80

    const v9, 0xac44

    if-eqz v6, :cond_5

    const v6, 0xbb80

    goto :goto_2

    :cond_5
    const v6, 0xac44

    .line 152
    :goto_2
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result p0

    if-ne v6, v9, :cond_6

    const/16 v9, 0xd

    if-ne p0, v9, :cond_6

    .line 155
    sget-object v0, Lcom/google/android/exoplayer2/audio/c;->a:[I

    aget p0, v0, p0

    move v8, p0

    goto :goto_5

    :cond_6
    if-ne v6, v8, :cond_c

    .line 156
    sget-object v8, Lcom/google/android/exoplayer2/audio/c;->a:[I

    array-length v9, v8

    if-ge p0, v9, :cond_c

    .line 157
    aget v3, v8, p0

    .line 158
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

    .line 179
    :goto_5
    new-instance p0, Lcom/google/android/exoplayer2/audio/c$a;

    const/4 v5, 0x2

    const/4 v9, 0x0

    move-object v3, p0

    move v4, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer2/audio/c$a;-><init>(IIIIILcom/google/android/exoplayer2/audio/c$1;)V

    return-object p0
.end method

.method public static a(ILcom/google/android/exoplayer2/util/u;)V
    .locals 2

    const/4 v0, 0x7

    .line 225
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/u;->a(I)V

    .line 5169
    iget-object p1, p1, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/4 v0, 0x0

    const/16 v1, -0x54

    .line 227
    aput-byte v1, p1, v0

    const/4 v0, 0x1

    const/16 v1, 0x40

    .line 228
    aput-byte v1, p1, v0

    const/4 v0, 0x2

    const/4 v1, -0x1

    .line 229
    aput-byte v1, p1, v0

    const/4 v0, 0x3

    .line 230
    aput-byte v1, p1, v0

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x4

    .line 231
    aput-byte v0, p1, v1

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x5

    .line 232
    aput-byte v0, p1, v1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v0, 0x6

    .line 233
    aput-byte p0, p1, v0

    return-void
.end method
