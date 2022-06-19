.class final Landroidx/media2/player/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroidx/media2/exoplayer/external/extractor/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/e;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/e;-><init>()V

    .line 74
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/e;->a()Landroidx/media2/exoplayer/external/extractor/e;

    move-result-object v0

    sput-object v0, Landroidx/media2/player/d;->a:Landroidx/media2/exoplayer/external/extractor/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroidx/media2/exoplayer/external/ExoPlaybackException;)I
    .locals 2

    .line 171
    iget v0, p0, Landroidx/media2/exoplayer/external/ExoPlaybackException;->a:I

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 5161
    iget v0, p0, Landroidx/media2/exoplayer/external/ExoPlaybackException;->a:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 5162
    iget-object p0, p0, Landroidx/media2/exoplayer/external/ExoPlaybackException;->d:Ljava/lang/Throwable;

    invoke-static {p0}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    .line 173
    instance-of v0, p0, Landroidx/media2/exoplayer/external/ParserException;

    if-eqz v0, :cond_1

    const/16 p0, -0x3ef

    return p0

    .line 176
    :cond_1
    instance-of v0, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;

    if-eqz v0, :cond_2

    .line 177
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p0, p0, Ljava/net/SocketTimeoutException;

    if-eqz p0, :cond_2

    const/16 p0, -0x6e

    return p0

    :cond_2
    const/16 p0, -0x3ec

    return p0

    :cond_3
    return v1
.end method

