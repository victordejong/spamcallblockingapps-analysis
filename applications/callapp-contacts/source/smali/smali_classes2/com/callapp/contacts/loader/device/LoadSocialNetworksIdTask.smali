.class public Lcom/callapp/contacts/loader/device/LoadSocialNetworksIdTask;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# instance fields
.field private final a:Lcom/callapp/contacts/model/contact/ContactData;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/callapp/contacts/loader/device/LoadSocialNetworksIdTask;->a:Lcom/callapp/contacts/model/contact/ContactData;

    return-void
.end method

.method public static a(Lcom/callapp/contacts/model/contact/ContactData;Z)V
    .locals 7

    .line 35
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->assertDeviceDataExist()V

    .line 36
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/loader/UserPositiveNegativeManager;->a(JLcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 40
    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->getUserPositiveSocialData()Lio/objectbox/relation/ToMany;

    move-result-object v3

    .line 41
    invoke-static {v3}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 43
    invoke-virtual {v3}, Lio/objectbox/relation/ToMany;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;

    .line 44
    new-instance v4, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-direct {v4}, Lcom/callapp/common/model/json/JSONSocialNetworkID;-><init>()V

    .line 45
    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;->getProfileId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->setId(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;->isSure()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->setSure(Z)V

    .line 47
    invoke-virtual {v4, v1}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->setFromDevice(Z)V

    .line 49
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v5

    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;->getSocialNetworkId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v3, v4}, Lcom/callapp/contacts/loader/device/LoadSocialNetworksIdTask;->a(Lcom/callapp/contacts/model/contact/DeviceData;Ljava/lang/Integer;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 54
    :cond_1
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 55
    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->getUserNegativeSocialData()Lio/objectbox/relation/ToMany;

    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 57
    invoke-virtual {v0}, Lio/objectbox/relation/ToMany;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;

    .line 59
    invoke-virtual {v4}, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;->getSocialNetworkId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    if-nez v5, :cond_2

    .line 62
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 63
    invoke-virtual {v4}, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;->getSocialNetworkId()I

    move-result v6

    invoke-virtual {v3, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    :cond_2
    invoke-virtual {v4}, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;->getProfileId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 70
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getNegativesMap()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 72
    invoke-virtual {p0, v3}, Lcom/callapp/contacts/model/contact/ContactData;->setNegativesMap(Landroid/util/SparseArray;)V

    .line 73
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateNegatives()V

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    if-eqz p1, :cond_6

    if-eqz v1, :cond_6

    .line 79
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateSocialNetworkIds()V

    :cond_6
    return-void
.end method

.method private static a(Lcom/callapp/contacts/model/contact/DeviceData;Ljava/lang/Integer;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 1

    .line 84
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/model/contact/DeviceData;->setVKId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/model/contact/DeviceData;->setPinterestId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    return-void

    .line 98
    :cond_2
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/model/contact/DeviceData;->setInstagramId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    return-void

    .line 94
    :cond_3
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/model/contact/DeviceData;->setFoursquareId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    return-void

    .line 90
    :cond_4
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/model/contact/DeviceData;->setTwitterScreenName(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    return-void

    .line 86
    :cond_5
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/model/contact/DeviceData;->setFacebookId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/LoadSocialNetworksIdTask;->a:Lcom/callapp/contacts/model/contact/ContactData;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/loader/device/LoadSocialNetworksIdTask;->a(Lcom/callapp/contacts/model/contact/ContactData;Z)V

    return-void
.end method
