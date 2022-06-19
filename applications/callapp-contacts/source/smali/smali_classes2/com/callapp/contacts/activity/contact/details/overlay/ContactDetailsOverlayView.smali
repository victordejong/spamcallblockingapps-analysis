.class public abstract Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;
.super Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/model/contact/ContactDataChangeListener;
.implements Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration;
    }
.end annotation


# static fields
.field public static final EXTRA_IS_FROM_NOTIFICATION:Ljava/lang/String; = "isFromNotification"

.field private static final SECONDARY_COLOR:I

.field private static final TEXT_COLOR:I


# instance fields
.field private adPlaceHolder:Landroid/widget/FrameLayout;

.field protected adSize:I

.field private assetManager:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

.field private bottomLayoutView:Landroid/view/View;

.field private contact:Lcom/callapp/contacts/model/contact/ContactData;

.field private currentAd:Ljava/lang/Object;

.field private final eventBus:Lcom/callapp/contacts/event/bus/EventBus;

.field protected extractedInfo:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

.field private imgTint:Landroid/view/View;

.field private lastIntent:Landroid/content/Intent;

.field private multiSizeAdLoader:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

.field private nativeAdView:Landroid/view/View;

.field private onAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private final presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

.field private final presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

.field protected profilePicture:Lcom/callapp/contacts/widget/ProfilePictureView;

.field protected topBarContainer:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f0601cc

    .line 74
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    sput v0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->SECONDARY_COLOR:I

    const v0, 0x7f0601ec

    .line 75
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    sput v0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->TEXT_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$OverlayViewListener;ZZ)V
    .locals 0

    .line 182
    invoke-direct {p0, p1, p3, p4, p2}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;-><init>(Landroid/content/Context;ZZLcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$OverlayViewListener;)V

    .line 78
    new-instance p1, Lcom/callapp/contacts/event/bus/EventBus;

    invoke-direct {p1}, Lcom/callapp/contacts/event/bus/EventBus;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    const/4 p2, 0x0

    .line 82
    iput p2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->adSize:I

    .line 94
    new-instance p2, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$1;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->getPresenterContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object p3

    invoke-direct {p2, p0, p1, p3}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$1;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;Lcom/callapp/contacts/event/bus/EventBus;Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    .line 147
    new-instance p1, Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 178
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;-><init>(Landroid/content/Context;Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$OverlayViewListener;ZZ)V

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;)Lcom/callapp/contacts/model/contact/ContactData;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    return-object p0
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;)Landroid/content/Intent;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->lastIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;)Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->multiSizeAdLoader:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->trackEvent()V

    return-void
.end method

.method static synthetic access$1200(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;)Landroid/view/View;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->imgTint:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;)Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    return-object p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;)Lcom/callapp/contacts/event/bus/EventBus;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    return-object p0
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->clearAd()V

    return-void
.end method

