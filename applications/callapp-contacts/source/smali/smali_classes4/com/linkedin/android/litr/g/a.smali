.class public Lcom/linkedin/android/litr/g/a;
.super Lcom/linkedin/android/litr/g/c;
.source "SourceFile"


# static fields
.field private static final p:Ljava/lang/String; = "a"


# instance fields
.field a:I

.field b:I

.field c:I

.field private q:Landroid/media/MediaFormat;


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

    .line 44
    invoke-direct/range {p0 .. p8}, Lcom/linkedin/android/litr/g/c;-><init>(Lcom/linkedin/android/litr/d/d;ILcom/linkedin/android/litr/d/e;ILandroid/media/MediaFormat;Lcom/linkedin/android/litr/e/d;Lcom/linkedin/android/litr/b/a;Lcom/linkedin/android/litr/b/b;)V

    const/4 p1, 0x2

    .line 46
    iput p1, p0, Lcom/linkedin/android/litr/g/a;->a:I

    .line 47
    iput p1, p0, Lcom/linkedin/android/litr/g/a;->b:I

    .line 48
    iput p1, p0, Lcom/linkedin/android/litr/g/a;->c:I

    .line 1056
    iget-object p1, p0, Lcom/linkedin/android/litr/g/a;->d:Lcom/linkedin/android/litr/d/d;

    iget p2, p0, Lcom/linkedin/android/litr/g/a;->j:I

    invoke-interface {p1, p2}, Lcom/linkedin/android/litr/d/d;->a(I)Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/linkedin/android/litr/g/a;->q:Landroid/media/MediaFormat;

    .line 1058
    iget-object p1, p0, Lcom/linkedin/android/litr/g/a;->h:Lcom/linkedin/android/litr/b/b;

    iget-object p2, p0, Lcom/linkedin/android/litr/g/a;->m:Landroid/media/MediaFormat;

    invoke-interface {p1, p2}, Lcom/linkedin/android/litr/b/b;->a(Landroid/media/MediaFormat;)V

    .line 1059
    iget-object p1, p0, Lcom/linkedin/android/litr/g/a;->f:Lcom/linkedin/android/litr/e/d;

    iget-object p2, p0, Lcom/linkedin/android/litr/g/a;->q:Landroid/media/MediaFormat;

    iget-object p3, p0, Lcom/linkedin/android/litr/g/a;->m:Landroid/media/MediaFormat;

    const/4 p4, 0x0

    invoke-interface {p1, p4, p2, p3}, Lcom/linkedin/android/litr/e/d;->a(Landroid/view/Surface;Landroid/media/MediaFormat;Landroid/media/MediaFormat;)V

    .line 1060
    iget-object p1, p0, Lcom/linkedin/android/litr/g/a;->g:Lcom/linkedin/android/litr/b/a;

    iget-object p2, p0, Lcom/linkedin/android/litr/g/a;->q:Landroid/media/MediaFormat;

    invoke-interface {p1, p2, p4}, Lcom/linkedin/android/litr/b/a;->a(Landroid/media/MediaFormat;Landroid/view/Surface;)V

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

    .line 65
    iget-object v0, p0, Lcom/linkedin/android/litr/g/a;->d:Lcom/linkedin/android/litr/d/d;

    iget v1, p0, Lcom/linkedin/android/litr/g/a;->j:I

    invoke-interface {v0, v1}, Lcom/linkedin/android/litr/d/d;->b(I)V

    .line 67
    iget-object v0, p0, Lcom/linkedin/android/litr/g/a;->h:Lcom/linkedin/android/litr/b/b;

    invoke-interface {v0}, Lcom/linkedin/android/litr/b/b;->b()V

    .line 68
    iget-object v0, p0, Lcom/linkedin/android/litr/g/a;->g:Lcom/linkedin/android/litr/b/a;

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

    .line 73
    iget-object v1, v0, Lcom/linkedin/android/litr/g/a;->h:Lcom/linkedin/android/litr/b/b;

    invoke-interface {v1}, Lcom/linkedin/android/litr/b/b;->c()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lcom/linkedin/android/litr/g/a;->g:Lcom/linkedin/android/litr/b/a;

    invoke-interface {v1}, Lcom/linkedin/android/litr/b/a;->b()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_9

    .line 80
    :cond_0
    iget v1, v0, Lcom/linkedin/android/litr/g/a;->a:I

    const-string v2, "Unhandled value "

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eq v1, v5, :cond_8

    .line 1119
    iget-object v1, v0, Lcom/linkedin/android/litr/g/a;->d:Lcom/linkedin/android/litr/d/d;

    invoke-interface {v1}, Lcom/linkedin/android/litr/d/d;->b()I

    move-result v1

    .line 1120
    iget v6, v0, Lcom/linkedin/android/litr/g/a;->j:I

    if-eq v1, v6, :cond_1

    if-ne v1, v3, :cond_7

    .line 1121
    :cond_1
    iget-object v1, v0, Lcom/linkedin/android/litr/g/a;->g:Lcom/linkedin/android/litr/b/a;

    invoke-interface {v1}, Lcom/linkedin/android/litr/b/a;->c()I

    move-result v1

    if-ltz v1, :cond_6

    .line 1123
    iget-object v6, v0, Lcom/linkedin/android/litr/g/a;->g:Lcom/linkedin/android/litr/b/a;

    invoke-interface {v6, v1}, Lcom/linkedin/android/litr/b/a;->a(I)Lcom/linkedin/android/litr/b/c;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1127
    iget-object v6, v0, Lcom/linkedin/android/litr/g/a;->d:Lcom/linkedin/android/litr/d/d;

    iget-object v7, v1, Lcom/linkedin/android/litr/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-interface {v6, v7}, Lcom/linkedin/android/litr/d/d;->a(Ljava/nio/ByteBuffer;)I

    move-result v10

    .line 1128
    iget-object v6, v0, Lcom/linkedin/android/litr/g/a;->d:Lcom/linkedin/android/litr/d/d;

    invoke-interface {v6}, Lcom/linkedin/android/litr/d/d;->c()J

    move-result-wide v11

    .line 1129
    iget-object v6, v0, Lcom/linkedin/android/litr/g/a;->d:Lcom/linkedin/android/litr/d/d;

    invoke-interface {v6}, Lcom/linkedin/android/litr/d/d;->d()I

    move-result v13

    if-lez v10, :cond_4

    and-int/lit8 v6, v13, 0x4

    if-eqz v6, :cond_2

    goto :goto_0

    .line 1135
    :cond_2
    iget-object v6, v0, Lcom/linkedin/android/litr/g/a;->i:Lcom/linkedin/android/litr/d/c;

    .line 2040
    iget-wide v6, v6, Lcom/linkedin/android/litr/d/c;->b:J

    cmp-long v8, v11, v6

    if-ltz v8, :cond_3

    .line 1136
    iget-object v14, v1, Lcom/linkedin/android/litr/b/c;->c:Landroid/media/MediaCodec$BufferInfo;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, -0x1

    const/16 v19, 0x4

    invoke-virtual/range {v14 .. v19}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 1137
    iget-object v6, v0, Lcom/linkedin/android/litr/g/a;->g:Lcom/linkedin/android/litr/b/a;

    invoke-interface {v6, v1}, Lcom/linkedin/android/litr/b/a;->a(Lcom/linkedin/android/litr/b/c;)V

    .line 1138
    invoke-virtual/range {p0 .. p0}, Lcom/linkedin/android/litr/g/a;->h()V

    goto :goto_1

    .line 1142
    :cond_3
    iget-object v8, v1, Lcom/linkedin/android/litr/b/c;->c:Landroid/media/MediaCodec$BufferInfo;

    const/4 v9, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 1143
    iget-object v6, v0, Lcom/linkedin/android/litr/g/a;->g:Lcom/linkedin/android/litr/b/a;

    invoke-interface {v6, v1}, Lcom/linkedin/android/litr/b/a;->a(Lcom/linkedin/android/litr/b/c;)V

    .line 1144
    iget-object v1, v0, Lcom/linkedin/android/litr/g/a;->d:Lcom/linkedin/android/litr/d/d;

    invoke-interface {v1}, Lcom/linkedin/android/litr/d/d;->e()V

    goto :goto_2

    .line 1131
    :cond_4
    :goto_0
    iget-object v6, v1, Lcom/linkedin/android/litr/b/c;->c:Landroid/media/MediaCodec$BufferInfo;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    const/4 v11, 0x4

    invoke-virtual/range {v6 .. v11}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 1132
    iget-object v6, v0, Lcom/linkedin/android/litr/g/a;->g:Lcom/linkedin/android/litr/b/a;

    invoke-interface {v6, v1}, Lcom/linkedin/android/litr/b/a;->a(Lcom/linkedin/android/litr/b/c;)V

    :goto_1
    const/4 v1, 0x3

    goto :goto_3

    .line 1125
    :cond_5
    new-instance v1, Lcom/linkedin/android/litr/exception/TrackTranscoderException;

    sget-object v2, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;->NO_FRAME_AVAILABLE:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    invoke-direct {v1, v2}, Lcom/linkedin/android/litr/exception/TrackTranscoderException;-><init>(Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;)V

    throw v1

    :cond_6
    if-eq v1, v3, :cond_7

    .line 1153
    sget-object v6, Lcom/linkedin/android/litr/g/a;->p:Ljava/lang/String;

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

    .line 81
    :goto_3
    iput v1, v0, Lcom/linkedin/android/litr/g/a;->a:I

    .line 85
    :cond_8
    iget v1, v0, Lcom/linkedin/android/litr/g/a;->b:I

    const/4 v6, -0x2

    if-eq v1, v5, :cond_f

    .line 2165
    iget-object v1, v0, Lcom/linkedin/android/litr/g/a;->g:Lcom/linkedin/android/litr/b/a;

    invoke-interface {v1}, Lcom/linkedin/android/litr/b/a;->d()I

    move-result v1

    if-ltz v1, :cond_c

    .line 2167
    iget-object v7, v0, Lcom/linkedin/android/litr/g/a;->g:Lcom/linkedin/android/litr/b/a;

    invoke-interface {v7, v1}, Lcom/linkedin/android/litr/b/a;->b(I)Lcom/linkedin/android/litr/b/c;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 2172
    iget-object v8, v7, Lcom/linkedin/android/litr/b/c;->c:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v8, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v10, v0, Lcom/linkedin/android/litr/g/a;->i:Lcom/linkedin/android/litr/d/c;

    .line 3033
    iget-wide v10, v10, Lcom/linkedin/android/litr/d/c;->a:J

    cmp-long v12, v8, v10

    if-gez v12, :cond_9

    .line 2172
    iget-object v8, v7, Lcom/linkedin/android/litr/b/c;->c:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_a

    .line 2174
    :cond_9
    iget-object v8, v0, Lcom/linkedin/android/litr/g/a;->f:Lcom/linkedin/android/litr/e/d;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v10, v7, Lcom/linkedin/android/litr/b/c;->c:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v10, v10, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v12, v0, Lcom/linkedin/android/litr/g/a;->i:Lcom/linkedin/android/litr/d/c;

    .line 4033
    iget-wide v12, v12, Lcom/linkedin/android/litr/d/c;->a:J

    sub-long/2addr v10, v12

    .line 2175
    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v9

    .line 2174
    invoke-interface {v8, v7, v9, v10}, Lcom/linkedin/android/litr/e/d;->a(Lcom/linkedin/android/litr/b/c;J)V

    .line 2177
    :cond_a
    iget-object v8, v0, Lcom/linkedin/android/litr/g/a;->g:Lcom/linkedin/android/litr/b/a;

    const/4 v9, 0x0

    invoke-interface {v8, v1, v9}, Lcom/linkedin/android/litr/b/a;->a(IZ)V

    .line 2179
    iget-object v1, v7, Lcom/linkedin/android/litr/b/c;->c:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_e

    const/4 v1, 0x3

    goto :goto_5

    .line 2169
    :cond_b
    new-instance v1, Lcom/linkedin/android/litr/exception/TrackTranscoderException;

    sget-object v2, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;->NO_FRAME_AVAILABLE:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    invoke-direct {v1, v2}, Lcom/linkedin/android/litr/exception/TrackTranscoderException;-><init>(Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;)V

    throw v1

    :cond_c
    if-eq v1, v6, :cond_d

    if-eq v1, v3, :cond_e

    .line 2194
    sget-object v7, Lcom/linkedin/android/litr/g/a;->p:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " when receiving decoded input frame"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2189
    :cond_d
    iget-object v1, v0, Lcom/linkedin/android/litr/g/a;->g:Lcom/linkedin/android/litr/b/a;

    invoke-interface {v1}, Lcom/linkedin/android/litr/b/a;->e()Landroid/media/MediaFormat;

    move-result-object v1

    iput-object v1, v0, Lcom/linkedin/android/litr/g/a;->q:Landroid/media/MediaFormat;

    .line 2190
    iget-object v1, v0, Lcom/linkedin/android/litr/g/a;->f:Lcom/linkedin/android/litr/e/d;

    iget-object v7, v0, Lcom/linkedin/android/litr/g/a;->q:Landroid/media/MediaFormat;

    iget-object v8, v0, Lcom/linkedin/android/litr/g/a;->m:Landroid/media/MediaFormat;

    invoke-interface {v1, v7, v8}, Lcom/linkedin/android/litr/e/d;->a(Landroid/media/MediaFormat;Landroid/media/MediaFormat;)V

    .line 2191
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "Decoder output format changed: "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/linkedin/android/litr/g/a;->q:Landroid/media/MediaFormat;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_e
    :goto_4
    const/4 v1, 0x2

    .line 86
    :goto_5
    iput v1, v0, Lcom/linkedin/android/litr/g/a;->b:I

    .line 90
    :cond_f
    iget v1, v0, Lcom/linkedin/android/litr/g/a;->c:I

    const/4 v7, 0x1

    if-eq v1, v5, :cond_17

    .line 4205
    iget-object v1, v0, Lcom/linkedin/android/litr/g/a;->h:Lcom/linkedin/android/litr/b/b;

    invoke-interface {v1}, Lcom/linkedin/android/litr/b/b;->e()I

    move-result v1

    if-ltz v1, :cond_13

    .line 4207
    iget-object v2, v0, Lcom/linkedin/android/litr/g/a;->h:Lcom/linkedin/android/litr/b/b;

    invoke-interface {v2, v1}, Lcom/linkedin/android/litr/b/b;->b(I)Lcom/linkedin/android/litr/b/c;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 4212
    iget-object v3, v2, Lcom/linkedin/android/litr/b/c;->c:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_10

    const/high16 v2, 0x3f800000    # 1.0f

    .line 4214
    iput v2, v0, Lcom/linkedin/android/litr/g/a;->o:F

    const/4 v2, 0x3

    goto :goto_6

    .line 4216
    :cond_10
    iget-object v3, v2, Lcom/linkedin/android/litr/b/c;->c:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v3, :cond_11

    iget-object v3, v2, Lcom/linkedin/android/litr/b/c;->c:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v3, v4

    if-nez v3, :cond_11

    .line 4218
    iget-object v3, v0, Lcom/linkedin/android/litr/g/a;->e:Lcom/linkedin/android/litr/d/e;

    iget v6, v0, Lcom/linkedin/android/litr/g/a;->k:I

    iget-object v8, v2, Lcom/linkedin/android/litr/b/c;->b:Ljava/nio/ByteBuffer;

    iget-object v9, v2, Lcom/linkedin/android/litr/b/c;->c:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v3, v6, v8, v9}, Lcom/linkedin/android/litr/d/e;->a(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 4219
    iget-wide v8, v0, Lcom/linkedin/android/litr/g/a;->n:J

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-lez v3, :cond_11

    .line 4220
    iget-object v2, v2, Lcom/linkedin/android/litr/b/c;->c:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    long-to-float v2, v2

    iget-wide v8, v0, Lcom/linkedin/android/litr/g/a;->n:J

    long-to-float v3, v8

    div-float/2addr v2, v3

    iput v2, v0, Lcom/linkedin/android/litr/g/a;->o:F

    :cond_11
    const/4 v2, 0x2

    .line 4224
    :goto_6
    iget-object v3, v0, Lcom/linkedin/android/litr/g/a;->h:Lcom/linkedin/android/litr/b/b;

    invoke-interface {v3, v1}, Lcom/linkedin/android/litr/b/b;->c(I)V

    goto :goto_7

    .line 4209
    :cond_12
    new-instance v1, Lcom/linkedin/android/litr/exception/TrackTranscoderException;

    sget-object v2, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;->NO_FRAME_AVAILABLE:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    invoke-direct {v1, v2}, Lcom/linkedin/android/litr/exception/TrackTranscoderException;-><init>(Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;)V

    throw v1

    :cond_13
    if-eq v1, v6, :cond_15

    if-eq v1, v3, :cond_14

    .line 4243
    sget-object v3, Lcom/linkedin/android/litr/g/a;->p:Ljava/lang/String;

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

    .line 4232
    :cond_15
    iget-object v1, v0, Lcom/linkedin/android/litr/g/a;->h:Lcom/linkedin/android/litr/b/b;

    invoke-interface {v1}, Lcom/linkedin/android/litr/b/b;->f()Landroid/media/MediaFormat;

    move-result-object v1

    .line 4233
    iget-boolean v2, v0, Lcom/linkedin/android/litr/g/a;->l:Z

    if-nez v2, :cond_16

    .line 4234
    iput-object v1, v0, Lcom/linkedin/android/litr/g/a;->m:Landroid/media/MediaFormat;

    .line 4235
    iget-object v2, v0, Lcom/linkedin/android/litr/g/a;->e:Lcom/linkedin/android/litr/d/e;

    iget v3, v0, Lcom/linkedin/android/litr/g/a;->k:I

    invoke-interface {v2, v1, v3}, Lcom/linkedin/android/litr/d/e;->a(Landroid/media/MediaFormat;I)I

    move-result v2

    iput v2, v0, Lcom/linkedin/android/litr/g/a;->k:I

    .line 4236
    iput-boolean v7, v0, Lcom/linkedin/android/litr/g/a;->l:Z

    .line 4237
    iget-object v2, v0, Lcom/linkedin/android/litr/g/a;->f:Lcom/linkedin/android/litr/e/d;

    iget-object v3, v0, Lcom/linkedin/android/litr/g/a;->q:Landroid/media/MediaFormat;

    iget-object v6, v0, Lcom/linkedin/android/litr/g/a;->m:Landroid/media/MediaFormat;

    invoke-interface {v2, v3, v6}, Lcom/linkedin/android/litr/e/d;->a(Landroid/media/MediaFormat;Landroid/media/MediaFormat;)V

    .line 4240
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Encoder output format received "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 91
    :goto_7
    iput v2, v0, Lcom/linkedin/android/litr/g/a;->c:I

    .line 94
    :cond_17
    iget v1, v0, Lcom/linkedin/android/litr/g/a;->c:I

    if-ne v1, v7, :cond_18

    const/4 v4, 0x1

    .line 98
    :cond_18
    iget v2, v0, Lcom/linkedin/android/litr/g/a;->a:I

    if-ne v2, v5, :cond_19

    iget v2, v0, Lcom/linkedin/android/litr/g/a;->b:I

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
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/linkedin/android/litr/g/a;->h:Lcom/linkedin/android/litr/b/b;

    invoke-interface {v0}, Lcom/linkedin/android/litr/b/b;->g()V

    .line 110
    iget-object v0, p0, Lcom/linkedin/android/litr/g/a;->h:Lcom/linkedin/android/litr/b/b;

    invoke-interface {v0}, Lcom/linkedin/android/litr/b/b;->h()V

    .line 112
    iget-object v0, p0, Lcom/linkedin/android/litr/g/a;->g:Lcom/linkedin/android/litr/b/a;

    invoke-interface {v0}, Lcom/linkedin/android/litr/b/a;->f()V

    .line 113
    iget-object v0, p0, Lcom/linkedin/android/litr/g/a;->g:Lcom/linkedin/android/litr/b/a;

    invoke-interface {v0}, Lcom/linkedin/android/litr/b/a;->g()V

    return-void
.end method
