.class public Lcom/mopub/mobileads/BaseWebViewViewability;
.super Lcom/mopub/mobileads/BaseWebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/BaseWebViewViewability$State;
    }
.end annotation


# instance fields
.field protected c:Lcom/mopub/mobileads/BaseWebViewViewability$State;

.field protected d:Lcom/mopub/common/ExternalViewabilitySessionManager;

.field protected e:Z

.field protected f:Z

.field protected g:Z

.field protected h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/BaseWebView;-><init>(Landroid/content/Context;)V

    .line 23
    sget-object p1, Lcom/mopub/mobileads/BaseWebViewViewability$State;->INIT:Lcom/mopub/mobileads/BaseWebViewViewability$State;

    iput-object p1, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->c:Lcom/mopub/mobileads/BaseWebViewViewability$State;

    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->f:Z

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->g:Z

    .line 30
    iput-boolean v0, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->h:Z

    .line 34
    invoke-static {}, Lcom/mopub/common/ViewabilityManager;->isViewabilityEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->e:Z

    .line 35
    invoke-static {}, Lcom/mopub/common/ExternalViewabilitySessionManager;->create()Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->d:Lcom/mopub/common/ExternalViewabilitySessionManager;

    .line 36
    iget-boolean v0, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->e:Z

    if-eqz v0, :cond_0

    .line 37
    iput-boolean p1, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->b:Z

    .line 39
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseWebViewViewability() "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mopub/mobileads/BaseWebViewViewability;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/mopub/mobileads/BaseWebViewViewability$State;)V
    .locals 4

    .line 43
    iget-boolean v0, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 48
    sget-object v1, Lcom/mopub/mobileads/BaseWebViewViewability$1;->a:[I

    invoke-virtual {p1}, Lcom/mopub/mobileads/BaseWebViewViewability$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    goto :goto_1

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->c:Lcom/mopub/mobileads/BaseWebViewViewability$State;

    sget-object v3, Lcom/mopub/mobileads/BaseWebViewViewability$State;->INIT:Lcom/mopub/mobileads/BaseWebViewViewability$State;

    if-eq v1, v3, :cond_4

    iget-object v1, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->c:Lcom/mopub/mobileads/BaseWebViewViewability$State;

    sget-object v3, Lcom/mopub/mobileads/BaseWebViewViewability$State;->STOPPED:Lcom/mopub/mobileads/BaseWebViewViewability$State;

    if-eq v1, v3, :cond_4

    .line 64
    iget-object v0, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->d:Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-virtual {v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->endSession()V

    goto :goto_0

    .line 57
    :cond_2
    iget-object v1, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->c:Lcom/mopub/mobileads/BaseWebViewViewability$State;

    sget-object v3, Lcom/mopub/mobileads/BaseWebViewViewability$State;->STARTED:Lcom/mopub/mobileads/BaseWebViewViewability$State;

    if-ne v1, v3, :cond_4

    iget-boolean v1, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->h:Z

    if-eqz v1, :cond_4

    .line 58
    iget-object v0, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->d:Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-virtual {v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->trackImpression()V

    goto :goto_0

    .line 50
    :cond_3
    iget-object v1, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->c:Lcom/mopub/mobileads/BaseWebViewViewability$State;

    sget-object v3, Lcom/mopub/mobileads/BaseWebViewViewability$State;->INIT:Lcom/mopub/mobileads/BaseWebViewViewability$State;

    if-ne v1, v3, :cond_4

    iget-boolean v1, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->g:Z

    if-eqz v1, :cond_4

    .line 51
    iget-object v0, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->d:Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-virtual {v0, p0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->createWebViewSession(Landroid/webkit/WebView;)V

    .line 52
    iget-object v0, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->d:Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-virtual {v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->startSession()V

    :goto_0
    const/4 v0, 0x1

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 70
    iput-object p1, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->c:Lcom/mopub/mobileads/BaseWebViewViewability$State;

    return-void

    .line 72
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Skip state transition "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->c:Lcom/mopub/mobileads/BaseWebViewViewability$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mopub/mobileads/BaseWebViewViewability;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 4

    .line 137
    invoke-static {}, Lcom/mopub/common/ViewabilityManager;->isViewabilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "OMSDK "

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public disableAutomaticImpression()V
    .locals 1

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->f:Z

    return-void
.end method

.method public disableTracking()V
    .locals 1

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->e:Z

    return-void
.end method

.method public enableTracking()V
    .locals 1

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->e:Z

    return-void
.end method

.method public notifyImpression()V
    .locals 1

    .line 122
    sget-object v0, Lcom/mopub/mobileads/BaseWebViewViewability$State;->IMPRESSED:Lcom/mopub/mobileads/BaseWebViewViewability$State;

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/BaseWebViewViewability;->a(Lcom/mopub/mobileads/BaseWebViewViewability$State;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 78
    invoke-super {p0}, Lcom/mopub/mobileads/BaseWebView;->onAttachedToWindow()V

    .line 79
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAttachedToWindow() "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mobileads/BaseWebViewViewability;->a(Ljava/lang/String;)V

    .line 80
    iget-boolean v0, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->g:Z

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/mopub/mobileads/BaseWebViewViewability$State;->STARTED:Lcom/mopub/mobileads/BaseWebViewViewability$State;

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/BaseWebViewViewability;->a(Lcom/mopub/mobileads/BaseWebViewViewability$State;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 87
    sget-object v0, Lcom/mopub/mobileads/BaseWebViewViewability$State;->STOPPED:Lcom/mopub/mobileads/BaseWebViewViewability$State;

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/BaseWebViewViewability;->a(Lcom/mopub/mobileads/BaseWebViewViewability$State;)V

    .line 88
    invoke-super {p0}, Lcom/mopub/mobileads/BaseWebView;->onDetachedFromWindow()V

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .line 93
    invoke-super {p0, p1, p2}, Lcom/mopub/mobileads/BaseWebView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onVisibilityChanged: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mopub/mobileads/BaseWebViewViewability;->a(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 95
    :goto_0
    iput-boolean p1, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->h:Z

    .line 96
    iget-boolean p1, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->f:Z

    if-eqz p1, :cond_1

    .line 97
    sget-object p1, Lcom/mopub/mobileads/BaseWebViewViewability$State;->IMPRESSED:Lcom/mopub/mobileads/BaseWebViewViewability$State;

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/BaseWebViewViewability;->a(Lcom/mopub/mobileads/BaseWebViewViewability$State;)V

    :cond_1
    return-void
.end method

.method public setPageLoaded()V
    .locals 2

    .line 113
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setPageLoaded() "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mobileads/BaseWebViewViewability;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->g:Z

    .line 115
    sget-object v0, Lcom/mopub/mobileads/BaseWebViewViewability$State;->STARTED:Lcom/mopub/mobileads/BaseWebViewViewability$State;

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/BaseWebViewViewability;->a(Lcom/mopub/mobileads/BaseWebViewViewability$State;)V

    .line 116
    iget-boolean v0, p0, Lcom/mopub/mobileads/BaseWebViewViewability;->f:Z

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Lcom/mopub/mobileads/BaseWebViewViewability$State;->IMPRESSED:Lcom/mopub/mobileads/BaseWebViewViewability$State;

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/BaseWebViewViewability;->a(Lcom/mopub/mobileads/BaseWebViewViewability$State;)V

    :cond_0
    return-void
.end method
