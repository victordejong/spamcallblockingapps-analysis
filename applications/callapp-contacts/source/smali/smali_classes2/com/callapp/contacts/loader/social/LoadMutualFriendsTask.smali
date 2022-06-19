.class public Lcom/callapp/contacts/loader/social/LoadMutualFriendsTask;
.super Lcom/callapp/contacts/loader/social/BaseSocialLoaderTask;
.source "SourceFile"


# instance fields
.field private c:I


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/loader/social/BaseSocialLoaderTask;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 22
    iput p4, p0, Lcom/callapp/contacts/loader/social/LoadMutualFriendsTask;->c:I

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 4

    .line 27
    iget-object v0, p0, Lcom/callapp/contacts/loader/social/LoadMutualFriendsTask;->a:Lcom/callapp/contacts/loader/api/LoadContext;

    iget-object v0, v0, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 28
    iget v1, p0, Lcom/callapp/contacts/loader/social/LoadMutualFriendsTask;->c:I

    invoke-static {v0, v1}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->getSocialData(Lcom/callapp/contacts/model/contact/ContactData;I)Lcom/callapp/contacts/model/contact/social/SocialData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 30
    iget-object v2, p0, Lcom/callapp/contacts/loader/social/LoadMutualFriendsTask;->b:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-nez v2, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v2

    iget v3, p0, Lcom/callapp/contacts/loader/social/LoadMutualFriendsTask;->c:I

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v2

    .line 35
    iget-object v3, p0, Lcom/callapp/contacts/loader/social/LoadMutualFriendsTask;->b:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 36
    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/model/contact/social/SocialDataUtils;->setMutualFriends(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/SocialData;Ljava/util/List;)Z

    :cond_1
    :goto_0
    return-void
.end method
