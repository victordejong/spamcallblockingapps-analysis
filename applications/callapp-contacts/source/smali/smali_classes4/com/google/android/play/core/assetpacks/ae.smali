.class final Lcom/google/android/play/core/assetpacks/ae;
.super Ljava/io/FilterInputStream;


# instance fields
.field a:J

.field b:Z

.field c:Z

.field private final d:Lcom/google/android/play/core/assetpacks/bl;

.field private e:[B


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p1, Lcom/google/android/play/core/assetpacks/bl;

    invoke-direct {p1}, Lcom/google/android/play/core/assetpacks/bl;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/ae;->d:Lcom/google/android/play/core/assetpacks/bl;

    const/16 p1, 0x1000

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/ae;->e:[B

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/play/core/assetpacks/ae;->b:Z

    iput-boolean p1, p0, Lcom/google/android/play/core/assetpacks/ae;->c:Z

    return-void
.end method

.method private final a([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private final a(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/ae;->e:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/play/core/assetpacks/ae;->a([BII)I

    move-result v0

    if-eq v0, p1, :cond_1

    sub-int v2, p1, v0

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/ae;->e:[B

    invoke-direct {p0, v3, v0, v2}, Lcom/google/android/play/core/assetpacks/ae;->a([BII)I

    move-result v3

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/ae;->d:Lcom/google/android/play/core/assetpacks/bl;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/ae;->e:[B

    invoke-virtual {p1, v2, v1, v0}, Lcom/google/android/play/core/assetpacks/bl;->a([BII)I

    return v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/ae;->d:Lcom/google/android/play/core/assetpacks/bl;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/ae;->e:[B

    invoke-virtual {v0, v2, v1, p1}, Lcom/google/android/play/core/assetpacks/bl;->a([BII)I

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method final a()Lcom/google/android/play/core/assetpacks/cd;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/play/core/assetpacks/ae;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/ae;->e:[B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/play/core/assetpacks/ae;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/play/core/assetpacks/ae;->b:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/google/android/play/core/assetpacks/ae;->c:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lcom/google/android/play/core/assetpacks/ae;->a(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iput-boolean v1, p0, Lcom/google/android/play/core/assetpacks/ae;->b:Z

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/ae;->d:Lcom/google/android/play/core/assetpacks/bl;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/bl;->a()Lcom/google/android/play/core/assetpacks/cd;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/ae;->d:Lcom/google/android/play/core/assetpacks/bl;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/bl;->a()Lcom/google/android/play/core/assetpacks/cd;

    move-result-object v0

    .line 1000
    iget-boolean v2, v0, Lcom/google/android/play/core/assetpacks/cd;->e:Z

    if-eqz v2, :cond_4

    iput-boolean v1, p0, Lcom/google/android/play/core/assetpacks/ae;->c:Z

    return-object v0

    .line 2000
    :cond_4
    iget-wide v2, v0, Lcom/google/android/play/core/assetpacks/cd;->b:J

    const-wide v4, 0xffffffffL

    cmp-long v0, v2, v4

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/ae;->d:Lcom/google/android/play/core/assetpacks/bl;

    .line 3000
    iget v0, v0, Lcom/google/android/play/core/assetpacks/bl;->a:I

    add-int/lit8 v0, v0, -0x1e

    int-to-long v2, v0

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/ae;->e:[B

    array-length v4, v4

    int-to-long v5, v4

    cmp-long v7, v2, v5

    if-lez v7, :cond_6

    :cond_5
    add-int/2addr v4, v4

    int-to-long v5, v4

    cmp-long v7, v5, v2

    if-ltz v7, :cond_5

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/ae;->e:[B

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/play/core/assetpacks/ae;->e:[B

    :cond_6
    invoke-direct {p0, v0}, Lcom/google/android/play/core/assetpacks/ae;->a(I)Z

    move-result v0

    if-nez v0, :cond_7

    iput-boolean v1, p0, Lcom/google/android/play/core/assetpacks/ae;->b:Z

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/ae;->d:Lcom/google/android/play/core/assetpacks/bl;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/bl;->a()Lcom/google/android/play/core/assetpacks/cd;

    move-result-object v0

    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/ae;->d:Lcom/google/android/play/core/assetpacks/bl;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/bl;->a()Lcom/google/android/play/core/assetpacks/cd;

    move-result-object v0

    .line 4000
    iget-wide v1, v0, Lcom/google/android/play/core/assetpacks/cd;->b:J

    iput-wide v1, p0, Lcom/google/android/play/core/assetpacks/ae;->a:J

    return-object v0

    :cond_8
    new-instance v0, Lcom/google/android/play/core/assetpacks/al;

    const-string v1, "Files bigger than 4GiB are not supported."

    invoke-direct {v0, v1}, Lcom/google/android/play/core/assetpacks/al;-><init>(Ljava/lang/String;)V

    throw v0

    .line 0
    :cond_9
    :goto_0
    new-instance v0, Lcom/google/android/play/core/assetpacks/cd;

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/play/core/assetpacks/cd;-><init>(Ljava/lang/String;JIZZ[B)V

    return-object v0
.end method

.method public final read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/play/core/assetpacks/ae;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/play/core/assetpacks/ae;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    iget-boolean v2, p0, Lcom/google/android/play/core/assetpacks/ae;->b:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v2, p3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/play/core/assetpacks/ae;->a([BII)I

    move-result p1

    iget-wide p2, p0, Lcom/google/android/play/core/assetpacks/ae;->a:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/play/core/assetpacks/ae;->a:J

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/play/core/assetpacks/ae;->b:Z

    const/4 p1, 0x0

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    return p1
.end method
