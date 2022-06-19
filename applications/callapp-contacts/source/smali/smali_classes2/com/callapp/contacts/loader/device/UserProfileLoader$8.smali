.class final Lcom/callapp/contacts/loader/device/UserProfileLoader$8;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/loader/device/UserProfileLoader;->a(Lcom/callapp/contacts/model/contact/ContactData;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/callapp/contacts/model/contact/ContactData;


# direct methods
.method constructor <init>(ILcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 166
    iput p1, p0, Lcom/callapp/contacts/loader/device/UserProfileLoader$8;->a:I

    iput-object p2, p0, Lcom/callapp/contacts/loader/device/UserProfileLoader$8;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 3

    .line 170
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    iget v1, p0, Lcom/callapp/contacts/loader/device/UserProfileLoader$8;->a:I

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v0

    .line 171
    new-instance v1, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/callapp/common/model/json/JSONSocialNetworkID;-><init>(Ljava/lang/String;Z)V

    .line 172
    iget v0, p0, Lcom/callapp/contacts/loader/device/UserProfileLoader$8;->a:I

    if-eq v0, v2, :cond_5

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    const/4 v2, 0x6

    if-eq v0, v2, :cond_3

    const/4 v2, 0x7

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/UserProfileLoader$8;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getUserProfileData()Lcom/callapp/contacts/model/contact/UserProfileData;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/UserProfileData;->setVkId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 195
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/UserProfileLoader$8;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateVKId()V

    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/UserProfileLoader$8;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getUserProfileData()Lcom/callapp/contacts/model/contact/UserProfileData;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/UserProfileData;->setPinterestId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 191
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/UserProfileLoader$8;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->updatePinterestId()V

    return-void

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/UserProfileLoader$8;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getUserProfileData()Lcom/callapp/contacts/model/contact/UserProfileData;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/UserProfileData;->setInstagramId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 187
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/UserProfileLoader$8;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateInstagramId()V

    return-void

    .line 182
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/UserProfileLoader$8;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getUserProfileData()Lcom/callapp/contacts/model/contact/UserProfileData;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/UserProfileData;->setFoursquareId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 183
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/UserProfileLoader$8;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateFoursquareId()V

    return-void

    .line 178
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/UserProfileLoader$8;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getUserProfileData()Lcom/callapp/contacts/model/contact/UserProfileData;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/UserProfileData;->setTwitterScreenName(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 179
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/UserProfileLoader$8;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateTwitterScreenName()V

    return-void

    .line 174
    :cond_5
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/UserProfileLoader$8;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getUserProfileData()Lcom/callapp/contacts/model/contact/UserProfileData;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/UserProfileData;->setFacebookId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 175
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/UserProfileLoader$8;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateFacebookId()V
    :try_end_0
    .catch Lcom/callapp/contacts/loader/social/QuotaReachedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 199
    const-class v1, Lcom/callapp/contacts/loader/device/UserProfileLoader;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-void
.end method
