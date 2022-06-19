.class final Lcom/google/android/exoplayer2/extractor/g/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/exoplayer2/extractor/g/e;

.field final b:Lcom/google/android/exoplayer2/util/u;

.field c:I

.field d:Z

.field private e:I


# direct methods
.method constructor <init>()V
    .locals 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/google/android/exoplayer2/extractor/g/e;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/g/e;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/g/d;->a:Lcom/google/android/exoplayer2/extractor/g/e;

    .line 33
    new-instance v0, Lcom/google/android/exoplayer2/util/u;

    const v1, 0xfe01

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/u;-><init>([BI)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/g/d;->b:Lcom/google/android/exoplayer2/util/u;

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/g/d;->c:I

    return-void
.end method

.method private a(I)I
    .locals 4

    const/4 v0, 0x0

    .line 143
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/g/d;->e:I

    .line 145
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/g/d;->e:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/g/d;->a:Lcom/google/android/exoplayer2/extractor/g/e;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/g/e;->g:I

    if-ge v1, v2, :cond_1

    .line 146
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/g/d;->a:Lcom/google/android/exoplayer2/extractor/g/e;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/g/e;->j:[I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/g/d;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/extractor/g/d;->e:I

    add-int/2addr v2, p1

    aget v1, v1, v2

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    :cond_1
    return v0
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/extractor/i;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 62
    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 64
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/g/d;->d:Z

    if-eqz v2, :cond_1

    .line 65
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/g/d;->d:Z

    .line 66
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/g/d;->b:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/u;->a(I)V

    .line 69
    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/g/d;->d:Z

    if-nez v2, :cond_9

    .line 70
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/g/d;->c:I

    if-gez v2, :cond_5

    .line 72
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/g/d;->a:Lcom/google/android/exoplayer2/extractor/g/e;

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/extractor/g/e;->a(Lcom/google/android/exoplayer2/extractor/i;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/g/d;->a:Lcom/google/android/exoplayer2/extractor/g/e;

    invoke-virtual {v2, p1, v0}, Lcom/google/android/exoplayer2/extractor/g/e;->a(Lcom/google/android/exoplayer2/extractor/i;Z)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_3

    .line 76
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/g/d;->a:Lcom/google/android/exoplayer2/extractor/g/e;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/g/e;->h:I

    .line 77
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/g/d;->a:Lcom/google/android/exoplayer2/extractor/g/e;

    iget v3, v3, Lcom/google/android/exoplayer2/extractor/g/e;->b:I

    and-int/2addr v3, v0

    if-ne v3, v0, :cond_3

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/g/d;->b:Lcom/google/android/exoplayer2/util/u;

    .line 1127
    iget v3, v3, Lcom/google/android/exoplayer2/util/u;->c:I

    if-nez v3, :cond_3

    .line 80
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/extractor/g/d;->a(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 81
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/g/d;->e:I

    add-int/2addr v3, v1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 83
    :goto_2
    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    .line 84
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/g/d;->c:I

    goto :goto_4

    :cond_4
    :goto_3
    return v1

    .line 87
    :cond_5
    :goto_4
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/g/d;->c:I

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/extractor/g/d;->a(I)I

    move-result v2

    .line 88
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/g/d;->c:I

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/g/d;->e:I

    add-int/2addr v3, v4

    if-lez v2, :cond_7

    .line 90
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/g/d;->b:Lcom/google/android/exoplayer2/util/u;

    .line 2127
    iget v5, v4, Lcom/google/android/exoplayer2/util/u;->c:I

    add-int/2addr v5, v2

    .line 90
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/u;->b(I)V

    .line 91
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/g/d;->b:Lcom/google/android/exoplayer2/util/u;

    .line 2169
    iget-object v4, v4, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 91
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/g/d;->b:Lcom/google/android/exoplayer2/util/u;

    .line 3127
    iget v5, v5, Lcom/google/android/exoplayer2/util/u;->c:I

    .line 91
    invoke-interface {p1, v4, v5, v2}, Lcom/google/android/exoplayer2/extractor/i;->b([BII)V

    .line 92
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/g/d;->b:Lcom/google/android/exoplayer2/util/u;

    .line 4127
    iget v5, v4, Lcom/google/android/exoplayer2/util/u;->c:I

    add-int/2addr v5, v2

    .line 92
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/u;->c(I)V

    .line 93
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/g/d;->a:Lcom/google/android/exoplayer2/extractor/g/e;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/g/e;->j:[I

    add-int/lit8 v4, v3, -0x1

    aget v2, v2, v4

    const/16 v4, 0xff

    if-eq v2, v4, :cond_6

    const/4 v2, 0x1

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_5
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/g/d;->d:Z

    .line 96
    :cond_7
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/g/d;->a:Lcom/google/android/exoplayer2/extractor/g/e;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/g/e;->g:I

    if-ne v3, v2, :cond_8

    const/4 v3, -0x1

    .line 97
    :cond_8
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/g/d;->c:I

    goto :goto_1

    :cond_9
    return v0
.end method
