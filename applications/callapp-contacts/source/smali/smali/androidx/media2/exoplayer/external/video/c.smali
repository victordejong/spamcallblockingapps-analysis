.class public final Landroidx/media2/exoplayer/external/video/c;
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


# direct methods
.method private constructor <init>(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;I)V"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Landroidx/media2/exoplayer/external/video/c;->a:Ljava/util/List;

    .line 94
    iput p2, p0, Landroidx/media2/exoplayer/external/video/c;->b:I

    return-void
.end method

.method public static a(Landroidx/media2/exoplayer/external/util/p;)Landroidx/media2/exoplayer/external/video/c;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    const/16 v0, 0x15

    .line 49
    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 50
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    .line 53
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v1

    .line 1142
    iget v2, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v4, v1, :cond_1

    .line 57
    invoke-virtual {p0, v6}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 58
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_0

    .line 60
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result v8

    add-int/lit8 v9, v8, 0x4

    add-int/2addr v5, v9

    .line 62
    invoke-virtual {p0, v8}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 68
    new-array v2, v5, [B

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v4, v1, :cond_3

    .line 71
    invoke-virtual {p0, v6}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 72
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result v8

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_2

    .line 74
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result v10

    .line 75
    sget-object v11, Landroidx/media2/exoplayer/external/util/n;->a:[B

    sget-object v12, Landroidx/media2/exoplayer/external/util/n;->a:[B

    array-length v12, v12

    invoke-static {v11, v3, v2, v7, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    sget-object v11, Landroidx/media2/exoplayer/external/util/n;->a:[B

    array-length v11, v11

    add-int/2addr v7, v11

    .line 78
    iget-object v11, p0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    .line 2142
    iget v12, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 79
    invoke-static {v11, v12, v2, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v7, v10

    .line 81
    invoke-virtual {p0, v10}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    if-nez v5, :cond_4

    const/4 p0, 0x0

    goto :goto_4

    .line 85
    :cond_4
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 86
    :goto_4
    new-instance v1, Landroidx/media2/exoplayer/external/video/c;

    add-int/2addr v0, v6

    invoke-direct {v1, p0, v0}, Landroidx/media2/exoplayer/external/video/c;-><init>(Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 88
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v1, "Error parsing HEVC config"

    invoke-direct {v0, v1, p0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
