.class public Lcom/amazonaws/internal/SdkDigestInputStream;
.super Ljava/security/DigestInputStream;
.source "SourceFile"

# interfaces
.implements Lcom/amazonaws/internal/MetricAware;


# static fields
.field static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    return-void
.end method


# virtual methods
.method public final isMetricActivated()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/amazonaws/internal/SdkDigestInputStream;->in:Ljava/io/InputStream;

    instance-of v0, v0, Lcom/amazonaws/internal/MetricAware;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/amazonaws/internal/SdkDigestInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Lcom/amazonaws/internal/MetricAware;

    .line 38
    invoke-interface {v0}, Lcom/amazonaws/internal/MetricAware;->isMetricActivated()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final skip(J)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-wide p1

    :cond_0
    const-wide/16 v2, 0x800

    .line 69
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    new-array v2, v3, [B

    move-wide v4, p1

    :goto_0
    cmp-long v6, v4, v0

    if-lez v6, :cond_3

    const/4 v6, 0x0

    int-to-long v7, v3

    .line 72
    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v8, v7

    invoke-virtual {p0, v2, v6, v8}, Lcom/amazonaws/internal/SdkDigestInputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    cmp-long v0, v4, p1

    if-nez v0, :cond_1

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_1
    sub-long/2addr p1, v4

    return-wide p1

    :cond_2
    int-to-long v6, v6

    sub-long/2addr v4, v6

    goto :goto_0

    .line 77
    :cond_3
    sget-boolean v0, Lcom/amazonaws/internal/SdkDigestInputStream;->a:Z

    if-nez v0, :cond_5

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_1
    return-wide p1
.end method
