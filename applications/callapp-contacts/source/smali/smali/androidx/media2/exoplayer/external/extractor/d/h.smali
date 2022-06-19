.class final Landroidx/media2/exoplayer/external/extractor/d/h;
.super Landroidx/media2/exoplayer/external/extractor/d/i;
.source "SourceFile"


# static fields
.field private static final a:[B


# instance fields
.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 47
    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/d/h;->a:[B

    return-void

    :array_0
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/d/i;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;I)V"
        }
    .end annotation

    int-to-long v0, p1

    const-wide/32 v2, 0x3b9aca00

    mul-long v0, v0, v2

    const-wide/32 v2, 0xbb80

    .line 98
    div-long/2addr v0, v2

    const/16 p1, 0x8

    .line 99
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 100
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Landroidx/media2/exoplayer/external/util/p;)Z
    .locals 4

    .line 52
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v0

    sget-object v1, Landroidx/media2/exoplayer/external/extractor/d/h;->a:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    return v3

    .line 55
    :cond_0
    array-length v0, v1

    new-array v0, v0, [B

    .line 56
    array-length v2, v1

    invoke-virtual {p0, v0, v3, v2}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    .line 57
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected final a(Z)V
    .locals 0

    .line 62
    invoke-super {p0, p1}, Landroidx/media2/exoplayer/external/extractor/d/i;->a(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/d/h;->d:Z

    :cond_0
    return-void
.end method

.method protected final a(Landroidx/media2/exoplayer/external/util/p;JLandroidx/media2/exoplayer/external/extractor/d/i$a;)Z
    .locals 11

    .line 75
    iget-boolean p2, p0, Landroidx/media2/exoplayer/external/extractor/d/h;->d:Z

    const/4 p3, 0x1

    if-nez p2, :cond_0

    .line 76
    iget-object p2, p1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    .line 2125
    iget p1, p1, Landroidx/media2/exoplayer/external/util/p;->c:I

    .line 76
    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const/16 p2, 0x9

    .line 77
    aget-byte p2, p1, p2

    and-int/lit16 v5, p2, 0xff

    const/16 p2, 0xb

    .line 78
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    const/16 v0, 0xa

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p2, v0

    .line 80
    new-instance v7, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-static {v7, p2}, Landroidx/media2/exoplayer/external/extractor/d/h;->a(Ljava/util/List;I)V

    const/16 p1, 0xf00

    .line 83
    invoke-static {v7, p1}, Landroidx/media2/exoplayer/external/extractor/d/h;->a(Ljava/util/List;I)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const v6, 0xbb80

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v1, "audio/opus"

    .line 85
    invoke-static/range {v0 .. v10}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p1

    iput-object p1, p4, Landroidx/media2/exoplayer/external/extractor/d/i$a;->a:Landroidx/media2/exoplayer/external/Format;

    .line 88
    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/extractor/d/h;->d:Z

    return p3

    .line 90
    :cond_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result p2

    const p4, 0x4f707573

    const/4 v0, 0x0

    if-ne p2, p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 91
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    return p3
.end method

.method protected final b(Landroidx/media2/exoplayer/external/util/p;)J
    .locals 6

    .line 70
    iget-object p1, p1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/4 v0, 0x0

    .line 1110
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_1

    .line 1121
    aget-byte p1, p1, v3

    and-int/lit8 v2, p1, 0x3f

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :cond_1
    :goto_0
    const/4 p1, 0x3

    shr-int/2addr v0, p1

    and-int/lit8 v1, v0, 0x3

    const/16 v4, 0x10

    if-lt v0, v4, :cond_2

    const/16 p1, 0x9c4

    shl-int/2addr p1, v1

    goto :goto_1

    :cond_2
    const/16 v4, 0xc

    const/16 v5, 0x2710

    if-lt v0, v4, :cond_3

    and-int/lit8 p1, v1, 0x1

    shl-int p1, v5, p1

    goto :goto_1

    :cond_3
    if-ne v1, p1, :cond_4

    const p1, 0xea60

    goto :goto_1

    :cond_4
    shl-int p1, v5, v1

    :goto_1
    int-to-long v0, v2

    int-to-long v2, p1

    mul-long v0, v0, v2

    .line 70
    invoke-virtual {p0, v0, v1}, Landroidx/media2/exoplayer/external/extractor/d/h;->b(J)J

    move-result-wide v0

    return-wide v0
.end method
