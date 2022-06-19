.class public Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazonaws/retry/RetryPolicy$RetryCondition;


# instance fields
.field private final b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    .line 38
    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;->b:I

    return-void
.end method

.method private static a(Lcom/amazonaws/services/s3/model/AmazonS3Exception;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InternalError"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Please try again."

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public final a(Lcom/amazonaws/AmazonClientException;I)Z
    .locals 2

    .line 53
    instance-of v0, p1, Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 54
    check-cast p1, Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;->a(Lcom/amazonaws/services/s3/model/AmazonS3Exception;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;->b:I

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method
