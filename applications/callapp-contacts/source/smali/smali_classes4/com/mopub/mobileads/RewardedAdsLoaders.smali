.class final Lcom/mopub/mobileads/RewardedAdsLoaders;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/RewardedAdsLoaders$RewardedAdRequestListener;
    }
.end annotation


# instance fields
.field final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/a;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/mopub/mobileads/MoPubRewardedAdManager;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MoPubRewardedAdManager;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/mopub/mobileads/RewardedAdsLoaders;->b:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    .line 46
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/mopub/mobileads/RewardedAdsLoaders;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)Lcom/mopub/volley/Request;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/MoPubErrorCode;",
            ")",
            "Lcom/mopub/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 54
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 55
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdsLoaders;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/a;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Lcom/mopub/mobileads/a;->hasMoreAds()Z

    move-result v1

    if-nez v1, :cond_1

    .line 60
    :cond_0
    new-instance v0, Lcom/mopub/mobileads/a;

    sget-object v4, Lcom/mopub/common/AdFormat;->REWARDED_AD:Lcom/mopub/common/AdFormat;

    new-instance v7, Lcom/mopub/mobileads/RewardedAdsLoaders$RewardedAdRequestListener;

    invoke-direct {v7, p0, p2}, Lcom/mopub/mobileads/RewardedAdsLoaders$RewardedAdRequestListener;-><init>(Lcom/mopub/mobileads/RewardedAdsLoaders;Ljava/lang/String;)V

    move-object v2, v0

    move-object v3, p3

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/mopub/mobileads/a;-><init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/AdLoader$Listener;)V

    .line 65
    iget-object p1, p0, Lcom/mopub/mobileads/RewardedAdsLoaders;->a:Ljava/util/HashMap;

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_1
    invoke-virtual {v0, p4}, Lcom/mopub/mobileads/a;->loadNextAd(Lcom/mopub/mobileads/MoPubError;)Lcom/mopub/volley/Request;

    move-result-object p1

    return-object p1
.end method

.method final a(Ljava/lang/String;)Z
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdsLoaders;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdsLoaders;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mopub/mobileads/a;

    invoke-virtual {p1}, Lcom/mopub/mobileads/a;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final b(Ljava/lang/String;)V
    .locals 1

    .line 76
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdsLoaders;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final c(Ljava/lang/String;)Z
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdsLoaders;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mopub/mobileads/a;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 117
    :cond_0
    invoke-virtual {p1}, Lcom/mopub/mobileads/a;->a()Lcom/mopub/network/AdResponse;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method final d(Ljava/lang/String;)Z
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdsLoaders;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mopub/mobileads/a;

    if-eqz p1, :cond_0

    .line 123
    invoke-virtual {p1}, Lcom/mopub/mobileads/a;->hasMoreAds()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
