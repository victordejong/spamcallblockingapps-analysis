.class public Lcom/pubmatic/sdk/video/player/POBVastPlayerUtil;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;FII)F
    .locals 1

    invoke-virtual {p0}, Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;->getBitrate()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    div-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;->getWidth()I

    move-result p1

    sub-int/2addr p1, p2

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-virtual {p0}, Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;->getHeight()I

    move-result p0

    sub-int/2addr p0, p3

    int-to-float p0, p0

    int-to-float p2, p3

    div-float/2addr p0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    add-float/2addr p2, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    add-float/2addr p2, p0

    return p2
.end method

.method private static a(Ljava/util/List;[Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;",
            ">;[",
            "Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;",
            ")",
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;

    array-length v3, p1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    aget-object v5, p1, v4

    invoke-virtual {v2}, Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;->MEDIA_WEBM:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;

    if-eq v5, v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move-object p0, v0

    move-object v0, v1

    goto :goto_2

    :cond_3
    move-object p0, v0

    :goto_2
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    return-object p0

    :cond_4
    return-object v0
.end method

.method public static filterMediaFiles(Ljava/util/List;[Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;III)Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;",
            ">;[",
            "Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;",
            "III)",
            "Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/pubmatic/sdk/video/player/POBVastPlayerUtil;->a(Ljava/util/List;[Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;

    return-object p0

    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;

    int-to-float p2, p2

    invoke-static {p1, p2, p3, p4}, Lcom/pubmatic/sdk/video/player/POBVastPlayerUtil;->a(Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;FII)F

    move-result p1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;

    invoke-static {v2, p2, p3, p4}, Lcom/pubmatic/sdk/video/player/POBVastPlayerUtil;->a(Lcom/pubmatic/sdk/video/vastmodels/POBMediaFile;FII)F

    move-result v3

    cmpg-float v4, v3, p1

    if-gez v4, :cond_1

    move-object v0, v2

    move p1, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBitRate(ZZ)I
    .locals 0

    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    const/16 p0, 0x3e8

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    const/16 p0, 0x7d0

    goto :goto_1

    :cond_2
    :goto_0
    const/16 p0, 0x258

    :goto_1
    return p0
.end method

.method public static getScaleFactor(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static getSkipOffset(DLcom/pubmatic/sdk/video/POBVastPlayerConfig;J)D
    .locals 3

    invoke-virtual {p2}, Lcom/pubmatic/sdk/video/POBVastPlayerConfig;->getSkip()I

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    cmpl-double v0, p0, v1

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/pubmatic/sdk/video/POBVastPlayerConfig;->getMaxDuration()I

    move-result p0

    :goto_0
    int-to-double p0, p0

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/pubmatic/sdk/video/POBVastPlayerConfig;->getSkip()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_2

    invoke-virtual {p2}, Lcom/pubmatic/sdk/video/POBVastPlayerConfig;->getSkipMin()I

    move-result p0

    int-to-long p0, p0

    cmp-long v0, p3, p0

    if-lez v0, :cond_2

    invoke-virtual {p2}, Lcom/pubmatic/sdk/video/POBVastPlayerConfig;->getSkipAfter()I

    move-result p0

    goto :goto_0

    :cond_2
    move-wide p0, v1

    :goto_1
    cmpl-double p2, p0, v1

    if-nez p2, :cond_3

    long-to-double p0, p3

    goto :goto_2

    :cond_3
    long-to-double p2, p3

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    :goto_2
    return-wide p0
.end method

.method public static getSuitableEndCardCompanion(Ljava/util/List;IIFF)Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;",
            ">;IIFF)",
            "Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    int-to-float p1, p1

    int-to-float p2, p2

    div-float p2, p1, p2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;

    invoke-virtual {v2}, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;->getRenderingMode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "end-card"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    const p0, 0x461c3c00    # 9999.0f

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;

    invoke-virtual {v2}, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;->getWidth()I

    move-result v3

    invoke-static {v3}, Lcom/pubmatic/sdk/common/utility/POBUtils;->convertDpToPixel(I)I

    move-result v3

    invoke-virtual {v2}, Lcom/pubmatic/sdk/video/vastmodels/POBCompanion;->getHeight()I

    move-result v4

    invoke-static {v4}, Lcom/pubmatic/sdk/common/utility/POBUtils;->convertDpToPixel(I)I

    move-result v4

    int-to-float v3, v3

    int-to-float v4, v4

    div-float v4, v3, v4

    div-float/2addr v4, p2

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float/2addr v3, p1

    sub-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v5, p3, v4

    if-ltz v5, :cond_3

    cmpg-float v5, v4, p0

    if-gez v5, :cond_3

    cmpg-float v3, v3, p4

    if-gtz v3, :cond_3

    move-object v1, v2

    move p0, v4

    goto :goto_1

    :cond_4
    return-object v1
.end method
