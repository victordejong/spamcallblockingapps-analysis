.class public interface abstract Lcom/mopub/mobileads/MoPubRewardedAdListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J \u0010\u0007\u001a\u00020\u00032\u000e\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\t2\u0006\u0010\n\u001a\u00020\u000bH&J\u0018\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eH&J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eH&J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/mopub/mobileads/MoPubRewardedAdListener;",
        "",
        "onRewardedAdClicked",
        "",
        "adUnitId",
        "",
        "onRewardedAdClosed",
        "onRewardedAdCompleted",
        "adUnitIds",
        "",
        "reward",
        "Lcom/mopub/common/MoPubReward;",
        "onRewardedAdLoadFailure",
        "errorCode",
        "Lcom/mopub/mobileads/MoPubErrorCode;",
        "onRewardedAdLoadSuccess",
        "onRewardedAdShowError",
        "onRewardedAdStarted",
        "mopub-sdk-fullscreen_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# virtual methods
.method public abstract onRewardedAdClicked(Ljava/lang/String;)V
.end method

.method public abstract onRewardedAdClosed(Ljava/lang/String;)V
.end method

.method public abstract onRewardedAdCompleted(Ljava/util/Set;Lcom/mopub/common/MoPubReward;)V
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
.end method

.method public abstract onRewardedAdLoadFailure(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
.end method

.method public abstract onRewardedAdLoadSuccess(Ljava/lang/String;)V
.end method

.method public abstract onRewardedAdShowError(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
.end method

.method public abstract onRewardedAdStarted(Ljava/lang/String;)V
.end method
