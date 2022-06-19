.class public Lcom/mopub/network/MultiAdRequest;
.super Lcom/mopub/network/MoPubRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/network/MultiAdRequest$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mopub/network/MoPubRequest<",
        "Lcom/mopub/network/MultiAdResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/mopub/common/AdFormat;

.field final b:Ljava/lang/String;

.field private final c:Landroid/content/Context;

.field private d:I

.field public final mListener:Lcom/mopub/network/MultiAdRequest$Listener;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/MultiAdRequest$Listener;)V
    .locals 5

    .line 1081
    invoke-static {}, Lcom/mopub/common/MoPub;->getPersonalInformationManager()Lcom/mopub/common/privacy/PersonalInfoManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mopub/common/MoPub;->isSdkInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    goto :goto_1

    .line 1082
    :cond_1
    :goto_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Make sure to call MoPub#initializeSdk before loading an ad."

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    const-string v0, ""

    .line 49
    :goto_1
    invoke-direct {p0, p4, v0, p5}, Lcom/mopub/network/MoPubRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/volley/Response$ErrorListener;)V

    .line 38
    iput v2, p0, Lcom/mopub/network/MultiAdRequest;->d:I

    .line 50
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 51
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 52
    invoke-static {p4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 53
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 55
    iput-object p3, p0, Lcom/mopub/network/MultiAdRequest;->b:Ljava/lang/String;

    .line 56
    iput-object p5, p0, Lcom/mopub/network/MultiAdRequest;->mListener:Lcom/mopub/network/MultiAdRequest$Listener;

    .line 57
    iput-object p2, p0, Lcom/mopub/network/MultiAdRequest;->a:Lcom/mopub/common/AdFormat;

    .line 58
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/network/MultiAdRequest;->c:Landroid/content/Context;

    .line 60
    new-instance p1, Lcom/mopub/volley/DefaultRetryPolicy;

    const/16 p2, 0x9c4

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, v1, p3}, Lcom/mopub/volley/DefaultRetryPolicy;-><init>(IIF)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/mopub/network/MultiAdRequest;->setRetryPolicy(Lcom/mopub/volley/RetryPolicy;)Lcom/mopub/volley/Request;

    .line 65
    invoke-virtual {p0, v2}, Lcom/mopub/network/MultiAdRequest;->setShouldCache(Z)Lcom/mopub/volley/Request;

    .line 67
    invoke-static {}, Lcom/mopub/common/MoPub;->getPersonalInformationManager()Lcom/mopub/common/privacy/PersonalInfoManager;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 69
    invoke-virtual {p1, v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->requestSync(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 123
    invoke-super {p0}, Lcom/mopub/network/MoPubRequest;->cancel()V

    return-void
.end method

.method public synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 1

    .line 27
    check-cast p1, Lcom/mopub/network/MultiAdResponse;

    .line 1116
    invoke-virtual {p0}, Lcom/mopub/network/MultiAdRequest;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/mopub/network/MultiAdRequest;->mListener:Lcom/mopub/network/MultiAdRequest$Listener;

    invoke-interface {v0, p1}, Lcom/mopub/network/MultiAdRequest$Listener;->onSuccessResponse(Lcom/mopub/network/MultiAdResponse;)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 131
    :cond_0
    instance-of v1, p1, Lcom/mopub/network/MultiAdRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 135
    :cond_1
    check-cast p1, Lcom/mopub/network/MultiAdRequest;

    .line 137
    iget-object v1, p0, Lcom/mopub/network/MultiAdRequest;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 138
    iget-object v3, p1, Lcom/mopub/network/MultiAdRequest;->b:Ljava/lang/String;

    if-nez v3, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 139
    :cond_3
    iget-object v1, p1, Lcom/mopub/network/MultiAdRequest;->b:Ljava/lang/String;

    if-eqz v1, :cond_4

    const/4 v1, -0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_5

    .line 143
    iget-object v1, p0, Lcom/mopub/network/MultiAdRequest;->a:Lcom/mopub/common/AdFormat;

    iget-object v3, p1, Lcom/mopub/network/MultiAdRequest;->a:Lcom/mopub/common/AdFormat;

    if-ne v1, v3, :cond_5

    .line 145
    invoke-virtual {p0}, Lcom/mopub/network/MultiAdRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mopub/network/MultiAdRequest;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_5

    return v0

    :cond_5
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 150
    iget v0, p0, Lcom/mopub/network/MultiAdRequest;->d:I

    if-nez v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/mopub/network/MultiAdRequest;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const/16 v0, 0x1d

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 152
    iget-object v1, p0, Lcom/mopub/network/MultiAdRequest;->a:Lcom/mopub/common/AdFormat;

    invoke-virtual {v1}, Lcom/mopub/common/AdFormat;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 153
    invoke-virtual {p0}, Lcom/mopub/network/MultiAdRequest;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 154
    iput v0, p0, Lcom/mopub/network/MultiAdRequest;->d:I

    .line 156
    :cond_1
    iget v0, p0, Lcom/mopub/network/MultiAdRequest;->d:I

    return v0
.end method

.method public parseNetworkResponse(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/NetworkResponse;",
            ")",
            "Lcom/mopub/volley/Response<",
            "Lcom/mopub/network/MultiAdResponse;",
            ">;"
        }
    .end annotation

    .line 98
    :try_start_0
    new-instance v0, Lcom/mopub/network/MultiAdResponse;

    iget-object v1, p0, Lcom/mopub/network/MultiAdRequest;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/mopub/network/MultiAdRequest;->a:Lcom/mopub/common/AdFormat;

    iget-object v3, p0, Lcom/mopub/network/MultiAdRequest;->b:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/mopub/network/MultiAdResponse;-><init>(Landroid/content/Context;Lcom/mopub/volley/NetworkResponse;Lcom/mopub/common/AdFormat;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    invoke-static {p1}, Lcom/mopub/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Cache$Entry;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mopub/volley/Response;->success(Ljava/lang/Object;Lcom/mopub/volley/Cache$Entry;)Lcom/mopub/volley/Response;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 100
    instance-of v0, p1, Lcom/mopub/network/MoPubNetworkError;

    if-eqz v0, :cond_0

    .line 101
    check-cast p1, Lcom/mopub/network/MoPubNetworkError;

    invoke-static {p1}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object p1

    return-object p1

    .line 104
    :cond_0
    new-instance v0, Lcom/mopub/network/MoPubNetworkError;

    sget-object v1, Lcom/mopub/network/MoPubNetworkError$Reason;->UNSPECIFIED:Lcom/mopub/network/MoPubNetworkError$Reason;

    invoke-direct {v0, p1, v1}, Lcom/mopub/network/MoPubNetworkError;-><init>(Ljava/lang/Throwable;Lcom/mopub/network/MoPubNetworkError$Reason;)V

    invoke-static {v0}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object p1

    return-object p1
.end method
