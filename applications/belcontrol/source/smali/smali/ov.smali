.class public Lov;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation


# static fields
.field public static final a:Ldk;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lyj;

    invoke-direct {v0}, Lyj;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lyj;->a(I)Lyj;

    sput-object v0, Lov;->a:Ldk;

    return-void
.end method

.method public static a(Landroid/content/Context;Lls$a;Landroidx/media2/common/MediaItem;)Lhp;
    .locals 6

    instance-of v0, p2, Landroidx/media2/common/UriMediaItem;

    if-eqz v0, :cond_5

    move-object v0, p2

    check-cast v0, Landroidx/media2/common/UriMediaItem;

    invoke-virtual {v0}, Landroidx/media2/common/UriMediaItem;->j()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lnu;->P(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    new-instance p0, Lrq$b;

    invoke-direct {p0, p1}, Lrq$b;-><init>(Lls$a;)V

    invoke-virtual {p0, p2}, Lrq$b;->b(Ljava/lang/Object;)Lrq$b;

    invoke-virtual {p0, v0}, Lrq$b;->a(Landroid/net/Uri;)Lrq;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.resource"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Loa;->d(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "\\d+"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

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

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

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

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

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

    :goto_1
    invoke-static {v3}, Loa;->f(Z)V

    invoke-static {p0}, Lft;->g(I)Landroid/net/Uri;

    move-result-object v0

    :cond_4
    new-instance p0, Lcp$b;

    invoke-direct {p0, p1}, Lcp$b;-><init>(Lls$a;)V

    sget-object p1, Lov;->a:Ldk;

    invoke-virtual {p0, p1}, Lcp$b;->b(Ldk;)Lcp$b;

    invoke-virtual {p0, p2}, Lcp$b;->c(Ljava/lang/Object;)Lcp$b;

    invoke-virtual {p0, v0}, Lcp$b;->a(Landroid/net/Uri;)Lcp;

    move-result-object p0

    return-object p0

    :cond_5
    instance-of p0, p2, Landroidx/media2/common/FileMediaItem;

    if-eqz p0, :cond_6

    new-instance p0, Lcp$b;

    invoke-direct {p0, p1}, Lcp$b;-><init>(Lls$a;)V

    sget-object p1, Lov;->a:Ldk;

    invoke-virtual {p0, p1}, Lcp$b;->b(Ldk;)Lcp$b;

    invoke-virtual {p0, p2}, Lcp$b;->c(Ljava/lang/Object;)Lcp$b;

    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcp$b;->a(Landroid/net/Uri;)Lcp;

    move-result-object p0

    return-object p0

    :cond_6
    instance-of p0, p2, Landroidx/media2/common/CallbackMediaItem;

    if-eqz p0, :cond_7

    move-object p0, p2

    check-cast p0, Landroidx/media2/common/CallbackMediaItem;

    invoke-virtual {p0}, Landroidx/media2/common/CallbackMediaItem;->j()Lzf;

    move-result-object p0

    invoke-static {p0}, Llv;->g(Lzf;)Lls$a;

    move-result-object p0

    new-instance p1, Lcp$b;

    invoke-direct {p1, p0}, Lcp$b;-><init>(Lls$a;)V

    sget-object p0, Lov;->a:Ldk;

    invoke-virtual {p1, p0}, Lcp$b;->b(Ldk;)Lcp$b;

    invoke-virtual {p1, p2}, Lcp$b;->c(Ljava/lang/Object;)Lcp$b;

    sget-object p0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1, p0}, Lcp$b;->a(Landroid/net/Uri;)Lcp;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static b(Landroidx/media/AudioAttributesCompat;)Luh;
    .locals 2

    new-instance v0, Luh$b;

    invoke-direct {v0}, Luh$b;-><init>()V

    invoke-virtual {p0}, Landroidx/media/AudioAttributesCompat;->getContentType()I

    move-result v1

    invoke-virtual {v0, v1}, Luh$b;->b(I)Luh$b;

    invoke-virtual {p0}, Landroidx/media/AudioAttributesCompat;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Luh$b;->c(I)Luh$b;

    invoke-virtual {p0}, Landroidx/media/AudioAttributesCompat;->getUsage()I

    move-result p0

    invoke-virtual {v0, p0}, Luh$b;->d(I)Luh$b;

    invoke-virtual {v0}, Luh$b;->a()Luh;

    move-result-object p0

    return-object p0
.end method

