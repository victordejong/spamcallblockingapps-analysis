.class public final Lkq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lnq;


# instance fields
.field public final b:I

.field public final c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lkq;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkq;->b:I

    iput-boolean p2, p0, Lkq;->c:Z

    return-void
.end method

.method public static b(Lak;)Lnq$a;
    .locals 3

    new-instance v0, Lnq$a;

    instance-of v1, p0, Lpm;

    if-nez v1, :cond_1

    instance-of v1, p0, Ljm;

    if-nez v1, :cond_1

    instance-of v1, p0, Lmm;

    if-nez v1, :cond_1

    instance-of v1, p0, Lel;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {p0}, Lkq;->g(Lak;)Z

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lnq$a;-><init>(Lak;ZZ)V

    return-object v0
.end method

.method public static c(Lak;Landroidx/media2/exoplayer/external/Format;Lju;)Lnq$a;
    .locals 1

    instance-of v0, p0, Lzq;

    if-eqz v0, :cond_0

    new-instance p0, Lzq;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/Format;->C:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lzq;-><init>(Ljava/lang/String;Lju;)V

    :goto_0
    invoke-static {p0}, Lkq;->b(Lak;)Lnq$a;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of p1, p0, Lpm;

    if-eqz p1, :cond_1

    new-instance p0, Lpm;

    invoke-direct {p0}, Lpm;-><init>()V

    goto :goto_0

    :cond_1
    instance-of p1, p0, Ljm;

    if-eqz p1, :cond_2

    new-instance p0, Ljm;

    invoke-direct {p0}, Ljm;-><init>()V

    goto :goto_0

    :cond_2
    instance-of p1, p0, Lmm;

    if-eqz p1, :cond_3

    new-instance p0, Lmm;

    invoke-direct {p0}, Lmm;-><init>()V

    goto :goto_0

    :cond_3
    instance-of p0, p0, Lel;

    if-eqz p0, :cond_4

    new-instance p0, Lel;

    invoke-direct {p0}, Lel;-><init>()V

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Lju;Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)Lml;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lju;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;)",
            "Lml;"
        }
    .end annotation

    new-instance v6, Lml;

    if-eqz p2, :cond_0

    goto :goto_0

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

    invoke-direct/range {v0 .. v5}, Lml;-><init>(ILju;Lsl;Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)V

    return-object v6
.end method

