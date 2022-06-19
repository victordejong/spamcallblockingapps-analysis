.class public final Lcom/google/android/exoplayer2/video/a;
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

.field public final f:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/util/List;IIIFLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;IIIF",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/a;->a:Ljava/util/List;

    .line 101
    iput p2, p0, Lcom/google/android/exoplayer2/video/a;->b:I

    .line 102
    iput p3, p0, Lcom/google/android/exoplayer2/video/a;->c:I

    .line 103
    iput p4, p0, Lcom/google/android/exoplayer2/video/a;->d:I

    .line 104
    iput p5, p0, Lcom/google/android/exoplayer2/video/a;->e:F

    .line 105
    iput-object p6, p0, Lcom/google/android/exoplayer2/video/a;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/google/android/exoplayer2/util/u;)Lcom/google/android/exoplayer2/video/a;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 50
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 51
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v0

    const/4 v1, 0x3

    and-int/2addr v0, v1

    add-int/lit8 v4, v0, 0x1

    if-eq v4, v1, :cond_3

    .line 55
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 58
    invoke-static {p0}, Lcom/google/android/exoplayer2/video/a;->b(Lcom/google/android/exoplayer2/util/u;)[B

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_1

    .line 62
    invoke-static {p0}, Lcom/google/android/exoplayer2/video/a;->b(Lcom/google/android/exoplayer2/util/u;)[B

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v5, -0x1

    if-lez v0, :cond_2

    .line 70
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 71
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length p0, p0

    invoke-static {v0, v4, p0}, Lcom/google/android/exoplayer2/util/s;->a([BII)Lcom/google/android/exoplayer2/util/s$b;

    move-result-object p0

    .line 73
    iget v0, p0, Lcom/google/android/exoplayer2/util/s$b;->e:I

    .line 74
    iget v1, p0, Lcom/google/android/exoplayer2/util/s$b;->f:I

    .line 75
    iget v2, p0, Lcom/google/android/exoplayer2/util/s$b;->g:F

    .line 76
    iget v5, p0, Lcom/google/android/exoplayer2/util/s$b;->a:I

    iget v6, p0, Lcom/google/android/exoplayer2/util/s$b;->b:I

    iget p0, p0, Lcom/google/android/exoplayer2/util/s$b;->c:I

    .line 77
    invoke-static {v5, v6, p0}, Lcom/google/android/exoplayer2/util/d;->a(III)Ljava/lang/String;

    move-result-object p0

    move-object v8, p0

    move v5, v0

    move v6, v1

    move v7, v2

    goto :goto_2

    :cond_2
    move-object v8, v2

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    .line 81
    :goto_2
    new-instance p0, Lcom/google/android/exoplayer2/video/a;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/video/a;-><init>(Ljava/util/List;IIIFLjava/lang/String;)V

    return-object p0

    .line 53
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 89
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Error parsing AVC config"

    invoke-direct {v0, v1, p0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static b(Lcom/google/android/exoplayer2/util/u;)[B
    .locals 2

    .line 109
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v0

    .line 1144
    iget v1, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 111
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 1169
    iget-object p0, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 112
    invoke-static {p0, v1, v0}, Lcom/google/android/exoplayer2/util/d;->a([BII)[B

    move-result-object p0

    return-object p0
.end method
