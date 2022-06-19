.class final Lcom/google/android/exoplayer2/extractor/i/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/i/c$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/exoplayer2/extractor/i;)Lcom/google/android/exoplayer2/extractor/i/b;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v0, Lcom/google/android/exoplayer2/util/u;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    .line 52
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/i/c$a;->a(Lcom/google/android/exoplayer2/extractor/i;Lcom/google/android/exoplayer2/util/u;)Lcom/google/android/exoplayer2/extractor/i/c$a;

    move-result-object v2

    .line 53
    iget v2, v2, Lcom/google/android/exoplayer2/extractor/i/c$a;->a:I

    const/4 v3, 0x0

    const v4, 0x52494646

    if-eq v2, v4, :cond_0

    return-object v3

    .line 1169
    :cond_0
    iget-object v2, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 57
    invoke-interface {p0, v2, v5, v4}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 58
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 59
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v2

    const v4, 0x57415645

    if-eq v2, v4, :cond_1

    .line 61
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unsupported RIFF format: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "WavHeaderReader"

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 66
    :cond_1
    :goto_0
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/i/c$a;->a(Lcom/google/android/exoplayer2/extractor/i;Lcom/google/android/exoplayer2/util/u;)Lcom/google/android/exoplayer2/extractor/i/c$a;

    move-result-object v2

    .line 67
    iget v3, v2, Lcom/google/android/exoplayer2/extractor/i/c$a;->a:I

    const v4, 0x666d7420

    if-eq v3, v4, :cond_2

    .line 68
    iget-wide v2, v2, Lcom/google/android/exoplayer2/extractor/i/c$a;->b:J

    long-to-int v3, v2

    invoke-interface {p0, v3}, Lcom/google/android/exoplayer2/extractor/i;->c(I)V

    goto :goto_0

    .line 72
    :cond_2
    iget-wide v3, v2, Lcom/google/android/exoplayer2/extractor/i/c$a;->b:J

    const-wide/16 v6, 0x10

    cmp-long v8, v3, v6

    if-ltz v8, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 2169
    iget-object v3, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 73
    invoke-interface {p0, v3, v5, v1}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 74
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 75
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->e()I

    move-result v7

    .line 76
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->e()I

    move-result v8

    .line 77
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->p()I

    move-result v9

    .line 78
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->p()I

    move-result v10

    .line 79
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->e()I

    move-result v11

    .line 80
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->e()I

    move-result v12

    .line 82
    iget-wide v2, v2, Lcom/google/android/exoplayer2/extractor/i/c$a;->b:J

    long-to-int v0, v2

    sub-int/2addr v0, v1

    if-lez v0, :cond_4

    .line 85
    new-array v1, v0, [B

    .line 86
    invoke-interface {p0, v1, v5, v0}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    move-object v13, v1

    goto :goto_2

    .line 88
    :cond_4
    sget-object p0, Lcom/google/android/exoplayer2/util/af;->f:[B

    move-object v13, p0

    .line 91
    :goto_2
    new-instance p0, Lcom/google/android/exoplayer2/extractor/i/b;

    move-object v6, p0

    invoke-direct/range {v6 .. v13}, Lcom/google/android/exoplayer2/extractor/i/b;-><init>(IIIIII[B)V

    return-object p0
.end method

.method public static b(Lcom/google/android/exoplayer2/extractor/i;)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/i;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    .line 117
    new-instance v0, Lcom/google/android/exoplayer2/util/u;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    .line 119
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/i/c$a;->a(Lcom/google/android/exoplayer2/extractor/i;Lcom/google/android/exoplayer2/util/u;)Lcom/google/android/exoplayer2/extractor/i/c$a;

    move-result-object v2

    .line 120
    :goto_0
    iget v3, v2, Lcom/google/android/exoplayer2/extractor/i/c$a;->a:I

    const v4, 0x64617461

    const-string v5, "WavHeaderReader"

    if-eq v3, v4, :cond_3

    .line 121
    iget v3, v2, Lcom/google/android/exoplayer2/extractor/i/c$a;->a:I

    const v4, 0x52494646

    if-eq v3, v4, :cond_0

    iget v3, v2, Lcom/google/android/exoplayer2/extractor/i/c$a;->a:I

    const v6, 0x666d7420

    if-eq v3, v6, :cond_0

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Ignoring unknown WAV chunk: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v2, Lcom/google/android/exoplayer2/extractor/i/c$a;->a:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-wide/16 v5, 0x8

    .line 124
    iget-wide v7, v2, Lcom/google/android/exoplayer2/extractor/i/c$a;->b:J

    add-long/2addr v7, v5

    .line 126
    iget v3, v2, Lcom/google/android/exoplayer2/extractor/i/c$a;->a:I

    if-ne v3, v4, :cond_1

    const-wide/16 v7, 0xc

    :cond_1
    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v7, v3

    if-gtz v5, :cond_2

    long-to-int v2, v7

    .line 132
    invoke-interface {p0, v2}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    .line 133
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/i/c$a;->a(Lcom/google/android/exoplayer2/extractor/i;Lcom/google/android/exoplayer2/util/u;)Lcom/google/android/exoplayer2/extractor/i/c$a;

    move-result-object v2

    goto :goto_0

    .line 130
    :cond_2
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Chunk is too large (~2GB+) to skip; id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v2, Lcom/google/android/exoplayer2/extractor/i/c$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 136
    :cond_3
    invoke-interface {p0, v1}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    .line 138
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v0

    .line 139
    iget-wide v2, v2, Lcom/google/android/exoplayer2/extractor/i/c$a;->b:J

    add-long/2addr v2, v0

    .line 140
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/i;->d()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long p0, v6, v8

    if-eqz p0, :cond_4

    cmp-long p0, v2, v6

    if-lez p0, :cond_4

    .line 142
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v4, "Data exceeds input length: "

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v2, v6

    .line 145
    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
