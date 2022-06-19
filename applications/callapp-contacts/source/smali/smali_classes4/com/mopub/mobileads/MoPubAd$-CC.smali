.class public final synthetic Lcom/mopub/mobileads/MoPubAd$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$fakeLoadAd(Lcom/mopub/mobileads/MoPubAd;Lcom/mopub/network/AdResponse;)V
    .locals 2
    .param p0, "_this"    # Lcom/mopub/mobileads/MoPubAd;

    const-string v0, "adResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->resolveAdSize()Landroid/graphics/Point;

    move-result-object v1

    .line 1408
    iput-object v1, v0, Lcom/mopub/mobileads/AdViewController;->f:Landroid/graphics/Point;

    .line 31
    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdViewController;->fakeLoadAd(Lcom/mopub/network/AdResponse;)V

    :cond_0
    return-void
.end method

.method public static $default$getAdHeight(Lcom/mopub/mobileads/MoPubAd;)I
    .locals 1
    .param p0, "_this"    # Lcom/mopub/mobileads/MoPubAd;

    .line 89
    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getAdHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static $default$getAdUnitId(Lcom/mopub/mobileads/MoPubAd;)Ljava/lang/String;
    .locals 1
    .param p0, "_this"    # Lcom/mopub/mobileads/MoPubAd;

    .line 57
    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static $default$getAdWidth(Lcom/mopub/mobileads/MoPubAd;)I
    .locals 1
    .param p0, "_this"    # Lcom/mopub/mobileads/MoPubAd;

    .line 84
    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getAdWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static $default$getKeywords(Lcom/mopub/mobileads/MoPubAd;)Ljava/lang/String;
    .locals 1
    .param p0, "_this"    # Lcom/mopub/mobileads/MoPubAd;

    .line 67
    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getKeywords()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static $default$getLocalExtras(Lcom/mopub/mobileads/MoPubAd;)Ljava/util/Map;
    .locals 2
    .param p0, "_this"    # Lcom/mopub/mobileads/MoPubAd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 109
    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3675
    iget-object v1, v0, Lcom/mopub/mobileads/AdViewController;->e:Ljava/util/Map;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/TreeMap;

    iget-object v0, v0, Lcom/mopub/mobileads/AdViewController;->e:Ljava/util/Map;

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    return-object v0

    .line 109
    :cond_1
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public static $default$getLocation(Lcom/mopub/mobileads/MoPubAd;)Landroid/location/Location;
    .locals 1
    .param p0, "_this"    # Lcom/mopub/mobileads/MoPubAd;

    .line 123
    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static $default$getUserDataKeywords(Lcom/mopub/mobileads/MoPubAd;)Ljava/lang/String;
    .locals 1
    .param p0, "_this"    # Lcom/mopub/mobileads/MoPubAd;

    .line 77
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getUserDataKeywords()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static $default$loadAd(Lcom/mopub/mobileads/MoPubAd;)V
    .locals 2
    .param p0, "_this"    # Lcom/mopub/mobileads/MoPubAd;

    .line 39
    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->resolveAdSize()Landroid/graphics/Point;

    move-result-object v1

    .line 2408
    iput-object v1, v0, Lcom/mopub/mobileads/AdViewController;->f:Landroid/graphics/Point;

    .line 41
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->loadAd()V

    :cond_0
    return-void
.end method

.method public static $default$loadFailUrl(Lcom/mopub/mobileads/MoPubAd;Lcom/mopub/mobileads/MoPubErrorCode;)Z
    .locals 1
    .param p0, "_this"    # Lcom/mopub/mobileads/MoPubAd;

    const-string v0, "errorCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdViewController;->a(Lcom/mopub/mobileads/MoPubErrorCode;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static $default$pauseAutoRefresh(Lcom/mopub/mobileads/MoPubAd;)V
    .locals 2
    .param p0, "_this"    # Lcom/mopub/mobileads/MoPubAd;

    .line 99
    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3461
    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/AdViewController;->b(Z)V

    :cond_0
    return-void
.end method

.method public static $default$resumeAutoRefresh(Lcom/mopub/mobileads/MoPubAd;)V
    .locals 1
    .param p0, "_this"    # Lcom/mopub/mobileads/MoPubAd;

    .line 104
    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->a()V

    :cond_0
    return-void
.end method

.method public static $default$setAdContentView(Lcom/mopub/mobileads/MoPubAd;Landroid/view/View;)V
    .locals 4
    .param p0, "_this"    # Lcom/mopub/mobileads/MoPubAd;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2704
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v1

    .line 2705
    instance-of v2, v1, Lcom/mopub/mobileads/MoPubView;

    if-eqz v2, :cond_0

    .line 2706
    iget-object v2, v0, Lcom/mopub/mobileads/AdViewController;->c:Landroid/os/Handler;

    new-instance v3, Lcom/mopub/mobileads/AdViewController$3;

    invoke-direct {v3, v0, v1, p1}, Lcom/mopub/mobileads/AdViewController$3;-><init>(Lcom/mopub/mobileads/AdViewController;Lcom/mopub/mobileads/MoPubAd;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static $default$setAdUnitId(Lcom/mopub/mobileads/MoPubAd;Ljava/lang/String;)V
    .locals 1
    .param p0, "_this"    # Lcom/mopub/mobileads/MoPubAd;

    const-string v0, "adUnitId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdViewController;->setAdUnitId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static $default$setKeywords(Lcom/mopub/mobileads/MoPubAd;Ljava/lang/String;)V
    .locals 1
    .param p0, "_this"    # Lcom/mopub/mobileads/MoPubAd;

    .line 62
    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdViewController;->setKeywords(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static $default$setLocalExtras(Lcom/mopub/mobileads/MoPubAd;Ljava/util/Map;)V
    .locals 2
    .param p0, "_this"    # Lcom/mopub/mobileads/MoPubAd;
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

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4666
    new-instance v1, Ljava/util/TreeMap;

    if-eqz p1, :cond_0

    invoke-direct {v1, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    :goto_0
    iput-object v1, v0, Lcom/mopub/mobileads/AdViewController;->e:Ljava/util/Map;

    :cond_1
    return-void
.end method

.method public static $default$setUserDataKeywords(Lcom/mopub/mobileads/MoPubAd;Ljava/lang/String;)V
    .locals 1
    .param p0, "_this"    # Lcom/mopub/mobileads/MoPubAd;

    .line 72
    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdViewController;->setUserDataKeywords(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
