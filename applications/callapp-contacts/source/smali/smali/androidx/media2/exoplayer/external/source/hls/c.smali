.class public final Landroidx/media2/exoplayer/external/source/hls/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/hls/f;


# instance fields
.field private final b:I

.field private final c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 72
    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/source/hls/c;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput p1, p0, Landroidx/media2/exoplayer/external/source/hls/c;->b:I

    .line 88
    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/source/hls/c;->c:Z

    return-void
.end method

.method private static a(IZLandroidx/media2/exoplayer/external/Format;Ljava/util/List;Landroidx/media2/exoplayer/external/util/z;)Landroidx/media2/exoplayer/external/extractor/e/af;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Landroidx/media2/exoplayer/external/Format;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;",
            "Landroidx/media2/exoplayer/external/util/z;",
            ")",
            "Landroidx/media2/exoplayer/external/extractor/e/af;"
        }
    .end annotation

    or-int/lit8 p0, p0, 0x10

    if-eqz p3, :cond_0

    or-int/lit8 p0, p0, 0x20

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const/4 p3, 0x0

    const-string v0, "application/cea-608"

    .line 247
    invoke-static {p3, v0, p1, p3}, Landroidx/media2/exoplayer/external/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p1

    .line 246
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    goto :goto_0

    .line 253
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 255
    :goto_0
    iget-object p1, p2, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    .line 256
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 260
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/m;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "audio/mp4a-latm"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    or-int/lit8 p0, p0, 0x2

    .line 263
    :cond_2
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "video/avc"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    or-int/lit8 p0, p0, 0x4

    .line 268
    :cond_3
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/e/af;

    new-instance p2, Landroidx/media2/exoplayer/external/extractor/e/j;

    invoke-direct {p2, p0, p3}, Landroidx/media2/exoplayer/external/extractor/e/j;-><init>(ILjava/util/List;)V

    const/4 p0, 0x2

    invoke-direct {p1, p0, p4, p2}, Landroidx/media2/exoplayer/external/extractor/e/af;-><init>(ILandroidx/media2/exoplayer/external/util/z;Landroidx/media2/exoplayer/external/extractor/e/ah$c;)V

    return-object p1
.end method

.method private static a(Landroidx/media2/exoplayer/external/util/z;Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)Landroidx/media2/exoplayer/external/extractor/mp4/e;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/z;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;)",
            "Landroidx/media2/exoplayer/external/extractor/mp4/e;"
        }
    .end annotation

    .line 278
    new-instance v6, Landroidx/media2/exoplayer/external/extractor/mp4/e;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    :goto_0
    move-object v5, p2

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/extractor/mp4/e;-><init>(ILandroidx/media2/exoplayer/external/util/z;Landroidx/media2/exoplayer/external/extractor/mp4/l;Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)V

    return-object v6
.end method

.method private static a(Landroidx/media2/exoplayer/external/extractor/g;)Landroidx/media2/exoplayer/external/source/hls/f$a;
    .locals 3

    .line 304
    new-instance v0, Landroidx/media2/exoplayer/external/source/hls/f$a;

    instance-of v1, p0, Landroidx/media2/exoplayer/external/extractor/e/g;

    if-nez v1, :cond_1

    instance-of v1, p0, Landroidx/media2/exoplayer/external/extractor/e/a;

    if-nez v1, :cond_1

    instance-of v1, p0, Landroidx/media2/exoplayer/external/extractor/e/d;

    if-nez v1, :cond_1

    instance-of v1, p0, Landroidx/media2/exoplayer/external/extractor/c/c;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 310
    :goto_1
    invoke-static {p0}, Landroidx/media2/exoplayer/external/source/hls/c;->b(Landroidx/media2/exoplayer/external/extractor/g;)Z

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Landroidx/media2/exoplayer/external/source/hls/f$a;-><init>(Landroidx/media2/exoplayer/external/extractor/g;ZZ)V

    return-object v0
.end method

