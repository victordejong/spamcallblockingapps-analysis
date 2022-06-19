.class public Lcom/callapp/contacts/loader/social/LoadIsFriendTask;
.super Lcom/callapp/contacts/loader/social/BaseSocialLoaderTask;
.source "SourceFile"


# instance fields
.field private c:I


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/loader/social/BaseSocialLoaderTask;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 20
    iput p4, p0, Lcom/callapp/contacts/loader/social/LoadIsFriendTask;->c:I

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 4

    .line 25
    iget-object v0, p0, Lcom/callapp/contacts/loader/social/LoadIsFriendTask;->a:Lcom/callapp/contacts/loader/api/LoadContext;

    iget-object v0, v0, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 26
    iget v1, p0, Lcom/callapp/contacts/loader/social/LoadIsFriendTask;->c:I

    invoke-static {v0, v1}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->getSocialData(Lcom/callapp/contacts/model/contact/ContactData;I)Lcom/callapp/contacts/model/contact/social/SocialData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 28
    iget-object v2, p0, Lcom/callapp/contacts/loader/social/LoadIsFriendTask;->b:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-nez v2, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/social/SocialData;->isFriend()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 33
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v2

    iget v3, p0, Lcom/callapp/contacts/loader/social/LoadIsFriendTask;->c:I

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 36
    iget-object v3, p0, Lcom/callapp/contacts/loader/social/LoadIsFriendTask;->b:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->d(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 37
    iget v3, p0, Lcom/callapp/contacts/loader/social/LoadIsFriendTask;->c:I

    invoke-static {v3}, Lcom/callapp/contacts/model/contact/DataSource;->getDataSource(I)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 39
    iget-object v3, v3, Lcom/callapp/contacts/model/contact/DataSource;->socialDataField:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0, v1, v2, v3}, Lcom/callapp/contacts/model/contact/social/SocialDataUtils;->setIsFriend(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/SocialData;Ljava/lang/Boolean;Lcom/callapp/contacts/model/contact/ContactField;)Z

    :cond_1
    :goto_0
    return-void
.end method
