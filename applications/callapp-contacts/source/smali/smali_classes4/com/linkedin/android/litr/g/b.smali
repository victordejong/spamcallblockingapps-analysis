.class public Lcom/linkedin/android/litr/g/b;
.super Lcom/linkedin/android/litr/g/c;
.source "SourceFile"


# static fields
.field private static final p:Ljava/lang/String; = "b"


# instance fields
.field a:Ljava/nio/ByteBuffer;

.field b:Landroid/media/MediaCodec$BufferInfo;

.field c:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/linkedin/android/litr/d/d;ILcom/linkedin/android/litr/d/e;I)V
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 42
    invoke-direct/range {v0 .. v8}, Lcom/linkedin/android/litr/g/c;-><init>(Lcom/linkedin/android/litr/d/d;ILcom/linkedin/android/litr/d/e;ILandroid/media/MediaFormat;Lcom/linkedin/android/litr/e/d;Lcom/linkedin/android/litr/b/a;Lcom/linkedin/android/litr/b/b;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/linkedin/android/litr/exception/TrackTranscoderException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/linkedin/android/litr/g/b;->d:Lcom/linkedin/android/litr/d/d;

    iget v1, p0, Lcom/linkedin/android/litr/g/b;->j:I

    invoke-interface {v0, v1}, Lcom/linkedin/android/litr/d/d;->b(I)V

    .line 49
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/linkedin/android/litr/g/b;->b:Landroid/media/MediaCodec$BufferInfo;

    return-void
.end method

.method public final b()I
    .locals 14

    .line 62
    iget v0, p0, Lcom/linkedin/android/litr/g/b;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return v0

    .line 68
    :cond_0
    iget-boolean v0, p0, Lcom/linkedin/android/litr/g/b;->l:Z

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_3

    .line 69
    iget-object v0, p0, Lcom/linkedin/android/litr/g/b;->d:Lcom/linkedin/android/litr/d/d;

    iget v1, p0, Lcom/linkedin/android/litr/g/b;->j:I

    invoke-interface {v0, v1}, Lcom/linkedin/android/litr/d/d;->a(I)Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/linkedin/android/litr/g/b;->m:Landroid/media/MediaFormat;

    .line 70
    iget-wide v0, p0, Lcom/linkedin/android/litr/g/b;->n:J

    cmp-long v5, v0, v2

    if-lez v5, :cond_1

    .line 71
    iget-object v0, p0, Lcom/linkedin/android/litr/g/b;->m:Landroid/media/MediaFormat;

    iget-wide v1, p0, Lcom/linkedin/android/litr/g/b;->n:J

    const-string v3, "durationUs"

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/MediaFormat;->setLong(Ljava/lang/String;J)V

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/linkedin/android/litr/g/b;->e:Lcom/linkedin/android/litr/d/e;

    iget-object v1, p0, Lcom/linkedin/android/litr/g/b;->m:Landroid/media/MediaFormat;

    iget v2, p0, Lcom/linkedin/android/litr/g/b;->k:I

    invoke-interface {v0, v1, v2}, Lcom/linkedin/android/litr/d/e;->a(Landroid/media/MediaFormat;I)I

    move-result v0

    iput v0, p0, Lcom/linkedin/android/litr/g/b;->k:I

    .line 75
    iput-boolean v4, p0, Lcom/linkedin/android/litr/g/b;->l:Z

    .line 77
    iget-object v0, p0, Lcom/linkedin/android/litr/g/b;->m:Landroid/media/MediaFormat;

    const-string v1, "max-input-size"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/linkedin/android/litr/g/b;->m:Landroid/media/MediaFormat;

    .line 78
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    const/high16 v0, 0x100000

    .line 80
    :goto_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/linkedin/android/litr/g/b;->a:Ljava/nio/ByteBuffer;

    .line 82
    iput v4, p0, Lcom/linkedin/android/litr/g/b;->c:I

    return v4

    .line 86
    :cond_3
    iget-object v0, p0, Lcom/linkedin/android/litr/g/b;->d:Lcom/linkedin/android/litr/d/d;

    invoke-interface {v0}, Lcom/linkedin/android/litr/d/d;->b()I

    move-result v0

    const/4 v5, -0x1

    const/4 v6, 0x2

    if-eq v0, v5, :cond_4

    .line 87
    iget v5, p0, Lcom/linkedin/android/litr/g/b;->j:I

    if-eq v0, v5, :cond_4

    .line 88
    iput v6, p0, Lcom/linkedin/android/litr/g/b;->c:I

    return v6

    .line 92
    :cond_4
    iput v6, p0, Lcom/linkedin/android/litr/g/b;->c:I

    .line 94
    iget-object v0, p0, Lcom/linkedin/android/litr/g/b;->d:Lcom/linkedin/android/litr/d/d;

    iget-object v5, p0, Lcom/linkedin/android/litr/g/b;->a:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v5}, Lcom/linkedin/android/litr/d/d;->a(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 95
    iget-object v0, p0, Lcom/linkedin/android/litr/g/b;->d:Lcom/linkedin/android/litr/d/d;

    invoke-interface {v0}, Lcom/linkedin/android/litr/d/d;->c()J

    move-result-wide v5

    .line 96
    iget-object v0, p0, Lcom/linkedin/android/litr/g/b;->d:Lcom/linkedin/android/litr/d/d;

    invoke-interface {v0}, Lcom/linkedin/android/litr/d/d;->d()I

    move-result v0

    const/high16 v7, 0x3f800000    # 1.0f

    if-lez v8, :cond_a

    and-int/lit8 v9, v0, 0x4

    if-eqz v9, :cond_5

    goto :goto_2

    .line 103
    :cond_5
    iget-object v9, p0, Lcom/linkedin/android/litr/g/b;->i:Lcom/linkedin/android/litr/d/c;

    .line 1040
    iget-wide v9, v9, Lcom/linkedin/android/litr/d/c;->b:J

    cmp-long v11, v5, v9

    if-ltz v11, :cond_6

    .line 104
    iget-object v0, p0, Lcom/linkedin/android/litr/g/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 105
    iput v7, p0, Lcom/linkedin/android/litr/g/b;->o:F

    .line 106
    iget-object v8, p0, Lcom/linkedin/android/litr/g/b;->b:Landroid/media/MediaCodec$BufferInfo;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/linkedin/android/litr/g/b;->i:Lcom/linkedin/android/litr/d/c;

    .line 2033
    iget-wide v2, v0, Lcom/linkedin/android/litr/d/c;->a:J

    sub-long v11, v5, v2

    .line 106
    iget-object v0, p0, Lcom/linkedin/android/litr/g/b;->b:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    or-int/lit8 v13, v0, 0x4

    invoke-virtual/range {v8 .. v13}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 107
    iget-object v0, p0, Lcom/linkedin/android/litr/g/b;->e:Lcom/linkedin/android/litr/d/e;

    iget v2, p0, Lcom/linkedin/android/litr/g/b;->k:I

    iget-object v3, p0, Lcom/linkedin/android/litr/g/b;->a:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/linkedin/android/litr/g/b;->b:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v0, v2, v3, v4}, Lcom/linkedin/android/litr/d/e;->a(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 108
    invoke-virtual {p0}, Lcom/linkedin/android/litr/g/b;->h()V

    .line 109
    iput v1, p0, Lcom/linkedin/android/litr/g/b;->c:I

    goto :goto_3

    .line 112
    :cond_6
    iget-object v1, p0, Lcom/linkedin/android/litr/g/b;->i:Lcom/linkedin/android/litr/d/c;

    .line 3033
    iget-wide v9, v1, Lcom/linkedin/android/litr/d/c;->a:J

    cmp-long v1, v5, v9

    if-ltz v1, :cond_9

    const/4 v1, 0x0

    and-int/2addr v0, v4

    if-eqz v0, :cond_7

    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v11, 0x1

    goto :goto_1

    :cond_7
    const/4 v11, 0x0

    .line 121
    :goto_1
    iget-object v0, p0, Lcom/linkedin/android/litr/g/b;->i:Lcom/linkedin/android/litr/d/c;

    .line 4033
    iget-wide v0, v0, Lcom/linkedin/android/litr/d/c;->a:J

    sub-long v9, v5, v0

    .line 122
    iget-wide v0, p0, Lcom/linkedin/android/litr/g/b;->n:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_8

    long-to-float v0, v9

    .line 123
    iget-wide v1, p0, Lcom/linkedin/android/litr/g/b;->n:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/linkedin/android/litr/g/b;->o:F

    .line 125
    :cond_8
    iget-object v6, p0, Lcom/linkedin/android/litr/g/b;->b:Landroid/media/MediaCodec$BufferInfo;

    const/4 v7, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 126
    iget-object v0, p0, Lcom/linkedin/android/litr/g/b;->e:Lcom/linkedin/android/litr/d/e;

    iget v1, p0, Lcom/linkedin/android/litr/g/b;->k:I

    iget-object v2, p0, Lcom/linkedin/android/litr/g/b;->a:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/linkedin/android/litr/g/b;->b:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v0, v1, v2, v3}, Lcom/linkedin/android/litr/d/e;->a(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 128
    :cond_9
    iget-object v0, p0, Lcom/linkedin/android/litr/g/b;->d:Lcom/linkedin/android/litr/d/d;

    invoke-interface {v0}, Lcom/linkedin/android/litr/d/d;->e()V

    goto :goto_3

    .line 99
    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/linkedin/android/litr/g/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 100
    iput v7, p0, Lcom/linkedin/android/litr/g/b;->o:F

    .line 101
    iput v1, p0, Lcom/linkedin/android/litr/g/b;->c:I

    .line 131
    :goto_3
    iget v0, p0, Lcom/linkedin/android/litr/g/b;->c:I

    return v0
.end method

.method public final c()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/linkedin/android/litr/g/b;->a:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/linkedin/android/litr/g/b;->a:Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "passthrough"

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    const-string v0, "passthrough"

    return-object v0
.end method
