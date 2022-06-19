.class public final Lcom/linkedin/android/litr/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linkedin/android/litr/b/a;


# instance fields
.field private final a:Z

.field private final b:Z

.field private c:Landroid/media/MediaCodec;

.field private d:Z

.field private e:Z

.field private final f:Landroid/media/MediaCodec$BufferInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 36
    invoke-direct {p0, v0}, Lcom/linkedin/android/litr/b/d;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/linkedin/android/litr/b/d;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/linkedin/android/litr/b/d;->f:Landroid/media/MediaCodec$BufferInfo;

    .line 44
    iput-boolean p1, p0, Lcom/linkedin/android/litr/b/d;->a:Z

    .line 45
    iput-boolean p2, p0, Lcom/linkedin/android/litr/b/d;->b:Z

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/linkedin/android/litr/b/c;
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    .line 92
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 93
    iget-object v1, p0, Lcom/linkedin/android/litr/b/d;->c:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/linkedin/android/litr/b/d;->c:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 96
    aget-object v1, v1, p1

    .line 99
    :goto_0
    new-instance v2, Lcom/linkedin/android/litr/b/c;

    invoke-direct {v2, p1, v1, v0}, Lcom/linkedin/android/litr/b/c;-><init>(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-object v2

    :cond_1
    return-object v0
.end method

.method public final a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/linkedin/android/litr/exception/TrackTranscoderException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/linkedin/android/litr/b/d;->c:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    .line 68
    iget-boolean v1, p0, Lcom/linkedin/android/litr/b/d;->d:Z

    if-nez v1, :cond_0

    .line 1173
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    const/4 v0, 0x1

    .line 1174
    iput-boolean v0, p0, Lcom/linkedin/android/litr/b/d;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 72
    new-instance v1, Lcom/linkedin/android/litr/exception/TrackTranscoderException;

    sget-object v2, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;->INTERNAL_CODEC_ERROR:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    invoke-direct {v1, v2, v0}, Lcom/linkedin/android/litr/exception/TrackTranscoderException;-><init>(Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return-void

    .line 65
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Codec is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(IZ)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/linkedin/android/litr/b/d;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void
.end method

.method public final a(Landroid/media/MediaFormat;Landroid/view/Surface;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/linkedin/android/litr/exception/TrackTranscoderException;
        }
    .end annotation

    .line 50
    sget-object v3, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;->DECODER_NOT_FOUND:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    sget-object v4, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;->DECODER_FORMAT_NOT_FOUND:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    sget-object v5, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;->DECODER_CONFIGURATION_ERROR:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    iget-boolean v6, p0, Lcom/linkedin/android/litr/b/d;->a:Z

    iget-boolean v7, p0, Lcom/linkedin/android/litr/b/d;->b:Z

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v7}, Lcom/linkedin/android/litr/h/a;->a(Landroid/media/MediaFormat;Landroid/view/Surface;ZLcom/linkedin/android/litr/exception/TrackTranscoderException$a;Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;ZZ)Landroid/media/MediaCodec;

    move-result-object p1

    iput-object p1, p0, Lcom/linkedin/android/litr/b/d;->c:Landroid/media/MediaCodec;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 59
    :goto_0
    iput-boolean p1, p0, Lcom/linkedin/android/litr/b/d;->e:Z

    return-void
.end method

.method public final a(Lcom/linkedin/android/litr/b/c;)V
    .locals 7

    .line 106
    iget-object v0, p0, Lcom/linkedin/android/litr/b/d;->c:Landroid/media/MediaCodec;

    iget v1, p1, Lcom/linkedin/android/litr/b/c;->a:I

    iget-object v2, p1, Lcom/linkedin/android/litr/b/c;->c:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v3, p1, Lcom/linkedin/android/litr/b/c;->c:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v4, p1, Lcom/linkedin/android/litr/b/c;->c:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object p1, p1, Lcom/linkedin/android/litr/b/c;->c:Landroid/media/MediaCodec$BufferInfo;

    iget v6, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return-void
.end method

.method public final b(I)Lcom/linkedin/android/litr/b/c;
    .locals 3

    if-ltz p1, :cond_1

    .line 123
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/linkedin/android/litr/b/d;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/linkedin/android/litr/b/d;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 127
    aget-object v0, v0, p1

    .line 129
    :goto_0
    new-instance v1, Lcom/linkedin/android/litr/b/c;

    iget-object v2, p0, Lcom/linkedin/android/litr/b/d;->f:Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1, p1, v0, v2}, Lcom/linkedin/android/litr/b/c;-><init>(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/linkedin/android/litr/b/d;->d:Z

    return v0
.end method

.method public final c()I
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/linkedin/android/litr/b/d;->c:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/linkedin/android/litr/b/d;->c:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/linkedin/android/litr/b/d;->f:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    return v0
.end method

.method public final e()Landroid/media/MediaFormat;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/linkedin/android/litr/b/d;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 1

    .line 148
    iget-boolean v0, p0, Lcom/linkedin/android/litr/b/d;->d:Z

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/linkedin/android/litr/b/d;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    const/4 v0, 0x0

    .line 150
    iput-boolean v0, p0, Lcom/linkedin/android/litr/b/d;->d:Z

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/linkedin/android/litr/b/d;->e:Z

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/linkedin/android/litr/b/d;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lcom/linkedin/android/litr/b/d;->e:Z

    :cond_0
    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/linkedin/android/litr/exception/TrackTranscoderException;
        }
    .end annotation

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/linkedin/android/litr/b/d;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 168
    new-instance v1, Lcom/linkedin/android/litr/exception/TrackTranscoderException;

    sget-object v2, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;->CODEC_IN_RELEASED_STATE:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    invoke-direct {v1, v2, v0}, Lcom/linkedin/android/litr/exception/TrackTranscoderException;-><init>(Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;Ljava/lang/Throwable;)V

    throw v1
.end method