.method public static a(Landroidx/media2/exoplayer/external/Format;)Landroid/media/MediaFormat;
    .locals 10

    .line 226
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 227
    iget-object v1, p0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    const-string v2, "mime"

    .line 228
    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/m;->g(Ljava/lang/String;)I

    move-result v3

    const-string v4, "language"

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 231
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    const-string v2, "channel-count"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 232
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    const-string v2, "sample-rate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 233
    iget-object v1, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 234
    iget-object p0, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    invoke-virtual {v0, v4, p0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_0
    const/4 v6, 0x2

    if-ne v3, v6, :cond_1

    .line 237
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->width:I

    const-string v2, "width"

    invoke-static {v0, v2, v1}, Landroidx/media2/exoplayer/external/mediacodec/g;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 238
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->height:I

    const-string v2, "height"

    invoke-static {v0, v2, v1}, Landroidx/media2/exoplayer/external/mediacodec/g;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 239
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    const-string v2, "frame-rate"

    invoke-static {v0, v2, v1}, Landroidx/media2/exoplayer/external/mediacodec/g;->a(Landroid/media/MediaFormat;Ljava/lang/String;F)V

    .line 241
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    const-string v2, "rotation-degrees"

    invoke-static {v0, v2, v1}, Landroidx/media2/exoplayer/external/mediacodec/g;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 243
    iget-object p0, p0, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    invoke-static {v0, p0}, Landroidx/media2/exoplayer/external/mediacodec/g;->a(Landroid/media/MediaFormat;Landroidx/media2/exoplayer/external/video/ColorInfo;)V

    goto :goto_4

    :cond_1
    const/4 v7, 0x3

    if-ne v3, v7, :cond_7

    .line 245
    iget v3, p0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    const/4 v7, 0x4

    const/4 v8, 0x0

    if-ne v3, v7, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 246
    :goto_0
    iget v7, p0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    if-ne v7, v5, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    .line 247
    :goto_1
    iget v9, p0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    if-ne v9, v6, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    const-string v6, "is-autoselect"

    .line 248
    invoke-virtual {v0, v6, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "is-default"

    .line 249
    invoke-virtual {v0, v3, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "is-forced-subtitle"

    .line 250
    invoke-virtual {v0, v3, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 251
    iget-object v3, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    if-nez v3, :cond_5

    const-string p0, "und"

    .line 252
    invoke-virtual {v0, v4, p0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 254
    :cond_5
    iget-object p0, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    invoke-virtual {v0, v4, p0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const-string p0, "application/cea-608"

    .line 257
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "text/cea-608"

    .line 258
    invoke-virtual {v0, v2, p0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    const-string p0, "application/cea-708"

    .line 259
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "text/cea-708"

    .line 260
    invoke-virtual {v0, v2, p0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_4
    return-object v0
.end method

.method public static a(Landroidx/media2/exoplayer/external/audio/c;)Landroidx/media/AudioAttributesCompat;
    .locals 3

    .line 139
    new-instance v0, Landroidx/media/AudioAttributesCompat$a;

    invoke-direct {v0}, Landroidx/media/AudioAttributesCompat$a;-><init>()V

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/c;->b:I

    .line 140
    invoke-virtual {v0, v1}, Landroidx/media/AudioAttributesCompat$a;->b(I)Landroidx/media/AudioAttributesCompat$a;

    move-result-object v0

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/c;->c:I

    .line 4466
    iget-object v2, v0, Landroidx/media/AudioAttributesCompat$a;->a:Landroidx/media/AudioAttributesImpl$a;

    invoke-interface {v2, v1}, Landroidx/media/AudioAttributesImpl$a;->c(I)Landroidx/media/AudioAttributesImpl$a;

    .line 141
    iget p0, p0, Landroidx/media2/exoplayer/external/audio/c;->d:I

    .line 142
    invoke-virtual {v0, p0}, Landroidx/media/AudioAttributesCompat$a;->a(I)Landroidx/media/AudioAttributesCompat$a;

    move-result-object p0

    .line 143
    invoke-virtual {p0}, Landroidx/media/AudioAttributesCompat$a;->a()Landroidx/media/AudioAttributesCompat;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroidx/media2/player/j;)Landroidx/media2/exoplayer/external/ad;
    .locals 3

    .line 148
    invoke-virtual {p0}, Landroidx/media2/player/j;->c()Ljava/lang/Float;

    move-result-object v0

    .line 149
    invoke-virtual {p0}, Landroidx/media2/player/j;->b()Ljava/lang/Float;

    move-result-object p0

    .line 150
    new-instance v1, Landroidx/media2/exoplayer/external/ad;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :cond_1
    invoke-direct {v1, v0, v2}, Landroidx/media2/exoplayer/external/ad;-><init>(FF)V

    return-object v1
.end method

.method public static a(I)Landroidx/media2/exoplayer/external/aj;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 157
    sget-object p0, Landroidx/media2/exoplayer/external/aj;->a:Landroidx/media2/exoplayer/external/aj;

    return-object p0

    .line 165
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 159
    :cond_1
    sget-object p0, Landroidx/media2/exoplayer/external/aj;->b:Landroidx/media2/exoplayer/external/aj;

    return-object p0

    .line 161
    :cond_2
    sget-object p0, Landroidx/media2/exoplayer/external/aj;->d:Landroidx/media2/exoplayer/external/aj;

    return-object p0

    .line 163
    :cond_3
    sget-object p0, Landroidx/media2/exoplayer/external/aj;->c:Landroidx/media2/exoplayer/external/aj;

    return-object p0
.end method

.method public static a(Landroidx/media/AudioAttributesCompat;)Landroidx/media2/exoplayer/external/audio/c;
    .locals 2

    .line 130
    new-instance v0, Landroidx/media2/exoplayer/external/audio/c$a;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/audio/c$a;-><init>()V

    .line 131
    invoke-virtual {p0}, Landroidx/media/AudioAttributesCompat;->c()I

    move-result v1

    .line 4068
    iput v1, v0, Landroidx/media2/exoplayer/external/audio/c$a;->a:I

    .line 132
    invoke-virtual {p0}, Landroidx/media/AudioAttributesCompat;->e()I

    move-result v1

    .line 4076
    iput v1, v0, Landroidx/media2/exoplayer/external/audio/c$a;->b:I

    .line 133
    invoke-virtual {p0}, Landroidx/media/AudioAttributesCompat;->d()I

    move-result p0

    .line 4084
    iput p0, v0, Landroidx/media2/exoplayer/external/audio/c$a;->c:I

    .line 134
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/audio/c$a;->a()Landroidx/media2/exoplayer/external/audio/c;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroidx/media2/exoplayer/external/upstream/f$a;Landroidx/media2/common/MediaItem;)Landroidx/media2/exoplayer/external/source/t;
    .locals 6

    .line 82
    instance-of v0, p2, Landroidx/media2/common/UriMediaItem;

    if-eqz v0, :cond_5

    .line 83
    move-object v0, p2

    check-cast v0, Landroidx/media2/common/UriMediaItem;

    .line 1062
    iget-object v0, v0, Landroidx/media2/common/UriMediaItem;->a:Landroid/net/Uri;

    .line 84
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/ac;->b(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 85
    new-instance p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;-><init>(Landroidx/media2/exoplayer/external/upstream/f$a;)V

    .line 1122
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->a:Z

    xor-int/2addr p1, v3

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 1123
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->b:Ljava/lang/Object;

    .line 87
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->a(Landroid/net/Uri;)Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;

    move-result-object p0

    return-object p0

    .line 89
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.resource"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 90
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/e/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 92
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    .line 93
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "\\d+"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_1
    const-string v2, "^/"

    const-string v5, ""

    .line 96
    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "raw"

    invoke-virtual {v1, v0, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    :goto_0
    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 102
    :goto_1
    invoke-static {v3}, Landroidx/core/e/d;->b(Z)V

    const/16 v0, 0x1a

    .line 2068
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "rawresource:///"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 105
    :cond_4
    new-instance p0, Landroidx/media2/exoplayer/external/source/n$c;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/n$c;-><init>(Landroidx/media2/exoplayer/external/upstream/f$a;)V

    sget-object p1, Landroidx/media2/player/d;->a:Landroidx/media2/exoplayer/external/extractor/j;

    .line 106
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/n$c;->a(Landroidx/media2/exoplayer/external/extractor/j;)Landroidx/media2/exoplayer/external/source/n$c;

    move-result-object p0

    .line 107
    invoke-virtual {p0, p2}, Landroidx/media2/exoplayer/external/source/n$c;->a(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/n$c;

    move-result-object p0

    .line 108
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/n$c;->a(Landroid/net/Uri;)Landroidx/media2/exoplayer/external/source/n;

    move-result-object p0

    return-object p0

    .line 110
    :cond_5
    instance-of p0, p2, Landroidx/media2/common/FileMediaItem;

    if-eqz p0, :cond_6

    .line 111
    new-instance p0, Landroidx/media2/exoplayer/external/source/n$c;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/n$c;-><init>(Landroidx/media2/exoplayer/external/upstream/f$a;)V

    sget-object p1, Landroidx/media2/player/d;->a:Landroidx/media2/exoplayer/external/extractor/j;

    .line 112
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/n$c;->a(Landroidx/media2/exoplayer/external/extractor/j;)Landroidx/media2/exoplayer/external/source/n$c;

    move-result-object p0

    .line 113
    invoke-virtual {p0, p2}, Landroidx/media2/exoplayer/external/source/n$c;->a(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/n$c;

    move-result-object p0

    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 114
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/n$c;->a(Landroid/net/Uri;)Landroidx/media2/exoplayer/external/source/n;

    move-result-object p0

    return-object p0

    .line 115
    :cond_6
    instance-of p0, p2, Landroidx/media2/common/CallbackMediaItem;

    if-eqz p0, :cond_7

    .line 116
    move-object p0, p2

    check-cast p0, Landroidx/media2/common/CallbackMediaItem;

    .line 3050
    iget-object p0, p0, Landroidx/media2/common/CallbackMediaItem;->a:Landroidx/media2/common/b;

    .line 4047
    new-instance p1, Landroidx/media2/player/b$1;

    invoke-direct {p1, p0}, Landroidx/media2/player/b$1;-><init>(Landroidx/media2/common/b;)V

    .line 119
    new-instance p0, Landroidx/media2/exoplayer/external/source/n$c;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/n$c;-><init>(Landroidx/media2/exoplayer/external/upstream/f$a;)V

    sget-object p1, Landroidx/media2/player/d;->a:Landroidx/media2/exoplayer/external/extractor/j;

    .line 120
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/n$c;->a(Landroidx/media2/exoplayer/external/extractor/j;)Landroidx/media2/exoplayer/external/source/n$c;

    move-result-object p0

    .line 121
    invoke-virtual {p0, p2}, Landroidx/media2/exoplayer/external/source/n$c;->a(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/n$c;

    move-result-object p0

    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 122
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/n$c;->a(Landroid/net/Uri;)Landroidx/media2/exoplayer/external/source/n;

    move-result-object p0

    return-object p0

    .line 124
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
