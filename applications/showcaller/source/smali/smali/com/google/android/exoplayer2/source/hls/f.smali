.class public final Lcom/google/android/exoplayer2/source/hls/f;
.super Ljava/lang/Object;
.source "DefaultHlsExtractorFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/hls/i;


# instance fields
.field private final b:I

.field private final c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/hls/f;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/google/android/exoplayer2/source/hls/f;->b:I

    .line 4
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/hls/f;->c:Z

    return-void
.end method

.method private static b(Lcom/google/android/exoplayer2/c1/h;)Lcom/google/android/exoplayer2/source/hls/i$a;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/i$a;

    instance-of v1, p0, Lcom/google/android/exoplayer2/c1/d0/j;

    if-nez v1, :cond_1

    instance-of v1, p0, Lcom/google/android/exoplayer2/c1/d0/f;

    if-nez v1, :cond_1

    instance-of v1, p0, Lcom/google/android/exoplayer2/c1/d0/h;

    if-nez v1, :cond_1

    instance-of v1, p0, Lcom/google/android/exoplayer2/c1/b0/e;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 2
    :goto_1
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/hls/f;->h(Lcom/google/android/exoplayer2/c1/h;)Z

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/exoplayer2/source/hls/i$a;-><init>(Lcom/google/android/exoplayer2/c1/h;ZZ)V

    return-object v0
.end method

.method private static c(Lcom/google/android/exoplayer2/c1/h;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/util/e0;)Lcom/google/android/exoplayer2/source/hls/i$a;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/google/android/exoplayer2/source/hls/p;

    if-eqz v0, :cond_0

    .line 2
    new-instance p0, Lcom/google/android/exoplayer2/source/hls/p;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->D:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/p;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/e0;)V

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/hls/f;->b(Lcom/google/android/exoplayer2/c1/h;)Lcom/google/android/exoplayer2/source/hls/i$a;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    instance-of p1, p0, Lcom/google/android/exoplayer2/c1/d0/j;

    if-eqz p1, :cond_1

    .line 4
    new-instance p0, Lcom/google/android/exoplayer2/c1/d0/j;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/c1/d0/j;-><init>()V

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/hls/f;->b(Lcom/google/android/exoplayer2/c1/h;)Lcom/google/android/exoplayer2/source/hls/i$a;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    instance-of p1, p0, Lcom/google/android/exoplayer2/c1/d0/f;

    if-eqz p1, :cond_2

    .line 6
    new-instance p0, Lcom/google/android/exoplayer2/c1/d0/f;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/c1/d0/f;-><init>()V

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/hls/f;->b(Lcom/google/android/exoplayer2/c1/h;)Lcom/google/android/exoplayer2/source/hls/i$a;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    instance-of p1, p0, Lcom/google/android/exoplayer2/c1/d0/h;

    if-eqz p1, :cond_3

    .line 8
    new-instance p0, Lcom/google/android/exoplayer2/c1/d0/h;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/c1/d0/h;-><init>()V

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/hls/f;->b(Lcom/google/android/exoplayer2/c1/h;)Lcom/google/android/exoplayer2/source/hls/i$a;

    move-result-object p0

    return-object p0

    .line 9
    :cond_3
    instance-of p0, p0, Lcom/google/android/exoplayer2/c1/b0/e;

    if-eqz p0, :cond_4

    .line 10
    new-instance p0, Lcom/google/android/exoplayer2/c1/b0/e;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/c1/b0/e;-><init>()V

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/hls/f;->b(Lcom/google/android/exoplayer2/c1/h;)Lcom/google/android/exoplayer2/source/hls/i$a;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private d(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/e0;)Lcom/google/android/exoplayer2/c1/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lcom/google/android/exoplayer2/util/e0;",
            ")",
            "Lcom/google/android/exoplayer2/c1/h;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 2
    :cond_0
    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->l:Ljava/lang/String;

    const-string v1, "text/vtt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ".webvtt"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ".vtt"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v0, ".aac"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    new-instance p1, Lcom/google/android/exoplayer2/c1/d0/j;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/c1/d0/j;-><init>()V

    return-object p1

    :cond_2
    const-string v0, ".ac3"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, ".ec3"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, ".ac4"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    new-instance p1, Lcom/google/android/exoplayer2/c1/d0/h;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/c1/d0/h;-><init>()V

    return-object p1

    :cond_4
    const-string v0, ".mp3"

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    new-instance p1, Lcom/google/android/exoplayer2/c1/b0/e;

    const/4 p2, 0x0

    const-wide/16 p3, 0x0

    invoke-direct {p1, p2, p3, p4}, Lcom/google/android/exoplayer2/c1/b0/e;-><init>(IJ)V

    return-object p1

    :cond_5
    const-string v0, ".mp4"

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    const-string v2, ".m4"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    const-string v1, ".cmf"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    .line 17
    :cond_6
    iget p1, p0, Lcom/google/android/exoplayer2/source/hls/f;->b:I

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/f;->c:Z

    invoke-static {p1, v0, p2, p3, p4}, Lcom/google/android/exoplayer2/source/hls/f;->f(IZLcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/e0;)Lcom/google/android/exoplayer2/c1/d0/g0;

    move-result-object p1

    return-object p1

    .line 18
    :cond_7
    :goto_0
    invoke-static {p4, p2, p3}, Lcom/google/android/exoplayer2/source/hls/f;->e(Lcom/google/android/exoplayer2/util/e0;Lcom/google/android/exoplayer2/Format;Ljava/util/List;)Lcom/google/android/exoplayer2/extractor/mp4/g;

    move-result-object p1

    return-object p1

    .line 19
    :cond_8
    :goto_1
    new-instance p1, Lcom/google/android/exoplayer2/c1/d0/f;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/c1/d0/f;-><init>()V

    return-object p1

    .line 20
    :cond_9
    :goto_2
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/p;

    iget-object p2, p2, Lcom/google/android/exoplayer2/Format;->D:Ljava/lang/String;

    invoke-direct {p1, p2, p4}, Lcom/google/android/exoplayer2/source/hls/p;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/e0;)V

    return-object p1
