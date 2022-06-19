.class public final Lcom/lb/video_trimmer_library/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0002J*\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J@\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u000bH\u0003J@\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u00122\u0006\u0010!\u001a\u00020\"H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/lb/video_trimmer_library/utils/TrimVideoUtils;",
        "",
        "()V",
        "DEFAULT_BUFFER_SIZE",
        "",
        "correctTimeToSyncSample",
        "",
        "track",
        "Lcom/googlecode/mp4parser/authoring/Track;",
        "cutHere",
        "next",
        "",
        "genVideoUsingMp4Parser",
        "filePath",
        "",
        "dst",
        "Ljava/io/File;",
        "startMs",
        "",
        "endMs",
        "genVideoUsingMuxer",
        "context",
        "Landroid/content/Context;",
        "uri",
        "Landroid/net/Uri;",
        "dstPath",
        "useAudio",
        "useVideo",
        "startTrim",
        "",
        "inputVideoUri",
        "outputTrimmedVideoFile",
        "durationInMs",
        "callback",
        "Lcom/lb/video_trimmer_library/interfaces/VideoTrimmingListener;",
        "video_trimmer_library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# static fields
.field public static final a:Lcom/lb/video_trimmer_library/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/lb/video_trimmer_library/b/c;

    invoke-direct {v0}, Lcom/lb/video_trimmer_library/b/c;-><init>()V

    sput-object v0, Lcom/lb/video_trimmer_library/b/c;->a:Lcom/lb/video_trimmer_library/b/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/googlecode/mp4parser/a/g;DZ)D
    .locals 16

    .line 243
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/a/g;->b()[J

    move-result-object v0

    array-length v0, v0

    new-array v1, v0, [D

    .line 246
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/a/g;->k()[J

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-wide v9, v4

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v2, :cond_1

    .line 247
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/a/g;->k()[J

    move-result-object v11

    aget-wide v12, v11, v8

    .line 248
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/a/g;->b()[J

    move-result-object v11

    const-wide/16 v14, 0x1

    add-long/2addr v6, v14

    invoke-static {v11, v6, v7}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v11

    if-ltz v11, :cond_0

    .line 250
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/a/g;->b()[J

    move-result-object v11

    invoke-static {v11, v6, v7}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v11

    aput-wide v9, v1, v11

    :cond_0
    long-to-double v11, v12

    .line 252
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/a/g;->m()Lcom/googlecode/mp4parser/a/h;

    move-result-object v13

    const-string v14, "track.trackMetaData"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4054
    iget-wide v13, v13, Lcom/googlecode/mp4parser/a/h;->b:J

    long-to-double v13, v13

    div-double/2addr v11, v13

    add-double/2addr v9, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v3, v0, :cond_4

    .line 256
    aget-wide v6, v1, v3

    cmpl-double v2, v6, p1

    if-lez v2, :cond_3

    if-eqz p3, :cond_2

    return-wide v6

    :cond_2
    return-wide v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    move-wide v4, v6

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 266
    aget-wide v0, v1, v0

    return-wide v0
.end method

.method public static final a(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;JJJLcom/lb/video_trimmer_library/a/c;)V
    .locals 11

    move-object v0, p1

    move-object v8, p2

    move-object/from16 v9, p9

    const-string v1, "context"

    move-object v7, p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "inputVideoUri"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "outputTrimmedVideoFile"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callback"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 55
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 56
    new-instance v10, Lkotlin/jvm/internal/ab$a;

    invoke-direct {v10}, Lkotlin/jvm/internal/ab$a;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v10, Lkotlin/jvm/internal/ab$a;->a:Z

    const-wide/16 v2, 0x0

    cmp-long v4, p3, v2

    if-gtz v4, :cond_2

    cmp-long v2, p5, p7

    if-ltz v2, :cond_2

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;

    :try_start_0
    move-object v3, v2

    check-cast v3, Ljava/io/InputStream;

    if-eqz v3, :cond_0

    .line 60
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v4, Ljava/io/OutputStream;

    const/16 v5, 0x2000

    .line 1103
    invoke-static {v3, v4, v5}, Lkotlin/io/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)J

    :cond_0
    if-eqz v3, :cond_1

    .line 61
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, v10, Lkotlin/jvm/internal/ab$a;->a:Z

    .line 62
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 59
    invoke-static {v2, v1}, Lkotlin/io/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v2, v1}, Lkotlin/io/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    .line 65
    :cond_2
    :goto_0
    iget-boolean v1, v10, Lkotlin/jvm/internal/ab$a;->a:Z

    if-nez v1, :cond_3

    .line 68
    :try_start_2
    sget-object v1, Lcom/lb/video_trimmer_library/b/b;->a:Lcom/lb/video_trimmer_library/b/b;

    invoke-static {p0, p1}, Lcom/lb/video_trimmer_library/b/b;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    move-object v2, p2

    move-wide v3, p3

    move-wide/from16 v5, p5

    .line 69
    invoke-static/range {v1 .. v6}, Lcom/lb/video_trimmer_library/b/c;->a(Ljava/lang/String;Ljava/io/File;JJ)Z

    move-result v1

    iput-boolean v1, v10, Lkotlin/jvm/internal/ab$a;->a:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 74
    :cond_3
    :goto_1
    iget-boolean v1, v10, Lkotlin/jvm/internal/ab$a;->a:Z

    if-nez v1, :cond_4

    .line 76
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v1, "outputTrimmedVideoFile.absolutePath"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-static/range {v1 .. v7}, Lcom/lb/video_trimmer_library/b/c;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;JJ)Z

    move-result v0

    iput-boolean v0, v10, Lkotlin/jvm/internal/ab$a;->a:Z

    .line 79
    :cond_4
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/lb/video_trimmer_library/b/c$a;

    invoke-direct {v1, v9, v10, p2}, Lcom/lb/video_trimmer_library/b/c$a;-><init>(Lcom/lb/video_trimmer_library/a/c;Lkotlin/jvm/internal/ab$a;Ljava/io/File;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;JJ)Z
    .locals 16

    const-string v0, "max-input-size"

    const-string v1, "mime"

    .line 155
    new-instance v2, Landroid/media/MediaExtractor;

    invoke-direct {v2}, Landroid/media/MediaExtractor;-><init>()V

    .line 157
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "r"

    move-object/from16 v5, p1

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/p;->a()V

    :cond_0
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 158
    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 159
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v4

    .line 161
    new-instance v5, Landroid/media/MediaMuxer;

    const/4 v6, 0x0

    move-object/from16 v7, p2

    invoke-direct {v5, v7, v6}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    .line 163
    new-instance v7, Landroid/util/SparseIntArray;

    invoke-direct {v7, v4}, Landroid/util/SparseIntArray;-><init>(I)V

    const/4 v8, -0x1

    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x1

    if-ge v9, v4, :cond_4

    .line 167
    :try_start_0
    invoke-virtual {v2, v9}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v11

    .line 168
    invoke-virtual {v11, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 170
    invoke-static {v12, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "audio/"

    .line 2405
    invoke-static {v12, v13, v6}, Lkotlin/h/p;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_1

    goto :goto_1

    :cond_1
    const-string v13, "video/"

    .line 3405
    invoke-static {v12, v13, v6}, Lkotlin/h/p;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    :goto_1
    if-eqz v10, :cond_3

    .line 176
    invoke-virtual {v2, v9}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 177
    invoke-virtual {v5, v11}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v10

    .line 178
    invoke-virtual {v7, v9, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 179
    invoke-virtual {v11, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 180
    invoke-virtual {v11, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v10

    if-le v10, v8, :cond_3

    move v8, v10

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_4
    if-gez v8, :cond_5

    const/high16 v8, 0x100000

    .line 188
    :cond_5
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 189
    invoke-virtual {v0, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    const/16 v1, 0x18

    .line 190
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 192
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_6

    .line 194
    invoke-virtual {v5, v0}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    :cond_6
    const-wide/16 v0, 0x3e8

    const-wide/16 v3, 0x0

    cmp-long v9, p3, v3

    if-lez v9, :cond_7

    mul-long v11, p3, v0

    const/4 v9, 0x2

    .line 197
    invoke-virtual {v2, v11, v12, v9}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 203
    :cond_7
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 204
    new-instance v9, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v9}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 206
    invoke-virtual {v5}, Landroid/media/MediaMuxer;->start()V

    .line 208
    :goto_2
    iput v6, v9, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 209
    invoke-virtual {v2, v8, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v11

    iput v11, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 210
    iget v11, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v11, :cond_8

    .line 212
    iput v6, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_3

    .line 215
    :cond_8
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v11

    iput-wide v11, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v11, p5, v3

    if-lez v11, :cond_a

    .line 216
    iget-wide v11, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    mul-long v13, p5, v0

    cmp-long v15, v11, v13

    if-gtz v15, :cond_9

    goto :goto_4

    .line 228
    :cond_9
    :goto_3
    invoke-virtual {v5}, Landroid/media/MediaMuxer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    invoke-virtual {v5}, Landroid/media/MediaMuxer;->release()V

    return v10

    .line 220
    :cond_a
    :goto_4
    :try_start_1
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v11

    iput v11, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 221
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v11

    .line 222
    invoke-virtual {v7, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    invoke-virtual {v5, v11, v8, v9}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 224
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 234
    :goto_5
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 236
    invoke-virtual {v5}, Landroid/media/MediaMuxer;->release()V

    return v6

    :goto_6
    invoke-virtual {v5}, Landroid/media/MediaMuxer;->release()V

    throw v0
.end method

.method private static a(Ljava/lang/String;Ljava/io/File;JJ)Z
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 87
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlin/h/p;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_c

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_6

    .line 91
    :cond_2
    new-instance v1, Lcom/googlecode/mp4parser/g;

    invoke-direct {v1, v0}, Lcom/googlecode/mp4parser/g;-><init>(Ljava/lang/String;)V

    check-cast v1, Lcom/googlecode/mp4parser/e;

    invoke-static {v1}, Lcom/googlecode/mp4parser/a/b/a/a;->a(Lcom/googlecode/mp4parser/e;)Lcom/googlecode/mp4parser/a/d;

    move-result-object v0

    const-string v1, "movie"

    .line 92
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2039
    iget-object v1, v0, Lcom/googlecode/mp4parser/a/d;->b:Ljava/util/List;

    .line 93
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 2043
    iput-object v4, v0, Lcom/googlecode/mp4parser/a/d;->b:Ljava/util/List;

    const-wide/16 v4, 0x3e8

    .line 95
    div-long v6, p2, v4

    long-to-double v6, v6

    .line 96
    div-long v4, p4, v4

    long-to-double v4, v4

    .line 101
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-string v11, "track"

    if-eqz v10, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/googlecode/mp4parser/a/g;

    .line 102
    invoke-static {v10, v11}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10}, Lcom/googlecode/mp4parser/a/g;->b()[J

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Lcom/googlecode/mp4parser/a/g;->b()[J

    move-result-object v11

    const-string v12, "track.syncSamples"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v11, v11

    if-nez v11, :cond_4

    const/4 v11, 0x1

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    :goto_3
    xor-int/2addr v11, v3

    if-eqz v11, :cond_3

    if-eqz v9, :cond_5

    return v2

    .line 110
    :cond_5
    invoke-static {v10, v6, v7, v2}, Lcom/lb/video_trimmer_library/b/c;->a(Lcom/googlecode/mp4parser/a/g;DZ)D

    move-result-wide v6

    .line 111
    invoke-static {v10, v4, v5, v3}, Lcom/lb/video_trimmer_library/b/c;->a(Lcom/googlecode/mp4parser/a/g;DZ)D

    move-result-wide v4

    const/4 v9, 0x1

    goto :goto_2

    .line 115
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v13, v8

    check-cast v13, Lcom/googlecode/mp4parser/a/g;

    const-wide/16 v8, 0x0

    const-wide/16 v14, 0x0

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    .line 121
    invoke-static {v13, v11}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v13}, Lcom/googlecode/mp4parser/a/g;->k()[J

    move-result-object v10

    array-length v10, v10

    const-wide/16 v18, -0x1

    move-wide/from16 v20, v16

    const/4 v12, 0x0

    move-wide/from16 v16, v14

    move-wide/from16 v14, v18

    :goto_5
    if-ge v12, v10, :cond_9

    .line 122
    invoke-interface {v13}, Lcom/googlecode/mp4parser/a/g;->k()[J

    move-result-object v22

    aget-wide v2, v22, v12

    cmpl-double v22, v16, v20

    if-lez v22, :cond_7

    cmpg-double v20, v16, v6

    if-gtz v20, :cond_7

    move-wide v14, v8

    :cond_7
    if-lez v22, :cond_8

    cmpg-double v20, v16, v4

    if-gtz v20, :cond_8

    move-wide/from16 v18, v8

    :cond_8
    long-to-double v2, v2

    move-object/from16 p0, v1

    .line 132
    invoke-interface {v13}, Lcom/googlecode/mp4parser/a/g;->m()Lcom/googlecode/mp4parser/a/h;

    move-result-object v1

    move-wide/from16 v20, v4

    const-string v4, "track.trackMetaData"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2054
    iget-wide v4, v1, Lcom/googlecode/mp4parser/a/h;->b:J

    long-to-double v4, v4

    div-double/2addr v2, v4

    add-double v1, v16, v2

    const-wide/16 v3, 0x1

    add-long/2addr v8, v3

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v4, v20

    const/4 v3, 0x1

    move-wide/from16 v20, v16

    move-wide/from16 v16, v1

    const/4 v2, 0x0

    move-object/from16 v1, p0

    goto :goto_5

    :cond_9
    move-object/from16 p0, v1

    move-wide/from16 v20, v4

    .line 135
    new-instance v1, Lcom/googlecode/mp4parser/a/d/a;

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/googlecode/mp4parser/a/g;

    new-instance v2, Lcom/googlecode/mp4parser/a/d/d;

    move-object v12, v2

    move-wide/from16 v16, v18

    invoke-direct/range {v12 .. v17}, Lcom/googlecode/mp4parser/a/d/d;-><init>(Lcom/googlecode/mp4parser/a/g;JJ)V

    check-cast v2, Lcom/googlecode/mp4parser/a/g;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-direct {v1, v3}, Lcom/googlecode/mp4parser/a/d/a;-><init>([Lcom/googlecode/mp4parser/a/g;)V

    check-cast v1, Lcom/googlecode/mp4parser/a/g;

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/a/d;->a(Lcom/googlecode/mp4parser/a/g;)V

    move-object/from16 v1, p0

    move-wide/from16 v4, v20

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto/16 :goto_4

    .line 137
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 138
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_b

    .line 139
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->createNewFile()Z

    .line 141
    :cond_b
    new-instance v1, Lcom/googlecode/mp4parser/a/a/b;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/a/a/b;-><init>()V

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/a/a/b;->a(Lcom/googlecode/mp4parser/a/d;)Lcom/b/a/a/e;

    move-result-object v0

    .line 142
    new-instance v1, Ljava/io/FileOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 143
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 144
    move-object v3, v2

    check-cast v3, Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0, v3}, Lcom/b/a/a/e;->a(Ljava/nio/channels/WritableByteChannel;)V

    .line 145
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 146
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    const/4 v0, 0x1

    return v0

    :cond_c
    :goto_6
    const/4 v0, 0x0

    return v0
.end method
