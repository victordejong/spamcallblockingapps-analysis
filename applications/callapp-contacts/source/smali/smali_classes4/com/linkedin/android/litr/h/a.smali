.class public final Lcom/linkedin/android/litr/h/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/linkedin/android/litr/h/a;->a:Ljava/util/Map;

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    .line 63
    :goto_0
    sget-object v1, Lcom/linkedin/android/litr/h/a;->a:Ljava/util/Map;

    const-string v2, "video/avc"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 68
    sget-object v0, Lcom/linkedin/android/litr/h/a;->a:Ljava/util/Map;

    const-string v2, "video/x-vnd.on2.vp8"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x4

    const/16 v3, 0x18

    const/16 v4, 0x1d

    if-lt v0, v1, :cond_3

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_1

    new-array v0, v2, [I

    fill-array-data v0, :array_2

    goto :goto_1

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_2

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    .line 85
    :goto_1
    sget-object v1, Lcom/linkedin/android/litr/h/a;->a:Ljava/util/Map;

    const-string v5, "video/hevc"

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_5

    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_4

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    goto :goto_2

    :cond_4
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_6

    .line 106
    :goto_2
    sget-object v1, Lcom/linkedin/android/litr/h/a;->a:Ljava/util/Map;

    const-string v3, "video/x-vnd.on2.vp9"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_6

    new-array v0, v2, [I

    .line 110
    fill-array-data v0, :array_7

    .line 116
    sget-object v1, Lcom/linkedin/android/litr/h/a;->a:Ljava/util/Map;

    const-string v2, "video/av01"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void

    :array_0
    .array-data 4
        0x10000
        0x1
        0x4
        0x2
        0x80000
        0x8
        0x10
        0x20
        0x40
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x4
        0x2
        0x8
        0x10
        0x20
        0x40
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x2
        0x1000
        0x2000
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x2
        0x1000
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x2
        0x4
        0x1000
        0x4000
        0x8
        0x2000
        0x8000
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x2
        0x4
        0x1000
        0x8
        0x2000
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x2
        0x1000
        0x2000
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;I)I
    .locals 12

    .line 149
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, -0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_3

    if-ne p1, v1, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    .line 150
    :cond_0
    invoke-static {p0, p1}, Lcom/linkedin/android/litr/h/a;->b(Ljava/lang/String;I)I

    move-result p1

    .line 152
    :goto_0
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 153
    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_3

    aget-object v6, v0, v5

    .line 154
    invoke-static {v6, p0}, Lcom/linkedin/android/litr/h/a;->a(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v7

    if-ne v7, v2, :cond_2

    .line 155
    invoke-virtual {v6, p0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v6

    .line 156
    iget-object v6, v6, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    .line 157
    iget v10, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-static {p0, v10}, Lcom/linkedin/android/litr/h/a;->b(Ljava/lang/String;I)I

    move-result v10

    invoke-static {p0, v1}, Lcom/linkedin/android/litr/h/a;->b(Ljava/lang/String;I)I

    move-result v11

    if-le v10, v11, :cond_1

    iget v10, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 158
    invoke-static {p0, v10}, Lcom/linkedin/android/litr/h/a;->b(Ljava/lang/String;I)I

    move-result v10

    if-gt v10, p1, :cond_1

    .line 159
    iget v1, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    return v1
.end method

.method private static synthetic a(Landroid/media/MediaCodecInfo;)Landroid/media/MediaCodec;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 342
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/media/MediaFormat;Landroid/view/Surface;ZLcom/linkedin/android/litr/exception/TrackTranscoderException$a;Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;ZZ)Landroid/media/MediaCodec;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/linkedin/android/litr/exception/TrackTranscoderException;
        }
    .end annotation

    move-object v3, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move/from16 v5, p7

    const/16 v6, 0x15

    const/4 v7, 0x0

    .line 191
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_4

    if-eqz v5, :cond_1

    const-string v0, "mime"

    .line 1256
    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1257
    invoke-static {p2, v0, p0}, Lcom/linkedin/android/litr/h/a;->a(ZLjava/lang/String;Landroid/media/MediaFormat;)Ljava/util/List;

    move-result-object v0

    .line 1259
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1260
    invoke-static {p0, p1, p2, v0}, Lcom/linkedin/android/litr/h/a;->a(Landroid/media/MediaFormat;Landroid/view/Surface;ZLjava/util/List;)Landroid/media/MediaCodec;

    move-result-object v0

    goto :goto_2

    :cond_0
    move-object v0, v7

    goto :goto_2

    .line 1263
    :cond_1
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v8, 0x1

    invoke-direct {v0, v8}, Landroid/media/MediaCodecList;-><init>(I)V

    if-eqz v2, :cond_2

    .line 1265
    invoke-virtual {v0, p0}, Landroid/media/MediaCodecList;->findEncoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1266
    :cond_2
    invoke-virtual {v0, p0}, Landroid/media/MediaCodecList;->findDecoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    .line 1268
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v7

    :goto_1
    if-eqz v0, :cond_5

    .line 1271
    invoke-static {v0, p0, p1, p2}, Lcom/linkedin/android/litr/h/a;->a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;Landroid/view/Surface;Z)V

    goto :goto_2

    .line 194
    :cond_4
    invoke-static {p0, p1, p2, v5}, Lcom/linkedin/android/litr/h/a;->a(Landroid/media/MediaFormat;Landroid/view/Surface;ZZ)Landroid/media/MediaCodec;

    move-result-object v0

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    .line 197
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_6

    if-eqz p6, :cond_6

    .line 198
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v8, "Try fallbackToGetCodecByType"

    invoke-direct {v0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_6
    new-instance v0, Lcom/linkedin/android/litr/exception/TrackTranscoderException;

    invoke-direct {v0, p3, p0, v7, v7}, Lcom/linkedin/android/litr/exception/TrackTranscoderException;-><init>(Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;Landroid/media/MediaFormat;Landroid/media/MediaCodec;Landroid/media/MediaCodecList;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 206
    :goto_3
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v6, :cond_9

    if-eqz p6, :cond_9

    .line 208
    :try_start_1
    invoke-static {p0, p1, p2, v5}, Lcom/linkedin/android/litr/h/a;->a(Landroid/media/MediaFormat;Landroid/view/Surface;ZZ)Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_8

    return-object v0

    .line 210
    :cond_8
    new-instance v0, Lcom/linkedin/android/litr/exception/TrackTranscoderException;

    invoke-direct {v0, p3, p0, v7, v7}, Lcom/linkedin/android/litr/exception/TrackTranscoderException;-><init>(Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;Landroid/media/MediaFormat;Landroid/media/MediaCodec;Landroid/media/MediaCodecList;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    :cond_9
    :goto_4
    move-object v6, v0

    .line 217
    nop

    instance-of v0, v6, Ljava/io/IOException;

    if-eqz v0, :cond_a

    .line 218
    new-instance v0, Lcom/linkedin/android/litr/exception/TrackTranscoderException;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p4

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/linkedin/android/litr/exception/TrackTranscoderException;-><init>(Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;Landroid/media/MediaFormat;Landroid/media/MediaCodec;Landroid/media/MediaCodecList;Ljava/lang/Throwable;)V

    throw v0

    .line 220
    :cond_a
    new-instance v0, Lcom/linkedin/android/litr/exception/TrackTranscoderException;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p5

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/linkedin/android/litr/exception/TrackTranscoderException;-><init>(Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;Landroid/media/MediaFormat;Landroid/media/MediaCodec;Landroid/media/MediaCodecList;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static a(Landroid/media/MediaFormat;Landroid/view/Surface;ZLjava/util/List;)Landroid/media/MediaCodec;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaFormat;",
            "Landroid/view/Surface;",
            "Z",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Callable<",
            "Landroid/media/MediaCodec;",
            ">;>;)",
            "Landroid/media/MediaCodec;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Callable;

    .line 288
    :try_start_0
    invoke-interface {v3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    .line 290
    :try_start_1
    invoke-static {v3, p0, p1, p2}, Lcom/linkedin/android/litr/h/a;->a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;Landroid/view/Surface;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v3

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_1
    move-object v1, v3

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v5, v3

    move-object v3, v1

    move-object v1, v5

    :goto_2
    if-eqz v3, :cond_1

    .line 295
    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    move-object v3, v0

    .line 298
    :cond_1
    instance-of v4, v1, Ljava/io/IOException;

    if-eqz v4, :cond_0

    .line 299
    move-object v2, v1

    check-cast v2, Ljava/io/IOException;

    goto :goto_1

    :cond_2
    :goto_3
    if-nez v1, :cond_4

    if-eqz v2, :cond_3

    .line 306
    throw v2

    .line 308
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_4
    return-object v1
.end method

.method private static a(Landroid/media/MediaFormat;Landroid/view/Surface;ZZ)Landroid/media/MediaCodec;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "mime"

    .line 230
    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    .line 233
    invoke-static {p2, v0, p3}, Lcom/linkedin/android/litr/h/a;->a(ZLjava/lang/String;Landroid/media/MediaFormat;)Ljava/util/List;

    move-result-object v0

    .line 234
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 235
    invoke-static {p0, p1, p2, v0}, Lcom/linkedin/android/litr/h/a;->a(Landroid/media/MediaFormat;Landroid/view/Surface;ZLjava/util/List;)Landroid/media/MediaCodec;

    move-result-object p3

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 239
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p3

    goto :goto_0

    .line 240
    :cond_1
    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p3

    :goto_0
    if-eqz p3, :cond_2

    .line 242
    invoke-static {p3, p0, p1, p2}, Lcom/linkedin/android/litr/h/a;->a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;Landroid/view/Surface;Z)V

    :cond_2
    :goto_1
    return-object p3
.end method

.method private static synthetic a(ZLjava/lang/String;)Landroid/media/MediaCodec;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 349
    invoke-static {p1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p0

    return-object p0

    .line 350
    :cond_0
    invoke-static {p1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p0

    return-object p0
.end method

.method private static a(ZLjava/lang/String;Landroid/media/MediaFormat;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Landroid/media/MediaFormat;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Callable<",
            "Landroid/media/MediaCodec;",
            ">;>;"
        }
    .end annotation

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 333
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    .line 334
    new-instance v1, Landroid/media/MediaCodecList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 335
    invoke-virtual {v1}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 336
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-ne v5, p0, :cond_1

    .line 340
    :try_start_0
    invoke-virtual {v4, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v5

    if-eqz v5, :cond_1

    if-eqz p2, :cond_0

    .line 341
    invoke-virtual {v5, p2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFormatSupported(Landroid/media/MediaFormat;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 342
    :cond_0
    new-instance v5, Lcom/linkedin/android/litr/h/-$$Lambda$a$ZJppBlPn0tl_lCCSSuo9Qd26ONc;

    invoke-direct {v5, v4}, Lcom/linkedin/android/litr/h/-$$Lambda$a$ZJppBlPn0tl_lCCSSuo9Qd26ONc;-><init>(Landroid/media/MediaCodecInfo;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 349
    :cond_2
    new-instance p2, Lcom/linkedin/android/litr/h/-$$Lambda$a$eylAUw36t-ifaa-IwQwhh9lWk_c;

    invoke-direct {p2, p0, p1}, Lcom/linkedin/android/litr/h/-$$Lambda$a$eylAUw36t-ifaa-IwQwhh9lWk_c;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method private static a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;Landroid/view/Surface;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 318
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-void
.end method

.method private static a(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z
    .locals 4

    .line 356
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object p0

    .line 357
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 358
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static b(Ljava/lang/String;I)I
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    .line 370
    :cond_0
    sget-object v1, Lcom/linkedin/android/litr/h/a;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    .line 375
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 376
    aget v2, p0, v1

    if-ne p1, v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public static synthetic lambda$ZJppBlPn0tl_lCCSSuo9Qd26ONc(Landroid/media/MediaCodecInfo;)Landroid/media/MediaCodec;
    .locals 0

    invoke-static {p0}, Lcom/linkedin/android/litr/h/a;->a(Landroid/media/MediaCodecInfo;)Landroid/media/MediaCodec;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$eylAUw36t-ifaa-IwQwhh9lWk_c(ZLjava/lang/String;)Landroid/media/MediaCodec;
    .locals 0

    invoke-static {p0, p1}, Lcom/linkedin/android/litr/h/a;->a(ZLjava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p0

    return-object p0
.end method
