.class public Lcom/mopub/mobileads/BaseWebViewViewability;
.super Lcom/mopub/mobileads/BaseWebView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/BaseWebViewViewability$State;
    }
.end annotation


# instance fields
.field public f:Lcom/mopub/mobileads/BaseWebViewViewability$State;

.field public g:Lcom/mopub/common/ExternalViewabilitySessionManager;

.field public h:Z

.field public j:Z

.field public k:Z

.field public l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/BaseWebView;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/mopub/mobileads/BaseWebViewViewability$State;->INIT:Lcom/mopub/mobileads/BaseWebViewViewability$State;

    iput-object p1, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->f:Lcom/mopub/mobileads/BaseWebViewViewability$State;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->j:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->k:Z

    iput-boolean v0, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->l:Z

    invoke-static {}, Lcom/mopub/common/ViewabilityManager;->isViewabilityEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->h:Z

    invoke-static {}, Lcom/mopub/common/ExternalViewabilitySessionManager;->create()Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->g:Lcom/mopub/common/ExternalViewabilitySessionManager;

    iget-boolean v0, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->h:Z

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/mopub/mobileads/BaseWebView;->c:Z

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BaseWebViewViewability() "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/BaseWebViewViewability;->g(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public disableAutomaticImpression()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->j:Z

    return-void
.end method

.method public disableTracking()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->h:Z

    return-void
.end method

.method public enableTracking()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->h:Z

    return-void
.end method

.method public final f(Lcom/mopub/mobileads/BaseWebViewViewability$State;)V
    .locals 4

    iget-boolean v0, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->h:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/mopub/mobileads/BaseWebViewViewability$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->f:Lcom/mopub/mobileads/BaseWebViewViewability$State;

    sget-object v3, Lcom/mopub/mobileads/BaseWebViewViewability$State;->INIT:Lcom/mopub/mobileads/BaseWebViewViewability$State;

    if-eq v1, v3, :cond_4

    sget-object v3, Lcom/mopub/mobileads/BaseWebViewViewability$State;->STOPPED:Lcom/mopub/mobileads/BaseWebViewViewability$State;

    if-eq v1, v3, :cond_4

    iget-object v0, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->g:Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-virtual {v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->endSession()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->f:Lcom/mopub/mobileads/BaseWebViewViewability$State;

    sget-object v3, Lcom/mopub/mobileads/BaseWebViewViewability$State;->STARTED:Lcom/mopub/mobileads/BaseWebViewViewability$State;

    if-ne v1, v3, :cond_4

    iget-boolean v1, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->l:Z

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->g:Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-virtual {v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->trackImpression()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->f:Lcom/mopub/mobileads/BaseWebViewViewability$State;

    sget-object v3, Lcom/mopub/mobileads/BaseWebViewViewability$State;->INIT:Lcom/mopub/mobileads/BaseWebViewViewability$State;

    if-ne v1, v3, :cond_4

    iget-boolean v1, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->k:Z

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->g:Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-virtual {v0, p0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->createWebViewSession(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->g:Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-virtual {v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->startSession()V

    :goto_0
    const/4 v0, 0x1

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    iput-object p1, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->f:Lcom/mopub/mobileads/BaseWebViewViewability$State;

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skip state transition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->f:Lcom/mopub/mobileads/BaseWebViewViewability$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/BaseWebViewViewability;->g(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/mopub/common/ViewabilityManager;->isViewabilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMSDK "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public notifyImpression()V
    .locals 1

    sget-object v0, Lcom/mopub/mobileads/BaseWebViewViewability$State;->IMPRESSED:Lcom/mopub/mobileads/BaseWebViewViewability$State;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/BaseWebViewViewability;->f(Lcom/mopub/mobileads/BaseWebViewViewability$State;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/mopub/mobileads/BaseWebView;->onAttachedToWindow()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAttachedToWindow() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/BaseWebViewViewability;->g(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->k:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mopub/mobileads/BaseWebViewViewability$State;->STARTED:Lcom/mopub/mobileads/BaseWebViewViewability$State;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/BaseWebViewViewability;->f(Lcom/mopub/mobileads/BaseWebViewViewability$State;)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    sget-object v0, Lcom/mopub/mobileads/BaseWebViewViewability$State;->STOPPED:Lcom/mopub/mobileads/BaseWebViewViewability$State;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/BaseWebViewViewability;->f(Lcom/mopub/mobileads/BaseWebViewViewability$State;)V

    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onVisibilityChanged(Landroid/view/View;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onVisibilityChanged: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/BaseWebViewViewability;->g(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->l:Z

    iget-boolean p1, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->j:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/mopub/mobileads/BaseWebViewViewability$State;->IMPRESSED:Lcom/mopub/mobileads/BaseWebViewViewability$State;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/BaseWebViewViewability;->f(Lcom/mopub/mobileads/BaseWebViewViewability$State;)V

    :cond_1
    return-void
.end method

.method public setMockExternalTracker(Lcom/mopub/common/ExternalViewabilitySessionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->g:Lcom/mopub/common/ExternalViewabilitySessionManager;

    return-void
.end method

.method public setPageLoaded()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPageLoaded() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/BaseWebViewViewability;->g(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->k:Z

    sget-object v0, Lcom/mopub/mobileads/BaseWebViewViewability$State;->STARTED:Lcom/mopub/mobileads/BaseWebViewViewability$State;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/BaseWebViewViewability;->f(Lcom/mopub/mobileads/BaseWebViewViewability$State;)V

    iget-boolean v0, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->j:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mopub/mobileads/BaseWebViewViewability$State;->IMPRESSED:Lcom/mopub/mobileads/BaseWebViewViewability$State;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/BaseWebViewViewability;->f(Lcom/mopub/mobileads/BaseWebViewViewability$State;)V

    :cond_0
    return-void
.end method
