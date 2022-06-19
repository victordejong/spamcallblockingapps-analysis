.class final Lcom/mopub/mobileads/MoPubRewardedVideos$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/MoPubRewardedAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MoPubRewardedVideos;->setRewardedVideoListener(Lcom/mopub/mobileads/MoPubRewardedVideoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/MoPubRewardedVideoListener;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MoPubRewardedVideoListener;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideos$1;->a:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRewardedAdClicked(Ljava/lang/String;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideos$1;->a:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoListener;->onRewardedVideoClicked(Ljava/lang/String;)V

    return-void
.end method

.method public final onRewardedAdClosed(Ljava/lang/String;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideos$1;->a:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoListener;->onRewardedVideoClosed(Ljava/lang/String;)V

    return-void
.end method

.method public final onRewardedAdCompleted(Ljava/util/Set;Lcom/mopub/common/MoPubReward;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mopub/common/MoPubReward;",
            ")V"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideos$1;->a:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    invoke-interface {v0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoListener;->onRewardedVideoCompleted(Ljava/util/Set;Lcom/mopub/common/MoPubReward;)V

    return-void
.end method

.method public final onRewardedAdLoadFailure(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideos$1;->a:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    invoke-interface {v0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoListener;->onRewardedVideoLoadFailure(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public final onRewardedAdLoadSuccess(Ljava/lang/String;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideos$1;->a:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoListener;->onRewardedVideoLoadSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public final onRewardedAdShowError(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideos$1;->a:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    invoke-interface {v0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoListener;->onRewardedVideoPlaybackError(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public final onRewardedAdStarted(Ljava/lang/String;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideos$1;->a:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoListener;->onRewardedVideoStarted(Ljava/lang/String;)V

    return-void
.end method
