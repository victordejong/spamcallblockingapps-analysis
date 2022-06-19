.class public Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultRetryCondition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazonaws/retry/RetryPolicy$RetryCondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/retry/PredefinedRetryPolicies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SDKDefaultRetryCondition"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/amazonaws/AmazonClientException;I)Z
    .locals 2

    .line 160
    invoke-virtual {p1}, Lcom/amazonaws/AmazonClientException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/IOException;

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 161
    invoke-virtual {p1}, Lcom/amazonaws/AmazonClientException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/InterruptedIOException;

    if-nez p2, :cond_0

    return v0

    .line 165
    :cond_0
    instance-of p2, p1, Lcom/amazonaws/AmazonServiceException;

    if-eqz p2, :cond_4

    .line 166
    check-cast p1, Lcom/amazonaws/AmazonServiceException;

    .line 174
    invoke-virtual {p1}, Lcom/amazonaws/AmazonServiceException;->getStatusCode()I

    move-result p2

    const/16 v1, 0x1f4

    if-eq p2, v1, :cond_3

    const/16 v1, 0x1f7

    if-eq p2, v1, :cond_3

    const/16 v1, 0x1f6

    if-eq p2, v1, :cond_3

    const/16 v1, 0x1f8

    if-ne p2, v1, :cond_1

    goto :goto_0

    .line 188
    :cond_1
    invoke-static {p1}, Lcom/amazonaws/retry/RetryUtils;->a(Lcom/amazonaws/AmazonServiceException;)Z

    move-result p2

    if-eqz p2, :cond_2

    return v0

    .line 196
    :cond_2
    invoke-static {p1}, Lcom/amazonaws/retry/RetryUtils;->b(Lcom/amazonaws/AmazonServiceException;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    :goto_0
    return v0

    :cond_4
    const/4 p1, 0x0

    return p1
.end method
