.class public abstract Lcom/callapp/contacts/activity/contact/cards/AdCard;
.super Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/cards/AdCard$AdViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard<",
        "Lcom/callapp/contacts/activity/contact/cards/AdCard$AdViewHolder;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

.field private adPreferences:Lcom/callapp/contacts/util/ads/JSONAdPreferences;

.field protected adSettings:Lcom/callapp/contacts/util/ads/AdSettings;

.field protected container:Landroid/view/ViewGroup;

.field protected currentAd:Ljava/lang/Object;

.field protected isDestroyed:Z

.field private multiSizeAdLoader:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

.field private nativeAdView:Landroid/view/View;

.field private onAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private requestInFlight:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private shouldReplace:Z

.field private triedGettingAdPreferences:Z


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->triedGettingAdPreferences:Z

    .line 52
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->requestInFlight:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->currentAd:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->shouldReplace:Z

    .line 117
    new-instance p1, Lcom/callapp/contacts/activity/contact/cards/AdCard$2;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/contact/cards/AdCard$2;-><init>(Lcom/callapp/contacts/activity/contact/cards/AdCard;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/contact/cards/AdCard;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/AdCard;->clearAd()V

    return-void
.end method

.method static synthetic access$102(Lcom/callapp/contacts/activity/contact/cards/AdCard;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->shouldReplace:Z

    return p1
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/contact/cards/AdCard;Z)V
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/AdCard;->showCard(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/contact/cards/AdCard;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/callapp/contacts/activity/contact/cards/AdCard;)Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->multiSizeAdLoader:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    return-object p0
.end method

.method static synthetic access$500(Lcom/callapp/contacts/activity/contact/cards/AdCard;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->requestInFlight:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$600(Lcom/callapp/contacts/activity/contact/cards/AdCard;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/ads/AdSettings;
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/AdCard;->getCardAdSettings(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/ads/AdSettings;

    move-result-object p0

    return-object p0
.end method

.method private clearAd()V
    .locals 3

    .line 296
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->currentAd:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 297
    instance-of v1, v0, Lcom/mopub/mobileads/MoPubView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 298
    check-cast v0, Lcom/mopub/mobileads/MoPubView;

    .line 299
    invoke-static {v0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 300
    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/MoPubView;->setBannerAdListener(Lcom/mopub/mobileads/MoPubView$BannerAdListener;)V

    .line 301
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    goto :goto_0

    .line 303
    :cond_0
    check-cast v0, Lcom/mopub/nativeads/NativeAd;

    .line 304
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->nativeAdView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeAd;->clear(Landroid/view/View;)V

    .line 305
    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeAd;->destroy()V

    .line 306
    iput-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->nativeAdView:Landroid/view/View;

    .line 308
    :goto_0
    iput-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->currentAd:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 309
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->shouldReplace:Z

    :cond_1
    return-void
.end method

.method private getCardAdSettings(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/ads/AdSettings;
    .locals 8

    .line 336
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 337
    :goto_0
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 339
    :try_start_0
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/AdCard$6;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/cards/AdCard$6;-><init>(Lcom/callapp/contacts/activity/contact/cards/AdCard;)V

    invoke-static {p2, v0}, Lcom/callapp/contacts/util/serializer/string/Parser;->a(Ljava/lang/String;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/util/ads/JSONExperiment;

    if-eqz p2, :cond_5

    .line 341
    invoke-virtual {p2}, Lcom/callapp/contacts/util/ads/JSONExperiment;->getExperiments()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 342
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AbTestUtils;->getGroupDimension()I

    move-result v0

    .line 343
    invoke-virtual {p2}, Lcom/callapp/contacts/util/ads/JSONExperiment;->getExperiments()Ljava/util/List;

    move-result-object p2

    .line 344
    invoke-static {p2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 345
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/util/ads/JSONAdSettings;

    .line 346
    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONAdSettings;->getGroup()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 348
    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONAdSettings;->getAnimation()I

    move-result p2

    const/4 v0, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq p2, v3, :cond_4

    if-eq p2, v2, :cond_3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    const/4 v6, 0x2

    goto :goto_1

    :cond_2
    const/4 v6, 0x5

    goto :goto_1

    :cond_3
    const/4 v6, 0x4

    goto :goto_1

    :cond_4
    const/4 v6, 0x3

    .line 364
    :goto_1
    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONAdSettings;->getLayout()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/contact/cards/AdCard;->getAdLayoutResourceId(I)I

    move-result v4

    .line 366
    new-instance p2, Lcom/callapp/contacts/util/ads/AdSettings;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/callapp/contacts/util/ads/AdSettings;-><init>(Ljava/lang/String;IZIZ)V

    .line 367
    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONAdSettings;->getLayout()I

    move-result v0

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/AdUtils;->isIconImageCircleByType(I)Z

    move-result v0

    .line 1066
    iput-boolean v0, p2, Lcom/callapp/contacts/util/ads/AdSettings;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 374
    const-class v0, Lcom/callapp/contacts/activity/contact/cards/AdCard;

    invoke-static {v0, p2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 378
    :cond_5
    new-instance p2, Lcom/callapp/contacts/util/ads/AdSettings;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/cards/AdCard;->getAdLayoutResourceId(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/util/ads/AdSettings;-><init>(Ljava/lang/String;IZIZ)V

    return-object p2
.end method


# virtual methods
.method protected abstract getAdLayoutResourceId(I)I
.end method

.method protected getAdPreferences()Lcom/callapp/contacts/util/ads/JSONAdPreferences;
    .locals 1

    .line 327
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->triedGettingAdPreferences:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 328
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->triedGettingAdPreferences:Z

    .line 329
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/AdCard;->getPreferencesRemoteConfigName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Ljava/lang/String;)Lcom/callapp/contacts/util/ads/JSONAdPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->adPreferences:Lcom/callapp/contacts/util/ads/JSONAdPreferences;

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->adPreferences:Lcom/callapp/contacts/util/ads/JSONAdPreferences;

    return-object v0
.end method

.method protected abstract getCardDesiredAssets(Lcom/callapp/contacts/util/ads/AdSettings;)Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/util/ads/AdSettings;",
            ")",
            "Ljava/util/EnumSet<",
            "Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getCardViewBinder(Lcom/callapp/contacts/util/ads/AdSettings;)Lcom/mopub/nativeads/ViewBinder;
.end method

.method protected abstract getExperimentRemoteConfigName()Ljava/lang/String;
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getListenFields()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 162
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getMultiSizeAdUnitIdRemoteConfigName()Ljava/lang/String;
.end method

.method protected abstract getMultiSizeBiddingConfigurationRemoteConfigName()Ljava/lang/String;
.end method

.method protected abstract getPreferencesRemoteConfigName()Ljava/lang/String;
.end method

.method public isCardLockedWhenScreenIsLocked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected loadAdOnContactChange()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onAdLoaded()V
    .locals 0

    return-void
.end method

.method protected onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/AdCard$AdViewHolder;)V
    .locals 2

    .line 279
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->container:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->currentAd:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->shouldReplace:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 280
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->shouldReplace:Z

    .line 281
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 282
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->currentAd:Ljava/lang/Object;

    instance-of v0, p1, Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_0

    .line 283
    check-cast p1, Lcom/mopub/mobileads/MoPubView;

    .line 284
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->container:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    .line 286
    :cond_0
    check-cast p1, Lcom/mopub/nativeads/NativeAd;

    .line 287
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->container:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, v1}, Lcom/mopub/nativeads/NativeAd;->createAdView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->nativeAdView:Landroid/view/View;

    .line 288
    invoke-virtual {p1, v0}, Lcom/mopub/nativeads/NativeAd;->renderAdView(Landroid/view/View;)V

    .line 289
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->nativeAdView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/mopub/nativeads/NativeAd;->prepare(Landroid/view/View;)V

    .line 290
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->container:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->nativeAdView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Ljava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/AdCard$AdViewHolder;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/AdCard;->onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/AdCard$AdViewHolder;)V

    return-void
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 181
    sget-object p1, Lcom/callapp/contacts/model/contact/ContactField;->newContact:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/AdCard;->hideCard()V

    .line 184
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance p2, Lcom/callapp/contacts/activity/contact/cards/AdCard$3;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/activity/contact/cards/AdCard$3;-><init>(Lcom/callapp/contacts/activity/contact/cards/AdCard;)V

    invoke-interface {p1, p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/AdCard;->loadAdOnContactChange()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/AdCard;->tryLoadingAd()V

    :cond_1
    return-void
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/AdCard$AdViewHolder;
    .locals 2

    const v0, 0x7f0a0661

    .line 254
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->container:Landroid/view/ViewGroup;

    .line 256
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/AdCard$5;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/cards/AdCard$5;-><init>(Lcom/callapp/contacts/activity/contact/cards/AdCard;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->onAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 272
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->container:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 274
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/AdCard$AdViewHolder;

    invoke-direct {v0, p1}, Lcom/callapp/contacts/activity/contact/cards/AdCard$AdViewHolder;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/AdCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/AdCard$AdViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->isDestroyed:Z

    .line 83
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->onDestroy()V

    .line 85
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->container:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->onAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->multiSizeAdLoader:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->b()V

    .line 93
    :cond_1
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/AdCard;->clearAd()V

    return-void
.end method

.method public onThemeChangedInner()V
    .locals 2

    .line 142
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->onThemeChangedInner()V

    .line 143
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->currentAd:Ljava/lang/Object;

    instance-of v0, v0, Lcom/mopub/mobileads/MoPubView;

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->container:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 146
    invoke-static {v0}, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer;->colorTextViews(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected shouldShowAd()Z
    .locals 6

    .line 152
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->adPreferences:Lcom/callapp/contacts/util/ads/JSONAdPreferences;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->adPreferences:Lcom/callapp/contacts/util/ads/JSONAdPreferences;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->getFrequencyContact()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->adPreferences:Lcom/callapp/contacts/util/ads/JSONAdPreferences;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->getFrequencyNonContact()I

    move-result v0

    :goto_0
    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    .line 157
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->cA:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    int-to-long v4, v0

    rem-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    :cond_2
    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public showShouldExpandButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public tryLoadingAd()V
    .locals 10

    .line 212
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->requestInFlight:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/AdCard;->getAdPreferences()Lcom/callapp/contacts/util/ads/JSONAdPreferences;

    .line 218
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->adPreferences:Lcom/callapp/contacts/util/ads/JSONAdPreferences;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->shouldShowWithoutName()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 220
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/util/ads/AdUtils;->a()Z

    move-result v3

    if-nez v3, :cond_6

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/AdCard;->shouldShowAd()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    .line 226
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->adPreferences:Lcom/callapp/contacts/util/ads/JSONAdPreferences;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->getRefreshInterval()I

    move-result v0

    move v6, v0

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    .line 227
    :goto_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->adPreferences:Lcom/callapp/contacts/util/ads/JSONAdPreferences;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->isRetryAfterFail()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v7, 0x1

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    .line 228
    :goto_2
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

    .line 229
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    .line 230
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/AdCard;->getMultiSizeBiddingConfigurationRemoteConfigName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/AdCard;->getMultiSizeAdUnitIdRemoteConfigName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/AdUtils;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    new-instance v8, Lcom/callapp/contacts/activity/contact/cards/AdCard$4;

    invoke-direct {v8, p0}, Lcom/callapp/contacts/activity/contact/cards/AdCard$4;-><init>(Lcom/callapp/contacts/activity/contact/cards/AdCard;)V

    .line 229
    invoke-static/range {v3 .. v9}, Lcom/callapp/contacts/util/ads/loaders/AdLoaderFactory;->a(Landroid/content/Context;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Landroid/util/Pair;IZLcom/callapp/contacts/util/ads/NativeAdParamGetter;F)Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->multiSizeAdLoader:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    .line 249
    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->a()V

    return-void

    .line 221
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->requestInFlight:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    return-void
.end method

.method public updateCardData(Ljava/lang/Object;Z)V
    .locals 1

    .line 98
    iget-boolean p2, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->isDestroyed:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->currentAd:Ljava/lang/Object;

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/AdCard$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/contact/cards/AdCard$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/AdCard;Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
