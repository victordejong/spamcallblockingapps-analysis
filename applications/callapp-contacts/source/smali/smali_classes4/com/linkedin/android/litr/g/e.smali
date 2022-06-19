.class public Lcom/linkedin/android/litr/g/e;
.super Lcom/linkedin/android/litr/g/c;
.source "SourceFile"


# static fields
.field private static final q:Ljava/lang/String; = "e"


# instance fields
.field a:I

.field b:I

.field c:I

.field p:Lcom/linkedin/android/litr/e/b;

.field private r:Landroid/media/MediaFormat;

.field private s:Landroid/media/MediaFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/linkedin/android/litr/d/d;ILcom/linkedin/android/litr/d/e;ILandroid/media/MediaFormat;Lcom/linkedin/android/litr/e/d;Lcom/linkedin/android/litr/b/a;Lcom/linkedin/android/litr/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/linkedin/android/litr/exception/TrackTranscoderException;
        }
    .end annotation

    .line 51
    invoke-direct/range {p0 .. p8}, Lcom/linkedin/android/litr/g/c;-><init>(Lcom/linkedin/android/litr/d/d;ILcom/linkedin/android/litr/d/e;ILandroid/media/MediaFormat;Lcom/linkedin/android/litr/e/d;Lcom/linkedin/android/litr/b/a;Lcom/linkedin/android/litr/b/b;)V

    const/4 p1, 0x2

    .line 53
    iput p1, p0, Lcom/linkedin/android/litr/g/e;->a:I

    .line 54
    iput p1, p0, Lcom/linkedin/android/litr/g/e;->b:I

    .line 55
    iput p1, p0, Lcom/linkedin/android/litr/g/e;->c:I

    .line 57
    iput-object p5, p0, Lcom/linkedin/android/litr/g/e;->s:Landroid/media/MediaFormat;

    .line 59
    instance-of p1, p6, Lcom/linkedin/android/litr/e/b;

    if-eqz p1, :cond_2

    .line 62
    check-cast p6, Lcom/linkedin/android/litr/e/b;

    iput-object p6, p0, Lcom/linkedin/android/litr/g/e;->p:Lcom/linkedin/android/litr/e/b;

    .line 1068
    iget-object p1, p0, Lcom/linkedin/android/litr/g/e;->d:Lcom/linkedin/android/litr/d/d;

    iget p2, p0, Lcom/linkedin/android/litr/g/e;->j:I

    invoke-interface {p1, p2}, Lcom/linkedin/android/litr/d/d;->a(I)Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/linkedin/android/litr/g/e;->r:Landroid/media/MediaFormat;

    const-string p2, "frame-rate"

    .line 1069
    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1070
    iget-object p1, p0, Lcom/linkedin/android/litr/g/e;->r:Landroid/media/MediaFormat;

    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    .line 1071
    iget-object p3, p0, Lcom/linkedin/android/litr/g/e;->s:Landroid/media/MediaFormat;

    invoke-virtual {p3, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1074
    :cond_0
    iget-object p1, p0, Lcom/linkedin/android/litr/g/e;->h:Lcom/linkedin/android/litr/b/b;

    iget-object p2, p0, Lcom/linkedin/android/litr/g/e;->m:Landroid/media/MediaFormat;

    invoke-interface {p1, p2}, Lcom/linkedin/android/litr/b/b;->a(Landroid/media/MediaFormat;)V

    .line 1075
    iget-object p1, p0, Lcom/linkedin/android/litr/g/e;->p:Lcom/linkedin/android/litr/e/b;

    iget-object p2, p0, Lcom/linkedin/android/litr/g/e;->h:Lcom/linkedin/android/litr/b/b;

    invoke-interface {p2}, Lcom/linkedin/android/litr/b/b;->a()Landroid/view/Surface;

    move-result-object p2

    iget-object p3, p0, Lcom/linkedin/android/litr/g/e;->r:Landroid/media/MediaFormat;

    iget-object p4, p0, Lcom/linkedin/android/litr/g/e;->s:Landroid/media/MediaFormat;

    invoke-virtual {p1, p2, p3, p4}, Lcom/linkedin/android/litr/e/b;->a(Landroid/view/Surface;Landroid/media/MediaFormat;Landroid/media/MediaFormat;)V

    .line 1076
    iget-object p1, p0, Lcom/linkedin/android/litr/g/e;->g:Lcom/linkedin/android/litr/b/a;

    iget-object p2, p0, Lcom/linkedin/android/litr/g/e;->r:Landroid/media/MediaFormat;

    iget-object p3, p0, Lcom/linkedin/android/litr/g/e;->p:Lcom/linkedin/android/litr/e/b;

    .line 1123
    iget-object p4, p3, Lcom/linkedin/android/litr/e/b;->b:Lcom/linkedin/android/litr/e/e;

    if-eqz p4, :cond_1

    .line 1124
    iget-object p3, p3, Lcom/linkedin/android/litr/e/b;->b:Lcom/linkedin/android/litr/e/e;

    .line 2082
    iget-object p3, p3, Lcom/linkedin/android/litr/e/e;->b:Landroid/view/Surface;

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 1076
    :goto_0
    invoke-interface {p1, p2, p3}, Lcom/linkedin/android/litr/b/a;->a(Landroid/media/MediaFormat;Landroid/view/Surface;)V

    return-void

    .line 60
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Cannot use non-OpenGL video renderer in "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class p3, Lcom/linkedin/android/litr/g/e;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/linkedin/android/litr/exception/TrackTranscoderException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/linkedin/android/litr/g/e;->d:Lcom/linkedin/android/litr/d/d;

    iget v1, p0, Lcom/linkedin/android/litr/g/e;->j:I

    invoke-interface {v0, v1}, Lcom/linkedin/android/litr/d/d;->b(I)V

    .line 82
    iget-object v0, p0, Lcom/linkedin/android/litr/g/e;->h:Lcom/linkedin/android/litr/b/b;

    invoke-interface {v0}, Lcom/linkedin/android/litr/b/b;->b()V

    .line 83
    iget-object v0, p0, Lcom/linkedin/android/litr/g/e;->g:Lcom/linkedin/android/litr/b/a;

    invoke-interface {v0}, Lcom/linkedin/android/litr/b/a;->a()V

    return-void
.end method

.method public final b()I
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/linkedin/android/litr/exception/TrackTranscoderException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 99
    iget-object v1, v0, Lcom/linkedin/android/litr/g/e;->h:Lcom/linkedin/android/litr/b/b;

    invoke-interface {v1}, Lcom/linkedin/android/litr/b/b;->c()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lcom/linkedin/android/litr/g/e;->g:Lcom/linkedin/android/litr/b/a;

    invoke-interface {v1}, Lcom/linkedin/android/litr/b/a;->b()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_9

    .line 106
    :cond_0
    iget v1, v0, Lcom/linkedin/android/litr/g/e;->a:I

    const-string v2, "Unhandled value "

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eq v1, v5, :cond_8

    .line 4136
    iget-object v1, v0, Lcom/linkedin/android/litr/g/e;->d:Lcom/linkedin/android/litr/d/d;

    invoke-interface {v1}, Lcom/linkedin/android/litr/d/d;->b()I

    move-result v1

    .line 4137
    iget v6, v0, Lcom/linkedin/android/litr/g/e;->j:I

    if-eq v1, v6, :cond_1

    if-ne v1, v3, :cond_7

    .line 4138
    :cond_1
    iget-object v1, v0, Lcom/linkedin/android/litr/g/e;->g:Lcom/linkedin/android/litr/b/a;

    invoke-interface {v1}, Lcom/linkedin/android/litr/b/a;->c()I

    move-result v1

    if-ltz v1, :cond_6

    .line 4140
    iget-object v6, v0, Lcom/linkedin/android/litr/g/e;->g:Lcom/linkedin/android/litr/b/a;

    invoke-interface {v6, v1}, Lcom/linkedin/android/litr/b/a;->a(I)Lcom/linkedin/android/litr/b/c;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 4144
    iget-object v6, v0, Lcom/linkedin/android/litr/g/e;->d:Lcom/linkedin/android/litr/d/d;

    iget-object v7, v1, Lcom/linkedin/android/litr/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-interface {v6, v7}, Lcom/linkedin/android/litr/d/d;->a(Ljava/nio/ByteBuffer;)I

    move-result v10

    .line 4145
    iget-object v6, v0, Lcom/linkedin/android/litr/g/e;->d:Lcom/linkedin/android/litr/d/d;

    invoke-interface {v6}, Lcom/linkedin/android/litr/d/d;->c()J

    move-result-wide v11

    .line 4146
    iget-object v6, v0, Lcom/linkedin/android/litr/g/e;->d:Lcom/linkedin/android/litr/d/d;

    invoke-interface {v6}, Lcom/linkedin/android/litr/d/d;->d()I

    move-result v13

    if-lez v10, :cond_4

    and-int/lit8 v6, v13, 0x4

    if-eqz v6, :cond_2

    goto :goto_0

    .line 4152
    :cond_2
    iget-object v6, v0, Lcom/linkedin/android/litr/g/e;->i:Lcom/linkedin/android/litr/d/c;

    .line 5040
    iget-wide v6, v6, Lcom/linkedin/android/litr/d/c;->b:J

    cmp-long v8, v11, v6

    if-ltz v8, :cond_3

    .line 4153
    iget-object v14, v1, Lcom/linkedin/android/litr/b/c;->c:Landroid/media/MediaCodec$BufferInfo;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, -0x1

    const/16 v19, 0x4

    invoke-virtual/range {v14 .. v19}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 4154
    iget-object v6, v0, Lcom/linkedin/android/litr/g/e;->g:Lcom/linkedin/android/litr/b/a;

    invoke-interface {v6, v1}, Lcom/linkedin/android/litr/b/a;->a(Lcom/linkedin/android/litr/b/c;)V

    .line 4155
    invoke-virtual/range {p0 .. p0}, Lcom/linkedin/android/litr/g/e;->h()V

    goto :goto_1

    .line 4159
    :cond_3
    iget-object v8, v1, Lcom/linkedin/android/litr/b/c;->c:Landroid/media/MediaCodec$BufferInfo;

    const/4 v9, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 4160
    iget-object v6, v0, Lcom/linkedin/android/litr/g/e;->g:Lcom/linkedin/android/litr/b/a;

    invoke-interface {v6, v1}, Lcom/linkedin/android/litr/b/a;->a(Lcom/linkedin/android/litr/b/c;)V

    .line 4161
    iget-object v1, v0, Lcom/linkedin/android/litr/g/e;->d:Lcom/linkedin/android/litr/d/d;

    invoke-interface {v1}, Lcom/linkedin/android/litr/d/d;->e()V

    goto :goto_2

    .line 4148
    :cond_4
    :goto_0
    iget-object v6, v1, Lcom/linkedin/android/litr/b/c;->c:Landroid/media/MediaCodec$BufferInfo;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    const/4 v11, 0x4

    invoke-virtual/range {v6 .. v11}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 4149
    iget-object v6, v0, Lcom/linkedin/android/litr/g/e;->g:Lcom/linkedin/android/litr/b/a;

    invoke-interface {v6, v1}, Lcom/linkedin/android/litr/b/a;->a(Lcom/linkedin/android/litr/b/c;)V

    :goto_1
    const/4 v1, 0x3

    goto :goto_3

    .line 4142
    :cond_5
    new-instance v1, Lcom/linkedin/android/litr/exception/TrackTranscoderException;

    sget-object v2, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;->NO_FRAME_AVAILABLE:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    invoke-direct {v1, v2}, Lcom/linkedin/android/litr/exception/TrackTranscoderException;-><init>(Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;)V

    throw v1

    :cond_6
    if-eq v1, v3, :cond_7

    .line 4170
    sget-object v6, Lcom/linkedin/android/litr/g/e;->q:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " when decoding an input frame"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    const/4 v1, 0x2

    .line 107
    :goto_3
    iput v1, v0, Lcom/linkedin/android/litr/g/e;->a:I

    .line 111
    :cond_8
    iget v1, v0, Lcom/linkedin/android/litr/g/e;->b:I

    const/4 v6, -0x2

    const/4 v7, 0x1

    if-eq v1, v5, :cond_f

    .line 5182
    iget-object v1, v0, Lcom/linkedin/android/litr/g/e;->g:Lcom/linkedin/android/litr/b/a;

    invoke-interface {v1}, Lcom/linkedin/android/litr/b/a;->d()I

    move-result v1

    if-ltz v1, :cond_c

    .line 5184
    iget-object v8, v0, Lcom/linkedin/android/litr/g/e;->g:Lcom/linkedin/android/litr/b/a;

    invoke-interface {v8, v1}, Lcom/linkedin/android/litr/b/a;->b(I)Lcom/linkedin/android/litr/b/c;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 5188
    iget-object v9, v8, Lcom/linkedin/android/litr/b/c;->c:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v9, v9, 0x4

    const/4 v10, 0x0

    if-eqz v9, :cond_9

    .line 5190
    iget-object v8, v0, Lcom/linkedin/android/litr/g/e;->g:Lcom/linkedin/android/litr/b/a;

    invoke-interface {v8, v1, v10}, Lcom/linkedin/android/litr/b/a;->a(IZ)V

    .line 5191
    iget-object v1, v0, Lcom/linkedin/android/litr/g/e;->h:Lcom/linkedin/android/litr/b/b;

    invoke-interface {v1}, Lcom/linkedin/android/litr/b/b;->d()V

    const/4 v1, 0x3

    goto :goto_5

    .line 5194
    :cond_9
    iget-object v9, v8, Lcom/linkedin/android/litr/b/c;->c:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v11, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v9, v0, Lcom/linkedin/android/litr/g/e;->i:Lcom/linkedin/android/litr/d/c;

    .line 6033
    iget-wide v13, v9, Lcom/linkedin/android/litr/d/c;->a:J

    cmp-long v9, v11, v13

    if-ltz v9, :cond_a

    const/4 v10, 0x1

    .line 5195
    :cond_a
    iget-object v9, v0, Lcom/linkedin/android/litr/g/e;->g:Lcom/linkedin/android/litr/b/a;

    invoke-interface {v9, v1, v10}, Lcom/linkedin/android/litr/b/a;->a(IZ)V

    if-eqz v10, :cond_e

    .line 5197
    iget-object v1, v0, Lcom/linkedin/android/litr/g/e;->p:Lcom/linkedin/android/litr/e/b;

    const/4 v9, 0x0

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v8, v8, Lcom/linkedin/android/litr/b/c;->c:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v11, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v8, v0, Lcom/linkedin/android/litr/g/e;->i:Lcom/linkedin/android/litr/d/c;

    .line 7033
    iget-wide v13, v8, Lcom/linkedin/android/litr/d/c;->a:J

    sub-long/2addr v11, v13

    .line 5198
    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    .line 5197
    invoke-virtual {v1, v9, v10, v11}, Lcom/linkedin/android/litr/e/b;->a(Lcom/linkedin/android/litr/b/c;J)V

    goto :goto_4

    .line 5186
    :cond_b
    new-instance v1, Lcom/linkedin/android/litr/exception/TrackTranscoderException;

    sget-object v2, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;->NO_FRAME_AVAILABLE:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    invoke-direct {v1, v2}, Lcom/linkedin/android/litr/exception/TrackTranscoderException;-><init>(Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;)V

    throw v1

    :cond_c
    if-eq v1, v6, :cond_d

    if-eq v1, v3, :cond_e

    .line 5212
    sget-object v8, Lcom/linkedin/android/litr/g/e;->q:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " when receiving decoded input frame"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 5207
    :cond_d
    iget-object v1, v0, Lcom/linkedin/android/litr/g/e;->g:Lcom/linkedin/android/litr/b/a;

    invoke-interface {v1}, Lcom/linkedin/android/litr/b/a;->e()Landroid/media/MediaFormat;

    move-result-object v1

    iput-object v1, v0, Lcom/linkedin/android/litr/g/e;->r:Landroid/media/MediaFormat;

    .line 5209
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "Decoder output format changed: "

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/linkedin/android/litr/g/e;->r:Landroid/media/MediaFormat;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_e
    :goto_4
    const/4 v1, 0x2

    .line 112
    :goto_5
    iput v1, v0, Lcom/linkedin/android/litr/g/e;->b:I

    .line 116
    :cond_f
    iget v1, v0, Lcom/linkedin/android/litr/g/e;->c:I

    if-eq v1, v5, :cond_17

    .line 7223
    iget-object v1, v0, Lcom/linkedin/android/litr/g/e;->h:Lcom/linkedin/android/litr/b/b;

    invoke-interface {v1}, Lcom/linkedin/android/litr/b/b;->e()I

    move-result v1

    if-ltz v1, :cond_13

    .line 7225
    iget-object v2, v0, Lcom/linkedin/android/litr/g/e;->h:Lcom/linkedin/android/litr/b/b;

    invoke-interface {v2, v1}, Lcom/linkedin/android/litr/b/b;->b(I)Lcom/linkedin/android/litr/b/c;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 7230
    iget-object v3, v2, Lcom/linkedin/android/litr/b/c;->c:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_10

    const/high16 v2, 0x3f800000    # 1.0f

    .line 7232
    iput v2, v0, Lcom/linkedin/android/litr/g/e;->o:F

    const/4 v2, 0x3

    goto :goto_6

    .line 7234
    :cond_10
    iget-object v3, v2, Lcom/linkedin/android/litr/b/c;->c:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v3, :cond_11

    iget-object v3, v2, Lcom/linkedin/android/litr/b/c;->c:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v3, v4

    if-nez v3, :cond_11

    .line 7236
    iget-object v3, v0, Lcom/linkedin/android/litr/g/e;->e:Lcom/linkedin/android/litr/d/e;

    iget v6, v0, Lcom/linkedin/android/litr/g/e;->k:I

    iget-object v8, v2, Lcom/linkedin/android/litr/b/c;->b:Ljava/nio/ByteBuffer;

    iget-object v9, v2, Lcom/linkedin/android/litr/b/c;->c:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v3, v6, v8, v9}, Lcom/linkedin/android/litr/d/e;->a(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 7237
    iget-wide v8, v0, Lcom/linkedin/android/litr/g/e;->n:J

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-lez v3, :cond_11

    .line 7238
    iget-object v2, v2, Lcom/linkedin/android/litr/b/c;->c:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    long-to-float v2, v2

    iget-wide v8, v0, Lcom/linkedin/android/litr/g/e;->n:J

    long-to-float v3, v8

    div-float/2addr v2, v3

    iput v2, v0, Lcom/linkedin/android/litr/g/e;->o:F

    :cond_11
    const/4 v2, 0x2

    .line 7242
    :goto_6
    iget-object v3, v0, Lcom/linkedin/android/litr/g/e;->h:Lcom/linkedin/android/litr/b/b;

    invoke-interface {v3, v1}, Lcom/linkedin/android/litr/b/b;->c(I)V

    goto :goto_7

    .line 7227
    :cond_12
    new-instance v1, Lcom/linkedin/android/litr/exception/TrackTranscoderException;

    sget-object v2, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;->NO_FRAME_AVAILABLE:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    invoke-direct {v1, v2}, Lcom/linkedin/android/litr/exception/TrackTranscoderException;-><init>(Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;)V

    throw v1

    :cond_13
    if-eq v1, v6, :cond_15

    if-eq v1, v3, :cond_14

    .line 7261
    sget-object v3, Lcom/linkedin/android/litr/g/e;->q:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " when receiving encoded output frame"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    const/4 v2, 0x2

    goto :goto_7

    .line 7250
    :cond_15
    iget-object v1, v0, Lcom/linkedin/android/litr/g/e;->h:Lcom/linkedin/android/litr/b/b;

    invoke-interface {v1}, Lcom/linkedin/android/litr/b/b;->f()Landroid/media/MediaFormat;

    move-result-object v1

    .line 7251
    iget-boolean v2, v0, Lcom/linkedin/android/litr/g/e;->l:Z

    if-nez v2, :cond_16

    .line 7252
    iput-object v1, v0, Lcom/linkedin/android/litr/g/e;->m:Landroid/media/MediaFormat;

    iput-object v1, v0, Lcom/linkedin/android/litr/g/e;->s:Landroid/media/MediaFormat;

    .line 7253
    iget-object v2, v0, Lcom/linkedin/android/litr/g/e;->e:Lcom/linkedin/android/litr/d/e;

    iget v3, v0, Lcom/linkedin/android/litr/g/e;->k:I

    invoke-interface {v2, v1, v3}, Lcom/linkedin/android/litr/d/e;->a(Landroid/media/MediaFormat;I)I

    move-result v2

    iput v2, v0, Lcom/linkedin/android/litr/g/e;->k:I

    .line 7254
    iput-boolean v7, v0, Lcom/linkedin/android/litr/g/e;->l:Z

    .line 7258
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Encoder output format received "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 117
    :goto_7
    iput v2, v0, Lcom/linkedin/android/litr/g/e;->c:I

    .line 120
    :cond_17
    iget v1, v0, Lcom/linkedin/android/litr/g/e;->c:I

    if-ne v1, v7, :cond_18

    const/4 v4, 0x1

    .line 124
    :cond_18
    iget v2, v0, Lcom/linkedin/android/litr/g/e;->a:I

    if-ne v2, v5, :cond_19

    iget v2, v0, Lcom/linkedin/android/litr/g/e;->b:I

    if-ne v2, v5, :cond_19

    if-ne v1, v5, :cond_19

    goto :goto_8

    :cond_19
    move v5, v4

    :goto_8
    return v5

    :cond_1a
    :goto_9
    const/4 v1, -0x3

    return v1
.end method

.method public final c()V
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/linkedin/android/litr/g/e;->h:Lcom/linkedin/android/litr/b/b;

    invoke-interface {v0}, Lcom/linkedin/android/litr/b/b;->g()V

    .line 89
    iget-object v0, p0, Lcom/linkedin/android/litr/g/e;->h:Lcom/linkedin/android/litr/b/b;

    invoke-interface {v0}, Lcom/linkedin/android/litr/b/b;->h()V

    .line 91
    iget-object v0, p0, Lcom/linkedin/android/litr/g/e;->g:Lcom/linkedin/android/litr/b/a;

    invoke-interface {v0}, Lcom/linkedin/android/litr/b/a;->f()V

    .line 92
    iget-object v0, p0, Lcom/linkedin/android/litr/g/e;->g:Lcom/linkedin/android/litr/b/a;

    invoke-interface {v0}, Lcom/linkedin/android/litr/b/a;->g()V

    .line 94
    iget-object v0, p0, Lcom/linkedin/android/litr/g/e;->p:Lcom/linkedin/android/litr/e/b;

    .line 2139
    iget-object v1, v0, Lcom/linkedin/android/litr/e/b;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/linkedin/android/litr/c/a;

    .line 2140
    invoke-interface {v2}, Lcom/linkedin/android/litr/c/a;->b()V

    goto :goto_0

    .line 2143
    :cond_0
    iget-object v1, v0, Lcom/linkedin/android/litr/e/b;->b:Lcom/linkedin/android/litr/e/e;

    .line 3133
    iget-object v2, v1, Lcom/linkedin/android/litr/e/e;->b:Landroid/view/Surface;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 3134
    iget-object v2, v1, Lcom/linkedin/android/litr/e/e;->b:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 3135
    iput-object v3, v1, Lcom/linkedin/android/litr/e/e;->b:Landroid/view/Surface;

    .line 2144
    :cond_1
    iget-object v0, v0, Lcom/linkedin/android/litr/e/b;->c:Lcom/linkedin/android/litr/e/f;

    .line 4071
    iget-object v1, v0, Lcom/linkedin/android/litr/e/f;->a:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v1, v2, :cond_2

    .line 4072
    iget-object v1, v0, Lcom/linkedin/android/litr/e/f;->a:Landroid/opengl/EGLDisplay;

    iget-object v2, v0, Lcom/linkedin/android/litr/e/f;->c:Landroid/opengl/EGLSurface;

    invoke-static {v1, v2}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 4073
    iget-object v1, v0, Lcom/linkedin/android/litr/e/f;->a:Landroid/opengl/EGLDisplay;

    iget-object v2, v0, Lcom/linkedin/android/litr/e/f;->b:Landroid/opengl/EGLContext;

    invoke-static {v1, v2}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 4074
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 4075
    iget-object v1, v0, Lcom/linkedin/android/litr/e/f;->a:Landroid/opengl/EGLDisplay;

    invoke-static {v1}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 4077
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v1, v0, Lcom/linkedin/android/litr/e/f;->a:Landroid/opengl/EGLDisplay;

    .line 4078
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v1, v0, Lcom/linkedin/android/litr/e/f;->b:Landroid/opengl/EGLContext;

    .line 4079
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v1, v0, Lcom/linkedin/android/litr/e/f;->c:Landroid/opengl/EGLSurface;

    .line 4081
    :cond_2
    iget-object v1, v0, Lcom/linkedin/android/litr/e/f;->d:Landroid/view/Surface;

    if-eqz v1, :cond_3

    .line 4082
    iget-object v1, v0, Lcom/linkedin/android/litr/e/f;->d:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 4083
    iput-object v3, v0, Lcom/linkedin/android/litr/e/f;->d:Landroid/view/Surface;

    :cond_3
    return-void
.end method
