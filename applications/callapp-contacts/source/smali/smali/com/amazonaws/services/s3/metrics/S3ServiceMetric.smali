.class public Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;
.super Lcom/amazonaws/metrics/SimpleMetricType;
.source "SourceFile"

# interfaces
.implements Lcom/amazonaws/metrics/ServiceMetricType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;
    }
.end annotation


# static fields
.field public static final a:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

.field public static final b:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

.field public static final c:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

.field public static final d:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

.field private static final e:[Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;


# instance fields
.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 44
    new-instance v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$1;

    const-string v1, "DownloadThroughput"

    .line 45
    invoke-static {v1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->a:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

    .line 55
    new-instance v1, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    const-string v2, "DownloadByteCount"

    .line 56
    invoke-static {v2}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->b:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    .line 61
    new-instance v2, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$2;

    const-string v3, "UploadThroughput"

    .line 62
    invoke-static {v3}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$2;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->c:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

    .line 72
    new-instance v3, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    const-string v4, "UploadByteCount"

    .line 73
    invoke-static {v4}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->d:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    const/4 v4, 0x4

    new-array v4, v4, [Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    .line 75
    sput-object v4, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->e:[Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/amazonaws/metrics/SimpleMetricType;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->f:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 38
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "S3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a()[Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;
    .locals 1

    .line 109
    sget-object v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->e:[Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    invoke-virtual {v0}, [Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    return-object v0
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->f:Ljava/lang/String;

    return-object v0
.end method
