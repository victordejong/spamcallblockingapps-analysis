.class final Lcom/google/android/play/core/assetpacks/m0;
.super Ljava/io/OutputStream;


# instance fields
.field private final d:Lcom/google/android/play/core/assetpacks/j1;

.field private final e:Ljava/io/File;

.field private final f:Lcom/google/android/play/core/assetpacks/w1;

.field private g:J

.field private h:J

.field private i:Ljava/io/FileOutputStream;

.field private j:Lcom/google/android/play/core/assetpacks/b2;


# direct methods
.method constructor <init>(Ljava/io/File;Lcom/google/android/play/core/assetpacks/w1;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, Lcom/google/android/play/core/assetpacks/j1;

    invoke-direct {v0}, Lcom/google/android/play/core/assetpacks/j1;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/m0;->d:Lcom/google/android/play/core/assetpacks/j1;

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/m0;->e:Ljava/io/File;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/m0;->f:Lcom/google/android/play/core/assetpacks/w1;

    return-void
.end method


# virtual methods
.method public final write(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/play/core/assetpacks/m0;->write([B)V

    return-void
.end method

.method public final write([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/play/core/assetpacks/m0;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 10

    :goto_0
    if-lez p3, :cond_9

    iget-wide v0, p0, Lcom/google/android/play/core/assetpacks/m0;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_4

    iget-wide v0, p0, Lcom/google/android/play/core/assetpacks/m0;->h:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_4

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/m0;->d:Lcom/google/android/play/core/assetpacks/j1;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/play/core/assetpacks/j1;->a([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/m0;->d:Lcom/google/android/play/core/assetpacks/j1;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/j1;->b()Lcom/google/android/play/core/assetpacks/b2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/m0;->j:Lcom/google/android/play/core/assetpacks/b2;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/b2;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-wide v2, p0, Lcom/google/android/play/core/assetpacks/m0;->g:J

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/m0;->f:Lcom/google/android/play/core/assetpacks/w1;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/m0;->j:Lcom/google/android/play/core/assetpacks/b2;

    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/b2;->i()[B

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/m0;->j:Lcom/google/android/play/core/assetpacks/b2;

    invoke-virtual {v4}, Lcom/google/android/play/core/assetpacks/b2;->i()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v0, v1, v4}, Lcom/google/android/play/core/assetpacks/w1;->m([BI)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/m0;->j:Lcom/google/android/play/core/assetpacks/b2;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/b2;->i()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/play/core/assetpacks/m0;->h:J

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/m0;->j:Lcom/google/android/play/core/assetpacks/b2;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/b2;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/m0;->j:Lcom/google/android/play/core/assetpacks/b2;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/b2;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/m0;->f:Lcom/google/android/play/core/assetpacks/w1;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/m0;->j:Lcom/google/android/play/core/assetpacks/b2;

    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/b2;->i()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/w1;->g([B)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/m0;->e:Ljava/io/File;

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/m0;->j:Lcom/google/android/play/core/assetpacks/b2;

    invoke-virtual {v4}, Lcom/google/android/play/core/assetpacks/b2;->d()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/m0;->j:Lcom/google/android/play/core/assetpacks/b2;

    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/b2;->e()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/play/core/assetpacks/m0;->g:J

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/google/android/play/core/assetpacks/m0;->i:Ljava/io/FileOutputStream;

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/m0;->j:Lcom/google/android/play/core/assetpacks/b2;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/b2;->i()[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/m0;->f:Lcom/google/android/play/core/assetpacks/w1;

    array-length v4, v0

    invoke-virtual {v1, v0, v4}, Lcom/google/android/play/core/assetpacks/w1;->m([BI)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/m0;->j:Lcom/google/android/play/core/assetpacks/b2;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/b2;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/play/core/assetpacks/m0;->g:J

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/m0;->j:Lcom/google/android/play/core/assetpacks/b2;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/b2;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/m0;->j:Lcom/google/android/play/core/assetpacks/b2;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/b2;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/m0;->f:Lcom/google/android/play/core/assetpacks/w1;

    iget-wide v5, p0, Lcom/google/android/play/core/assetpacks/m0;->h:J

    move-object v7, p1

    move v8, p2

    move v9, p3

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/play/core/assetpacks/w1;->i(J[BII)V

    iget-wide v0, p0, Lcom/google/android/play/core/assetpacks/m0;->h:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/play/core/assetpacks/m0;->h:J

    move v1, p3

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/m0;->j:Lcom/google/android/play/core/assetpacks/b2;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/b2;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    int-to-long v0, p3

    iget-wide v4, p0, Lcom/google/android/play/core/assetpacks/m0;->g:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/m0;->i:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1, p2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    iget-wide v4, p0, Lcom/google/android/play/core/assetpacks/m0;->g:J

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/play/core/assetpacks/m0;->g:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/m0;->i:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    goto :goto_3

    :cond_7
    int-to-long v0, p3

    iget-wide v2, p0, Lcom/google/android/play/core/assetpacks/m0;->g:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/m0;->j:Lcom/google/android/play/core/assetpacks/b2;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/b2;->i()[B

    move-result-object v0

    array-length v0, v0

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/m0;->j:Lcom/google/android/play/core/assetpacks/b2;

    invoke-virtual {v2}, Lcom/google/android/play/core/assetpacks/b2;->e()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/play/core/assetpacks/m0;->g:J

    iget-object v6, p0, Lcom/google/android/play/core/assetpacks/m0;->f:Lcom/google/android/play/core/assetpacks/w1;

    int-to-long v7, v0

    add-long/2addr v7, v2

    sub-long v2, v7, v4

    move-object v4, v6

    move-wide v5, v2

    move-object v7, p1

    move v8, p2

    move v9, v1

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/play/core/assetpacks/w1;->i(J[BII)V

    iget-wide v2, p0, Lcom/google/android/play/core/assetpacks/m0;->g:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/play/core/assetpacks/m0;->g:J

    :cond_8
    :goto_3
    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    goto/16 :goto_0

    :cond_9
    return-void
.end method