.method static synthetic access$402(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->currentAd:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;)Landroid/view/View;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->nativeAdView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$502(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->nativeAdView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$600(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->adPlaceHolder:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;)Landroid/view/View;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->bottomLayoutView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800()I
    .locals 1

    .line 72
    sget v0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->TEXT_COLOR:I

    return v0
.end method

.method static synthetic access$900()I
    .locals 1

    .line 72
    sget v0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->SECONDARY_COLOR:I

    return v0
.end method

.method private clearAd()V
    .locals 3

    .line 481
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->currentAd:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 482
    instance-of v1, v0, Lcom/mopub/mobileads/MoPubView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 483
    check-cast v0, Lcom/mopub/mobileads/MoPubView;

    .line 484
    invoke-static {v0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 485
    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/MoPubView;->setBannerAdListener(Lcom/mopub/mobileads/MoPubView$BannerAdListener;)V

    .line 486
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    goto :goto_0

    .line 488
    :cond_0
    check-cast v0, Lcom/mopub/nativeads/NativeAd;

    .line 489
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->nativeAdView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeAd;->clear(Landroid/view/View;)V

    .line 490
    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeAd;->destroy()V

    .line 491
    iput-object v2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->nativeAdView:Landroid/view/View;

    .line 493
    :goto_0
    iput-object v2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->currentAd:Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private setOverlayCover()V
    .locals 2

    .line 426
    new-instance v0, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;

    invoke-direct {v0}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;-><init>()V

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$8;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$8;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;)V

    .line 1138
    iput-object v1, v0, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->c:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;

    .line 445
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->a()Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->assetManager:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

    .line 446
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;->getAssets()V

    return-void
.end method

.method private setupFooter(Landroid/view/LayoutInflater;)V
    .locals 3

    const v0, 0x7f0a0425

    .line 311
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 312
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->getBottomLayoutResId()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 314
    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->bottomLayoutView:Landroid/view/View;

    .line 315
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->getBottomLayoutBackgroundColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method private trackEvent()V
    .locals 3

    .line 392
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$11;->a:[I

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->getPresenterContainer()Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 397
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->getTrackEventCategory()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClickOverlaySMS"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 394
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->getTrackEventCategory()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClickOverlayCopyNumber"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected createLayoutForOverlay(Landroid/view/LayoutInflater;)V
    .locals 0

    .line 593
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->createLayoutForOverlay(Landroid/view/LayoutInflater;)V

    .line 594
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->setupFooter(Landroid/view/LayoutInflater;)V

    return-void
.end method

.method public finishViewContainer(Z)V
    .locals 2

    .line 499
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v0

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->di:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->isLightTheme()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 500
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->di:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->isLightTheme()Z

    move-result v0

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->setIsLight(Z)V

    .line 502
    :cond_0
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->finishViewContainer(Z)V

    return-void
.end method

.method protected getAdLayoutResourceId(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getAdUnitIdRemoteConfigName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getBiddingRemoteConfigName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getBottomLayoutAdColor()I
    .locals 1

    const v0, 0x7f0600f3

    return v0
.end method

.method protected getBottomLayoutBackgroundColor()I
    .locals 1

    .line 299
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080276

    return v0

    :cond_0
    const v0, 0x7f080277

    return v0
.end method

.method protected abstract getBottomLayoutResId()I
.end method

.method protected getContact()Lcom/callapp/contacts/model/contact/ContactData;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    return-object v0
.end method

.method protected getEventBus()Lcom/callapp/contacts/event/bus/EventBus;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    return-object v0
.end method

.method protected getExperimentRemoteConfigName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLayoutResId()I
    .locals 1

    const v0, 0x7f0d002d

    return v0
.end method

.method abstract getOrigin()Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;
.end method

.method protected getPreferencesRemoteConfigName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPresenterContainer()Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    return-object v0
.end method

.method protected abstract getPresenterContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;
.end method

.method protected getViewBinder(Lcom/callapp/contacts/util/ads/AdSettings;)Lcom/mopub/nativeads/ViewBinder;
    .locals 0

    .line 214
    invoke-static {p1}, Lcom/callapp/contacts/util/ads/AdUtils;->b(Lcom/callapp/contacts/util/ads/AdSettings;)Lcom/mopub/nativeads/ViewBinder;

    move-result-object p1

    return-object p1
.end method

.method public onAdClick()V
    .locals 1

    const/4 v0, 0x1

    .line 295
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->finishViewContainer(Z)V

    return-void
.end method

.method protected onAdLoaded(Landroid/view/View;)V
    .locals 2

    .line 255
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$4;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$4;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onAdLoaded(Lcom/mopub/nativeads/NativeAd;)V
    .locals 2

    .line 240
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$3;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$3;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;Lcom/mopub/nativeads/NativeAd;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic onBannerAdFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onBannerAdFailed(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public onBannerAdLoaded(Lcom/mopub/mobileads/MoPubView;Z)V
    .locals 1

    .line 219
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->currentAd:Ljava/lang/Object;

    if-ne p2, p1, :cond_0

    return-void

    .line 224
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    new-instance v0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$2;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$2;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;Lcom/mopub/mobileads/MoPubView;)V

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 572
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    .line 573
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->getPresenterContainer()Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isAnyCallActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->setIsLight(Z)V

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 580
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->spamScore:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 581
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    new-instance v0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$10;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$10;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 10

    .line 326
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->onCreate()V

    const v0, 0x7f0a00b1

    .line 327
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->adPlaceHolder:Landroid/widget/FrameLayout;

    .line 328
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$5;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$5;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->onAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 343
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->adPlaceHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const v0, 0x7f0a0949

    .line 344
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->topBarContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f0a06ed

    .line 345
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/ProfilePictureView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->profilePicture:Lcom/callapp/contacts/widget/ProfilePictureView;

    if-eqz v0, :cond_0

    .line 347
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$6;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$6;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0a0244

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 356
    invoke-virtual {p0, v0, v1, v2}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->setCloseButtonListenerInOverlay(IIZ)V

    .line 357
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->c(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 358
    invoke-static {}, Lcom/callapp/contacts/util/ads/AdUtils;->a()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->shouldShowAd()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 359
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->getPreferencesRemoteConfigName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Ljava/lang/String;)Lcom/callapp/contacts/util/ads/JSONAdPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 360
    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->getRefreshInterval()I

    move-result v1

    move v6, v1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 361
    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->isRetryAfterFail()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 362
    :goto_1
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getScreenWidth(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v2

    sub-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v2

    mul-float v2, v2, v1

    sub-float/2addr v0, v2

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->b(F)F

    move-result v9

    .line 363
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 364
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->getBiddingRemoteConfigName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->getAdUnitIdRemoteConfigName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/AdUtils;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    new-instance v8, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$7;

    invoke-direct {v8, p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$7;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;)V

    move-object v4, p0

    .line 363
    invoke-static/range {v3 .. v9}, Lcom/callapp/contacts/util/ads/loaders/AdLoaderFactory;->a(Landroid/content/Context;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Landroid/util/Pair;IZLcom/callapp/contacts/util/ads/NativeAdParamGetter;F)Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->multiSizeAdLoader:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    .line 381
    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->a()V

    :cond_3
    const v0, 0x7f0a018d

    .line 383
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f120511

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->topBarContainer:Landroid/widget/FrameLayout;

    const v1, 0x7f0a0686

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->imgTint:Landroid/view/View;

    .line 385
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->isSpammer()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f06001b

    goto :goto_2

    :cond_4
    const v0, 0x7f060088

    :goto_2
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    .line 386
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->imgTint:Landroid/view/View;

    const v2, 0x7f0805e1

    invoke-static {v1, v2, v0}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;II)V

    .line 387
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->setOverlayCover()V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 452
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->onDestroy()V

    .line 453
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->multiSizeAdLoader:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->b()V

    .line 455
    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->multiSizeAdLoader:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->adPlaceHolder:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->onAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v2, :cond_1

    .line 458
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->assetManager:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

    if-eqz v0, :cond_2

    .line 462
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;->b()V

    .line 465
    :cond_2
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->clearAd()V

    .line 466
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getContactLoaderManager()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v0

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0, v2, p0}, Lcom/callapp/contacts/manager/ContactLoaderManager;->unRegisterForContactDetailsStack(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactDataChangeListener;)V

    .line 467
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v2, Lcom/callapp/contacts/event/listener/DestroyListener;->d:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v3, 0x0

    .line 2091
    invoke-virtual {v0, v2, v1, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 468
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a()V

    .line 469
    invoke-static {}, Lcom/callapp/contacts/manager/OverlayManager;->get()Lcom/callapp/contacts/manager/OverlayManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/OverlayManager;->a(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;)V

    .line 470
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    invoke-virtual {v0}, Lcom/callapp/contacts/event/bus/EventBus;->a()V

    .line 471
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$9;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$9;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onInterstitialClicked(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubInterstitial;)V

    return-void
.end method

.method public synthetic onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onInterstitialDismissed(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubInterstitial;)V

    return-void
.end method

.method public synthetic onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onInterstitialFailed(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public synthetic onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onInterstitialLoaded(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubInterstitial;)V

    return-void
.end method

.method public synthetic onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onInterstitialShown(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubInterstitial;)V

    return-void
.end method

.method public synthetic onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onNativeAdFailed(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void
.end method

.method public onNativeAdLoaded(Lcom/mopub/nativeads/NativeAd;Z)V
    .locals 0

    .line 236
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->onAdLoaded(Lcom/mopub/nativeads/NativeAd;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 12

    .line 510
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->lastIntent:Landroid/content/Intent;

    .line 511
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 513
    const-class p1, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    const-string v0, "Overlay initialized without extras"

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 514
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->finishViewContainer(Z)V

    return v1

    :cond_0
    const-string v2, "isBlocked"

    .line 518
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "isSpammer"

    .line 519
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 520
    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v4, :cond_1

    .line 521
    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/ContactData;->isSpammer()Z

    move-result v3

    :cond_1
    const/4 v4, 0x1

    if-nez v2, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 523
    :cond_3
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->setLayoutColors(Z)V

    const-string v1, "contactId"

    .line 525
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 526
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v6

    .line 528
    invoke-static {}, Lcom/callapp/contacts/manager/OverlayManager;->get()Lcom/callapp/contacts/manager/OverlayManager;

    move-result-object v0

    invoke-virtual {v0, p0, v6}, Lcom/callapp/contacts/manager/OverlayManager;->a(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;Lcom/callapp/framework/phone/Phone;)V

    .line 531
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->getOrigin()Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->getBuilderAccordingToOrigin(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;)Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->build()Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->extractedInfo:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    .line 532
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getContactLoaderManager()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v5

    iget-object v7, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->extractedInfo:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    sget-object v11, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->ALL:Ljava/util/EnumSet;

    move-object v10, p0

    invoke-virtual/range {v5 .. v11}, Lcom/callapp/contacts/manager/ContactLoaderManager;->registerForContactDetailsStack(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;JLcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)Landroid/util/Pair;

    move-result-object v0

    .line 533
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->setContact(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 534
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->setFirstTimeExperience()Z

    move-result v1

    if-eqz v1, :cond_4

    const v2, 0x7f0a0244

    const/4 v3, -0x1

    .line 536
    invoke-virtual {p0, v2, v3, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->setCloseButtonListenerInOverlay(IIZ)V

    .line 539
    :cond_4
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 540
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-virtual {p0, v1, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    :cond_5
    const-string v0, "fullName"

    .line 544
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 545
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 547
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->assertIntentDataExists()V

    .line 548
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getIntentData()Lcom/callapp/contacts/model/contact/IntentData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/contact/IntentData;->setFullName(Ljava/lang/String;)V

    .line 549
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->updateFullName()V

    goto :goto_0

    .line 552
    :cond_6
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    :goto_0
    return v4
.end method

.method protected onProfilePictureClick()V
    .locals 8

    .line 598
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->lastIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->extractedInfo:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->getTrackEventCategory()Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->startFullDetailsActivity(Landroid/content/Context;Landroid/content/Intent;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;ZZLcom/callapp/contacts/model/DataChangedInfo;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 599
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->finishViewContainer(Z)V

    :cond_0
    return-void
.end method

.method protected setContact(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    return-void
.end method

.method protected setFirstTimeExperience()Z
    .locals 5

    .line 404
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    const v1, 0x7f0a0408

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v0

    sget-object v3, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->CLIPBOARD_AUTO_SEARCH_OVERLAY:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v0

    sget-object v3, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->INCOMING_SMS_OVERLAY:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {v0}, Lcom/callapp/contacts/manager/ContactLoaderManager;->checkIfWeHaveNameForNonContact(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 406
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v0

    sget-object v3, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->CLIPBOARD_AUTO_SEARCH_OVERLAY:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gs:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 407
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 408
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gs:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    return v3

    .line 410
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v0

    sget-object v4, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->INCOMING_SMS_OVERLAY:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    invoke-virtual {v0, v4}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gr:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 411
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 412
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gr:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    return v3

    :cond_3
    return v2

    .line 419
    :cond_4
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return v2
.end method

.method protected setLayoutColors(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const p1, 0x7f06001b

    .line 562
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const p1, 0x7f060088

    .line 564
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    .line 567
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->imgTint:Landroid/view/View;

    const v1, 0x7f0805e1

    invoke-static {v0, v1, p1}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;II)V

    return-void
.end method

.method protected shouldShowAd()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