.method public static c(Luh;)Landroidx/media/AudioAttributesCompat;
    .locals 2

    new-instance v0, Landroidx/media/AudioAttributesCompat$a;

    invoke-direct {v0}, Landroidx/media/AudioAttributesCompat$a;-><init>()V

    iget v1, p0, Luh;->a:I

    invoke-virtual {v0, v1}, Landroidx/media/AudioAttributesCompat$a;->b(I)Landroidx/media/AudioAttributesCompat$a;

    iget v1, p0, Luh;->b:I

    invoke-virtual {v0, v1}, Landroidx/media/AudioAttributesCompat$a;->c(I)Landroidx/media/AudioAttributesCompat$a;

    iget p0, p0, Luh;->c:I

    invoke-virtual {v0, p0}, Landroidx/media/AudioAttributesCompat$a;->e(I)Landroidx/media/AudioAttributesCompat$a;

    invoke-virtual {v0}, Landroidx/media/AudioAttributesCompat$a;->a()Landroidx/media/AudioAttributesCompat;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lfg;)I
    .locals 1

    iget v0, p0, Lfg;->a:I

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lfg;->e()Ljava/io/IOException;

    move-result-object p0

    instance-of v0, p0, Lch;

    if-eqz v0, :cond_0

    const/16 p0, -0x3ef

    return p0

    :cond_0
    instance-of v0, p0, Lbt$b;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p0, p0, Ljava/net/SocketTimeoutException;

    if-eqz p0, :cond_1

    const/16 p0, -0x6e

    return p0

    :cond_1
    const/16 p0, -0x3ec

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static e(Landroidx/media2/exoplayer/external/Format;)Landroid/media/MediaFormat;
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    iget-object v1, p0, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    const-string v2, "mime"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lvt;->g(Ljava/lang/String;)I

    move-result v3

    const-string v4, "language"

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->x:I

    const-string v2, "channel-count"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->y:I

    const-string v2, "sample-rate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object p0, p0, Landroidx/media2/exoplayer/external/Format;->C:Ljava/lang/String;

    if-eqz p0, :cond_7

    invoke-virtual {v0, v4, p0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_0
    const/4 v6, 0x2

    if-ne v3, v6, :cond_1

    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->p:I

    const-string v2, "width"

    invoke-static {v0, v2, v1}, Leo;->d(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->q:I

    const-string v2, "height"

    invoke-static {v0, v2, v1}, Leo;->d(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->r:F

    const-string v2, "frame-rate"

    invoke-static {v0, v2, v1}, Leo;->c(Landroid/media/MediaFormat;Ljava/lang/String;F)V

    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->s:I

    const-string v2, "rotation-degrees"

    invoke-static {v0, v2, v1}, Leo;->d(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    iget-object p0, p0, Landroidx/media2/exoplayer/external/Format;->w:Landroidx/media2/exoplayer/external/video/ColorInfo;

    invoke-static {v0, p0}, Leo;->b(Landroid/media/MediaFormat;Landroidx/media2/exoplayer/external/video/ColorInfo;)V

    goto :goto_4

    :cond_1
    const/4 v7, 0x3

    if-ne v3, v7, :cond_7

    iget v3, p0, Landroidx/media2/exoplayer/external/Format;->c:I

    const/4 v7, 0x4

    const/4 v8, 0x0

    if-ne v3, v7, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    if-ne v3, v5, :cond_3

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    if-ne v3, v6, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    const-string v3, "is-autoselect"

    invoke-virtual {v0, v3, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "is-default"

    invoke-virtual {v0, v3, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "is-forced-subtitle"

    invoke-virtual {v0, v3, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object p0, p0, Landroidx/media2/exoplayer/external/Format;->C:Ljava/lang/String;

    if-nez p0, :cond_5

    const-string p0, "und"

    :cond_5
    invoke-virtual {v0, v4, p0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "application/cea-608"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "text/cea-608"

    :goto_3
    invoke-virtual {v0, v2, p0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    const-string p0, "application/cea-708"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "text/cea-708"

    goto :goto_3

    :cond_7
    :goto_4
    return-object v0
.end method

.method public static f(Lhv;)Leh;
    .locals 3

    invoke-virtual {p0}, Lhv;->d()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0}, Lhv;->b()Ljava/lang/Float;

    move-result-object p0

    new-instance v1, Leh;

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
    invoke-direct {v1, v0, v2}, Leh;-><init>(FF)V

    return-object v1
.end method

.method public static g(I)Lnh;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    sget-object p0, Lnh;->c:Lnh;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Lnh;->d:Lnh;

    return-object p0

    :cond_2
    sget-object p0, Lnh;->f:Lnh;

    return-object p0

    :cond_3
    sget-object p0, Lnh;->e:Lnh;

    return-object p0
.end method
