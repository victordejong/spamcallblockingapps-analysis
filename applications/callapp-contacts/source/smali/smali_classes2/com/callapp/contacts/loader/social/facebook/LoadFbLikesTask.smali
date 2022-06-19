.class Lcom/callapp/contacts/loader/social/facebook/LoadFbLikesTask;
.super Lcom/callapp/contacts/loader/social/BaseSocialLoaderTask;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/loader/social/BaseSocialLoaderTask;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 7

    .line 25
    iget-object v0, p0, Lcom/callapp/contacts/loader/social/facebook/LoadFbLikesTask;->a:Lcom/callapp/contacts/loader/api/LoadContext;

    iget-object v0, v0, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 26
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getFacebookData()Lcom/callapp/contacts/model/contact/social/FacebookData;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 32
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/loader/social/facebook/LoadFbLikesTask;->b:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v3

    .line 2524
    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    move-object v2, v5

    goto :goto_0

    .line 2527
    :cond_1
    new-instance v4, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$15;

    invoke-direct {v4, v2, v3}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$15;-><init>(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;Ljava/lang/String;)V

    const-class v3, Ljava/util/List;

    invoke-virtual {v2, v4, v3}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    :goto_0
    if-eqz v2, :cond_4

    .line 33
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    const v4, 0x7f12032d

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 37
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/common/model/json/JSONFBType;

    if-nez v4, :cond_2

    const-string v6, ", "

    .line 39
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 44
    :goto_2
    invoke-virtual {v5}, Lcom/callapp/common/model/json/JSONFBType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 47
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 50
    :cond_4
    invoke-static {v0, v1, v5}, Lcom/callapp/contacts/model/contact/social/FacebookDataUtils;->setLikes(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Ljava/lang/String;)Z

    return-void
.end method