.method public static f(IZLandroidx/media2/exoplayer/external/Format;Ljava/util/List;Lju;)Lon;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Landroidx/media2/exoplayer/external/Format;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;",
            "Lju;",
            ")",
            "Lon;"
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

    invoke-static {p3, v0, p1, p3}, Landroidx/media2/exoplayer/external/Format;->t(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    :goto_0
    iget-object p1, p2, Landroidx/media2/exoplayer/external/Format;->g:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {p1}, Lvt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "audio/mp4a-latm"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    or-int/lit8 p0, p0, 0x2

    :cond_2
    invoke-static {p1}, Lvt;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "video/avc"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    or-int/lit8 p0, p0, 0x4

    :cond_3
    new-instance p1, Lon;

    new-instance p2, Lrm;

    invoke-direct {p2, p0, p3}, Lrm;-><init>(ILjava/util/List;)V

    const/4 p0, 0x2

    invoke-direct {p1, p0, p4, p2}, Lon;-><init>(ILju;Lpn$c;)V

    return-object p1
.end method

.method public static g(Lak;)Z
    .locals 1

    instance-of v0, p0, Lon;

    if-nez v0, :cond_1

    instance-of p0, p0, Lml;

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

.method public static h(Lak;Lbk;)Z
    .locals 0

    :try_start_0
    invoke-interface {p0, p1}, Lak;->b(Lbk;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lbk;->resetPeekPosition()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Lbk;->resetPeekPosition()V

    throw p0

    :catch_0
    invoke-interface {p1}, Lbk;->resetPeekPosition()V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Lak;Landroid/net/Uri;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;Lju;Ljava/util/Map;Lbk;)Lnq$a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lak;",
            "Landroid/net/Uri;",
            "Landroidx/media2/exoplayer/external/Format;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "Lju;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lbk;",
            ")",
            "Lnq$a;"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-static {p1}, Lkq;->g(Lak;)Z

    move-result p7

    if-eqz p7, :cond_0

    invoke-static {p1}, Lkq;->b(Lak;)Lnq$a;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1, p3, p6}, Lkq;->c(Lak;Landroidx/media2/exoplayer/external/Format;Lju;)Lnq$a;

    move-result-object p7

    if-nez p7, :cond_2

    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Unexpected previousExtractor type: "

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lkq;->d(Landroid/net/Uri;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;Lju;)Lak;

    move-result-object p1

    invoke-interface {p8}, Lbk;->resetPeekPosition()V

    invoke-static {p1, p8}, Lkq;->h(Lak;Lbk;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p1}, Lkq;->b(Lak;)Lnq$a;

    move-result-object p1

    return-object p1

    :cond_3
    instance-of p2, p1, Lzq;

    if-nez p2, :cond_4

    new-instance p2, Lzq;

    iget-object p7, p3, Landroidx/media2/exoplayer/external/Format;->C:Ljava/lang/String;

    invoke-direct {p2, p7, p6}, Lzq;-><init>(Ljava/lang/String;Lju;)V

    invoke-static {p2, p8}, Lkq;->h(Lak;Lbk;)Z

    move-result p7

    if-eqz p7, :cond_4

    invoke-static {p2}, Lkq;->b(Lak;)Lnq$a;

    move-result-object p1

    return-object p1

    :cond_4
    instance-of p2, p1, Lpm;

    if-nez p2, :cond_5

    new-instance p2, Lpm;

    invoke-direct {p2}, Lpm;-><init>()V

    invoke-static {p2, p8}, Lkq;->h(Lak;Lbk;)Z

    move-result p7

    if-eqz p7, :cond_5

    invoke-static {p2}, Lkq;->b(Lak;)Lnq$a;

    move-result-object p1

    return-object p1

    :cond_5
    instance-of p2, p1, Ljm;

    if-nez p2, :cond_6

    new-instance p2, Ljm;

    invoke-direct {p2}, Ljm;-><init>()V

    invoke-static {p2, p8}, Lkq;->h(Lak;Lbk;)Z

    move-result p7

    if-eqz p7, :cond_6

    invoke-static {p2}, Lkq;->b(Lak;)Lnq$a;

    move-result-object p1

    return-object p1

    :cond_6
    instance-of p2, p1, Lmm;

    if-nez p2, :cond_7

    new-instance p2, Lmm;

    invoke-direct {p2}, Lmm;-><init>()V

    invoke-static {p2, p8}, Lkq;->h(Lak;Lbk;)Z

    move-result p7

    if-eqz p7, :cond_7

    invoke-static {p2}, Lkq;->b(Lak;)Lnq$a;

    move-result-object p1

    return-object p1

    :cond_7
    instance-of p2, p1, Lel;

    if-nez p2, :cond_8

    new-instance p2, Lel;

    const/4 p7, 0x0

    const-wide/16 v0, 0x0

    invoke-direct {p2, p7, v0, v1}, Lel;-><init>(IJ)V

    invoke-static {p2, p8}, Lkq;->h(Lak;Lbk;)Z

    move-result p7

    if-eqz p7, :cond_8

    invoke-static {p2}, Lkq;->b(Lak;)Lnq$a;

    move-result-object p1

    return-object p1

    :cond_8
    instance-of p2, p1, Lml;

    if-nez p2, :cond_9

    invoke-static {p6, p5, p4}, Lkq;->e(Lju;Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)Lml;

    move-result-object p2

    invoke-static {p2, p8}, Lkq;->h(Lak;Lbk;)Z

    move-result p5

    if-eqz p5, :cond_9

    invoke-static {p2}, Lkq;->b(Lak;)Lnq$a;

    move-result-object p1

    return-object p1

    :cond_9
    instance-of p2, p1, Lon;

    if-nez p2, :cond_a

    iget p2, p0, Lkq;->b:I

    iget-boolean p5, p0, Lkq;->c:Z

    invoke-static {p2, p5, p3, p4, p6}, Lkq;->f(IZLandroidx/media2/exoplayer/external/Format;Ljava/util/List;Lju;)Lon;

    move-result-object p2

    invoke-static {p2, p8}, Lkq;->h(Lak;Lbk;)Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-static {p2}, Lkq;->b(Lak;)Lnq$a;

    move-result-object p1

    return-object p1

    :cond_a
    invoke-static {p1}, Lkq;->b(Lak;)Lnq$a;

    move-result-object p1

    return-object p1
.end method

.method public final d(Landroid/net/Uri;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;Lju;)Lak;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroidx/media2/exoplayer/external/Format;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "Lju;",
            ")",
            "Lak;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iget-object v0, p2, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    const-string v1, "text/vtt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ".webvtt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ".vtt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v0, ".aac"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Lpm;

    invoke-direct {p1}, Lpm;-><init>()V

    return-object p1

    :cond_2
    const-string v0, ".ac3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, ".ec3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, ".ac4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p1, Lmm;

    invoke-direct {p1}, Lmm;-><init>()V

    return-object p1

    :cond_4
    const-string v0, ".mp3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance p1, Lel;

    const/4 p2, 0x0

    const-wide/16 p3, 0x0

    invoke-direct {p1, p2, p3, p4}, Lel;-><init>(IJ)V

    return-object p1

    :cond_5
    const-string v0, ".mp4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    const-string v2, ".m4"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    const-string v1, ".cmf"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    iget p1, p0, Lkq;->b:I

    iget-boolean p4, p0, Lkq;->c:Z

    invoke-static {p1, p4, p2, p3, p5}, Lkq;->f(IZLandroidx/media2/exoplayer/external/Format;Ljava/util/List;Lju;)Lon;

    move-result-object p1

    return-object p1

    :cond_7
    :goto_0
    invoke-static {p5, p4, p3}, Lkq;->e(Lju;Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)Lml;

    move-result-object p1

    return-object p1

    :cond_8
    :goto_1
    new-instance p1, Ljm;

    invoke-direct {p1}, Ljm;-><init>()V

    return-object p1

    :cond_9
    :goto_2
    new-instance p1, Lzq;

    iget-object p2, p2, Landroidx/media2/exoplayer/external/Format;->C:Ljava/lang/String;

    invoke-direct {p1, p2, p5}, Lzq;-><init>(Ljava/lang/String;Lju;)V

    return-object p1
.end method
