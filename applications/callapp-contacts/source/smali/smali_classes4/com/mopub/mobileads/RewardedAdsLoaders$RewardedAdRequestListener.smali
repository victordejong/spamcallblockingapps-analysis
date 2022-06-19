.class public Lcom/mopub/mobileads/RewardedAdsLoaders$RewardedAdRequestListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/network/AdLoader$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/RewardedAdsLoaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RewardedAdRequestListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/RewardedAdsLoaders;

.field public final adUnitId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/RewardedAdsLoaders;Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/mopub/mobileads/RewardedAdsLoaders$RewardedAdRequestListener;->a:Lcom/mopub/mobileads/RewardedAdsLoaders;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/mopub/mobileads/RewardedAdsLoaders$RewardedAdRequestListener;->adUnitId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .locals 4

    .line 40
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdsLoaders$RewardedAdRequestListener;->a:Lcom/mopub/mobileads/RewardedAdsLoaders;

    .line 2022
    iget-object v0, v0, Lcom/mopub/mobileads/RewardedAdsLoaders;->b:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    .line 40
    iget-object v1, p0, Lcom/mopub/mobileads/RewardedAdsLoaders$RewardedAdRequestListener;->adUnitId:Ljava/lang/String;

    .line 2632
    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 2633
    instance-of v3, p1, Lcom/mopub/network/MoPubNetworkError;

    if-eqz v3, :cond_2

    .line 2634
    move-object v2, p1

    check-cast v2, Lcom/mopub/network/MoPubNetworkError;

    .line 2635
    sget-object v3, Lcom/mopub/mobileads/MoPubRewardedAdManager$5;->a:[I

    invoke-virtual {v2}, Lcom/mopub/network/MoPubNetworkError;->getReason()Lcom/mopub/network/MoPubNetworkError$Reason;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mopub/network/MoPubNetworkError$Reason;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 2646
    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 2641
    :cond_0
    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->TOO_MANY_REQUESTS:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 2638
    :cond_1
    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 2649
    :cond_2
    :goto_0
    instance-of p1, p1, Lcom/mopub/volley/NoConnectionError;

    if-eqz p1, :cond_3

    .line 2650
    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 2652
    :cond_3
    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public onSuccess(Lcom/mopub/network/AdResponse;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdsLoaders$RewardedAdRequestListener;->a:Lcom/mopub/mobileads/RewardedAdsLoaders;

    .line 1022
    iget-object v0, v0, Lcom/mopub/mobileads/RewardedAdsLoaders;->b:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    .line 35
    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a(Lcom/mopub/network/AdResponse;)V

    return-void
.end method
