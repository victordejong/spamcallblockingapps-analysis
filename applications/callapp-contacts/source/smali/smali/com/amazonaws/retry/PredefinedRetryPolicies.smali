.class public Lcom/amazonaws/retry/PredefinedRetryPolicies;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;,
        Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultRetryCondition;
    }
.end annotation


# static fields
.field public static final a:Lcom/amazonaws/retry/RetryPolicy;

.field public static final b:Lcom/amazonaws/retry/RetryPolicy;

.field public static final c:Lcom/amazonaws/retry/RetryPolicy;

.field public static final d:Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

.field public static final e:Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 35
    new-instance v0, Lcom/amazonaws/retry/RetryPolicy;

    sget-object v1, Lcom/amazonaws/retry/RetryPolicy$RetryCondition;->a:Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

    sget-object v2, Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;->a:Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/amazonaws/retry/RetryPolicy;-><init>(Lcom/amazonaws/retry/RetryPolicy$RetryCondition;Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;IZ)V

    sput-object v0, Lcom/amazonaws/retry/PredefinedRetryPolicies;->a:Lcom/amazonaws/retry/RetryPolicy;

    .line 76
    new-instance v0, Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultRetryCondition;

    invoke-direct {v0}, Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultRetryCondition;-><init>()V

    sput-object v0, Lcom/amazonaws/retry/PredefinedRetryPolicies;->d:Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

    .line 83
    new-instance v1, Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;

    const/16 v2, 0x64

    const/16 v3, 0x4e20

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;-><init>(IILcom/amazonaws/retry/PredefinedRetryPolicies$1;)V

    sput-object v1, Lcom/amazonaws/retry/PredefinedRetryPolicies;->e:Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;

    .line 1098
    new-instance v2, Lcom/amazonaws/retry/RetryPolicy;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/amazonaws/retry/RetryPolicy;-><init>(Lcom/amazonaws/retry/RetryPolicy$RetryCondition;Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;IZ)V

    .line 87
    sput-object v2, Lcom/amazonaws/retry/PredefinedRetryPolicies;->b:Lcom/amazonaws/retry/RetryPolicy;

    .line 1111
    new-instance v2, Lcom/amazonaws/retry/RetryPolicy;

    const/16 v3, 0xa

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/amazonaws/retry/RetryPolicy;-><init>(Lcom/amazonaws/retry/RetryPolicy$RetryCondition;Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;IZ)V

    .line 88
    sput-object v2, Lcom/amazonaws/retry/PredefinedRetryPolicies;->c:Lcom/amazonaws/retry/RetryPolicy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
