.class final Lcom/mopub/mobileads/MoPubRewardedAdManager$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;
.implements Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MoPubRewardedAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/mopub/mobileads/AdAdapter;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/AdAdapter;)V
    .locals 0

    .line 998
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 999
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager$b;->a:Lcom/mopub/mobileads/AdAdapter;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 2

    .line 1039
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CLICKED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 1040
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager$b;->a:Lcom/mopub/mobileads/AdAdapter;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdAdapter;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->onRewardedAdClicked(Lcom/mopub/mobileads/AdAdapter;Ljava/lang/String;)V

    return-void
.end method

.method public final onAdCollapsed()V
    .locals 0

    return-void
.end method

.method public final onAdComplete(Lcom/mopub/common/MoPubReward;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const-string v0, ""

    .line 1056
    invoke-static {v0, p1}, Lcom/mopub/common/MoPubReward;->success(Ljava/lang/String;I)Lcom/mopub/common/MoPubReward;

    move-result-object p1

    .line 1059
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager$b;->a:Lcom/mopub/mobileads/AdAdapter;

    .line 1060
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdAdapter;->d()Ljava/lang/String;

    move-result-object v1

    .line 1059
    invoke-static {v0, v1, p1}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->onRewardedAdCompleted(Lcom/mopub/mobileads/AdAdapter;Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V

    return-void
.end method

.method public final onAdDismissed()V
    .locals 2

    .line 1048
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->DID_DISAPPEAR:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 1049
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager$b;->a:Lcom/mopub/mobileads/AdAdapter;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdAdapter;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->onRewardedAdClosed(Lcom/mopub/mobileads/AdAdapter;Ljava/lang/String;)V

    return-void
.end method

.method public final onAdExpanded()V
    .locals 0

    return-void
.end method

.method public final onAdFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 5

    .line 1017
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager$5;->b:[I

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager$b;->a:Lcom/mopub/mobileads/AdAdapter;

    .line 1027
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdAdapter;->d()Ljava/lang/String;

    move-result-object v1

    .line 1026
    invoke-static {v0, v1, p1}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->onRewardedAdLoadFailure(Lcom/mopub/mobileads/AdAdapter;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 1021
    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 1022
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager$b;->a:Lcom/mopub/mobileads/AdAdapter;

    .line 1023
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdAdapter;->d()Ljava/lang/String;

    move-result-object v1

    .line 1022
    invoke-static {v0, v1, p1}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->onRewardedAdShowError(Lcom/mopub/mobileads/AdAdapter;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public final onAdImpression()V
    .locals 0

    return-void
.end method

.method public final onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 4

    .line 1011
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 1012
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/MoPubRewardedAdManager$b;->onAdFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public final onAdLoaded()V
    .locals 2

    .line 1004
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 1005
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager$b;->a:Lcom/mopub/mobileads/AdAdapter;

    .line 1006
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdAdapter;->d()Ljava/lang/String;

    move-result-object v1

    .line 1005
    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->onRewardedAdLoadSuccess(Lcom/mopub/mobileads/AdAdapter;Ljava/lang/String;)V

    return-void
.end method

.method public final onAdPauseAutoRefresh()V
    .locals 0

    return-void
.end method

.method public final onAdResumeAutoRefresh()V
    .locals 0

    return-void
.end method

.method public final onAdShown()V
    .locals 2

    .line 1033
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->SHOW_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 1034
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager$b;->a:Lcom/mopub/mobileads/AdAdapter;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdAdapter;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->onRewardedAdStarted(Lcom/mopub/mobileads/AdAdapter;Ljava/lang/String;)V

    return-void
.end method
