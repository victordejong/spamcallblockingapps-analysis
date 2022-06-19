.class final Lio/bidmachine/ads/networks/mraid/e;
.super Lio/bidmachine/unified/UnifiedParams;
.source "SourceFile"


# instance fields
.field final canPreload:Z

.field final closeableViewStyle:Lcom/explorestack/iab/utils/h;

.field final companionSkipOffset:I

.field final countDownStyle:Lcom/explorestack/iab/utils/h;

.field final creativeAdm:Ljava/lang/String;

.field final height:I

.field final ignoresSafeAreaLayoutGuide:Z

.field final loadSkipOffset:I

.field final progressDuration:I

.field final progressStyle:Lcom/explorestack/iab/utils/h;

.field final r1:Z

.field final r2:Z

.field final skipOffset:I

.field final storeUrl:Ljava/lang/String;

.field final useNativeClose:Z

.field final width:I


# direct methods
.method constructor <init>(Lio/bidmachine/unified/UnifiedMediationParams;)V
    .locals 1

    .line 35
    invoke-direct {p0, p1}, Lio/bidmachine/unified/UnifiedParams;-><init>(Lio/bidmachine/unified/UnifiedMediationParams;)V

    const-string v0, "creativeAdm"

    .line 36
    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/ads/networks/mraid/e;->creativeAdm:Ljava/lang/String;

    const-string v0, "width"

    .line 37
    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/ads/networks/mraid/e;->width:I

    const-string v0, "height"

    .line 38
    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/ads/networks/mraid/e;->height:I

    const-string v0, "preload"

    .line 39
    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getBool(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/ads/networks/mraid/e;->canPreload:Z

    const-string v0, "loadSkipOffset"

    .line 40
    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/ads/networks/mraid/e;->loadSkipOffset:I

    const-string v0, "skipOffset"

    .line 41
    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/ads/networks/mraid/e;->skipOffset:I

    const-string v0, "companionSkipOffset"

    .line 42
    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/ads/networks/mraid/e;->companionSkipOffset:I

    const-string v0, "useNativeClose"

    .line 43
    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getBool(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/ads/networks/mraid/e;->useNativeClose:Z

    const-string v0, "r1"

    .line 44
    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getBool(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/ads/networks/mraid/e;->r1:Z

    const-string v0, "r2"

    .line 45
    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getBool(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/ads/networks/mraid/e;->r2:Z

    const-string v0, "ignores_safe_area_layout_guide"

    .line 46
    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getBool(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/ads/networks/mraid/e;->ignoresSafeAreaLayoutGuide:Z

    const-string v0, "store_url"

    .line 47
    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/ads/networks/mraid/e;->storeUrl:Ljava/lang/String;

    const-string v0, "progress_duration"

    .line 48
    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/ads/networks/mraid/e;->progressDuration:I

    const-string v0, "closeable_view_style"

    .line 49
    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/iab/utils/h;

    iput-object v0, p0, Lio/bidmachine/ads/networks/mraid/e;->closeableViewStyle:Lcom/explorestack/iab/utils/h;

    const-string v0, "countdown_style"

    .line 50
    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/iab/utils/h;

    iput-object v0, p0, Lio/bidmachine/ads/networks/mraid/e;->countDownStyle:Lcom/explorestack/iab/utils/h;

    const-string v0, "progress_style"

    .line 51
    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/iab/utils/h;

    iput-object p1, p0, Lio/bidmachine/ads/networks/mraid/e;->progressStyle:Lcom/explorestack/iab/utils/h;

    return-void
.end method


# virtual methods
.method public final isValid(Lio/bidmachine/unified/UnifiedAdCallback;)Z
    .locals 1

    .line 56
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/e;->creativeAdm:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lio/bidmachine/ads/networks/mraid/e;->width:I

    if-eqz v0, :cond_1

    iget v0, p0, Lio/bidmachine/ads/networks/mraid/e;->height:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 57
    :cond_1
    :goto_0
    sget-object v0, Lio/bidmachine/utils/BMError;->IncorrectAdUnit:Lio/bidmachine/utils/BMError;

    invoke-interface {p1, v0}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    const/4 p1, 0x0

    return p1
.end method
