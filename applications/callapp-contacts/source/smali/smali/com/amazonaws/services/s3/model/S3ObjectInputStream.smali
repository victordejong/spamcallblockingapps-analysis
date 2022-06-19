.class public Lcom/amazonaws/services/s3/model/S3ObjectInputStream;
.super Lcom/amazonaws/internal/SdkFilterInputStream;
.source "SourceFile"


# instance fields
.field private eof:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 39
    invoke-static {p1}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->wrapWithByteCounting(Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amazonaws/metrics/MetricFilterInputStream;

    sget-object v1, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->a:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/metrics/MetricFilterInputStream;-><init>(Lcom/amazonaws/metrics/ThroughputMetricType;Ljava/io/InputStream;)V

    move-object p1, v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private doAbort()V
    .locals 3

    .line 78
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v1

    const-string v2, "FYI"

    invoke-interface {v1, v2, v0}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static wrapWithByteCounting(Ljava/io/InputStream;)Z
    .locals 3

    .line 49
    invoke-static {}, Lcom/amazonaws/metrics/AwsSdkMetrics;->isMetricsEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 53
    :cond_0
    instance-of v0, p0, Lcom/amazonaws/internal/MetricAware;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 54
    check-cast p0, Lcom/amazonaws/internal/MetricAware;

    .line 57
    invoke-interface {p0}, Lcom/amazonaws/internal/MetricAware;->isMetricActivated()Z

    move-result p0

    if-nez p0, :cond_1

    return v2

    :cond_1
    return v1

    :cond_2
    return v2
.end method


# virtual methods
.method public abort()V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->doAbort()V

    return-void
.end method

.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->available()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    .line 108
    iput-boolean v1, p0, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->eof:Z

    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-super {p0, p1, p2, p3}, Lcom/amazonaws/internal/SdkFilterInputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const/4 p2, 0x1

    .line 128
    iput-boolean p2, p0, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->eof:Z

    :cond_0
    return p1
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->reset()V

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->eof:Z

    return-void
.end method
