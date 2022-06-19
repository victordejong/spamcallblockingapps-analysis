.class final Lcom/mopub/mobileads/MoPubInline$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MoPubInline;->load(Landroid/content/Context;Lcom/mopub/mobileads/AdData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/MoPubInline;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MoPubInline;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInline$1;->a:Lcom/mopub/mobileads/MoPubInline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClicked()V
    .locals 4

    .line 138
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CLICKED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/MoPubInline;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInline$1;->a:Lcom/mopub/mobileads/MoPubInline;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubInline;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInline$1;->a:Lcom/mopub/mobileads/MoPubInline;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubInline;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public final onClose()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInline$1;->a:Lcom/mopub/mobileads/MoPubInline;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubInline;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInline$1;->a:Lcom/mopub/mobileads/MoPubInline;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubInline;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdCollapsed()V

    :cond_0
    return-void
.end method

.method public final onExpand()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInline$1;->a:Lcom/mopub/mobileads/MoPubInline;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubInline;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInline$1;->a:Lcom/mopub/mobileads/MoPubInline;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubInline;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdExpanded()V

    :cond_0
    return-void
.end method

.method public final onFailed()V
    .locals 4

    .line 120
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/MoPubInline;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->INLINE_SHOW_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 121
    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->INLINE_SHOW_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 120
    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInline$1;->a:Lcom/mopub/mobileads/MoPubInline;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubInline;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInline$1;->a:Lcom/mopub/mobileads/MoPubInline;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubInline;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->INLINE_SHOW_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void
.end method

.method public final onFailedToLoad(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 3

    .line 112
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/mopub/mobileads/MoPubInline;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->INLINE_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 113
    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->INLINE_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 112
    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 115
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInline$1;->a:Lcom/mopub/mobileads/MoPubInline;

    iget-object p1, p1, Lcom/mopub/mobileads/MoPubInline;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INLINE_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public final onLoaded(Landroid/view/View;)V
    .locals 3

    .line 102
    invoke-static {p1}, Lcom/mopub/mobileads/AdViewController;->setShouldHonorServerDimensions(Landroid/view/View;)V

    .line 103
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/mopub/mobileads/MoPubInline;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 104
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInline$1;->a:Lcom/mopub/mobileads/MoPubInline;

    iget-object p1, p1, Lcom/mopub/mobileads/MoPubInline;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoaded()V

    .line 105
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInline$1;->a:Lcom/mopub/mobileads/MoPubInline;

    invoke-static {p1}, Lcom/mopub/mobileads/MoPubInline;->a(Lcom/mopub/mobileads/MoPubInline;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInline$1;->a:Lcom/mopub/mobileads/MoPubInline;

    invoke-static {p1}, Lcom/mopub/mobileads/MoPubInline;->a(Lcom/mopub/mobileads/MoPubInline;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInline$1;->a:Lcom/mopub/mobileads/MoPubInline;

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubInline;->b(Lcom/mopub/mobileads/MoPubInline;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/32 v1, 0xdbba00

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final onRenderProcessGone(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 4

    .line 130
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/MoPubInline;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInline$1;->a:Lcom/mopub/mobileads/MoPubInline;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubInline;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInline$1;->a:Lcom/mopub/mobileads/MoPubInline;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubInline;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void
.end method

.method public final onResize(Z)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInline$1;->a:Lcom/mopub/mobileads/MoPubInline;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubInline;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 157
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInline$1;->a:Lcom/mopub/mobileads/MoPubInline;

    iget-object p1, p1, Lcom/mopub/mobileads/MoPubInline;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdResumeAutoRefresh()V

    return-void

    .line 159
    :cond_1
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInline$1;->a:Lcom/mopub/mobileads/MoPubInline;

    iget-object p1, p1, Lcom/mopub/mobileads/MoPubInline;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdPauseAutoRefresh()V

    return-void
.end method