.method private static a(Landroidx/media2/exoplayer/external/extractor/g;Landroidx/media2/exoplayer/external/extractor/h;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    :try_start_0
    invoke-interface {p0, p1}, Landroidx/media2/exoplayer/external/extractor/g;->a(Landroidx/media2/exoplayer/external/extractor/h;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/h;->a()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/h;->a()V

    throw p0

    :catch_0
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/h;->a()V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static b(Landroidx/media2/exoplayer/external/extractor/g;)Z
    .locals 1

    .line 327
    instance-of v0, p0, Landroidx/media2/exoplayer/external/extractor/e/af;

    if-nez v0, :cond_1

    instance-of p0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/e;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/extractor/g;Landroid/net/Uri;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;Landroidx/media2/exoplayer/external/util/z;Landroidx/media2/exoplayer/external/extractor/h;)Landroidx/media2/exoplayer/external/source/hls/f$a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/extractor/g;",
            "Landroid/net/Uri;",
            "Landroidx/media2/exoplayer/external/Format;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "Landroidx/media2/exoplayer/external/util/z;",
            "Landroidx/media2/exoplayer/external/extractor/h;",
            ")",
            "Landroidx/media2/exoplayer/external/source/hls/f$a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 105
    invoke-static {p1}, Landroidx/media2/exoplayer/external/source/hls/c;->b(Landroidx/media2/exoplayer/external/extractor/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-static {p1}, Landroidx/media2/exoplayer/external/source/hls/c;->a(Landroidx/media2/exoplayer/external/extractor/g;)Landroidx/media2/exoplayer/external/source/hls/f$a;

    move-result-object p1

    return-object p1

    .line 1288
    :cond_0
    instance-of v0, p1, Landroidx/media2/exoplayer/external/source/hls/p;

    if-eqz v0, :cond_1

    .line 1289
    new-instance v0, Landroidx/media2/exoplayer/external/source/hls/p;

    iget-object v1, p3, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    invoke-direct {v0, v1, p6}, Landroidx/media2/exoplayer/external/source/hls/p;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/z;)V

    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/hls/c;->a(Landroidx/media2/exoplayer/external/extractor/g;)Landroidx/media2/exoplayer/external/source/hls/f$a;

    move-result-object v0

    goto :goto_0

    .line 1290
    :cond_1
    instance-of v0, p1, Landroidx/media2/exoplayer/external/extractor/e/g;

    if-eqz v0, :cond_2

    .line 1291
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/e/g;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/e/g;-><init>()V

    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/hls/c;->a(Landroidx/media2/exoplayer/external/extractor/g;)Landroidx/media2/exoplayer/external/source/hls/f$a;

    move-result-object v0

    goto :goto_0

    .line 1292
    :cond_2
    instance-of v0, p1, Landroidx/media2/exoplayer/external/extractor/e/a;

    if-eqz v0, :cond_3

    .line 1293
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/e/a;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/e/a;-><init>()V

    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/hls/c;->a(Landroidx/media2/exoplayer/external/extractor/g;)Landroidx/media2/exoplayer/external/source/hls/f$a;

    move-result-object v0

    goto :goto_0

    .line 1294
    :cond_3
    instance-of v0, p1, Landroidx/media2/exoplayer/external/extractor/e/d;

    if-eqz v0, :cond_4

    .line 1295
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/e/d;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/e/d;-><init>()V

    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/hls/c;->a(Landroidx/media2/exoplayer/external/extractor/g;)Landroidx/media2/exoplayer/external/source/hls/f$a;

    move-result-object v0

    goto :goto_0

    .line 1296
    :cond_4
    instance-of v0, p1, Landroidx/media2/exoplayer/external/extractor/c/c;

    if-eqz v0, :cond_5

    .line 1297
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/c/c;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/c/c;-><init>()V

    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/hls/c;->a(Landroidx/media2/exoplayer/external/extractor/g;)Landroidx/media2/exoplayer/external/source/hls/f$a;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_7

    .line 111
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Unexpected previousExtractor type: "

    .line 112
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    if-eqz p4, :cond_6

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2196
    :cond_7
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    const-string p1, ""

    .line 2200
    :cond_8
    iget-object p2, p3, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    const-string v0, "text/vtt"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    if-nez p2, :cond_11

    const-string p2, ".webvtt"

    .line 2201
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_11

    const-string p2, ".vtt"

    .line 2202
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    goto/16 :goto_4

    :cond_9
    const-string p2, ".aac"

    .line 2204
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 2205
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/e/g;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/extractor/e/g;-><init>()V

    goto/16 :goto_5

    :cond_a
    const-string p2, ".ac3"

    .line 2206
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_10

    const-string p2, ".ec3"

    .line 2207
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_b

    goto :goto_3

    :cond_b
    const-string p2, ".ac4"

    .line 2209
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 2210
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/e/d;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/extractor/e/d;-><init>()V

    goto :goto_5

    :cond_c
    const-string p2, ".mp3"

    .line 2211
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 2212
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/c/c;

    invoke-direct {p1, v2, v0, v1}, Landroidx/media2/exoplayer/external/extractor/c/c;-><init>(IJ)V

    goto :goto_5

    :cond_d
    const-string p2, ".mp4"

    .line 2213
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 2214
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    const-string v4, ".m4"

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_f

    .line 2215
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    invoke-virtual {p1, p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_f

    .line 2216
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x5

    const-string v3, ".cmf"

    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_2

    .line 2220
    :cond_e
    iget p1, p0, Landroidx/media2/exoplayer/external/source/hls/c;->b:I

    iget-boolean p2, p0, Landroidx/media2/exoplayer/external/source/hls/c;->c:Z

    invoke-static {p1, p2, p3, p4, p6}, Landroidx/media2/exoplayer/external/source/hls/c;->a(IZLandroidx/media2/exoplayer/external/Format;Ljava/util/List;Landroidx/media2/exoplayer/external/util/z;)Landroidx/media2/exoplayer/external/extractor/e/af;

    move-result-object p1

    goto :goto_5

    .line 2217
    :cond_f
    :goto_2
    invoke-static {p6, p5, p4}, Landroidx/media2/exoplayer/external/source/hls/c;->a(Landroidx/media2/exoplayer/external/util/z;Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)Landroidx/media2/exoplayer/external/extractor/mp4/e;

    move-result-object p1

    goto :goto_5

    .line 2208
    :cond_10
    :goto_3
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/e/a;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/extractor/e/a;-><init>()V

    goto :goto_5

    .line 2203
    :cond_11
    :goto_4
    new-instance p1, Landroidx/media2/exoplayer/external/source/hls/p;

    iget-object p2, p3, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    invoke-direct {p1, p2, p6}, Landroidx/media2/exoplayer/external/source/hls/p;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/z;)V

    .line 121
    :goto_5
    invoke-interface {p7}, Landroidx/media2/exoplayer/external/extractor/h;->a()V

    .line 122
    invoke-static {p1, p7}, Landroidx/media2/exoplayer/external/source/hls/c;->a(Landroidx/media2/exoplayer/external/extractor/g;Landroidx/media2/exoplayer/external/extractor/h;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 123
    invoke-static {p1}, Landroidx/media2/exoplayer/external/source/hls/c;->a(Landroidx/media2/exoplayer/external/extractor/g;)Landroidx/media2/exoplayer/external/source/hls/f$a;

    move-result-object p1

    return-object p1

    .line 129
    :cond_12
    instance-of p2, p1, Landroidx/media2/exoplayer/external/source/hls/p;

    if-nez p2, :cond_13

    .line 130
    new-instance p2, Landroidx/media2/exoplayer/external/source/hls/p;

    iget-object v3, p3, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    invoke-direct {p2, v3, p6}, Landroidx/media2/exoplayer/external/source/hls/p;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/z;)V

    .line 131
    invoke-static {p2, p7}, Landroidx/media2/exoplayer/external/source/hls/c;->a(Landroidx/media2/exoplayer/external/extractor/g;Landroidx/media2/exoplayer/external/extractor/h;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 132
    invoke-static {p2}, Landroidx/media2/exoplayer/external/source/hls/c;->a(Landroidx/media2/exoplayer/external/extractor/g;)Landroidx/media2/exoplayer/external/source/hls/f$a;

    move-result-object p1

    return-object p1

    .line 136
    :cond_13
    instance-of p2, p1, Landroidx/media2/exoplayer/external/extractor/e/g;

    if-nez p2, :cond_14

    .line 137
    new-instance p2, Landroidx/media2/exoplayer/external/extractor/e/g;

    invoke-direct {p2}, Landroidx/media2/exoplayer/external/extractor/e/g;-><init>()V

    .line 138
    invoke-static {p2, p7}, Landroidx/media2/exoplayer/external/source/hls/c;->a(Landroidx/media2/exoplayer/external/extractor/g;Landroidx/media2/exoplayer/external/extractor/h;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 139
    invoke-static {p2}, Landroidx/media2/exoplayer/external/source/hls/c;->a(Landroidx/media2/exoplayer/external/extractor/g;)Landroidx/media2/exoplayer/external/source/hls/f$a;

    move-result-object p1

    return-object p1

    .line 143
    :cond_14
    instance-of p2, p1, Landroidx/media2/exoplayer/external/extractor/e/a;

    if-nez p2, :cond_15

    .line 144
    new-instance p2, Landroidx/media2/exoplayer/external/extractor/e/a;

    invoke-direct {p2}, Landroidx/media2/exoplayer/external/extractor/e/a;-><init>()V

    .line 145
    invoke-static {p2, p7}, Landroidx/media2/exoplayer/external/source/hls/c;->a(Landroidx/media2/exoplayer/external/extractor/g;Landroidx/media2/exoplayer/external/extractor/h;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 146
    invoke-static {p2}, Landroidx/media2/exoplayer/external/source/hls/c;->a(Landroidx/media2/exoplayer/external/extractor/g;)Landroidx/media2/exoplayer/external/source/hls/f$a;

    move-result-object p1

    return-object p1

    .line 150
    :cond_15
    instance-of p2, p1, Landroidx/media2/exoplayer/external/extractor/e/d;

    if-nez p2, :cond_16

    .line 151
    new-instance p2, Landroidx/media2/exoplayer/external/extractor/e/d;

    invoke-direct {p2}, Landroidx/media2/exoplayer/external/extractor/e/d;-><init>()V

    .line 152
    invoke-static {p2, p7}, Landroidx/media2/exoplayer/external/source/hls/c;->a(Landroidx/media2/exoplayer/external/extractor/g;Landroidx/media2/exoplayer/external/extractor/h;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 153
    invoke-static {p2}, Landroidx/media2/exoplayer/external/source/hls/c;->a(Landroidx/media2/exoplayer/external/extractor/g;)Landroidx/media2/exoplayer/external/source/hls/f$a;

    move-result-object p1

    return-object p1

    .line 157
    :cond_16
    instance-of p2, p1, Landroidx/media2/exoplayer/external/extractor/c/c;

    if-nez p2, :cond_17

    .line 158
    new-instance p2, Landroidx/media2/exoplayer/external/extractor/c/c;

    invoke-direct {p2, v2, v0, v1}, Landroidx/media2/exoplayer/external/extractor/c/c;-><init>(IJ)V

    .line 160
    invoke-static {p2, p7}, Landroidx/media2/exoplayer/external/source/hls/c;->a(Landroidx/media2/exoplayer/external/extractor/g;Landroidx/media2/exoplayer/external/extractor/h;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 161
    invoke-static {p2}, Landroidx/media2/exoplayer/external/source/hls/c;->a(Landroidx/media2/exoplayer/external/extractor/g;)Landroidx/media2/exoplayer/external/source/hls/f$a;

    move-result-object p1

    return-object p1

    .line 165
    :cond_17
    instance-of p2, p1, Landroidx/media2/exoplayer/external/extractor/mp4/e;

    if-nez p2, :cond_18

    .line 167
    invoke-static {p6, p5, p4}, Landroidx/media2/exoplayer/external/source/hls/c;->a(Landroidx/media2/exoplayer/external/util/z;Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)Landroidx/media2/exoplayer/external/extractor/mp4/e;

    move-result-object p2

    .line 168
    invoke-static {p2, p7}, Landroidx/media2/exoplayer/external/source/hls/c;->a(Landroidx/media2/exoplayer/external/extractor/g;Landroidx/media2/exoplayer/external/extractor/h;)Z

    move-result p5

    if-eqz p5, :cond_18

    .line 169
    invoke-static {p2}, Landroidx/media2/exoplayer/external/source/hls/c;->a(Landroidx/media2/exoplayer/external/extractor/g;)Landroidx/media2/exoplayer/external/source/hls/f$a;

    move-result-object p1

    return-object p1

    .line 173
    :cond_18
    instance-of p2, p1, Landroidx/media2/exoplayer/external/extractor/e/af;

    if-nez p2, :cond_19

    .line 174
    iget p2, p0, Landroidx/media2/exoplayer/external/source/hls/c;->b:I

    iget-boolean p5, p0, Landroidx/media2/exoplayer/external/source/hls/c;->c:Z

    .line 175
    invoke-static {p2, p5, p3, p4, p6}, Landroidx/media2/exoplayer/external/source/hls/c;->a(IZLandroidx/media2/exoplayer/external/Format;Ljava/util/List;Landroidx/media2/exoplayer/external/util/z;)Landroidx/media2/exoplayer/external/extractor/e/af;

    move-result-object p2

    .line 181
    invoke-static {p2, p7}, Landroidx/media2/exoplayer/external/source/hls/c;->a(Landroidx/media2/exoplayer/external/extractor/g;Landroidx/media2/exoplayer/external/extractor/h;)Z

    move-result p3

    if-eqz p3, :cond_19

    .line 182
    invoke-static {p2}, Landroidx/media2/exoplayer/external/source/hls/c;->a(Landroidx/media2/exoplayer/external/extractor/g;)Landroidx/media2/exoplayer/external/source/hls/f$a;

    move-result-object p1

    return-object p1

    .line 187
    :cond_19
    invoke-static {p1}, Landroidx/media2/exoplayer/external/source/hls/c;->a(Landroidx/media2/exoplayer/external/extractor/g;)Landroidx/media2/exoplayer/external/source/hls/f$a;

    move-result-object p1

    return-object p1
.end method
