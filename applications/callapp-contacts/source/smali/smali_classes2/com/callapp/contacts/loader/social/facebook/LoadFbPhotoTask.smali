.class Lcom/callapp/contacts/loader/social/facebook/LoadFbPhotoTask;
.super Lcom/callapp/contacts/loader/social/BaseSocialLoaderTask;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/loader/social/BaseSocialLoaderTask;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 5

    .line 21
    iget-object v0, p0, Lcom/callapp/contacts/loader/social/facebook/LoadFbPhotoTask;->a:Lcom/callapp/contacts/loader/api/LoadContext;

    iget-object v0, v0, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 22
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getFacebookData()Lcom/callapp/contacts/model/contact/social/FacebookData;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 27
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/loader/social/facebook/LoadFbPhotoTask;->b:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    const/4 v3, 0x0

    .line 32
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 34
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/callapp/contacts/loader/social/facebook/LoadFbPhotoTask;->b:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v4}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    .line 39
    :cond_1
    invoke-static {v0, v1, v2, v3}, Lcom/callapp/contacts/model/contact/social/SocialDataUtils;->setPhotoUrl(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/SocialData;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
