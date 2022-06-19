.class public final Lcom/linkedin/android/litr/f/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linkedin/android/litr/f/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/media/MediaFormat;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/linkedin/android/litr/f/a$-CC;->$default$a(Lcom/linkedin/android/litr/f/a;Landroid/media/MediaFormat;)I

    move-result p1

    return p1
.end method

.method public final a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Landroid/media/MediaFormat;Landroid/media/MediaFormat;)V
    .locals 9

    .line 38
    invoke-virtual {p0, p3}, Lcom/linkedin/android/litr/f/b;->a(Landroid/media/MediaFormat;)I

    move-result p3

    .line 39
    invoke-virtual {p0, p4}, Lcom/linkedin/android/litr/f/b;->a(Landroid/media/MediaFormat;)I

    move-result v0

    .line 40
    invoke-virtual {p0, p4}, Lcom/linkedin/android/litr/f/b;->b(Landroid/media/MediaFormat;)I

    move-result p4

    if-lt p3, v0, :cond_7

    const/4 v1, 0x1

    if-eq p4, v1, :cond_1

    const/4 v2, 0x2

    if-ne p4, v2, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Illegal use of DownsampleAudioResampler. Channels:"

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    div-int/2addr v2, p4

    int-to-double v3, v2

    int-to-double v5, v0

    int-to-double v7, p3

    div-double/2addr v5, v7

    mul-double v3, v3, v5

    .line 48
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p3, v3

    sub-int/2addr v2, p3

    int-to-float v0, p3

    div-float v3, v0, v0

    int-to-float v4, v2

    div-float v5, v4, v4

    :goto_1
    if-gtz p3, :cond_3

    if-lez v2, :cond_2

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    :goto_2
    const/4 v6, 0x0

    cmpl-float v7, v3, v5

    if-ltz v7, :cond_5

    :goto_3
    if-ge v6, p4, :cond_4

    .line 59
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 p3, p3, -0x1

    int-to-float v3, p3

    div-float/2addr v3, v0

    goto :goto_1

    :cond_5
    :goto_4
    if-ge v6, p4, :cond_6

    .line 66
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v2, v2, -0x1

    int-to-float v5, v2

    div-float/2addr v5, v4

    goto :goto_1

    .line 42
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal use of DownsampleAudioResampler"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic b(Landroid/media/MediaFormat;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/linkedin/android/litr/f/a$-CC;->$default$b(Lcom/linkedin/android/litr/f/a;Landroid/media/MediaFormat;)I

    move-result p1

    return p1
.end method
