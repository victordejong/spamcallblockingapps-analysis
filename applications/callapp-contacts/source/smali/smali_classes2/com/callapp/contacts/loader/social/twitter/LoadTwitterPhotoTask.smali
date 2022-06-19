.class Lcom/callapp/contacts/loader/social/twitter/LoadTwitterPhotoTask;
.super Lcom/callapp/contacts/loader/social/BaseSocialLoaderTask;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/loader/social/BaseSocialLoaderTask;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 5

    .line 19
    iget-object v0, p0, Lcom/callapp/contacts/loader/social/twitter/LoadTwitterPhotoTask;->a:Lcom/callapp/contacts/loader/api/LoadContext;

    iget-object v0, v0, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 20
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getTwitterData()Lcom/callapp/contacts/model/contact/social/TwitterData;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 25
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->get()Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/loader/social/twitter/LoadTwitterPhotoTask;->b:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-static {}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->get()Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/callapp/contacts/loader/social/twitter/LoadTwitterPhotoTask;->b:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v4}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 27
    invoke-static {v0, v1, v2, v3}, Lcom/callapp/contacts/model/contact/social/SocialDataUtils;->setPhotoUrl(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/SocialData;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
