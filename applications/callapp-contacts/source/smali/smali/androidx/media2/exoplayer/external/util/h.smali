.class public final Landroidx/media2/exoplayer/external/util/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:J

.field public final i:Landroidx/media2/exoplayer/external/metadata/Metadata;


# direct methods
.method public constructor <init>(IIIIIIIJLjava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIIIJ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;",
            ">;)V"
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput p1, p0, Landroidx/media2/exoplayer/external/util/h;->a:I

    .line 103
    iput p2, p0, Landroidx/media2/exoplayer/external/util/h;->b:I

    .line 104
    iput p3, p0, Landroidx/media2/exoplayer/external/util/h;->c:I

    .line 105
    iput p4, p0, Landroidx/media2/exoplayer/external/util/h;->d:I

    .line 106
    iput p5, p0, Landroidx/media2/exoplayer/external/util/h;->e:I

    .line 107
    iput p6, p0, Landroidx/media2/exoplayer/external/util/h;->f:I

    .line 108
    iput p7, p0, Landroidx/media2/exoplayer/external/util/h;->g:I

    .line 109
    iput-wide p8, p0, Landroidx/media2/exoplayer/external/util/h;->h:J

    .line 110
    invoke-static {p10, p11}, Landroidx/media2/exoplayer/external/util/h;->a(Ljava/util/List;Ljava/util/List;)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/util/h;->i:Landroidx/media2/exoplayer/external/metadata/Metadata;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 4

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroidx/media2/exoplayer/external/util/o;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/util/o;-><init>([B)V

    mul-int/lit8 p2, p2, 0x8

    .line 61
    invoke-virtual {v0, p2}, Landroidx/media2/exoplayer/external/util/o;->a(I)V

    const/16 p1, 0x10

    .line 62
    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result p2

    iput p2, p0, Landroidx/media2/exoplayer/external/util/h;->a:I

    .line 63
    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result p1

    iput p1, p0, Landroidx/media2/exoplayer/external/util/h;->b:I

    const/16 p1, 0x18

    .line 64
    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result p2

    iput p2, p0, Landroidx/media2/exoplayer/external/util/h;->c:I

    .line 65
    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result p1

    iput p1, p0, Landroidx/media2/exoplayer/external/util/h;->d:I

    const/16 p1, 0x14

    .line 66
    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result p1

    iput p1, p0, Landroidx/media2/exoplayer/external/util/h;->e:I

    const/4 p1, 0x3

    .line 67
    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/media2/exoplayer/external/util/h;->f:I

    const/4 p1, 0x5

    .line 68
    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/media2/exoplayer/external/util/h;->g:I

    const/4 p1, 0x4

    .line 69
    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result p1

    int-to-long p1, p1

    const-wide/16 v1, 0xf

    and-long/2addr p1, v1

    const/16 v1, 0x20

    shl-long/2addr p1, v1

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long/2addr p1, v0

    iput-wide p1, p0, Landroidx/media2/exoplayer/external/util/h;->h:J

    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Landroidx/media2/exoplayer/external/util/h;->i:Landroidx/media2/exoplayer/external/metadata/Metadata;

    return-void
.end method

.method private static a(Ljava/util/List;Ljava/util/List;)Landroidx/media2/exoplayer/external/metadata/Metadata;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/metadata/flac/PictureFrame;",
            ">;)",
            "Landroidx/media2/exoplayer/external/metadata/Metadata;"
        }
    .end annotation

    .line 156
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 160
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 161
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 162
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "="

    .line 163
    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/util/ac;->b(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 164
    array-length v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    const-string v5, "Failed to parse vorbis comment: "

    .line 165
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string v5, "FlacStreamMetadata"

    invoke-static {v5, v4}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 167
    :cond_2
    new-instance v4, Landroidx/media2/exoplayer/external/metadata/flac/VorbisComment;

    aget-object v6, v5, v2

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-direct {v4, v6, v5}, Landroidx/media2/exoplayer/external/metadata/flac/VorbisComment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 171
    :cond_3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 173
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    return-object v1

    :cond_4
    new-instance p0, Landroidx/media2/exoplayer/external/metadata/Metadata;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>(Ljava/util/List;)V

    return-object p0
.end method
