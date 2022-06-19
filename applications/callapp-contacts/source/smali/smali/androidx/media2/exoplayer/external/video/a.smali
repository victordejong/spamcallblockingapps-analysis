.class public final Landroidx/media2/exoplayer/external/video/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:F


# direct methods
.method private constructor <init>(Ljava/util/List;IIIF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;IIIF)V"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Landroidx/media2/exoplayer/external/video/a;->a:Ljava/util/List;

    .line 90
    iput p2, p0, Landroidx/media2/exoplayer/external/video/a;->b:I

    .line 91
    iput p3, p0, Landroidx/media2/exoplayer/external/video/a;->c:I

    .line 92
    iput p4, p0, Landroidx/media2/exoplayer/external/video/a;->d:I

    .line 93
    iput p5, p0, Landroidx/media2/exoplayer/external/video/a;->e:F

    return-void
.end method

.method public static a(Landroidx/media2/exoplayer/external/util/p;)Landroidx/media2/exoplayer/external/video/a;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 54
    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 55
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v0

    const/4 v1, 0x3

    and-int/2addr v0, v1

    add-int/lit8 v4, v0, 0x1

    if-eq v4, v1, :cond_3

    .line 59
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 62
    invoke-static {p0}, Landroidx/media2/exoplayer/external/video/a;->b(Landroidx/media2/exoplayer/external/util/p;)[B

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_1

    .line 66
    invoke-static {p0}, Landroidx/media2/exoplayer/external/video/a;->b(Landroidx/media2/exoplayer/external/util/p;)[B

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    const/4 v2, -0x1

    if-lez v0, :cond_2

    .line 73
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 74
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length p0, p0

    invoke-static {v0, v4, p0}, Landroidx/media2/exoplayer/external/util/n;->a([BII)Landroidx/media2/exoplayer/external/util/n$b;

    move-result-object p0

    .line 76
    iget v0, p0, Landroidx/media2/exoplayer/external/util/n$b;->e:I

    .line 77
    iget v1, p0, Landroidx/media2/exoplayer/external/util/n$b;->f:I

    .line 78
    iget p0, p0, Landroidx/media2/exoplayer/external/util/n$b;->g:F

    move v7, p0

    move v5, v0

    move v6, v1

    goto :goto_2

    :cond_2
    const/4 v5, -0x1

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    .line 80
    :goto_2
    new-instance p0, Landroidx/media2/exoplayer/external/video/a;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroidx/media2/exoplayer/external/video/a;-><init>(Ljava/util/List;IIIF)V

    return-object p0

    .line 57
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 83
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v1, "Error parsing AVC config"

    invoke-direct {v0, v1, p0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static b(Landroidx/media2/exoplayer/external/util/p;)[B
    .locals 2

    .line 97
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result v0

    .line 1142
    iget v1, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 99
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 100
    iget-object p0, p0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-static {p0, v1, v0}, Landroidx/media2/exoplayer/external/util/c;->a([BII)[B

    move-result-object p0

    return-object p0
.end method
