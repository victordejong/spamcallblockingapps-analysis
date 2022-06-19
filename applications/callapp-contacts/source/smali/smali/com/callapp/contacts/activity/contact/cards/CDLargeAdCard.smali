.class public Lcom/callapp/contacts/activity/contact/cards/CDLargeAdCard;
.super Lcom/callapp/contacts/activity/contact/cards/LargeAdCard;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/LargeAdCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    return-void
.end method


# virtual methods
.method protected getExperimentRemoteConfigName()Ljava/lang/String;
    .locals 1

    const-string v0, "CDLargeExperiments"

    return-object v0
.end method

.method protected getMultiSizeAdUnitIdRemoteConfigName()Ljava/lang/String;
    .locals 1

    .line 75
    sget-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected getMultiSizeBiddingConfigurationRemoteConfigName()Ljava/lang/String;
    .locals 1

    .line 70
    sget-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->i:Ljava/lang/String;

    return-object v0
.end method

.method protected getPreferencesRemoteConfigName()Ljava/lang/String;
    .locals 1

    const-string v0, "CDLargeAdCardPreferences"

    return-object v0
.end method

.method public getPriority()I
    .locals 3

    .line 23
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/CDLargeAdCard;->getAdPreferences()Lcom/callapp/contacts/util/ads/JSONAdPreferences;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/CDLargeAdCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    const/16 v2, 0xcd

    if-eqz v1, :cond_1

    .line 25
    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->getPriorityNonContact()I

    move-result v0

    return v0

    :cond_0
    return v2

    :cond_1
    if-eqz v0, :cond_2

    .line 33
    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->getPriorityContact()I

    move-result v0

    return v0

    :cond_2
    return v2
.end method

.method protected onAdLoaded()V
    .locals 1

    .line 51
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/CDLargeAdCard$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/cards/CDLargeAdCard$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/CDLargeAdCard;)V

    .line 56
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/CDLargeAdCard$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CDLargeAdCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/CDLargeAdCard;->hideCard()V

    return-void

    .line 45
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/LargeAdCard;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    return-void
.end method

.method protected shouldShowAd()Z
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/CDLargeAdCard;->getAdPreferences()Lcom/callapp/contacts/util/ads/JSONAdPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/cards/LargeAdCard;->shouldShowAd()Z

    move-result v0

    return v0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CDLargeAdCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
