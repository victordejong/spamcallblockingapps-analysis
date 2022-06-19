.class public Lcom/callapp/contacts/loader/vk/LoadVKLastUploadedPhotos;
.super Lcom/callapp/contacts/loader/social/BaseSocialLoaderTask;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/loader/social/BaseSocialLoaderTask;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 5

    .line 24
    iget-object v0, p0, Lcom/callapp/contacts/loader/vk/LoadVKLastUploadedPhotos;->a:Lcom/callapp/contacts/loader/api/LoadContext;

    iget-object v0, v0, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 25
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getVKData()Lcom/callapp/contacts/model/contact/social/VKData;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 31
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->get()Lcom/callapp/contacts/api/helper/vk/VKHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/loader/vk/LoadVKLastUploadedPhotos;->b:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v3

    .line 1527
    new-instance v4, Lcom/callapp/contacts/api/helper/vk/VKHelper$6;

    invoke-direct {v4, v2, v3}, Lcom/callapp/contacts/api/helper/vk/VKHelper$6;-><init>(Lcom/callapp/contacts/api/helper/vk/VKHelper;Ljava/lang/String;)V

    const-class v3, Ljava/util/ArrayList;

    invoke-virtual {v2, v4, v3}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->a(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 32
    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 33
    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/model/contact/social/VKDataUtils;->setUploadedPhotosUrl(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/VKData;Ljava/util/List;)Z

    :cond_1
    return-void
.end method
