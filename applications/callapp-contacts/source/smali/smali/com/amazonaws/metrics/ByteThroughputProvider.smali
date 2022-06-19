.class public abstract Lcom/amazonaws/metrics/ByteThroughputProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:I

.field private final c:Lcom/amazonaws/metrics/ThroughputMetricType;


# direct methods
.method protected constructor <init>(Lcom/amazonaws/metrics/ThroughputMetricType;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazonaws/metrics/ByteThroughputProvider;->c:Lcom/amazonaws/metrics/ThroughputMetricType;

    return-void
.end method


# virtual methods
.method protected a(IJ)V
    .locals 4

    .line 56
    iget v0, p0, Lcom/amazonaws/metrics/ByteThroughputProvider;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amazonaws/metrics/ByteThroughputProvider;->b:I

    .line 57
    iget-wide v0, p0, Lcom/amazonaws/metrics/ByteThroughputProvider;->a:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazonaws/metrics/ByteThroughputProvider;->a:J

    return-void
.end method

.method public final c()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/amazonaws/metrics/ByteThroughputProvider;->b:I

    return v0
.end method

.method public final d()J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/amazonaws/metrics/ByteThroughputProvider;->a:J

    return-wide v0
.end method

.method protected final e()V
    .locals 2

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/amazonaws/metrics/ByteThroughputProvider;->b:I

    const-wide/16 v0, 0x0

    .line 62
    iput-wide v0, p0, Lcom/amazonaws/metrics/ByteThroughputProvider;->a:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1048
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 69
    iget-object v1, p0, Lcom/amazonaws/metrics/ByteThroughputProvider;->c:Lcom/amazonaws/metrics/ThroughputMetricType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazonaws/metrics/ByteThroughputProvider;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/amazonaws/metrics/ByteThroughputProvider;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "providerId=%s, throughputType=%s, byteCount=%d, duration=%d"

    .line 67
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