.end method

.method private static e(Lcom/google/android/exoplayer2/util/e0;Lcom/google/android/exoplayer2/Format;Ljava/util/List;)Lcom/google/android/exoplayer2/extractor/mp4/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/e0;",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;)",
            "Lcom/google/android/exoplayer2/extractor/mp4/g;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/g;

    .line 2
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/hls/f;->g(Lcom/google/android/exoplayer2/Format;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    :goto_1
    invoke-direct {v0, p1, p0, v1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/g;-><init>(ILcom/google/android/exoplayer2/util/e0;Lcom/google/android/exoplayer2/extractor/mp4/l;Ljava/util/List;)V

    return-object v0
.end method

.method private static f(IZLcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/e0;)Lcom/google/android/exoplayer2/c1/d0/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lcom/google/android/exoplayer2/util/e0;",
            ")",
            "Lcom/google/android/exoplayer2/c1/d0/g0;"
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

    .line 1
    invoke-static {p3, v0, p1, p3}, Lcom/google/android/exoplayer2/Format;->x(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    .line 2
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 4
    :goto_0
    iget-object p1, p2, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 6
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "audio/mp4a-latm"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    or-int/lit8 p0, p0, 0x2

    .line 7
    :cond_2
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/r;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "video/avc"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    or-int/lit8 p0, p0, 0x4

    .line 8
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/c1/d0/g0;

    new-instance p2, Lcom/google/android/exoplayer2/c1/d0/l;

    invoke-direct {p2, p0, p3}, Lcom/google/android/exoplayer2/c1/d0/l;-><init>(ILjava/util/List;)V

    const/4 p0, 0x2

    invoke-direct {p1, p0, p4, p2}, Lcom/google/android/exoplayer2/c1/d0/g0;-><init>(ILcom/google/android/exoplayer2/util/e0;Lcom/google/android/exoplayer2/c1/d0/h0$c;)V

    return-object p1
.end method

.method private static g(Lcom/google/android/exoplayer2/Format;)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/metadata/Metadata;->d()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->c(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v2

    .line 4
    instance-of v3, v2, Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry;

    if-eqz v3, :cond_1

    .line 5
    check-cast v2, Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry;

    iget-object p0, v2, Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static h(Lcom/google/android/exoplayer2/c1/h;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/google/android/exoplayer2/c1/d0/g0;

    if-nez v0, :cond_1

    instance-of p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static i(Lcom/google/android/exoplayer2/c1/h;Lcom/google/android/exoplayer2/c1/i;)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/c1/h;->c(Lcom/google/android/exoplayer2/c1/i;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->g()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->g()V

    .line 3
    throw p0

    .line 4
    :catch_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->g()V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/c1/h;Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/e0;Ljava/util/Map;Lcom/google/android/exoplayer2/c1/i;)Lcom/google/android/exoplayer2/source/hls/i$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/c1/h;",
            "Landroid/net/Uri;",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lcom/google/android/exoplayer2/util/e0;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/google/android/exoplayer2/c1/i;",
            ")",
            "Lcom/google/android/exoplayer2/source/hls/i$a;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/hls/f;->h(Lcom/google/android/exoplayer2/c1/h;)Z

    move-result p6

    if-eqz p6, :cond_0

    .line 2
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/hls/f;->b(Lcom/google/android/exoplayer2/c1/h;)Lcom/google/android/exoplayer2/source/hls/i$a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1, p3, p5}, Lcom/google/android/exoplayer2/source/hls/f;->c(Lcom/google/android/exoplayer2/c1/h;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/util/e0;)Lcom/google/android/exoplayer2/source/hls/i$a;

    move-result-object p6

    if-eqz p6, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected previousExtractor type: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 6
    :cond_2
    :goto_0
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/exoplayer2/source/hls/f;->d(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/e0;)Lcom/google/android/exoplayer2/c1/h;

    move-result-object p1

    .line 7
    invoke-interface {p7}, Lcom/google/android/exoplayer2/c1/i;->g()V

    .line 8
    invoke-static {p1, p7}, Lcom/google/android/exoplayer2/source/hls/f;->i(Lcom/google/android/exoplayer2/c1/h;Lcom/google/android/exoplayer2/c1/i;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 9
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/hls/f;->b(Lcom/google/android/exoplayer2/c1/h;)Lcom/google/android/exoplayer2/source/hls/i$a;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3
    instance-of p2, p1, Lcom/google/android/exoplayer2/source/hls/p;

    if-nez p2, :cond_4

    .line 11
    new-instance p2, Lcom/google/android/exoplayer2/source/hls/p;

    iget-object p6, p3, Lcom/google/android/exoplayer2/Format;->D:Ljava/lang/String;

    invoke-direct {p2, p6, p5}, Lcom/google/android/exoplayer2/source/hls/p;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/e0;)V

    .line 12
    invoke-static {p2, p7}, Lcom/google/android/exoplayer2/source/hls/f;->i(Lcom/google/android/exoplayer2/c1/h;Lcom/google/android/exoplayer2/c1/i;)Z

    move-result p6

    if-eqz p6, :cond_4

    .line 13
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/hls/f;->b(Lcom/google/android/exoplayer2/c1/h;)Lcom/google/android/exoplayer2/source/hls/i$a;

    move-result-object p1

    return-object p1

    .line 14
    :cond_4
    instance-of p2, p1, Lcom/google/android/exoplayer2/c1/d0/j;

    if-nez p2, :cond_5

    .line 15
    new-instance p2, Lcom/google/android/exoplayer2/c1/d0/j;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/c1/d0/j;-><init>()V

    .line 16
    invoke-static {p2, p7}, Lcom/google/android/exoplayer2/source/hls/f;->i(Lcom/google/android/exoplayer2/c1/h;Lcom/google/android/exoplayer2/c1/i;)Z

    move-result p6

    if-eqz p6, :cond_5

    .line 17
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/hls/f;->b(Lcom/google/android/exoplayer2/c1/h;)Lcom/google/android/exoplayer2/source/hls/i$a;

    move-result-object p1

    return-object p1

    .line 18
    :cond_5
    instance-of p2, p1, Lcom/google/android/exoplayer2/c1/d0/f;

    if-nez p2, :cond_6

    .line 19
    new-instance p2, Lcom/google/android/exoplayer2/c1/d0/f;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/c1/d0/f;-><init>()V

    .line 20
    invoke-static {p2, p7}, Lcom/google/android/exoplayer2/source/hls/f;->i(Lcom/google/android/exoplayer2/c1/h;Lcom/google/android/exoplayer2/c1/i;)Z

    move-result p6

    if-eqz p6, :cond_6

    .line 21
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/hls/f;->b(Lcom/google/android/exoplayer2/c1/h;)Lcom/google/android/exoplayer2/source/hls/i$a;

    move-result-object p1

    return-object p1

    .line 22
    :cond_6
    instance-of p2, p1, Lcom/google/android/exoplayer2/c1/d0/h;

    if-nez p2, :cond_7

    .line 23
    new-instance p2, Lcom/google/android/exoplayer2/c1/d0/h;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/c1/d0/h;-><init>()V

    .line 24
    invoke-static {p2, p7}, Lcom/google/android/exoplayer2/source/hls/f;->i(Lcom/google/android/exoplayer2/c1/h;Lcom/google/android/exoplayer2/c1/i;)Z

    move-result p6

    if-eqz p6, :cond_7

    .line 25
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/hls/f;->b(Lcom/google/android/exoplayer2/c1/h;)Lcom/google/android/exoplayer2/source/hls/i$a;

    move-result-object p1

    return-object p1

    .line 26
    :cond_7
    instance-of p2, p1, Lcom/google/android/exoplayer2/c1/b0/e;

    if-nez p2, :cond_8

    .line 27
    new-instance p2, Lcom/google/android/exoplayer2/c1/b0/e;

    const/4 p6, 0x0

    const-wide/16 v0, 0x0

    invoke-direct {p2, p6, v0, v1}, Lcom/google/android/exoplayer2/c1/b0/e;-><init>(IJ)V

    .line 28
    invoke-static {p2, p7}, Lcom/google/android/exoplayer2/source/hls/f;->i(Lcom/google/android/exoplayer2/c1/h;Lcom/google/android/exoplayer2/c1/i;)Z

    move-result p6

    if-eqz p6, :cond_8

    .line 29
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/hls/f;->b(Lcom/google/android/exoplayer2/c1/h;)Lcom/google/android/exoplayer2/source/hls/i$a;

    move-result-object p1

    return-object p1

    .line 30
    :cond_8
    instance-of p2, p1, Lcom/google/android/exoplayer2/extractor/mp4/g;

    if-nez p2, :cond_9

    .line 31
    invoke-static {p5, p3, p4}, Lcom/google/android/exoplayer2/source/hls/f;->e(Lcom/google/android/exoplayer2/util/e0;Lcom/google/android/exoplayer2/Format;Ljava/util/List;)Lcom/google/android/exoplayer2/extractor/mp4/g;

    move-result-object p2

    .line 32
    invoke-static {p2, p7}, Lcom/google/android/exoplayer2/source/hls/f;->i(Lcom/google/android/exoplayer2/c1/h;Lcom/google/android/exoplayer2/c1/i;)Z

    move-result p6

    if-eqz p6, :cond_9

    .line 33
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/hls/f;->b(Lcom/google/android/exoplayer2/c1/h;)Lcom/google/android/exoplayer2/source/hls/i$a;

    move-result-object p1

    return-object p1

    .line 34
    :cond_9
    instance-of p2, p1, Lcom/google/android/exoplayer2/c1/d0/g0;

    if-nez p2, :cond_a

    .line 35
    iget p2, p0, Lcom/google/android/exoplayer2/source/hls/f;->b:I

    iget-boolean p6, p0, Lcom/google/android/exoplayer2/source/hls/f;->c:Z

    .line 36
    invoke-static {p2, p6, p3, p4, p5}, Lcom/google/android/exoplayer2/source/hls/f;->f(IZLcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/e0;)Lcom/google/android/exoplayer2/c1/d0/g0;

    move-result-object p2

    .line 37
    invoke-static {p2, p7}, Lcom/google/android/exoplayer2/source/hls/f;->i(Lcom/google/android/exoplayer2/c1/h;Lcom/google/android/exoplayer2/c1/i;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 38
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/hls/f;->b(Lcom/google/android/exoplayer2/c1/h;)Lcom/google/android/exoplayer2/source/hls/i$a;

    move-result-object p1

    return-object p1

    .line 39
    :cond_a
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/hls/f;->b(Lcom/google/android/exoplayer2/c1/h;)Lcom/google/android/exoplayer2/source/hls/i$a;

    move-result-object p1

    return-object p1
.end method
