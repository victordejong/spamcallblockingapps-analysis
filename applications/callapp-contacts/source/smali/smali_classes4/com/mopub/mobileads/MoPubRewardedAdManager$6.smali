.class final Lcom/mopub/mobileads/MoPubRewardedAdManager$6;
.super Lcom/mopub/mobileads/MoPubRewardedAdManager$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MoPubRewardedAdManager;->onRewardedAdLoadSuccess(Lcom/mopub/mobileads/AdAdapter;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/AdAdapter;)V
    .locals 0

    .line 720
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/MoPubRewardedAdManager$a;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .locals 1

    .line 723
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a()Lcom/mopub/mobileads/MoPubRewardedAdManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a(Lcom/mopub/mobileads/MoPubRewardedAdManager;Ljava/lang/String;)V

    .line 724
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a()Lcom/mopub/mobileads/MoPubRewardedAdManager;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->b(Lcom/mopub/mobileads/MoPubRewardedAdManager;)Lcom/mopub/mobileads/RewardedAdsLoaders;

    move-result-object v0

    .line 1127
    iget-object v0, v0, Lcom/mopub/mobileads/RewardedAdsLoaders;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/a;

    if-eqz v0, :cond_0

    .line 1132
    invoke-virtual {v0}, Lcom/mopub/mobileads/a;->creativeDownloadSuccess()V

    .line 725
    :cond_0
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a()Lcom/mopub/mobileads/MoPubRewardedAdManager;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a(Lcom/mopub/mobileads/MoPubRewardedAdManager;)Lcom/mopub/mobileads/MoPubRewardedAdListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 726
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a()Lcom/mopub/mobileads/MoPubRewardedAdManager;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a(Lcom/mopub/mobileads/MoPubRewardedAdManager;)Lcom/mopub/mobileads/MoPubRewardedAdListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/MoPubRewardedAdListener;->onRewardedAdLoadSuccess(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
