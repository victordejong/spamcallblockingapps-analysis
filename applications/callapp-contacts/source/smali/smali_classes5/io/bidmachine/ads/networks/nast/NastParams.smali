.class public Lio/bidmachine/ads/networks/nast/NastParams;
.super Lio/bidmachine/unified/UnifiedParams;
.source "SourceFile"


# instance fields
.field final callToAction:Ljava/lang/String;

.field final clickUrl:Ljava/lang/String;

.field final description:Ljava/lang/String;

.field final iconUrl:Ljava/lang/String;

.field final imageUrl:Ljava/lang/String;

.field final rating:F

.field final title:Ljava/lang/String;

.field final videoAdm:Ljava/lang/String;

.field final videoUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/bidmachine/unified/UnifiedMediationParams;)V
    .locals 1

    .line 28
    invoke-direct {p0, p1}, Lio/bidmachine/unified/UnifiedParams;-><init>(Lio/bidmachine/unified/UnifiedMediationParams;)V

    const-string v0, "title"

    .line 29
    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/ads/networks/nast/NastParams;->title:Ljava/lang/String;

    const-string v0, "description"

    .line 30
    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/ads/networks/nast/NastParams;->description:Ljava/lang/String;

    const-string v0, "cta"

    .line 31
    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/ads/networks/nast/NastParams;->callToAction:Ljava/lang/String;

    const-string v0, "rating"

    .line 32
    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lio/bidmachine/ads/networks/nast/NastParams;->rating:F

    const-string v0, "iconUrl"

    .line 33
    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/ads/networks/nast/NastParams;->iconUrl:Ljava/lang/String;

    const-string v0, "imageUrl"

    .line 34
    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/ads/networks/nast/NastParams;->imageUrl:Ljava/lang/String;

    const-string v0, "videoUrl"

    .line 35
    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/ads/networks/nast/NastParams;->videoUrl:Ljava/lang/String;

    const-string v0, "videoAdm"

    .line 36
    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/ads/networks/nast/NastParams;->videoAdm:Ljava/lang/String;

    const-string v0, "clickUrl"

    .line 37
    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/ads/networks/nast/NastParams;->clickUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isValid(Lio/bidmachine/unified/UnifiedAdCallback;)Z
    .locals 2

    .line 42
    iget-object v0, p0, Lio/bidmachine/ads/networks/nast/NastParams;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "title not provided"

    .line 43
    invoke-static {v0}, Lio/bidmachine/utils/BMError;->requestError(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return v1

    .line 46
    :cond_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/nast/NastParams;->callToAction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "callToAction not provided"

    .line 47
    invoke-static {v0}, Lio/bidmachine/utils/BMError;->requestError(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method isValid(Lio/bidmachine/unified/UnifiedNativeAdRequestParams;Lio/bidmachine/unified/UnifiedAdCallback;)Z
    .locals 2

    .line 55
    invoke-virtual {p0, p2}, Lio/bidmachine/ads/networks/nast/NastParams;->isValid(Lio/bidmachine/unified/UnifiedAdCallback;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 58
    :cond_0
    sget-object v0, Lio/bidmachine/MediaAssetType;->Icon:Lio/bidmachine/MediaAssetType;

    invoke-interface {p1, v0}, Lio/bidmachine/unified/UnifiedNativeAdRequestParams;->containsAssetType(Lio/bidmachine/MediaAssetType;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/bidmachine/ads/networks/nast/NastParams;->iconUrl:Ljava/lang/String;

    .line 59
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Your request settings require ICON, but it not provided in response"

    .line 60
    invoke-static {p1}, Lio/bidmachine/utils/BMError;->requestError(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return v1

    .line 63
    :cond_1
    sget-object v0, Lio/bidmachine/MediaAssetType;->Image:Lio/bidmachine/MediaAssetType;

    invoke-interface {p1, v0}, Lio/bidmachine/unified/UnifiedNativeAdRequestParams;->containsAssetType(Lio/bidmachine/MediaAssetType;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/bidmachine/ads/networks/nast/NastParams;->imageUrl:Ljava/lang/String;

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "Your request settings require IMAGE, but it not provided in response"

    .line 65
    invoke-static {p1}, Lio/bidmachine/utils/BMError;->requestError(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return v1

    .line 68
    :cond_2
    sget-object v0, Lio/bidmachine/MediaAssetType;->Video:Lio/bidmachine/MediaAssetType;

    invoke-interface {p1, v0}, Lio/bidmachine/unified/UnifiedNativeAdRequestParams;->containsAssetType(Lio/bidmachine/MediaAssetType;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lio/bidmachine/ads/networks/nast/NastParams;->videoAdm:Ljava/lang/String;

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lio/bidmachine/ads/networks/nast/NastParams;->videoUrl:Ljava/lang/String;

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Your request settings require VIDEO, but it not provided in response"

    .line 71
    invoke-static {p1}, Lio/bidmachine/utils/BMError;->requestError(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method
