.class public Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;
.super Lcom/amazonaws/internal/SdkInputStream;
.source "SourceFile"


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:J

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lcom/amazonaws/internal/SdkInputStream;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->a:Ljava/io/InputStream;

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->c:Z

    const-wide/16 v0, 0x10

    cmp-long p1, p2, v0

    if-gez p1, :cond_0

    long-to-int p1, p2

    goto :goto_0

    .line 1059
    :cond_0
    rem-long v0, p2, v0

    long-to-int p1, v0

    add-int/lit8 p1, p1, 0x10

    :goto_0
    if-eqz p1, :cond_1

    :goto_1
    if-lez p1, :cond_1

    .line 1068
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_1
    sub-long/2addr p4, p2

    const-wide/16 p1, 0x1

    add-long/2addr p4, p1

    .line 1075
    iput-wide p4, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->b:J

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/InputStream;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->a:Ljava/io/InputStream;

    return-object v0
.end method

.method public available()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->b()V

    .line 151
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v1, v0

    .line 152
    iget-wide v3, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->b:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    return v0

    :cond_0
    long-to-int v0, v3

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->c:Z

    .line 170
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 172
    :cond_0
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->b()V

    return-void
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->b()V

    .line 88
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->b:J

    const/4 v2, -0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gtz v5, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    :goto_0
    if-eq v0, v2, :cond_1

    .line 98
    iget-wide v1, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->b:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->b:J

    goto :goto_1

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->close()V

    .line 102
    iput-wide v3, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->b:J

    :goto_1
    return v0
.end method

.method public read([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->b()V

    .line 116
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->b:J

    const/4 v2, -0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gtz v5, :cond_0

    const/4 p1, -0x1

    goto :goto_1

    :cond_0
    int-to-long v5, p3

    cmp-long v7, v5, v0

    if-lez v7, :cond_2

    const-wide/32 v5, 0x7fffffff

    cmp-long p3, v0, v5

    if-gez p3, :cond_1

    long-to-int p3, v0

    goto :goto_0

    :cond_1
    const p3, 0x7fffffff

    .line 130
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    :goto_1
    if-eq p1, v2, :cond_3

    .line 135
    iget-wide p2, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->b:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->b:J

    goto :goto_2

    .line 138
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->close()V

    .line 139
    iput-wide v3, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->b:J

    :goto_2
    return p1
.end method
