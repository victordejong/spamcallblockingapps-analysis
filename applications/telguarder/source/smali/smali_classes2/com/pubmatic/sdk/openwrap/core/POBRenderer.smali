.class public Lcom/pubmatic/sdk/openwrap/core/POBRenderer;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lcom/pubmatic/sdk/common/base/POBAdDescriptor;Ljava/lang/String;I)Lcom/pubmatic/sdk/common/ui/POBBannerRendering;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/pubmatic/sdk/openwrap/core/POBRenderer;->b(Landroid/content/Context;Lcom/pubmatic/sdk/common/base/POBAdDescriptor;Ljava/lang/String;I)Lcom/pubmatic/sdk/common/ui/POBBannerRendering;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;II)Lcom/pubmatic/sdk/common/ui/POBBannerRendering;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/pubmatic/sdk/openwrap/core/POBRenderer;->b(Landroid/content/Context;Ljava/lang/String;II)Lcom/pubmatic/sdk/common/ui/POBBannerRendering;

    move-result-object p0

    return-object p0
.end method

.method private static a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getSdkConfig()Lcom/pubmatic/sdk/common/POBSDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/POBSDKConfig;->isRequestSecureCreative()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://ow.pubmatic.com/openrtb/2.5?"

    return-object v0

    :cond_0
    const-string v0, "http://ow.pubmatic.com/openrtb/2.5?"

    return-object v0
.end method

.method private static b(Landroid/content/Context;Lcom/pubmatic/sdk/common/base/POBAdDescriptor;Ljava/lang/String;I)Lcom/pubmatic/sdk/common/ui/POBBannerRendering;
    .locals 4

    const-string v0, "inline"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-interface {p1}, Lcom/pubmatic/sdk/common/base/POBAdDescriptor;->getRawBid()Lorg/json/JSONObject;

    move-result-object p1

    const/4 v3, 0x0

    invoke-static {p1, v1, v3, v2, p2}, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->createVastConfig(Lorg/json/JSONObject;ZZZLjava/lang/String;)Lcom/pubmatic/sdk/video/POBVastPlayerConfig;

    move-result-object p1

    new-instance v3, Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-direct {v3, p0, p1}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;-><init>(Landroid/content/Context;Lcom/pubmatic/sdk/video/POBVastPlayerConfig;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getDeviceInfo(Landroid/content/Context;)Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->setDeviceInfo(Lcom/pubmatic/sdk/common/models/POBDeviceInfo;)V

    const/4 p1, 0x3

    invoke-virtual {v3, p1}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->setMaxWrapperThreshold(I)V

    sget-object p1, Lcom/pubmatic/sdk/video/player/POBVastPlayer$Linearity;->LINEAR:Lcom/pubmatic/sdk/video/player/POBVastPlayer$Linearity;

    invoke-virtual {v3, p1}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->setLinearity(Lcom/pubmatic/sdk/video/player/POBVastPlayer$Linearity;)V

    invoke-virtual {v3, v1}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->setSkipabilityEnabled(Z)V

    new-instance p1, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;

    invoke-direct {p1, v3}, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x42480000    # 50.0f

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;->setViewabilityThresholdPercent(F)V

    invoke-virtual {p1, v2}, Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;->setAllowViewTreeObserverRegistration(Z)V

    :cond_0
    const/4 v0, 0x0

    const-string v1, "interstitial"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getInterstitialAdSize(Landroid/content/Context;)Lcom/pubmatic/sdk/common/POBAdSize;

    move-result-object v0

    :cond_1
    invoke-virtual {v3, v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->setEndCardSize(Lcom/pubmatic/sdk/common/POBAdSize;)V

    new-instance p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;

    invoke-direct {p0, v3, p1, p2}, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;-><init>(Lcom/pubmatic/sdk/video/player/POBVastPlayer;Lcom/pubmatic/sdk/webrendering/ui/POBViewabilityTracker;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    int-to-long p1, p3

    invoke-virtual {p0, p1, p2}, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->setExpirationTimeout(J)V

    :cond_2
    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getSdkConfig()Lcom/pubmatic/sdk/common/POBSDKConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/POBSDKConfig;->getVideoMeasurementProvider()Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->setMeasurementProvider(Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;)V

    return-object p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;II)Lcom/pubmatic/sdk/common/ui/POBBannerRendering;
    .locals 0

    invoke-static {p0, p1, p3}, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->setRenderingTimeout(I)V

    invoke-static {}, Lcom/pubmatic/sdk/openwrap/core/POBRenderer;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->setBaseURL(Ljava/lang/String;)V

    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getSdkConfig()Lcom/pubmatic/sdk/common/POBSDKConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/POBSDKConfig;->getHtmlMeasurementProvider()Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->setHTMLMeasurementListener(Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider;)V

    :cond_0
    return-object p0
.end method

.method public static getBannerRenderer(Landroid/content/Context;I)Lcom/pubmatic/sdk/common/ui/POBBannerRendering;
    .locals 2

    new-instance v0, Lcom/pubmatic/sdk/banner/ui/POBBannerRenderer;

    new-instance v1, Lcom/pubmatic/sdk/openwrap/core/POBRenderer$a;

    invoke-direct {v1, p0, p1}, Lcom/pubmatic/sdk/openwrap/core/POBRenderer$a;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/pubmatic/sdk/banner/ui/POBBannerRenderer;-><init>(Lcom/pubmatic/sdk/banner/ui/POBBannerRenderer$RendererBuilder;)V

    return-object v0
.end method

.method public static getInterstitialRenderer(Landroid/content/Context;I)Lcom/pubmatic/sdk/common/ui/POBInterstitialRendering;
    .locals 3

    new-instance v0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/pubmatic/sdk/openwrap/core/POBRenderer$b;

    invoke-direct {v2, p0, p1}, Lcom/pubmatic/sdk/openwrap/core/POBRenderer$b;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;-><init>(Landroid/content/Context;Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer$RendererBuilder;)V

    return-object v0
.end method
