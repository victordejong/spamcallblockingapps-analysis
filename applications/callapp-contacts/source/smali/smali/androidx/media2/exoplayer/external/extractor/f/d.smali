.class final Landroidx/media2/exoplayer/external/extractor/f/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/f/d$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroidx/media2/exoplayer/external/extractor/h;)Landroidx/media2/exoplayer/external/extractor/f/c;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 51
    invoke-static {p0}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v0, Landroidx/media2/exoplayer/external/util/p;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/p;-><init>(I)V

    .line 57
    invoke-static {p0, v0}, Landroidx/media2/exoplayer/external/extractor/f/d$a;->a(Landroidx/media2/exoplayer/external/extractor/h;Landroidx/media2/exoplayer/external/util/p;)Landroidx/media2/exoplayer/external/extractor/f/d$a;

    move-result-object v2

    .line 58
    iget v2, v2, Landroidx/media2/exoplayer/external/extractor/f/d$a;->a:I

    const/4 v3, 0x0

    const v4, 0x52494646

    if-eq v2, v4, :cond_0

    return-object v3

    .line 62
    :cond_0
    iget-object v2, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {p0, v2, v5, v4}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V

    .line 63
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 64
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v2

    const v4, 0x57415645

    const-string v6, "WavHeaderReader"

    if-eq v2, v4, :cond_1

    const/16 p0, 0x24

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Unsupported RIFF format: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroidx/media2/exoplayer/external/util/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 71
    :cond_1
    :goto_0
    invoke-static {p0, v0}, Landroidx/media2/exoplayer/external/extractor/f/d$a;->a(Landroidx/media2/exoplayer/external/extractor/h;Landroidx/media2/exoplayer/external/util/p;)Landroidx/media2/exoplayer/external/extractor/f/d$a;

    move-result-object v2

    .line 72
    iget v4, v2, Landroidx/media2/exoplayer/external/extractor/f/d$a;->a:I

    const v7, 0x666d7420

    if-eq v4, v7, :cond_2

    .line 73
    iget-wide v7, v2, Landroidx/media2/exoplayer/external/extractor/f/d$a;->b:J

    long-to-int v2, v7

    invoke-interface {p0, v2}, Landroidx/media2/exoplayer/external/extractor/h;->c(I)V

    goto :goto_0

    .line 77
    :cond_2
    iget-wide v7, v2, Landroidx/media2/exoplayer/external/extractor/f/d$a;->b:J

    const-wide/16 v9, 0x10

    cmp-long v4, v7, v9

    if-ltz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 78
    iget-object v4, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-interface {p0, v4, v5, v1}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V

    .line 79
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 80
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->e()I

    move-result v4

    .line 81
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->e()I

    move-result v8

    .line 82
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->o()I

    move-result v9

    .line 83
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->o()I

    move-result v10

    .line 84
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->e()I

    move-result v11

    .line 85
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->e()I

    move-result v12

    mul-int v0, v8, v12

    .line 87
    div-int/lit8 v0, v0, 0x8

    if-ne v11, v0, :cond_5

    .line 93
    invoke-static {v4, v12}, Landroidx/media2/exoplayer/external/audio/aa;->a(II)I

    move-result v13

    if-nez v13, :cond_4

    const/16 p0, 0x40

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Unsupported WAV format: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bit/sample, type "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroidx/media2/exoplayer/external/util/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 100
    :cond_4
    iget-wide v2, v2, Landroidx/media2/exoplayer/external/extractor/f/d$a;->b:J

    long-to-int v0, v2

    sub-int/2addr v0, v1

    invoke-interface {p0, v0}, Landroidx/media2/exoplayer/external/extractor/h;->c(I)V

    .line 102
    new-instance p0, Landroidx/media2/exoplayer/external/extractor/f/c;

    move-object v7, p0

    invoke-direct/range {v7 .. v13}, Landroidx/media2/exoplayer/external/extractor/f/c;-><init>(IIIIII)V

    return-object p0

    .line 89
    :cond_5
    new-instance p0, Landroidx/media2/exoplayer/external/ParserException;

    const/16 v1, 0x37

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Expected block alignment: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; got: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
