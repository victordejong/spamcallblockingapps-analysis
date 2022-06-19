.class public Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard;
.super Lcom/callapp/contacts/activity/contact/cards/SmallAdCard;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/SmallAdCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard;Landroid/view/ViewGroup;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard;->blinkAnimation(Landroid/view/ViewGroup;I)V

    return-void
.end method

.method private blinkAnimation(Landroid/view/ViewGroup;I)V
    .locals 3

    if-lez p2, :cond_0

    .line 69
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard$2;-><init>(Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard;Landroid/view/ViewGroup;I)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const p2, 0x7f060026

    .line 78
    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method protected getExperimentRemoteConfigName()Ljava/lang/String;
    .locals 1

    const-string v0, "CDSmallExperiments"

    return-object v0
.end method

.method protected getMultiSizeAdUnitIdRemoteConfigName()Ljava/lang/String;
    .locals 1

    .line 111
    sget-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected getMultiSizeBiddingConfigurationRemoteConfigName()Ljava/lang/String;
    .locals 1

    .line 107
    sget-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->j:Ljava/lang/String;

    return-object v0
.end method

.method protected getPreferencesRemoteConfigName()Ljava/lang/String;
    .locals 1

    const-string v0, "CDSmallAdCardPreferences"

    return-object v0
.end method

.method public getPriority()I
    .locals 2

    .line 27
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard;->getAdPreferences()Lcom/callapp/contacts/util/ads/JSONAdPreferences;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 29
    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->getPriorityNonContact()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0xf

    return v0

    :cond_1
    if-eqz v0, :cond_2

    .line 37
    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->getPriorityContact()I

    move-result v0

    return v0

    :cond_2
    const/16 v0, 0x3c

    return v0
.end method

.method protected onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/AdCard$AdViewHolder;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/SmallAdCard;->onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/AdCard$AdViewHolder;)V

    .line 48
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard;->currentAd:Ljava/lang/Object;

    instance-of p1, p1, Lcom/mopub/mobileads/MoPubView;

    if-eqz p1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard;->container:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 50
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard;->adSettings:Lcom/callapp/contacts/util/ads/AdSettings;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard;->adSettings:Lcom/callapp/contacts/util/ads/AdSettings;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/ads/AdSettings;->getAdAnimation()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 51
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/AdCard$AdViewHolder;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard;->onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/AdCard$AdViewHolder;)V

    return-void
.end method

.method public shouldShowAd()Z
    .locals 7

    .line 84
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard;->getAdPreferences()Lcom/callapp/contacts/util/ads/JSONAdPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/cards/SmallAdCard;->shouldShowAd()Z

    move-result v0

    return v0

    .line 89
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    const-string v1, "SmallAdCardShowInterval"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->b(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const-wide/16 v0, 0x2

    :cond_1
    const-wide/16 v4, 0x1

    cmp-long v6, v0, v4

    if-eqz v6, :cond_3

    .line 94
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->cA:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    rem-long/2addr v4, v0

    cmp-long v0, v4, v2

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
