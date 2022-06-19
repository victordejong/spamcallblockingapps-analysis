.class public interface abstract Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/mopub/mobileads/AdLifecycleListener$InlineInteractionListener;
.implements Lcom/mopub/mobileads/AdLifecycleListener$FullscreenInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/AdLifecycleListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InteractionListener"
.end annotation


# virtual methods
.method public abstract onAdClicked()V
.end method

.method public bridge abstract synthetic onAdCollapsed()V
.end method

.method public bridge abstract synthetic onAdComplete(Lcom/mopub/common/MoPubReward;)V
.end method

.method public bridge abstract synthetic onAdDismissed()V
.end method

.method public bridge abstract synthetic onAdExpanded()V
.end method

.method public abstract onAdFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
.end method

.method public abstract onAdImpression()V
.end method

.method public bridge abstract synthetic onAdPauseAutoRefresh()V
.end method

.method public bridge abstract synthetic onAdResumeAutoRefresh()V
.end method

.method public abstract onAdShown()V
.end method
