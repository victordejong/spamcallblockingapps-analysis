.class public Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/RewardedAdCompletionRequest$RewardedAdCompletionRequestListener;


# static fields
.field static final a:[I


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Landroid/os/Handler;

.field private final d:Lcom/mopub/volley/RequestQueue;

.field private final e:Landroid/content/Context;

.field private f:I

.field private volatile g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 36
    fill-array-data v0, :array_0

    sput-object v0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1388
        0x2710
        0x4e20
        0x9c40
        0xea60
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 67
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 81
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 82
    invoke-static {p4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 83
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 84
    invoke-static {p8}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 1169
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 1170
    invoke-static {p4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 1171
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 1173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "&customer_id="

    .line 1175
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ""

    if-nez p3, :cond_0

    move-object p3, p2

    goto :goto_0

    :cond_0
    invoke-static {p3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&rcn="

    .line 1176
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&rca="

    .line 1177
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&nv="

    .line 1178
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "5.16.4"

    invoke-static {p3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&v=1&cec="

    .line 1180
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p6, :cond_1

    goto :goto_1

    .line 1182
    :cond_1
    invoke-static {p6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "&rcd="

    .line 1185
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 86
    iput-object p2, p0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->b:Ljava/lang/String;

    const/4 p2, 0x0

    .line 87
    iput p2, p0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->f:I

    .line 88
    iput-object p8, p0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->c:Landroid/os/Handler;

    .line 89
    invoke-static {p1}, Lcom/mopub/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;

    move-result-object p2

    iput-object p2, p0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->d:Lcom/mopub/volley/RequestQueue;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->e:Landroid/content/Context;

    return-void
.end method

.method private static a(I)I
    .locals 2

    if-ltz p0, :cond_0

    .line 156
    sget-object v0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->a:[I

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 157
    aget p0, v0, p0

    return p0

    .line 159
    :cond_0
    sget-object p0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->a:[I

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget p0, p0, v0

    return p0
.end method

.method public static makeRewardedAdCompletionRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    if-eqz p0, :cond_1

    .line 145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    new-instance v0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0}, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->a()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method final a()V
    .locals 7

    .line 94
    iget-boolean v0, p0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->g:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->d:Lcom/mopub/volley/RequestQueue;

    iget-object v1, p0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    return-void

    .line 100
    :cond_0
    new-instance v0, Lcom/mopub/mobileads/RewardedAdCompletionRequest;

    iget-object v1, p0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->b:Ljava/lang/String;

    new-instance v3, Lcom/mopub/volley/DefaultRetryPolicy;

    iget v4, p0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->f:I

    .line 102
    invoke-static {v4}, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->a(I)I

    move-result v4

    add-int/lit16 v4, v4, -0x3e8

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6, v5}, Lcom/mopub/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/mopub/mobileads/RewardedAdCompletionRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/volley/RetryPolicy;Lcom/mopub/mobileads/RewardedAdCompletionRequest$RewardedAdCompletionRequestListener;)V

    .line 104
    iget-object v1, p0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/RewardedAdCompletionRequest;->setTag(Ljava/lang/Object;)Lcom/mopub/volley/Request;

    .line 105
    iget-object v1, p0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->d:Lcom/mopub/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/mopub/volley/RequestQueue;->add(Lcom/mopub/volley/Request;)Lcom/mopub/volley/Request;

    .line 107
    iget v0, p0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->f:I

    const/16 v1, 0x11

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    .line 108
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Exceeded number of retries for rewarded video completion request."

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->c:Landroid/os/Handler;

    new-instance v1, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler$1;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler$1;-><init>(Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;)V

    iget v3, p0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->f:I

    .line 117
    invoke-static {v3}, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->a(I)I

    move-result v3

    int-to-long v3, v3

    .line 112
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 118
    iget v0, p0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->f:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->f:I

    return-void
.end method

.method public onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 131
    iget-object v0, p1, Lcom/mopub/volley/VolleyError;->networkResponse:Lcom/mopub/volley/NetworkResponse;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/mopub/volley/VolleyError;->networkResponse:Lcom/mopub/volley/NetworkResponse;

    iget v0, v0, Lcom/mopub/volley/NetworkResponse;->statusCode:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_0

    iget-object p1, p1, Lcom/mopub/volley/VolleyError;->networkResponse:Lcom/mopub/volley/NetworkResponse;

    iget p1, p1, Lcom/mopub/volley/NetworkResponse;->statusCode:I

    const/16 v0, 0x258

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 134
    iput-boolean p1, p0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->g:Z

    :cond_1
    return-void
.end method

.method public onResponse(Ljava/lang/Integer;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 124
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x258

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 125
    iput-boolean p1, p0, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->g:Z

    :cond_1
    return-void
.end method
