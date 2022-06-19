.class public Lcom/mopub/common/privacy/ConsentDialogController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/common/privacy/ConsentDialogRequest$Listener;


# instance fields
.field final a:Landroid/content/Context;

.field b:Ljava/lang/String;

.field volatile c:Z

.field volatile d:Z

.field private e:Lcom/mopub/common/privacy/ConsentDialogListener;

.field private final f:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogController;->a:Landroid/content/Context;

    .line 42
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogController;->f:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Lcom/mopub/common/privacy/ConsentDialogController;->d:Z

    .line 148
    iput-boolean v0, p0, Lcom/mopub/common/privacy/ConsentDialogController;->c:Z

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogController;->e:Lcom/mopub/common/privacy/ConsentDialogListener;

    .line 150
    iput-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogController;->b:Ljava/lang/String;

    return-void
.end method

.method final declared-synchronized a(Lcom/mopub/common/privacy/ConsentDialogListener;Ljava/lang/Boolean;Lcom/mopub/common/privacy/b;)V
    .locals 4

    monitor-enter p0

    .line 96
    :try_start_0
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 98
    iget-boolean v0, p0, Lcom/mopub/common/privacy/ConsentDialogController;->c:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 100
    iget-object p2, p0, Lcom/mopub/common/privacy/ConsentDialogController;->f:Landroid/os/Handler;

    new-instance p3, Lcom/mopub/common/privacy/ConsentDialogController$1;

    invoke-direct {p3, p0, p1}, Lcom/mopub/common/privacy/ConsentDialogController$1;-><init>(Lcom/mopub/common/privacy/ConsentDialogController;Lcom/mopub/common/privacy/ConsentDialogListener;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :cond_0
    monitor-exit p0

    return-void

    .line 109
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/mopub/common/privacy/ConsentDialogController;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 110
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p2, v1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "Already making a consent dialog load request."

    aput-object v0, p2, p3

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    .line 114
    :cond_2
    :try_start_2
    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogController;->e:Lcom/mopub/common/privacy/ConsentDialogListener;

    .line 115
    iput-boolean v1, p0, Lcom/mopub/common/privacy/ConsentDialogController;->d:Z

    .line 117
    new-instance p1, Lcom/mopub/common/privacy/ConsentDialogRequest;

    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogController;->a:Landroid/content/Context;

    new-instance v1, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;

    .line 1196
    iget-object v2, p3, Lcom/mopub/common/privacy/b;->a:Ljava/lang/String;

    .line 1224
    iget-object v3, p3, Lcom/mopub/common/privacy/b;->c:Lcom/mopub/common/privacy/ConsentStatus;

    .line 119
    invoke-virtual {v3}, Lcom/mopub/common/privacy/ConsentStatus;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2051
    iput-object p2, v1, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->a:Ljava/lang/Boolean;

    .line 121
    invoke-virtual {p3}, Lcom/mopub/common/privacy/b;->getConsentedPrivacyPolicyVersion()Ljava/lang/String;

    move-result-object p2

    .line 2068
    iput-object p2, v1, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->d:Ljava/lang/String;

    .line 122
    invoke-virtual {p3}, Lcom/mopub/common/privacy/b;->getConsentedVendorListVersion()Ljava/lang/String;

    move-result-object p2

    .line 3062
    iput-object p2, v1, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->c:Ljava/lang/String;

    .line 123
    invoke-virtual {p3}, Lcom/mopub/common/privacy/b;->isForceGdprApplies()Z

    move-result p2

    .line 4056
    iput-boolean p2, v1, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->b:Z

    .line 123
    sget-object p2, Lcom/mopub/common/Constants;->HOST:Ljava/lang/String;

    .line 124
    invoke-virtual {v1, p2}, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->generateUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2, p0}, Lcom/mopub/common/privacy/ConsentDialogRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/common/privacy/ConsentDialogRequest$Listener;)V

    .line 125
    iget-object p2, p0, Lcom/mopub/common/privacy/ConsentDialogController;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/mopub/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mopub/network/MoPubRequestQueue;->add(Lcom/mopub/volley/Request;)Lcom/mopub/volley/Request;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .locals 5

    .line 69
    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogController;->e:Lcom/mopub/common/privacy/ConsentDialogListener;

    .line 70
    invoke-virtual {p0}, Lcom/mopub/common/privacy/ConsentDialogController;->a()V

    if-nez v0, :cond_0

    return-void

    .line 76
    :cond_0
    instance-of v1, p1, Lcom/mopub/network/MoPubNetworkError;

    if-eqz v1, :cond_2

    .line 77
    sget-object v1, Lcom/mopub/common/privacy/ConsentDialogController$2;->a:[I

    check-cast p1, Lcom/mopub/network/MoPubNetworkError;

    invoke-virtual {p1}, Lcom/mopub/network/MoPubNetworkError;->getReason()Lcom/mopub/network/MoPubNetworkError$Reason;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/network/MoPubNetworkError$Reason;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1

    .line 84
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v4}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v1, v2, v3

    invoke-static {p1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_0

    .line 79
    :cond_1
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v4}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v1, v2, v3

    invoke-static {p1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 81
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, p1}, Lcom/mopub/common/privacy/ConsentDialogListener;->onConsentDialogLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 90
    :cond_2
    :goto_0
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, p1}, Lcom/mopub/common/privacy/ConsentDialogListener;->onConsentDialogLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public onSuccess(Lcom/mopub/common/privacy/a;)V
    .locals 4

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/mopub/common/privacy/ConsentDialogController;->d:Z

    .line 48
    invoke-virtual {p1}, Lcom/mopub/common/privacy/a;->getHtml()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogController;->b:Ljava/lang/String;

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 50
    iput-boolean v0, p0, Lcom/mopub/common/privacy/ConsentDialogController;->c:Z

    .line 51
    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogController;->e:Lcom/mopub/common/privacy/ConsentDialogListener;

    if-eqz p1, :cond_0

    .line 52
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v3}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v0, v2, v1

    invoke-static {p1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 54
    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogController;->e:Lcom/mopub/common/privacy/ConsentDialogListener;

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/common/privacy/ConsentDialogListener;->onConsentDialogLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void

    .line 59
    :cond_1
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 61
    iput-boolean v1, p0, Lcom/mopub/common/privacy/ConsentDialogController;->c:Z

    .line 62
    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogController;->e:Lcom/mopub/common/privacy/ConsentDialogListener;

    if-eqz p1, :cond_2

    .line 63
    invoke-interface {p1}, Lcom/mopub/common/privacy/ConsentDialogListener;->onConsentDialogLoaded()V

    :cond_2
    return-void
.end method
