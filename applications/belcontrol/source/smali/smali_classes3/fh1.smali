.class public final synthetic Lfh1;
.super Ljava/lang/Object;


# direct methods
.method public static $default$getAdHeight(Lcom/mopub/mobileads/MoPubAd;)I
    .locals 1

    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getAdHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static $default$getAdUnitId(Lcom/mopub/mobileads/MoPubAd;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static $default$getAdWidth(Lcom/mopub/mobileads/MoPubAd;)I
    .locals 1

    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getAdWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static $default$getKeywords(Lcom/mopub/mobileads/MoPubAd;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getKeywords()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static $default$getLocalExtras(Lcom/mopub/mobileads/MoPubAd;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getLocalExtras()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    :goto_0
    return-object v0
.end method

.method public static $default$getLocation(Lcom/mopub/mobileads/MoPubAd;)Landroid/location/Location;
    .locals 1

    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getLocation()Landroid/location/Location;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static $default$getUserDataKeywords(Lcom/mopub/mobileads/MoPubAd;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getUserDataKeywords()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public static $default$loadAd(Lcom/mopub/mobileads/MoPubAd;)V
    .locals 2

    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->resolveAdSize()Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/AdViewController;->B(Landroid/graphics/Point;)V

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->loadAd()V

    :cond_0
    return-void
.end method

.method public static $default$loadFailUrl(Lcom/mopub/mobileads/MoPubAd;Lcom/mopub/mobileads/MoPubErrorCode;)Z
    .locals 1

    const-string v0, "errorCode"

    invoke-static {p1, v0}, Lqk1;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdViewController;->loadFailUrl(Lcom/mopub/mobileads/MoPubErrorCode;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic $default$onAdCollapsed(Lcom/mopub/mobileads/MoPubAd;)V
    .locals 0

    invoke-static {p0}, Lzg1;->$default$onAdCollapsed(Lcom/mopub/mobileads/AdLifecycleListener$InlineInteractionListener;)V

    return-void
.end method

.method public static synthetic $default$onAdComplete(Lcom/mopub/mobileads/MoPubAd;Lcom/mopub/common/MoPubReward;)V
    .locals 0

    invoke-static {p0, p1}, Lyg1;->$default$onAdComplete(Lcom/mopub/mobileads/AdLifecycleListener$FullscreenInteractionListener;Lcom/mopub/common/MoPubReward;)V

    return-void
.end method

.method public static synthetic $default$onAdDismissed(Lcom/mopub/mobileads/MoPubAd;)V
    .locals 0

    invoke-static {p0}, Lyg1;->$default$onAdDismissed(Lcom/mopub/mobileads/AdLifecycleListener$FullscreenInteractionListener;)V

    return-void
.end method

.method public static synthetic $default$onAdExpanded(Lcom/mopub/mobileads/MoPubAd;)V
    .locals 0

    invoke-static {p0}, Lzg1;->$default$onAdExpanded(Lcom/mopub/mobileads/AdLifecycleListener$InlineInteractionListener;)V

    return-void
.end method

.method public static synthetic $default$onAdPauseAutoRefresh(Lcom/mopub/mobileads/MoPubAd;)V
    .locals 0

    invoke-static {p0}, Lzg1;->$default$onAdPauseAutoRefresh(Lcom/mopub/mobileads/AdLifecycleListener$InlineInteractionListener;)V

    return-void
.end method

.method public static synthetic $default$onAdResumeAutoRefresh(Lcom/mopub/mobileads/MoPubAd;)V
    .locals 0

    invoke-static {p0}, Lzg1;->$default$onAdResumeAutoRefresh(Lcom/mopub/mobileads/AdLifecycleListener$InlineInteractionListener;)V

    return-void
.end method

.method public static $default$pauseAutoRefresh(Lcom/mopub/mobileads/MoPubAd;)V
    .locals 1

    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->v()V

    :cond_0
    return-void
.end method

.method public static $default$resumeAutoRefresh(Lcom/mopub/mobileads/MoPubAd;)V
    .locals 1

    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->x()V

    :cond_0
    return-void
.end method

.method public static $default$setAdContentView(Lcom/mopub/mobileads/MoPubAd;Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lqk1;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdViewController;->setAdContentView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static $default$setAdUnitId(Lcom/mopub/mobileads/MoPubAd;Ljava/lang/String;)V
    .locals 1

    const-string v0, "adUnitId"

    invoke-static {p1, v0}, Lqk1;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdViewController;->setAdUnitId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static $default$setKeywords(Lcom/mopub/mobileads/MoPubAd;Ljava/lang/String;)V
    .locals 1

    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdViewController;->setKeywords(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static $default$setLocalExtras(Lcom/mopub/mobileads/MoPubAd;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "localExtras"

    invoke-static {p1, v0}, Lqk1;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdViewController;->setLocalExtras(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static $default$setUserDataKeywords(Lcom/mopub/mobileads/MoPubAd;Ljava/lang/String;)V
    .locals 1

    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdViewController;->setUserDataKeywords(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
