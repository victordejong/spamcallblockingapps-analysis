.class public final Landroidx/media2/exoplayer/external/extractor/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/util/p;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroidx/media2/exoplayer/external/util/p;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/p;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/l;->a:Landroidx/media2/exoplayer/external/util/p;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/extractor/h;Landroidx/media2/exoplayer/external/metadata/id3/a$a;)Landroidx/media2/exoplayer/external/metadata/Metadata;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 62
    :goto_0
    :try_start_0
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/l;->a:Landroidx/media2/exoplayer/external/util/p;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/16 v4, 0xa

    invoke-interface {p1, v3, v0, v4}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/l;->a:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v3, v0}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 68
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/l;->a:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/p;->f()I

    move-result v3

    const v5, 0x494433

    if-ne v3, v5, :cond_1

    .line 72
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/l;->a:Landroidx/media2/exoplayer/external/util/p;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 73
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/l;->a:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/p;->m()I

    move-result v3

    add-int/lit8 v5, v3, 0xa

    if-nez v1, :cond_0

    .line 77
    new-array v1, v5, [B

    .line 78
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/l;->a:Landroidx/media2/exoplayer/external/util/p;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-static {v6, v0, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    invoke-interface {p1, v1, v4, v3}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V

    .line 81
    new-instance v3, Landroidx/media2/exoplayer/external/metadata/id3/a;

    invoke-direct {v3, p2}, Landroidx/media2/exoplayer/external/metadata/id3/a;-><init>(Landroidx/media2/exoplayer/external/metadata/id3/a$a;)V

    invoke-virtual {v3, v1, v5}, Landroidx/media2/exoplayer/external/metadata/id3/a;->a([BI)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object v1

    goto :goto_1

    .line 83
    :cond_0
    invoke-interface {p1, v3}, Landroidx/media2/exoplayer/external/extractor/h;->c(I)V

    :goto_1
    add-int/2addr v2, v5

    goto :goto_0

    .line 89
    :catch_0
    :cond_1
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/h;->a()V

    .line 90
    invoke-interface {p1, v2}, Landroidx/media2/exoplayer/external/extractor/h;->c(I)V

    return-object v1
.end method
