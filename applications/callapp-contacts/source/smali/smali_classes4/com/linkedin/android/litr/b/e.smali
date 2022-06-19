.class public final Lcom/linkedin/android/litr/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linkedin/android/litr/b/b;


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

    .line 38
    invoke-direct {p0, v0}, Lcom/linkedin/android/litr/b/e;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/linkedin/android/litr/b/e;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/linkedin/android/litr/b/e;->d:Z

    .line 35
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/linkedin/android/litr/b/e;->f:Landroid/media/MediaCodec$BufferInfo;

    .line 46
    iput-boolean p1, p0, Lcom/linkedin/android/litr/b/e;->a:Z

    .line 47
    iput-boolean p2, p0, Lcom/linkedin/android/litr/b/e;->b:Z

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/linkedin/android/litr/b/e;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result p1

    return p1
.end method

.method public final a()Landroid/view/Surface;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/linkedin/android/litr/b/e;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lcom/linkedin/android/litr/b/c;
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    .line 99
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 100
    iget-object v1, p0, Lcom/linkedin/android/litr/b/e;->c:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/linkedin/android/litr/b/e;->c:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 103
    aget-object v1, v1, p1

    .line 105
    :goto_0
    new-instance v2, Lcom/linkedin/android/litr/b/c;

    invoke-direct {v2, p1, v1, v0}, Lcom/linkedin/android/litr/b/c;-><init>(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-object v2

    :cond_1
    return-object v0
.end method

.method public final a(Landroid/media/MediaFormat;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/linkedin/android/litr/exception/TrackTranscoderException;
        }
    .end annotation

    const-string v0, "color-format"

    .line 53
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f000789

    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 57
    sget-object v5, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;->ENCODER_NOT_FOUND:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    sget-object v6, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;->ENCODER_FORMAT_NOT_FOUND:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    sget-object v7, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;->ENCODER_CONFIGURATION_ERROR:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    iget-boolean v8, p0, Lcom/linkedin/android/litr/b/e;->a:Z

    iget-boolean v9, p0, Lcom/linkedin/android/litr/b/e;->b:Z

    move-object v2, p1

    invoke-static/range {v2 .. v9}, Lcom/linkedin/android/litr/h/a;->a(Landroid/media/MediaFormat;Landroid/view/Surface;ZLcom/linkedin/android/litr/exception/TrackTranscoderException$a;Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;ZZ)Landroid/media/MediaCodec;

    move-result-object p1

    iput-object p1, p0, Lcom/linkedin/android/litr/b/e;->c:Landroid/media/MediaCodec;

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 66
    :goto_0
    iput-boolean p1, p0, Lcom/linkedin/android/litr/b/e;->d:Z

    return-void
.end method

.method public final a(Lcom/linkedin/android/litr/b/c;)V
    .locals 7

    .line 112
    iget-object v0, p0, Lcom/linkedin/android/litr/b/e;->c:Landroid/media/MediaCodec;

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

    .line 134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/linkedin/android/litr/b/e;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/linkedin/android/litr/b/e;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 138
    aget-object v0, v0, p1

    .line 140
    :goto_0
    new-instance v1, Lcom/linkedin/android/litr/b/c;

    iget-object v2, p0, Lcom/linkedin/android/litr/b/e;->f:Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1, p1, v0, v2}, Lcom/linkedin/android/litr/b/c;-><init>(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/linkedin/android/litr/exception/TrackTranscoderException;
        }
    .end annotation

    .line 1183
    :try_start_0
    iget-boolean v0, p0, Lcom/linkedin/android/litr/b/e;->e:Z

    if-nez v0, :cond_0

    .line 1184
    iget-object v0, p0, Lcom/linkedin/android/litr/b/e;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    const/4 v0, 0x1

    .line 1185
    iput-boolean v0, p0, Lcom/linkedin/android/litr/b/e;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 80
    new-instance v1, Lcom/linkedin/android/litr/exception/TrackTranscoderException;

    sget-object v2, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;->INTERNAL_CODEC_ERROR:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    invoke-direct {v1, v2, v0}, Lcom/linkedin/android/litr/exception/TrackTranscoderException;-><init>(Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final c(I)V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/linkedin/android/litr/b/e;->c:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void
.end method

.method public final c()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/linkedin/android/litr/b/e;->e:Z

    return v0
.end method

.method public final d()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/linkedin/android/litr/b/e;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    return-void
.end method

.method public final e()I
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/linkedin/android/litr/b/e;->c:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/linkedin/android/litr/b/e;->f:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    return v0
.end method

.method public final f()Landroid/media/MediaFormat;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/linkedin/android/litr/b/e;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public final g()V
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/linkedin/android/litr/b/e;->e:Z

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/linkedin/android/litr/b/e;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    const/4 v0, 0x0

    .line 160
    iput-boolean v0, p0, Lcom/linkedin/android/litr/b/e;->e:Z

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 1

    .line 166
    iget-boolean v0, p0, Lcom/linkedin/android/litr/b/e;->d:Z

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/linkedin/android/litr/b/e;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lcom/linkedin/android/litr/b/e;->d:Z

    :cond_0
    return-void
.end method

.method public final i()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/linkedin/android/litr/exception/TrackTranscoderException;
        }
    .end annotation

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/linkedin/android/litr/b/e;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 178
    new-instance v1, Lcom/linkedin/android/litr/exception/TrackTranscoderException;

    sget-object v2, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;->CODEC_IN_RELEASED_STATE:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    invoke-direct {v1, v2, v0}, Lcom/linkedin/android/litr/exception/TrackTranscoderException;-><init>(Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;Ljava/lang/Throwable;)V

    throw v1
.end method
