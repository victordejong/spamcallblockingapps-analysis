.class public final Lcom/google/android/exoplayer2/extractor/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/n$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/exoplayer2/util/u;)Lcom/google/android/exoplayer2/extractor/p$a;
    .locals 11

    const/4 v0, 0x1

    .line 192
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 193
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->g()I

    move-result v0

    .line 1144
    iget v1, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    int-to-long v1, v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 196
    div-int/lit8 v0, v0, 0x12

    .line 197
    new-array v3, v0, [J

    .line 198
    new-array v4, v0, [J

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->l()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-nez v10, :cond_0

    .line 204
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    .line 205
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    goto :goto_1

    .line 208
    :cond_0
    aput-wide v6, v3, v5

    .line 209
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->l()J

    move-result-wide v6

    aput-wide v6, v4, v5

    const/4 v6, 0x2

    .line 210
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2144
    :cond_1
    :goto_1
    iget v0, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    int-to-long v5, v0

    sub-long/2addr v1, v5

    long-to-int v0, v1

    .line 213
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 214
    new-instance p0, Lcom/google/android/exoplayer2/extractor/p$a;

    invoke-direct {p0, v3, v4}, Lcom/google/android/exoplayer2/extractor/p$a;-><init>([J[J)V

    return-object p0
.end method

.method public static a(Lcom/google/android/exoplayer2/extractor/i;Z)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 67
    :cond_0
    sget-object p1, Lcom/google/android/exoplayer2/metadata/id3/a;->a:Lcom/google/android/exoplayer2/metadata/id3/a$a;

    .line 68
    :goto_0
    new-instance v1, Lcom/google/android/exoplayer2/extractor/s;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/s;-><init>()V

    invoke-virtual {v1, p0, p1}, Lcom/google/android/exoplayer2/extractor/s;->a(Lcom/google/android/exoplayer2/extractor/i;Lcom/google/android/exoplayer2/metadata/id3/a$a;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 69
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    return-object p0

    :cond_2
    :goto_1
    return-object v0
.end method
