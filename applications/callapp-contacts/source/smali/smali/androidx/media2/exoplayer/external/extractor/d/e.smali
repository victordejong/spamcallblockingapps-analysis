.class final Landroidx/media2/exoplayer/external/extractor/d/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroidx/media2/exoplayer/external/extractor/d/f;

.field final b:Landroidx/media2/exoplayer/external/util/p;

.field c:I

.field d:Z

.field private e:I


# direct methods
.method constructor <init>()V
    .locals 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/d/f;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/d/f;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/d/e;->a:Landroidx/media2/exoplayer/external/extractor/d/f;

    .line 37
    new-instance v0, Landroidx/media2/exoplayer/external/util/p;

    const v1, 0xfe01

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/util/p;-><init>([BI)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/d/e;->b:Landroidx/media2/exoplayer/external/util/p;

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/d/e;->c:I

    return-void
.end method

.method private a(I)I
    .locals 4

    const/4 v0, 0x0

    .line 148
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/d/e;->e:I

    .line 150
    :cond_0
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/d/e;->e:I

    add-int/2addr v1, p1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/d/e;->a:Landroidx/media2/exoplayer/external/extractor/d/f;

    iget v2, v2, Landroidx/media2/exoplayer/external/extractor/d/f;->g:I

    if-ge v1, v2, :cond_1

    .line 151
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/d/e;->a:Landroidx/media2/exoplayer/external/extractor/d/f;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/d/f;->j:[I

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/d/e;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/d/e;->e:I

    add-int/2addr v2, p1

    aget v1, v1, v2

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    :cond_1
    return v0
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/extractor/h;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 67
    :goto_0
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 69
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/d/e;->d:Z

    if-eqz v2, :cond_1

    .line 70
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/d/e;->d:Z

    .line 71
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/d/e;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->a()V

    .line 74
    :cond_1
    :goto_1
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/d/e;->d:Z

    if-nez v2, :cond_9

    .line 75
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/d/e;->c:I

    if-gez v2, :cond_4

    .line 77
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/d/e;->a:Landroidx/media2/exoplayer/external/extractor/d/f;

    invoke-virtual {v2, p1, v0}, Landroidx/media2/exoplayer/external/extractor/d/f;->a(Landroidx/media2/exoplayer/external/extractor/h;Z)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 81
    :cond_2
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/d/e;->a:Landroidx/media2/exoplayer/external/extractor/d/f;

    iget v2, v2, Landroidx/media2/exoplayer/external/extractor/d/f;->h:I

    .line 82
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/d/e;->a:Landroidx/media2/exoplayer/external/extractor/d/f;

    iget v3, v3, Landroidx/media2/exoplayer/external/extractor/d/f;->b:I

    and-int/2addr v3, v0

    if-ne v3, v0, :cond_3

    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/d/e;->b:Landroidx/media2/exoplayer/external/util/p;

    .line 1125
    iget v3, v3, Landroidx/media2/exoplayer/external/util/p;->c:I

    if-nez v3, :cond_3

    .line 85
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/extractor/d/e;->a(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 86
    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/d/e;->e:I

    add-int/2addr v3, v1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 88
    :goto_2
    invoke-interface {p1, v2}, Landroidx/media2/exoplayer/external/extractor/h;->b(I)V

    .line 89
    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/d/e;->c:I

    .line 92
    :cond_4
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/d/e;->c:I

    invoke-direct {p0, v2}, Landroidx/media2/exoplayer/external/extractor/d/e;->a(I)I

    move-result v2

    .line 93
    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/d/e;->c:I

    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/d/e;->e:I

    add-int/2addr v3, v4

    if-lez v2, :cond_7

    .line 95
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/d/e;->b:Landroidx/media2/exoplayer/external/util/p;

    .line 1149
    iget-object v4, v4, Landroidx/media2/exoplayer/external/util/p;->a:[B

    array-length v4, v4

    .line 95
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/d/e;->b:Landroidx/media2/exoplayer/external/util/p;

    .line 2125
    iget v5, v5, Landroidx/media2/exoplayer/external/util/p;->c:I

    add-int/2addr v5, v2

    if-ge v4, v5, :cond_5

    .line 96
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/d/e;->b:Landroidx/media2/exoplayer/external/util/p;

    iget-object v5, v4, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/d/e;->b:Landroidx/media2/exoplayer/external/util/p;

    .line 3125
    iget v6, v6, Landroidx/media2/exoplayer/external/util/p;->c:I

    add-int/2addr v6, v2

    .line 96
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, v4, Landroidx/media2/exoplayer/external/util/p;->a:[B

    .line 98
    :cond_5
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/d/e;->b:Landroidx/media2/exoplayer/external/util/p;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/d/e;->b:Landroidx/media2/exoplayer/external/util/p;

    .line 4125
    iget v5, v5, Landroidx/media2/exoplayer/external/util/p;->c:I

    .line 98
    invoke-interface {p1, v4, v5, v2}, Landroidx/media2/exoplayer/external/extractor/h;->b([BII)V

    .line 99
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/d/e;->b:Landroidx/media2/exoplayer/external/util/p;

    .line 5125
    iget v5, v4, Landroidx/media2/exoplayer/external/util/p;->c:I

    add-int/2addr v5, v2

    .line 99
    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/util/p;->b(I)V

    .line 100
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/d/e;->a:Landroidx/media2/exoplayer/external/extractor/d/f;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/d/f;->j:[I

    add-int/lit8 v4, v3, -0x1

    aget v2, v2, v4

    const/16 v4, 0xff

    if-eq v2, v4, :cond_6

    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/d/e;->d:Z

    .line 103
    :cond_7
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/d/e;->a:Landroidx/media2/exoplayer/external/extractor/d/f;

    iget v2, v2, Landroidx/media2/exoplayer/external/extractor/d/f;->g:I

    if-ne v3, v2, :cond_8

    const/4 v3, -0x1

    .line 104
    :cond_8
    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/d/e;->c:I

    goto/16 :goto_1

    :cond_9
    return v0
.end method
